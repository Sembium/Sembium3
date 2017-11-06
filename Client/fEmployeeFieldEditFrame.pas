unit fEmployeeFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, StdCtrls, Mask, DBCtrls, JvDBLookup,
  DBClient, AbmesClientDataSet, AbmesFields, ExtCtrls, ComCtrls, ToolWin,
  JvExControls, JvComponent, System.Actions;

type
  TSpecialProffesionEmployee = (speIgnore, speManager, speOkidu, speEmpAvailModifierAuthorizer, speEECtrlMainEmployee);

type
  TfrEmployeeFieldEditFrame = class(TFieldEditFrame)
    cdsEmployees: TAbmesClientDataSet;
    dsEmployees: TDataSource;
    cdsEmployeesEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeesEMPLOYEE_NAME: TAbmesWideStringField;
    cdsEmployeesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsEmployeesDOC_CODE: TAbmesFloatField;
    actDocumentation: TAction;
    gbEmployee: TGroupBox;
    pnlEmployeeCode: TPanel;
    edtEmployeeNo: TDBEdit;
    pnlEmployeeName: TPanel;
    cdsEmployeesHAS_DOCUMENTATION: TAbmesFloatField;
    pnlPaddingLeft: TPanel;
    pnlPaddingRight: TPanel;
    pnlRightButtons: TPanel;
    tlbDocButton: TToolBar;
    btnDocumentation: TToolButton;
    pnlEmpoyeeNameInner: TPanel;
    cbEmployee: TJvDBLookupCombo;
    cdsEmployee: TAbmesClientDataSet;
    dsEmployee: TDataSource;
    cdsEmployeeEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeesEMPLOYEE_NO: TAbmesFloatField;
    cdsEmployee_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsEmployee_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsEmployee_DOC_CODE: TAbmesFloatField;
    cdsEmployee_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsEmployeeEMPLOYEE_NO: TAbmesFloatField;
    edtEmployeeName: TDBEdit;
    procedure edtEmployeeNoChange(Sender: TObject);
    procedure cdsEmployeeEMPLOYEE_NOChange(Sender: TField);
    procedure cdsEmployeeEMPLOYEE_CODEChange(Sender: TField);
    procedure actFrameUpdate(Sender: TObject);
    procedure actDocumentationUpdate(Sender: TObject);
    procedure actDocumentationExecute(Sender: TObject);
    procedure cdsEmployeesBeforeOpen(DataSet: TDataSet);
    procedure cdsEmployee_EMPLOYEE_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cbEmployeeDropDown(Sender: TObject);
    procedure cbEmployeeCloseUp(Sender: TObject);
    procedure cdsEmployeeEMPLOYEE_NOSetText(Sender: TField; const Text: string);
  private
    FAllowColorOverride: Boolean;
    FShowCurrentEmployee: Boolean;
    FEmployeeTypeName: string;
    FNeedsInitialization: Boolean;
    FSpecialProffesionEmployee: TSpecialProffesionEmployee;
    FDocButtonVisible: Boolean;
    FUpdating: Boolean;
    FInDataChange: Boolean;
    FRefreshingEmployeeCode: Boolean;
    FRequiredProfessionCode: Integer;
    FOuterAllEmployeesDataSet: TDataSet;
    FComboDropDownTickCount: Cardinal;
    FRequiredOccupationWorkDeptCode: Integer;
    FShowUsersOnly: Boolean;
    procedure SetRequiredProfessionCode(const Value: Integer);
    procedure SetShowCurrentEmployee(Value: Boolean);
    procedure UpdateShowCurrentEmployee;
    procedure InternalOpenDataSetsIfNeeded;
    procedure AddCurrentEmployeeToLookupIfMissing;
    procedure OpenEmployees;
    procedure RefreshEmployee;
    procedure SetRequiredOccupationWorkDeptCode(const Value: Integer);
  protected
    procedure DataChange(Sender: TObject); override;
    procedure UpdateData(Sender: TObject); override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;

    property SpecialProffesionEmployee: TSpecialProffesionEmployee read FSpecialProffesionEmployee write FSpecialProffesionEmployee;
    property ShowUsersOnly: Boolean read FShowUsersOnly write FShowUsersOnly;
    property ShowCurrentEmployee: Boolean read FShowCurrentEmployee write SetShowCurrentEmployee;
    property EmployeeTypeName: string read FEmployeeTypeName write FEmployeeTypeName;
    property AllowColorOverride: Boolean read FAllowColorOverride write FAllowColorOverride default True;
    property DocButtonVisible: Boolean read FDocButtonVisible write FDocButtonVisible default False;
    property RequiredProfessionCode: Integer read FRequiredProfessionCode write SetRequiredProfessionCode;
    property RequiredOccupationWorkDeptCode: Integer read FRequiredOccupationWorkDeptCode write SetRequiredOccupationWorkDeptCode;
    property OuterAllEmployeesDataSet: TDataSet read FOuterAllEmployeesDataSet write FOuterAllEmployeesDataSet;
  end;

