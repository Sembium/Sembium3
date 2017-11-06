unit fStatusAbstract;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBFrame, DB, ActnList, StdCtrls, JvExControls, JvComponent,
  JvDBLookup, fBaseFrame, fFieldEditFrame, fDateFieldEditFrame, Mask,
  DBCtrls, Buttons, AbmesFields, DBClient, AbmesClientDataSet, fEditForm, System.Actions;

type
  TfrStatusAbstract = class(TFieldEditFrame)
    lblCurrentStatus: TLabel;
    edtReachMonths: TDBEdit;
    lblReachMonths: TLabel;
    lblExistanceMonths: TLabel;
    edtExistanceMonths: TDBEdit;
    actCompanyStatusesHistory: TAction;
    edtCurrentStatus: TDBEdit;
    btnStatusesHistory: TSpeedButton;
    lblMonths: TLabel;
    cdsStatus: TAbmesClientDataSet;
    dsStatus: TDataSource;
    procedure actCompanyStatusesHistoryExecute(Sender: TObject);
    procedure actFrameUpdate(Sender: TObject);
    procedure actCompanyStatusesHistoryUpdate(Sender: TObject);
    procedure cdsStatusAfterOpen(DataSet: TDataSet);
  private
    FNeedsInitialUpdate: Boolean;
    FEditFormClass: TEditFormClass;
    FOuterData: OleVariant;
    procedure OpenStatus;
    function GetDelta: OleVariant;
    function GetData: OleVariant;
    procedure SetData(const Value: OleVariant);
  protected
    procedure DataChange(Sender: TObject); override;
    property EditFormClass: TEditFormClass read FEditFormClass write FEditFormClass;
  public
    constructor Create(AOwner: TComponent); override;
    procedure CloseDataSets; override;
    property Delta: OleVariant read GetDelta;
    property Data: OleVariant read GetData;
    property OuterData: OleVariant read FOuterData write FOuterData;
  end;

implementation

uses
  uClientTypes, uUtils;

{$R *.dfm}

{ TfrCompanyStatus }

procedure TfrStatusAbstract.actCompanyStatusesHistoryExecute(
  Sender: TObject);
var
  em: TEditMode;
begin
  inherited;
  if ReadOnly then
    em:= emReadOnly
  else
    em:= emEdit;

  EditFormClass.ShowForm(nil, cdsStatus, em);
end;

procedure TfrStatusAbstract.CloseDataSets;
begin
  cdsStatus.Close;
end;

procedure TfrStatusAbstract.DataChange(Sender: TObject);

  function AllFieldsAssigned: Boolean;
  var
    i: Integer;
  begin
    Result:= False;
    for i:= 0 to FieldCount - 1 do
      if not Assigned(Fields[i]) then
        Exit;
    Result:= True;
  end;

  function IsNewData: Boolean;
  var
    i: Integer;
  begin
    Result:= True;
    for i:= 0 to FieldCount - 1 do
      if (cdsStatus.Params.ParamByName(Fields[i].FieldName).Value <> Fields[i].AsVariant) then
        Exit;
    Result:= False;
  end;

  function FieldNameCount: Integer;
  var
    FldNames: TStringList;
  begin
    FldNames:= TStringList.Create;
    try
      FldNames.Delimiter:= ';';
      FldNames.DelimitedText:= FieldNames;

      Result:= FldNames.Count;
    finally
      FreeAndNil(FldNames);
    end;
  end;  { FieldNameCount }

begin
  if (FieldCount > 0) and AllFieldsAssigned and
     ((not cdsStatus.Active) or IsNewData) and
     (FieldCount = FieldNameCount) then
    begin
      cdsStatus.Close;
      OpenStatus;
    end;
end;

function TfrStatusAbstract.GetData: OleVariant;

  function GetRecordData(ADataSet: TDataSet): Variant;
  var
    i: Integer;
  begin
    Result:= VarArrayCreate([0, ADataSet.FieldCount], varVariant);
    for i:= 0 to ADataSet.FieldCount - 1 do
      if (ADataSet.Fields[i].FieldKind = fkData) then
        Result[i]:= ADataSet.Fields[i].Value
      else
        Result[i]:= Unassigned;
  end;  { GetRecordData }

var
  DetailDataSet: TDataSet;
  fld: TField;
  Details: Variant;
