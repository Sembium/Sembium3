unit uSvrUtils;

interface

uses
  DB, DBClient, Classes, Provider, Forms, AbmesSQLQuery, uDBLoginContext,
  uLoginContext, uServerLoginContext, DataBkr, uUtils, JvStringHolder,
  Generics.Collections;

const
  MaxApplyRetryCountDefault = 5;

const
  SNotAvailable = '***';

type
  TAbmesSQLQueryHelper = class helper (TDataSetHelper) for TAbmesSQLQuery
  public
    procedure RescanParams;
  end;

// ExecUpdateQuery executva query spored UpdateKind i mu zadava parametrite ot DeltaDS

procedure ExecUpdateQuery(UpdateKind: TUpdateKind; DeltaDS: TCustomClientDataSet;
  InsQuery: TAbmesSQLQuery = nil; UpdQuery: TAbmesSQLQuery = nil; DelQuery: TAbmesSQLQuery = nil;
  CheckRowsAffected: Boolean = True);

// RecordChanged proveriava dali tekushtia zapis na ADataSet e promenen, kato
// ne proveriava poletata bez pfInUpdate i tezi ot tip TDataSetField

function RecordChanged(ADataSet: TDataSet): Boolean;

// UpdateFieldValues zadava NewValue na vsiako pole ot ADataSet ot OldValue
// Ako se izvikva ot BeforeUpdateRecord, ZADALJITELNO da se vika i
// RestoreFieldValues predi izlizane ot BeforeUpdateRecord

procedure UpdateFieldValues(ADataSet: TDataSet);

// RestoreFieldValues vuzstanoviava stoinostite na NewValue sled predhodno
// izvikvane na UpdateFieldValues

procedure RestoreFieldValues(ADataSet: TDataSet);

// funkcii i proceduri za rabota s boolean poleta
function GetBoolValue(Field: TField): Boolean; overload;
procedure SetBoolValue(Field: TField; Value: Boolean); overload;


procedure SetParamValue(
  AQuery: TAbmesSQLQuery; const AParamName: string; const AParamValue: Variant);

procedure ProcessUserParamBeforeQueryOpen(AParam: TParam; ALoginContext: TLoginContext);

procedure SetCurrentDeptIfNeeded(AParam: TParam; ALoginContext: TLoginContext);

procedure ProcessDeptParamBeforeQueryOpen(AParam: TParam; ALoginContext: TLoginContext);

procedure ProcessProductParamBeforeQueryOpen(AParam: TParam);

procedure ProcessNoParamBeforeQueryOpen(AParam: TParam);

procedure ProcessBudgetClassParamBeforeQueryOpen(AParam: TParam);

function ParentRecordDeleted(ADataSet: TCustomClientDataSet): Boolean;

procedure SetEmployeeDateAndTime(DeltaDS: TCustomClientDataSet; const APrefix: string; ALoginContext: TServerLoginContext);

procedure SetCreateAndChangeFieldsOnUpdateRecord(
  DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind;
  ALoginContext: TServerLoginContext);

procedure SetIntegerParam(const AQueries: array of TAbmesSQLQuery; const AParamName: string; AValue: Integer);

function AllQueriesHaveParam(const AQueries: array of TAbmesSQLQuery; const AParamName: string): Boolean;

const
  MacroParamsDelimiter = '~';

type
  TMacroLibrary = TJvMultiStringHolder;
  TMacroLibraryItem = TJvMultiStringHolderCollectionItem;

type
  TMacroLibraryList = class
  private
    FOwner: TComponent;
    FList: TList<TMacroLibrary>;
    procedure ExpandMacroLibrary(AMacroLibrary: TMacroLibrary);
    procedure ExpandMacro(const AMacro: TMacroLibraryItem);
    function FindMacro(const AMacroName: string): TMacroLibraryItem;
  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
    function GetEnumerator: TList<TMacroLibrary>.TEnumerator;
    procedure RegisterMacroLibrary(AMacroLibrary: TMacroLibrary);
    procedure UnregisterMacroLibrary(AMacroLibrary: TMacroLibrary);
    procedure RegisterExternalMacroLibraries(AMacroLibraryList: TMacroLibraryList);
    procedure UnregisterExternalMacroLibraries(AMacroLibraryList: TMacroLibraryList);
    procedure ExpandOwnedMacroLibraries;
  end;