implementation

uses
  dMain, uClientUtils, uClientTypes, uDocUtils, uUtils, uToolbarUtils;

resourcestring
  SCommonEmployee = 'кадър';
  SAllInBrackets = '< всички >';
  SCurrentEmployeeFormat = '<текущ потребител> %s';

{$R *.dfm}

{ TfrEmployeeFieldEditFrame }

constructor TfrEmployeeFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  FShowCurrentEmployee:= False;
  FEmployeeTypeName:= SCommonEmployee;
  FAllowColorOverride:= True;
  FDocButtonVisible:= True;
  FNeedsInitialization:= True;
end;

procedure TfrEmployeeFieldEditFrame.InternalOpenDataSetsIfNeeded;
begin
  if not cdsEmployee.Active then
    begin
      if not cdsEmployees.Active then
        OpenEmployees;

      cdsEmployee.CreateDataSet;
      cdsEmployee.Append;
    end;
end;

procedure TfrEmployeeFieldEditFrame.OpenDataSets;
begin
  UpdateShowCurrentEmployee;
  inherited;
  InternalOpenDataSetsIfNeeded;
end;

procedure TfrEmployeeFieldEditFrame.OpenEmployees;
begin
  if Assigned(OuterAllEmployeesDataSet) and
     OuterAllEmployeesDataSet.Active and
     (SpecialProffesionEmployee = speIgnore) and
     (RequiredProfessionCode = 0) and
     (RequiredOccupationWorkDeptCode = 0) then
    begin
      cdsEmployees.CreateDataSet;
      OuterAllEmployeesDataSet.First;
      while not OuterAllEmployeesDataSet.Eof do
        begin
          cdsEmployees.Append;
          try
            AssignFields(OuterAllEmployeesDataSet, cdsEmployees);
            cdsEmployees.Post;
          except
            cdsEmployees.Cancel;
            raise;
          end;
          
          OuterAllEmployeesDataSet.Next;
        end;  { while }
    end
  else
    cdsEmployees.Open;
end;

procedure TfrEmployeeFieldEditFrame.CloseDataSets;
begin
  cdsEmployee.Close;
  inherited;
  cdsEmployees.Close;
end;

procedure TfrEmployeeFieldEditFrame.RefreshEmployee;
var
  EmployeeCode: Variant;
begin
  if cdsEmployee.Active then
    begin
      FRefreshingEmployeeCode := True;
      try
        EmployeeCode:= cdsEmployeeEMPLOYEE_CODE.AsVariant;
        cdsEmployeeEMPLOYEE_CODE.Clear;
        cdsEmployeeEMPLOYEE_CODE.AsVariant:= EmployeeCode;
      finally
        FRefreshingEmployeeCode:= False;
      end;
    end;
end;

procedure TfrEmployeeFieldEditFrame.AddCurrentEmployeeToLookupIfMissing;
var
  DocBranchCode: Integer;
  HasDoc: Boolean;
  EmpName: string;
  EmployeeNo: Integer;
  DocCode: Integer;
begin
  if (FieldCount > 0) and
     (not Fields[0].IsNull) and 
     (not cdsEmployees.Locate('EMPLOYEE_CODE', Fields[0].AsInteger, [])) then
  begin
    dmMain.SvrHumanResource.GetEmployeeData(Fields[0].AsInteger, EmpName, HasDoc, DocBranchCode, DocCode, EmployeeNo);

    if (EmpName <> '') then
      cdsEmployees.AppendRecord([Fields[0].AsInteger, EmpName, IntToVar(DocBranchCode), IntToVar(DocCode), HasDoc, EmployeeNo]);

    RefreshEmployee;
  end;
end;

procedure TfrEmployeeFieldEditFrame.SetRequiredOccupationWorkDeptCode(const Value: Integer);
begin
  if (Value <> FRequiredOccupationWorkDeptCode) then
    begin
      FRequiredOccupationWorkDeptCode:= Value;

      if cdsEmployees.Active then
        begin
          cdsEmployees.Close;
          OpenEmployees;
          AddCurrentEmployeeToLookupIfMissing;
        end;
    end;