begin
  DetailDataSet:= nil;

  for fld in cdsStatus.Fields do
    if fld is TDataSetField then
      DetailDataSet:= (fld as TDataSetField).NestedDataSet;

  Assert(Assigned(DetailDataSet));

  if DetailDataSet.IsEmpty then
    Details:= Unassigned
  else
    begin
      Details:= VarArrayCreate([0, DetailDataSet.RecordCount-1], varVariant);
      DetailDataSet.First;
      while not DetailDataSet.Eof do
        begin
          Details[DetailDataSet.RecNo-1]:= GetRecordData(DetailDataSet);
          DetailDataSet.Next;
        end;  { while }
    end;

  Result:= VarArrayCreate([0, 1], varVariant);
  Result[0]:= GetRecordData(cdsStatus);
  Result[1]:= Details;
end;

procedure TfrStatusAbstract.SetData(const Value: OleVariant);

  procedure SetRecordData(ADataSet: TDataSet; Data: Variant);
  var
    i: Integer;
  begin
    Assert(VarIsArray(Data));
    for i:= 0 to ADataSet.FieldCount - 1 do
      if (ADataSet.Fields[i].FieldKind = fkData) then
        ADataSet.Fields[i].Value:= Data[i];
  end;  { SetRecordData }

var
  DetailDataSet: TDataSet;
  fld: TField;
  i: Integer;
begin
  DetailDataSet:= nil;

  for fld in cdsStatus.Fields do
    if fld is TDataSetField then
      DetailDataSet:= (fld as TDataSetField).NestedDataSet;

  Assert(Assigned(DetailDataSet));

  Assert(VarIsArray(Value));
  Assert(VarArrayLowBound(Value, 1) = 0);
  Assert(VarArrayHighBound(Value, 1) = 1);

  cdsStatus.EmptyDataSet;

  cdsStatus.Append;
  try
    SetRecordData(cdsStatus, Value[0]);

    if VarIsArray(Value[1]) then
      for i:= VarArrayLowBound(Value[1], 1) to VarArrayHighBound(Value[1], 1) do
        begin
          DetailDataSet.Append;
          try
            SetRecordData(DetailDataSet, Value[1][i]);
            DetailDataSet.Post;
          except
            DetailDataSet.Cancel;
            raise;
          end;
        end;

    cdsStatus.Post;
  except
    cdsStatus.Cancel;
    raise;
  end;

  cdsStatus.MergeChangeLog;      
end;

function TfrStatusAbstract.GetDelta: OleVariant;
begin
  if cdsStatus.Active then
    cdsStatus.CheckBrowseMode;

  if (cdsStatus.ChangeCount > 0) then
    Result:= cdsStatus.Delta
  else
    Result:= Unassigned;
end;

procedure TfrStatusAbstract.OpenStatus;
var
  i: Integer;
begin
  if not VarIsEmpty(OuterData) then
    begin
      for i:= 0 to cdsStatus.Params.Count - 1 do
        cdsStatus.Params[i].Clear;
      cdsStatus.Open;
      SetData(OuterData);
    end
  else
    begin
      for i:= 0 to FieldCount - 1 do
        cdsStatus.Params.ParamByName(Fields[i].FieldName).Value:= Fields[i].AsVariant;

      cdsStatus.Open;
    end;
end;

procedure TfrStatusAbstract.actCompanyStatusesHistoryUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= Assigned(EditFormClass);
end;

procedure TfrStatusAbstract.actFrameUpdate(Sender: TObject);
begin
  inherited;
  if FNeedsInitialUpdate then
    begin
      FNeedsInitialUpdate:= False;
      OpenStatus;
    end;
end;

procedure TfrStatusAbstract.cdsStatusAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;

  if cdsStatus.IsEmpty then
    begin
      cdsStatus.Append;
      try
        for i:= 0 to cdsStatus.Params.Count - 1 do
          if Assigned(cdsStatus.FindField(cdsStatus.Params[i].Name)) then
            cdsStatus.FieldByName(cdsStatus.Params[i].Name).AsVariant:= cdsStatus.Params[i].Value;

        cdsStatus.Post;
      except
        cdsStatus.Cancel;
        raise;
      end;

      cdsStatus.MergeChangeLog;
    end;
end;

constructor TfrStatusAbstract.Create(AOwner: TComponent);
begin
  inherited;
  FNeedsInitialUpdate:= True;
end;

end.