function GetMacroBaseName(const AQueryMacroName: string): string;
procedure ApplyMacroLibrary(AMacroLibrary: TMacroLibrary; AQuery: TAbmesSQLQuery);
procedure ApplyMacro(AMacro: TMacroLibraryItem; AQuery: TAbmesSQLQuery); overload;
procedure ApplyMacro(AMacro: TMacroLibraryItem; AQueryMacro: TParam); overload;
procedure ApplyMacro(const AMacroName, AMacroText: string; AQuery: TAbmesSQLQuery); overload;
procedure ApplyMacro(const AMacroName, AMacroText: string; AQueryMacro: TParam); overload;

// return the home from the command line
function GetHomeSwitch: string;
function GetHome: string;
function ExtractHome(const ACommandLine: string): string;
function MakeHomeSwitch(const AHome: string): string;

type
  TServerComponentChecker = class(TComponentChecker)
  protected
    class function GetComponentPartOfEventName(AComponent: TComponent): string; override;
  public
    class procedure CheckForDisconnectedEventHandlers(AComponent: TComponent); override;
  end;

// narochno message-a e var ( wypreki che ne go pipa ), zashtoto razchita che na provider-a ima OnUpdateError, koito da
// mu priswoi na toq string E.Message pri greshka
procedure ApplyProviderDelta(const ADelta: Variant; AProvider: TDataSetProvider; var AErrorMessage: string);

function EncodeTempNo(const ANo: Integer): Integer;

implementation

uses
  TypInfo, Variants, uTreeNodes, SysUtils, StrUtils, dDBDataModule;

const
  SUpdateFailed = 'Update failed';
  HomeSwitchName = 'home';
  DefaultHome = 'DefaultHome';

{ Routines }

procedure ExecUpdateQuery(UpdateKind: TUpdateKind; DeltaDS: TCustomClientDataSet;
  InsQuery, UpdQuery, DelQuery: TAbmesSQLQuery; CheckRowsAffected: Boolean);
var
  qry: TAbmesSQLQuery;
begin
  Assert(Assigned(DeltaDS), 'DeltaDS must not be nil');

  case UpdateKind of
    ukInsert: qry:= InsQuery;
    ukModify: qry:= UpdQuery;
    ukDelete: qry:= DelQuery;
  else
    qry:= nil;
  end;  { case }

  if Assigned(qry) then
    begin
      SetParams(qry.Params, DeltaDS);

      qry.ExecSQL;

      if CheckRowsAffected and (qry.RowsAffected <> 1) then
        DatabaseError(SUpdateFailed);
    end;  { if }
end;   { ExecUpdateQuery }

function RecordChanged(ADataSet: TDataSet): Boolean;
var
  i: Integer;
begin
  Assert(Assigned(ADataSet));

  with ADataSet do
    for i:= 0 to FieldCount - 1 do
      if not (Fields[i] is TDataSetField) and
         (pfInUpdate in Fields[i].ProviderFlags) and
         not VarIsEmpty(Fields[i].NewValue) then
        begin
          Result:= True;
          Exit;
        end;

  Result:= False;
end;

procedure UpdateFieldValues(ADataSet: TDataSet);
var
  f: TField;
begin
  Assert(Assigned(ADataSet));

  for f in ADataSet.Fields do
    if VarIsEmpty(f.NewValue) then
      f.NewValue:= f.OldValue;
end;

procedure RestoreFieldValues(ADataSet: TDataSet);
var
  f: TField;