end;

procedure TfrEmployeeFieldEditFrame.SetRequiredProfessionCode(
  const Value: Integer);
begin
  if (Value <> FRequiredProfessionCode) then
    begin
      FRequiredProfessionCode:= Value;

      if cdsEmployees.Active then
        begin
          cdsEmployees.Close;
          OpenEmployees;
          AddCurrentEmployeeToLookupIfMissing;
        end;
    end;
end;

procedure TfrEmployeeFieldEditFrame.SetShowCurrentEmployee(Value: Boolean);
begin
  if (Value <> FShowCurrentEmployee) then
    begin
      FShowCurrentEmployee:= Value;
      UpdateShowCurrentEmployee;
    end;
end;

procedure TfrEmployeeFieldEditFrame.UpdateShowCurrentEmployee;
begin
  if cdsEmployees.Active then
    begin
      if FShowCurrentEmployee and not cdsEmployees.Locate('EMPLOYEE_CODE', -1, []) then
        begin
          cdsEmployees.Append;
          try
            cdsEmployeesEMPLOYEE_CODE.AsInteger:= -1;
            cdsEmployeesEMPLOYEE_NAME.AsString:= Format(SCurrentEmployeeFormat, [LoginContext.UserFullName]);
            cdsEmployeesEMPLOYEE_NO.AsInteger:= -1;

            cdsEmployees.Post;
          except
            cdsEmployees.Cancel;
            raise;
          end;
        end;

      if not FShowCurrentEmployee and cdsEmployees.Locate('EMPLOYEE_CODE', -1, []) then
        cdsEmployees.Delete;

      RefreshEmployee;
    end;
end;

procedure TfrEmployeeFieldEditFrame.actFrameUpdate(Sender: TObject);
var
  IsReadOnly: Boolean;
begin
  inherited;

  if FNeedsInitialization then
    begin
      FNeedsInitialization:= False;
      AddCurrentEmployeeToLookupIfMissing;
    end;

  IsReadOnly:= ReadOnly or not Assigned(dsData.DataSet) or not (dsData.DataSet.CanModify);

  edtEmployeeNo.ReadOnly:= IsReadOnly;
  cbEmployee.ReadOnly:= IsReadOnly;

  if AllowColorOverride then
    begin
      edtEmployeeNo.Color:= ReadOnlyColors[IsReadOnly];
      cbEmployee.Color:= ReadOnlyColors[IsReadOnly];
    end;

  cbEmployee.Visible:= not IsReadOnly;
  edtEmployeeName.Visible:= IsReadOnly;

  edtEmployeeName.Width:= cbEmployee.Width;

  if ShowAllWhenEmpty then
    cbEmployee.DisplayEmpty:= SAllInBrackets
  else
    cbEmployee.DisplayEmpty:= ' ';

  NormalizedToolbar(tlbDocButton).Visible:= DocButtonVisible and Assigned(dmDocClient);
  NormalizedToolbar(tlbDocButton).Width:= btnDocumentation.Width;

  pnlRightButtons.Visible:= NormalizedToolbar(tlbDocButton).Visible;
  pnlRightButtons.Width:= btnDocumentation.Width;

  cbEmployee.Width:= pnlEmpoyeeNameInner.Width - 1;
  edtEmployeeName.Width:= pnlEmpoyeeNameInner.Width - 1;
end;

procedure TfrEmployeeFieldEditFrame.actDocumentationUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (FieldCount > 0) and Assigned(Fields[0]) and not Fields[0].IsNull;
  (Sender as TAction).ImageIndex:= cdsEmployee_HAS_DOCUMENTATION.AsInteger;
end;

procedure TfrEmployeeFieldEditFrame.actDocumentationExecute(
  Sender: TObject);
begin
  inherited;
  Assert(not Fields[0].IsNull);
  Assert(Assigned(dmDocClient));

  SetFocus;

  dmDocClient.OpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotEmployee,
    cdsEmployee_DOC_BRANCH_CODE.AsInteger,
    cdsEmployee_DOC_CODE.AsInteger);
end;

procedure TfrEmployeeFieldEditFrame.cbEmployeeCloseUp(Sender: TObject);
begin
  inherited;
  if (not ReadOnly) and
     cdsEmployeeEMPLOYEE_CODE.IsNull and
     (TickCountDiff(FComboDropDownTickCount, GetTickCount) <= GetDoubleClickTime) then
    begin
      CheckEditMode(cdsEmployee);

      if ShowCurrentEmployee then
        cdsEmployeeEMPLOYEE_CODE.AsInteger:= -1
      else
        cdsEmployeeEMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
    end;
