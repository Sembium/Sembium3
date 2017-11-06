unit uAbmesClientDataSetHelper;

interface

uses
  Generics.Collections,
  Db,
  AbmesClientDataSet,
  uAttachedProperty,
  uNestProc,
  uUtils;

type
  TAbmesClientDataSetHelper = class helper (TClientDataSetHelper) for TAbmesClientDataSet
  private
    class var FSavedRequiredFieldsProp: IProp<IObjectHolder<TList<TField>>>;
    class var FRequiredFieldsDisableCountProp: IProp<Integer>;
    class var FRecordChecksDisableCountProp: IProp<Integer>;

    function GetSavedRequiredFields: TList<TField>;
    procedure SetSavedRequiredFields(const AValue: TList<TField>);

    function GetRequiredFieldsDisableCount: Integer;
    procedure SetRequiredFieldsDisableCount(AValue: Integer);

    function GetRecordChecksDisableCount: Integer;
    procedure SetRecordChecksDisableCount(AValue: Integer);

    procedure CreateSavedRequiredFieldsList;
    procedure FreeAndNilSavedRequiredFieldsList;
    procedure DoDisableRequiredFields;
    procedure DoEnableRequiredFields;
    procedure SaveRequiredFields;
    function IsFieldRequired(const AField: TField): Boolean;

    function GetRequiredFieldsEnabled: Boolean;
    function GetRecordChecksEnabled: Boolean;
  protected
    property SavedRequiredFields: TList<TField> read GetSavedRequiredFields write SetSavedRequiredFields;
    property RequiredFieldsDisableCount: Integer read GetRequiredFieldsDisableCount write SetRequiredFieldsDisableCount;
    property RecordChecksDisableCount: Integer read GetRecordChecksDisableCount write SetRecordChecksDisableCount;
  public
    procedure DisableRequiredFields;
    procedure EnableRequiredFields;
    function TempDisableRequiredFields: TNestProcRec;

    procedure DisableRecordChecks;
    procedure EnableRecordChecks;
    function TempDisableRecordChecks: TNestProcRec;

    property RequiredFieldsEnabled: Boolean read GetRequiredFieldsEnabled;
    property RecordChecksEnabled: Boolean read GetRecordChecksEnabled;
  end;

implementation

uses
  SysUtils;

{ TAbmesClientDataSetHelper }

function TAbmesClientDataSetHelper.GetSavedRequiredFields: TList<TField>;
begin
  Result:= TProp<IObjectHolder<TList<TField>>>.GetPropValue(FSavedRequiredFieldsProp, Self).Value;
end;

procedure TAbmesClientDataSetHelper.SetSavedRequiredFields(const AValue: TList<TField>);
begin
  TProp<IObjectHolder<TList<TField>>>.SetPropValue(FSavedRequiredFieldsProp, Self, TObjectHolder<TList<TField>>.Create(AValue));
end;

function TAbmesClientDataSetHelper.GetRequiredFieldsDisableCount: Integer;
begin
  Result:= TProp<Integer>.GetPropValue(FRequiredFieldsDisableCountProp, Self);
end;

procedure TAbmesClientDataSetHelper.SetRequiredFieldsDisableCount(AValue: Integer);
begin
  TProp<Integer>.SetPropValue(FRequiredFieldsDisableCountProp, Self, AValue);
end;

function TAbmesClientDataSetHelper.GetRecordChecksDisableCount: Integer;
begin
  Result:= TProp<Integer>.GetPropValue(FRecordChecksDisableCountProp, Self);
end;

procedure TAbmesClientDataSetHelper.SetRecordChecksDisableCount(AValue: Integer);
begin
  TProp<Integer>.SetPropValue(FRecordChecksDisableCountProp, Self, AValue);
end;

function TAbmesClientDataSetHelper.GetRequiredFieldsEnabled: Boolean;
begin
  Result:= (RequiredFieldsDisableCount = 0);
end;

function TAbmesClientDataSetHelper.IsFieldRequired(const AField: TField): Boolean;
begin
  Result:= AField.Required;
end;

procedure TAbmesClientDataSetHelper.CreateSavedRequiredFieldsList;
begin
  SavedRequiredFields:= TList<TField>.Create;
end;

procedure TAbmesClientDataSetHelper.FreeAndNilSavedRequiredFieldsList;
begin
  SavedRequiredFields.Free;
  SavedRequiredFields:= nil;
end;

procedure TAbmesClientDataSetHelper.SaveRequiredFields;
var
  f: TField;
begin
  Assert(Assigned(SavedRequiredFields));
  for f in Fields.Filter(IsFieldRequired) do
    SavedRequiredFields.Add(f);
end;

procedure TAbmesClientDataSetHelper.DoDisableRequiredFields;
var
  f: TField;
begin
  Assert(Assigned(SavedRequiredFields));

  SaveRequiredFields;

  for f in SavedRequiredFields do
    f.Required:= False;
end;

procedure TAbmesClientDataSetHelper.DoEnableRequiredFields;
var
  f: TField;
begin
  Assert(Assigned(SavedRequiredFields));

  for f in SavedRequiredFields do
    f.Required:= True;

  SavedRequiredFields.Clear;
end;

procedure TAbmesClientDataSetHelper.DisableRequiredFields;
begin
  if (RequiredFieldsDisableCount = 0) then
    TryExcept(CreateSavedRequiredFieldsList, FreeAndNilSavedRequiredFieldsList)/
      ToProc(DoDisableRequiredFields);

  RequiredFieldsDisableCount:= RequiredFieldsDisableCount + 1;
end;

procedure TAbmesClientDataSetHelper.EnableRequiredFields;
begin
  RequiredFieldsDisableCount:= RequiredFieldsDisableCount - 1;

  if (RequiredFieldsDisableCount = 0) then
    TryFinally(FreeAndNilSavedRequiredFieldsList)/
      ToProc(DoEnableRequiredFields);
end;

function TAbmesClientDataSetHelper.TempDisableRequiredFields: TNestProcRec;
begin
  Result:= TryFinally(DisableRequiredFields, EnableRequiredFields);
end;

function TAbmesClientDataSetHelper.GetRecordChecksEnabled: Boolean;
begin
  Result:= (RecordChecksDisableCount = 0);
end;

procedure TAbmesClientDataSetHelper.DisableRecordChecks;
begin
  if (RecordChecksDisableCount = 0) then
    TryExcept(DisableConstraints, EnableConstraints)/
      TryExcept(DisableRequiredFields, EnableRequiredFields)/
        Utils.DoNothing;

  RecordChecksDisableCount:= RecordChecksDisableCount + 1;
end;

procedure TAbmesClientDataSetHelper.EnableRecordChecks;
begin
  RecordChecksDisableCount:= RecordChecksDisableCount - 1;

  if (RecordChecksDisableCount = 0) then
    TryFinally(EnableConstraints)/
      TryFinally(EnableRequiredFields)/
        Utils.DoNothing;
end;

function TAbmesClientDataSetHelper.TempDisableRecordChecks: TNestProcRec;
begin
  Result:= TryFinally(DisableRecordChecks, EnableRecordChecks);
end;

end.