begin
  Assert(Assigned(ADataSet));

  for f in ADataSet.Fields do
    if not VarIsEmpty(f.NewValue) and
       not VarIsEmpty(f.OldValue) and
       ( ( VarIsNull(f.NewValue) and
           VarIsNull(f.OldValue) ) or
         (f.NewValue = f.OldValue) ) then
      f.NewValue:= Unassigned;
end;

function GetBoolValue(Field: TField): Boolean; overload;
var
  v: Variant;
begin
  with Field do
    if VarIsEmpty(NewValue) then
      v:= OldValue
    else
      v:= NewValue;

  if VarIsNull(v) then
    v:= 0;

  Result:= (v <> 0);
end;

procedure SetBoolValue(Field: TField; Value: Boolean); overload;
begin
  Field.NewValue:= Ord(Value);
end;

procedure SetParamValue(
  AQuery: TAbmesSQLQuery; const AParamName: string; const AParamValue: Variant);
var
  Param: TParam;
begin
  Param:= AQuery.Params.FindParam(AParamName);

  if Assigned(Param) then
    Param.Value:= AParamValue
  else   { if }
    begin
      Param:= AQuery.Macros.FindParam(AParamName);

      if Assigned(Param) then
        begin
          if VarIsNull(AParamValue) then
            Param.AsString:= 'null'
          else
            begin
              if (VarIsType(AParamValue, varDate)) then
                Param.AsString:= (AQuery.SQLConnection.Owner as TDBDataModule).FormatDBDateTime(AParamValue)
              else
                Param.Value:= AParamValue;
            end;
        end;
    end;   { if }
end;

procedure ProcessUserParamBeforeQueryOpen(AParam: TParam; ALoginContext: TLoginContext);
begin
  with AParam do
    if (AsInteger = -1) then
      AsInteger:= ALoginContext.UserCode;
end;

procedure SetCurrentDeptIfNeeded(AParam: TParam; ALoginContext: TLoginContext);
begin
  with AParam do
    if (AsInteger = -1) then
      begin
        if (ALoginContext.CurrentDeptCode = 0) then
          Clear
        else
          AsInteger:= ALoginContext.CurrentDeptCode;
      end;
end;

procedure ProcessDeptParamBeforeQueryOpen(AParam: TParam; ALoginContext: TLoginContext);
begin
  SetCurrentDeptIfNeeded(AParam, ALoginContext);

  with AParam do
    if IsNull then
      AsInteger:= tnRootDeptCode;
end;

procedure ProcessProductParamBeforeQueryOpen(AParam: TParam);
begin
  with AParam do
    if IsNull then
      AsInteger:= tnRootProductCode;
end;

procedure ProcessNoParamBeforeQueryOpen(AParam: TParam);
begin
  with AParam do
    if (AsString = '') then
      AsString:= '%'
    else
      AsString:= StringReplace(AsString, '*', '%', [rfReplaceAll]);
end;

procedure ProcessBudgetClassParamBeforeQueryOpen(AParam: TParam);
begin
  with AParam do
    if IsNull then
      AsInteger:= tnRootBudgetClassCode;
end;

function ParentRecordDeleted(ADataSet: TCustomClientDataSet): Boolean;
var
  ParentCDS: TCustomClientDataSet;
begin
  ParentCDS:= ADataSet;

  Result:= True;

  while Assigned(ParentCDS.DataSetField) do
    if ((ParentCDS.DataSetField.DataSet as TPacketDataSet).UpdateKind = ukDelete) then
      Exit
    else
      ParentCDS:= ParentCDS.DataSetField.DataSet as TCustomClientDataSet;

  Result:= False;
end;

procedure SetEmployeeDateAndTime(DeltaDS: TCustomClientDataSet; const APrefix: string; ALoginContext: TServerLoginContext);
begin
  with DeltaDS do
    begin
      FieldByName(APrefix + '_EMPLOYEE_CODE').NewValue:= ALoginContext.UserCode;
      FieldByName(APrefix + '_DATE').NewValue:= ALoginContext.ContextDate;
      FieldByName(APrefix + '_TIME').NewValue:= ALoginContext.ContextTime;
    end;