end;

procedure TfrEmployeeFieldEditFrame.cbEmployeeDropDown(Sender: TObject);
begin
  inherited;
  FComboDropDownTickCount:= GetTickCount;
end;

procedure TfrEmployeeFieldEditFrame.cdsEmployeeEMPLOYEE_CODEChange(
  Sender: TField);
begin
  inherited;

  if not FUpdating then
    begin
      FUpdating:= True;
      try
        cdsEmployeeEMPLOYEE_NO.AsVariant:=
          cdsEmployees.Lookup('EMPLOYEE_CODE', Sender.AsVariant, 'EMPLOYEE_NO');

        if not FRefreshingEmployeeCode then
          ForceUpdateRecord;
      finally
        FUpdating:= False;
      end;
    end;
end;

procedure TfrEmployeeFieldEditFrame.cdsEmployeeEMPLOYEE_NOChange(
  Sender: TField);
begin
  inherited;

  if not FUpdating then
    begin
      FUpdating:= True;
      try
        cdsEmployeeEMPLOYEE_CODE.AsVariant:=
          cdsEmployees.Lookup('EMPLOYEE_NO', Sender.AsVariant, 'EMPLOYEE_CODE');

        ForceUpdateRecord;

        if not Sender.IsNull and cdsEmployeeEMPLOYEE_CODE.IsNull then
          Sender.Clear;
      finally
        FUpdating:= False;
      end;
    end;
end;

procedure TfrEmployeeFieldEditFrame.cdsEmployeeEMPLOYEE_NOSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if (Trim(Text) = '-') then
    begin
      if ShowCurrentEmployee then
        Sender.AsInteger:= -1
      else
        Sender.AsVariant:= cdsEmployees.Lookup('EMPLOYEE_CODE', LoginContext.UserCode, 'EMPLOYEE_NO');
    end
  else
    Sender.AsVariant:= IntToVar(StrToIntDef(Text, 0));
end;

procedure TfrEmployeeFieldEditFrame.cdsEmployeesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;

  cdsEmployees.Params.ParamByName('SPECIAL_PROFESSION_EMPLOYEE').AsInteger:=
    Ord(SpecialProffesionEmployee);
  cdsEmployees.Params.ParamByName('REQUIRED_PROFESSION_CODE').AsInteger:=
    RequiredProfessionCode;
  cdsEmployees.Params.ParamByName('REQUIRED_OCC_WORK_DEPT_CODE').AsInteger:=
    RequiredOccupationWorkDeptCode;
  cdsEmployees.Params.ParamByName('SHOW_USERS_ONLY').AsInteger:=
    Ord(ShowUsersOnly);
end;

procedure TfrEmployeeFieldEditFrame.cdsEmployee_EMPLOYEE_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if ShowAllWhenEmpty then
    AllWhenNullGetText(Sender, Text, DisplayText)
  else
    Text:= Sender.AsString;
end;

procedure TfrEmployeeFieldEditFrame.DataChange(Sender: TObject);
begin
  if not FUpdating and
     not FInDataChange and
     (FieldCount > 0) and
     Assigned(Fields[0]) then
    begin
      FInDataChange:= True;
      try
        InternalOpenDataSetsIfNeeded;
        cdsEmployeeEMPLOYEE_CODE.AsVariant:= Fields[0].AsVariant;

        // workaround na TDBEdit
        RefreshDBEdit(edtEmployeeName);
      finally
        FInDataChange:= False;
      end;  { try }
    end;
end;

procedure TfrEmployeeFieldEditFrame.edtEmployeeNoChange(Sender: TObject);
begin
  inherited;
  if not FUpdating then
    Modified;
end;

procedure TfrEmployeeFieldEditFrame.UpdateData(Sender: TObject);
begin
  if not FInDataChange and
     not SettingModified and
     not SettingEdit then
    begin
      Assert(cdsEmployee.Active);
      Assert(FieldCount > 0);
      Assert(Assigned(Fields[0]));
      Assert(Assigned(Fields[0].DataSet));

      cdsEmployee.UpdateRecord;

      try
        CheckEditMode(Fields[0].DataSet);
        Fields[0].AsVariant:= cdsEmployeeEMPLOYEE_CODE.AsVariant;
      except
        Reset;
        raise;
      end;  { try }
    end;
end;

end.