end;

procedure SetCreateAndChangeFieldsOnUpdateRecord(
  DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind;
  ALoginContext: TServerLoginContext);
begin
  with DeltaDS do
    begin
      if (UpdateKind = ukInsert) then
        SetEmployeeDateAndTime(DeltaDS, 'CREATE', ALoginContext);
      if (UpdateKind <> ukDelete) then
        SetEmployeeDateAndTime(DeltaDS, 'CHANGE', ALoginContext);
    end;
end;

procedure SetIntegerParam(const AQueries: array of TAbmesSQLQuery; const AParamName: string; AValue: Integer);
var
  q: TAbmesSQLQuery;
  Param: TParam;
begin
  for q in AQueries do
    begin
      Assert(Assigned(q));

      Param:= q.Params.FindParam(AParamName);
      if Assigned(Param) then
        Param.AsInteger:= AValue;
    end;  { for }
end;

function AllQueriesHaveParam(const AQueries: array of TAbmesSQLQuery; const AParamName: string): Boolean;
var
  q: TAbmesSQLQuery;
begin
  if (Length(AQueries) = 0) then
    Result:= False
  else
    begin
      Result:= True;
      for q in AQueries do
        begin
          Assert(Assigned(q));

          if not Assigned(q.Params.FindParam(AParamName)) then
            begin
              Result:= False;
              Break;
            end;  { if }
        end;  { for }
    end;
end;

{ Macro stuff }

function GetMacroBaseName(const AQueryMacroName: string): string;
var
  i: Integer;
begin
  i:= Pos('[', AQueryMacroName);

  if (i > 0) then
    Result:= Copy(AQueryMacroName, 1, i-1)
  else
    Result:= AQueryMacroName;
end;

procedure ApplyMacroLibrary(
  AMacroLibrary: TMacroLibrary; AQuery: TAbmesSQLQuery);
var
  mli: TMacroLibraryItem;
begin
  for mli in AMacroLibrary.MultipleStrings.AsOf<TMacroLibraryItem> do
    ApplyMacro(mli, AQuery);
end;

procedure ApplyMacro(AMacro: TMacroLibraryItem;
  AQuery: TAbmesSQLQuery); overload;
var
  p: TParam;
begin
  for p in AQuery.Macros do
    ApplyMacro(AMacro, p);
end;

procedure ApplyMacro(const AMacroName, AMacroText: string; AQuery: TAbmesSQLQuery); overload;
var
  p: TParam;
begin
  for p in AQuery.Macros do
    ApplyMacro(AMacroName, AMacroText, p);
end;

procedure ApplyMacro(AMacro: TMacroLibraryItem;
  AQueryMacro: TParam); overload;
begin
  ApplyMacro(AMacro.Name, AMacro.Strings.Text, AQueryMacro);
end;

procedure ApplyMacro(const AMacroName, AMacroText: string; AQueryMacro: TParam); overload;

  procedure FillMacroParams(AList: TStringList; const AMacroParams: string);
  var
    BracketCount: Integer;
    CurrentChar: Char;
    Param: string;
  begin
    AList.Clear;

    BracketCount:= 0;
    Param:= '';
    for CurrentChar in AMacroParams do
      if (CurrentChar = MacroParamsDelimiter) and (BracketCount = 0) then
        begin
          AList.Add(Param);
          Param:= '';
        end
      else
        begin
          Param:= Param + CurrentChar;
          case CurrentChar of
            '[': Inc(BracketCount);
            ']': Dec(BracketCount);
          end;
        end;  { if }

    if (Param <> '') then
      AList.Add(Param);
  end;  { FillMacroParams }

var
  QueryMacroName: string;
  j: Integer;
  ExpandedMacroText: string;
  MacroParams: TStringList;
begin
  MacroParams:= TStringList.Create;
  try
    QueryMacroName:= AQueryMacro.Name;

    if (QueryMacroName = AMacroName) then
      AQueryMacro.Value:= AMacroText
    else
      begin
        if StartsStr(AMacroName, QueryMacroName) and
           (QueryMacroName[Length(AMacroName)+1] = '[') and
           (QueryMacroName[Length(QueryMacroName)] = ']') then
          begin
            FillMacroParams(
              MacroParams,
              Copy(QueryMacroName, Length(AMacroName) + 2, Length(QueryMacroName) - Length(AMacroName) - 2)
            );

            ExpandedMacroText:= AMacroText;
            for j:= 0 to MacroParams.Count - 1 do
              ExpandedMacroText:= StringReplace(ExpandedMacroText, '%' + IntToStr(j+1), MacroParams[j], [rfReplaceAll]);

            AQueryMacro.Value:= ExpandedMacroText;
          end;  { if }
      end;  { if }
  finally
    FreeAndNil(MacroParams);
  end;  { try }
end;

{ TMacroLibraryList }

constructor TMacroLibraryList.Create(AOwner: TComponent);
begin
  inherited Create;
  FOwner:= AOwner;
  FList:= TList<TMacroLibrary>.Create;
end;

destructor TMacroLibraryList.Destroy;
begin
  FreeAndNil(FList);
  inherited Destroy;
end;

procedure TMacroLibraryList.ExpandMacro(const AMacro: TMacroLibraryItem);

  function IsNumeric(const s: string): Boolean;
  var
    DummyInt: Integer;
  begin
    Result:= TryStrToInt(s, DummyInt);
  end;

var
  q: TAbmesSQLQuery;
  p: TParam;
  FoundMacros: Boolean;
  m: TMacroLibraryItem;
  QueryMacroName: string;
begin
  Assert(Assigned(AMacro));
  Assert(Assigned(AMacro.Collection));
  Assert(AMacro.Collection.Owner <> nil);
  Assert(AMacro.Collection.Owner is TMacroLibrary);

  if ((AMacro.Collection.Owner as TMacroLibrary).Owner <> FOwner) then
    Exit;

  q:= TAbmesSQLQuery.Create(nil);
  try
    q.SQL.Text:= AMacro.Strings.Text;

    FoundMacros:= False;
    for p in q.Macros do
      begin
        QueryMacroName:= p.Name;
        if IsNumeric(QueryMacroName) then
          begin
            p.AsString:= q.MacroChar + QueryMacroName;
          end
        else
          begin
            m:= FindMacro(GetMacroBaseName(QueryMacroName));
            if Assigned(m) then
              begin
                FoundMacros:= True;
                ExpandMacro(m);
                ApplyMacro(m, p);
              end
            else
              p.AsString:= q.MacroChar + QueryMacroName;
          end;  { if }
      end;  { for }

    if FoundMacros then
      AMacro.Strings.Text:= q.RealSQLText;
  finally
    FreeAndNil(q);
  end;  { try }
end;

procedure TMacroLibraryList.ExpandOwnedMacroLibraries;
var
  ml: TMacroLibrary;
begin
  for ml in Self do
    if (ml.Owner = FOwner) then
      ExpandMacroLibrary(ml);
end;

procedure TMacroLibraryList.ExpandMacroLibrary(AMacroLibrary: TMacroLibrary);
var
  mli: TMacroLibraryItem;
begin
  for mli in AMacroLibrary.MultipleStrings.AsOf<TMacroLibraryItem> do
    ExpandMacro(mli);
end;

function TMacroLibraryList.FindMacro(
  const AMacroName: string): TMacroLibraryItem;
var
  ml: TMacroLibrary;
  mli: TMacroLibraryItem;
begin
  Result:= nil;
  for ml in FList do
    for mli in ml.MultipleStrings.AsOf<TMacroLibraryItem> do
      if (mli.Name = AMacroName) then
        begin
          Result:= mli;
          Break;
        end;
end;

function TMacroLibraryList.GetEnumerator: TList<TMacroLibrary>.TEnumerator;
begin
  Result:= FList.GetEnumerator;
end;

procedure TMacroLibraryList.RegisterExternalMacroLibraries(
  AMacroLibraryList: TMacroLibraryList);
var
  ml: TMacroLibrary;
begin
  for ml in AMacroLibraryList do
    RegisterMacroLibrary(ml);
end;

procedure TMacroLibraryList.RegisterMacroLibrary(AMacroLibrary: TMacroLibrary);
begin
  FList.Add(AMacroLibrary);
end;

procedure TMacroLibraryList.UnregisterExternalMacroLibraries(
  AMacroLibraryList: TMacroLibraryList);
var
  ml: TMacroLibrary;
begin
  for ml in AMacroLibraryList do
    UnregisterMacroLibrary(ml);
end;

procedure TMacroLibraryList.UnregisterMacroLibrary(
  AMacroLibrary: TMacroLibrary);
begin
  FList.Remove(AMacroLibrary);
end;

{ TServerComponentChecker }

class procedure TServerComponentChecker.CheckForDisconnectedEventHandlers(
  AComponent: TComponent);
begin
  inherited;
  // do nothing more - just increse method visibility
end;

class function TServerComponentChecker.GetComponentPartOfEventName(
  AComponent: TComponent): string;
begin
  if (AComponent is TRemoteDataModule) then
    Result:= 'RemoteDataModule'
  else
    Result:= inherited GetComponentPartOfEventName(AComponent);
end;

{ TAbmesSQLQueryHelper }

procedure TAbmesSQLQueryHelper.RescanParams;
begin
  SQL.BeginUpdate;
  SQL.EndUpdate;
end;

function GetHomeSwitch: string;
var
  i: Integer;
  Switch: string;
  HomeSwitchPrefix: string;
begin
  HomeSwitchPrefix:= Format('/%s:', [HomeSwitchName]);

  for i:= 1 to ParamCount do
    begin
      Switch:= ParamStr(i);
      if StartsText(HomeSwitchPrefix, Switch) then
        Exit(Switch);
    end;

  Result:= MakeHomeSwitch(DefaultHome);
end;

function GetHome: string;
var
  HomeSwitch: string;
  HomeSwitchPrefix: string;
begin
  HomeSwitch:= GetHomeSwitch;
  HomeSwitchPrefix:= Format('/%s:', [HomeSwitchName]);
  Result:= RightStr(HomeSwitch, Length(HomeSwitch) - Length(HomeSwitchPrefix));
end;

function ExtractHome(const ACommandLine: string): string;
var
  HomeSwitchPrefix: string;
  p: Integer;
  e: Integer;
begin
  HomeSwitchPrefix:= Format('/%s:', [HomeSwitchName]);
  p:= Pos(HomeSwitchPrefix, ACommandLine);

  Result:= '';
  if (p > 0) then
    begin
      e:= PosEx(' ', ACommandLine + ' ', p);
      Result:= SubString(ACommandLine, p + Length(HomeSwitchPrefix), e);
    end;

  if (Result = '') then
    Result:= DefaultHome;
end;

function MakeHomeSwitch(const AHome: string): string;
begin
  Result:= Format('/%s:%s', [HomeSwitchName, AHome]);
end;

procedure ApplyProviderDelta(const ADelta: Variant; AProvider: TDataSetProvider; var AErrorMessage: string);
var
  ErrorCount: Integer;
begin
  if not VarIsEmpty(ADelta) then
    begin
      AProvider.ApplyUpdates(ADelta, 0, ErrorCount);
      if (ErrorCount > 0) and (AErrorMessage <> '') then
        raise Exception.Create(AErrorMessage);
    end;
end;

function EncodeTempNo(const ANo: Integer): Integer;
begin
  Result:= -(ANo + 2);
end;

end.
