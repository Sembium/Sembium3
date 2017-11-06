unit fEmployee;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  AbmesFields, fTreeNodeFieldEditFrame, fDeptFieldEditFrame, Mask, DBCtrls,
  fCompanyStatus, fPartnerFieldEditFrame, fPartnerFieldEditFrameBald,
  ComCtrls, GridsEh, DBGridEh, AbmesDBGrid, fFieldEditFrame,
  fEmployeeDisciplineEvents, ToolWin, ColorNavigator, fBaseFrame, fDBFrame,
  fDualGridFrame, AbmesClientDataSet, JvComponent, JvCaptionButton,
  JvComponentBase, AbmesDBCheckBox, fStatusAbstract, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh,
  System.Actions;

type
  TfmEmployee = class(TEditForm)
    cdsDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsDataFIRST_NAME: TAbmesWideStringField;
    cdsDataMIDDLE_NAME: TAbmesWideStringField;
    cdsDataLAST_NAME: TAbmesWideStringField;
    cdsDataABBREV: TAbmesWideStringField;
    cdsDataEGN: TAbmesWideStringField;
    cdsDataEMPLOYEE_NAME: TAbmesWideStringField;
    cdsDataCURRENT_DEPT_CODE: TAbmesFloatField;
    cdsDataCURRENT_DEPT_NAME: TAbmesWideStringField;
    cdsDataCURRENT_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataEDUCATION_CODE: TAbmesFloatField;
    cdsDataqryEmployeeDisciplineEvents: TDataSetField;
    pnlPrintButton: TPanel;
    btnPrint: TBitBtn;
    pcMain: TPageControl;
    tsProfessions: TTabSheet;
    frProfessions: TDualGridFrame;
    tsDiscplineEvents: TTabSheet;
    cdsEmployeeProfessions: TAbmesClientDataSet;
    cdsEmployeeNotProfessions: TAbmesClientDataSet;
    cdsEmployeeProfessionsEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeProfessionsPROFESSION_CODE: TAbmesFloatField;
    cdsEmployeeProfessionsPROFESSION_NAME: TAbmesWideStringField;
    cdsEmployeeNotProfessionsEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeNotProfessionsPROFESSION_CODE: TAbmesFloatField;
    cdsEmployeeNotProfessionsPROFESSION_NAME: TAbmesWideStringField;
    cdsDataqryEmployeeProfessions: TDataSetField;
    cdsEmployeeProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    cdsEmployeeNotProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    pnlProfessionsGridNavigators: TPanel;
    navProfessionsGridData: TDBColorNavigator;
    navProfessionsOtherGridData: TDBColorNavigator;
    tlbProfessionsDocs: TToolBar;
    btnProfessionsDocs: TSpeedButton;
    tlbProfessionsOtherDataDocs: TToolBar;
    btnProfessionsOtherDataDocs: TSpeedButton;
    cdsEmployeeProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsEmployeeProfessionsDOC_CODE: TAbmesFloatField;
    cdsEmployeeNotProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsEmployeeNotProfessionsDOC_CODE: TAbmesFloatField;
    cdsDataCOMPANY_CODE: TAbmesFloatField;
    cdsDataqryEmployeeOccupations: TDataSetField;
    cdsEmployeeOccupations: TAbmesClientDataSet;
    cdsEmployeeOccupationsIS_MAIN: TAbmesFloatField;
    cdsEmployeeOccupationsOCCUPATION_NAME: TAbmesWideStringField;
    cdsEmployeeOccupationsDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsEmployeeOccupationsDEPT_NAME: TAbmesWideStringField;
    cdsEmployeeOccupationsIS_EXTERNAL: TAbmesFloatField;
    cdsEmployeeOccupationsIS_RECURRENT: TAbmesFloatField;
    cdsEmployeeOccupationsASSIGNMENT_DAY_DIFF: TAbmesFloatField;
    cdsEmployeeOccupationsPRODUCT_NAME: TAbmesWideStringField;
    cdsEmployeeOccupationsPRODUCT_NO: TAbmesFloatField;
    tsEmployeeOccupations: TTabSheet;
    grdIncluded: TAbmesDBGrid;
    dsEmployeeOccupations: TDataSource;
    pnlEmployeeOccupationsNavigator: TPanel;
    navEmployeeOccupations: TDBColorNavigator;
    ToolBar1: TToolBar;
    actVIM: TAction;
    actOccupationsAndEmployees: TAction;
    cdsEmployeeOccupationsPRODUCT_CODE: TAbmesFloatField;
    gbPerson: TGroupBox;
    lblPartnerCode: TLabel;
    frPerson: TfrPartnerFieldEditFrameBald;
    lblPartner: TLabel;
    cdsDataIS_EXTERNAL: TAbmesFloatField;
    frCompanyStatus: TfrCompanyStatus;
    lblIsExternal: TLabel;
    lblEducation: TLabel;
    lblAbbrev: TLabel;
    lblEGN: TLabel;
    lblGender: TLabel;
    edtAbbrev: TDBEdit;
    edtEGN: TDBEdit;
    gbEmployeeCode: TGroupBox;
    edtNo: TDBEdit;
    pnlDocs: TToolBar;
    btnDocs: TSpeedButton;
    edtGender: TDBEdit;
    cdsDataEDUCATION_NAME: TAbmesWideStringField;
    edtEducation: TDBEdit;
    btnPerson: TBitBtn;
    actPerson: TAction;
    cdsCompany: TAbmesClientDataSet;
    cdsCompanyCOMPANY_CODE: TAbmesFloatField;
    cdsCompanyEGN: TAbmesWideStringField;
    cdsCompanyFIRST_NAME: TAbmesWideStringField;
    cdsCompanyMIDDLE_NAME: TAbmesWideStringField;
    cdsCompanyLAST_NAME: TAbmesWideStringField;
    cdsCompanyABBREV: TAbmesWideStringField;
    cdsCompanyIS_MALE: TAbmesFloatField;
    cdsCompanyEDUCATION_NAME: TAbmesWideStringField;
    cdsCompanyEDUCATION_CODE: TAbmesFloatField;
    edtIsExternal: TDBEdit;
    cdsEmployeeOccupationsOCCUPATION_HAS_DOCS: TAbmesFloatField;
    cdsEmployeeOccupationsOCCUPATION_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsEmployeeOccupationsOCCUPATION_DOC_CODE: TAbmesFloatField;
    cdsEmployeeOccupationsPRODUCT_HAS_DOCS: TAbmesFloatField;
    cdsEmployeeOccupationsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsEmployeeOccupationsPRODUCT_DOC_CODE: TAbmesFloatField;
    tlbOccupationDocs: TToolBar;
    btnOccupationDocs: TSpeedButton;
    lblOccupationDocs: TLabel;
    cdsDataIS_MALE: TAbmesFloatField;
    sepOccupationDocs: TToolButton;
    btnProductDocs: TSpeedButton;
    lblProductDocs: TLabel;
    btnVIM: TSpeedButton;
    sepProductDocs: TToolButton;
    cdsEmployeeOccupationsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeOccupationsASSIGNMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsEmployeeOccupationsASSIGNMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsEmployeeOccupationsASSIGNMENT_PERIOD_STATUS_CODE: TAbmesFloatField;
    actPastEmployeeOccupations: TAction;
    actPresentEmployeeOccupations: TAction;
    actFutureEmployeeOccupations: TAction;
    btnPastEmployeeOccupations: TSpeedButton;
    sepPastEmployeeOccupations: TToolButton;
    btnFutureEmployeeOccupations: TSpeedButton;
    btnPresentEmployeeOccupations: TSpeedButton;
    actOccupationEmployee: TAction;
    actEmployeeDayAbsences: TAction;
    actEmployeePresenceDeviation: TAction;
    pnlBottomLeftButtons: TPanel;
    btnOccupationsAndEmployees: TBitBtn;
    btnEmployeeDayAbsences: TBitBtn;
    btnEmployeePresenceDeviation: TBitBtn;
    cdsCompanyIS_EXTERNAL: TAbmesFloatField;
    frEmployeeDisciplineEvents: TfrEmployeeDisciplineEvents;
    chkIsInactive: TAbmesDBCheckBox;
    cdsDataIS_INACTIVE: TAbmesFloatField;
    frCurrentDept: TfrDeptFieldEditFrame;
    cdsData_EMPLOYEE_NO: TAbmesFloatField;
    cdsEmployeeProfessionsPROFESSION_FULL_NO: TAbmesWideStringField;
    cdsEmployeeNotProfessionsPROFESSION_FULL_NO: TAbmesWideStringField;
    cdsEmployeeProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsEmployeeNotProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataCURRENT_DEPT_CODEChange(Sender: TField);
    procedure btnDocsClick(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsEmployeeProfessionsNewRecord(DataSet: TDataSet);
    procedure cdsEmployeeNotProfessionsBeforeOpen(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure btnProfessionsDocsClick(Sender: TObject);
    procedure btnProfessionsOtherDataDocsClick(Sender: TObject);
    procedure actVIMUpdate(Sender: TObject);
    procedure actVIMExecute(Sender: TObject);
    procedure actOccupationsAndEmployeesExecute(Sender: TObject);
    procedure grdIncludedDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure cdsEmployeeOccupationsASSIGNMENT_DAY_DIFFGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure actOccupationsAndEmployeesUpdate(Sender: TObject);
    procedure actPersonExecute(Sender: TObject);
    procedure cdsDataCOMPANY_CODEChange(Sender: TField);
    procedure btnOccupationDocsClick(Sender: TObject);
    procedure btnProductDocsClick(Sender: TObject);
    procedure cdsEmployeeOccupationsASSIGNMENT_BEGIN_DATEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsEmployeeOccupationsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actPastPresentFutureEmployeeOccupationsExecute(Sender: TObject);
    procedure cdsEmployeeOccupationsASSIGNMENT_PERIOD_STATUS_CODEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure actOccupationEmployeeUpdate(Sender: TObject);
    procedure actOccupationEmployeeExecute(Sender: TObject);
    procedure grdIncludedDblClick(Sender: TObject);
    procedure actEmployeeDayAbsencesExecute(Sender: TObject);
    procedure actEmployeePresenceDeviationExecute(Sender: TObject);
  private
    FEditDisciplineEventOnly: Boolean;
    procedure RefilterEmployeeOccupations;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure DoApplyUpdates; override;
    class function CanUseDocs: Boolean; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;
  end;

implementation

uses
  uUtils, dMain, fTreeSelectForm, uTreeClientUtils, fCompany,
  uClientTypes, uDocUtils, fVIMQuantity, uOpenVIMConsts, uCompanyKinds,
  fOccupationsAndEmployees, uClientUtils, fDBDataForm, fOccupationAndEmployee,
  fEmployeeDayAbsences, fEmployeePresenceDeviation, uUserActivityConsts,
  uProducts, uClientDateTime;

{$R *.DFM}

resourcestring
  SInvalidEGN = 'Въведения ЕГН/ЛНЧ е грешен';
  SPastPeriodStatusAbbrev = 'М - Минало';
  SPresentPeriodStatusAbbrev = 'Н - Настоящо';
  SFuturePeriodStatusAbbrev = 'Б - Бъдещо';

{ TfmEmployee }

class function TfmEmployee.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmEmployee.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (not cdsDataCOMPANY_CODE.IsNull) and
     ( (Length(cdsDataEGN.AsString) <> 10) or
       ( not ValidEGN(StrToInt64(cdsDataEGN.AsString), cdsDataIS_MALE.AsBoolean) and
         not ValidLNCh(StrToInt64(cdsDataEGN.AsString))
       )
     ) then
    raise Exception.Create(SInvalidEGN);

  if (DataSet.State = dsInsert) and cdsDataEMPLOYEE_CODE.IsNull then 
    cdsDataEMPLOYEE_CODE.AsInteger:= dmMain.SvrHumanResource.GetNewEmployeeCode;
end;

procedure TfmEmployee.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataIS_MALE.AsBoolean:= True;
  cdsDataIS_EXTERNAL.AsBoolean:= False;
  cdsDataIS_INACTIVE.AsBoolean:= False;
end;

procedure TfmEmployee.cdsDataCURRENT_DEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsDataCURRENT_DEPT_CODE, cdsDataCURRENT_DEPT_NAME, cdsDataCURRENT_DEPT_IDENTIFIER);
end;

procedure TfmEmployee.FormCreate(Sender: TObject);
begin
  inherited;

  pcMain.TabIndex:= 0;

  frCurrentDept.FieldNames:= 'CURRENT_DEPT_CODE';
  frPerson.FieldNames:= 'COMPANY_CODE';
  frPerson.FilterCompanyKind:= ckWorker;
  
  RegisterDateField(frEmployeeDisciplineEvents.cdsGridDataDISCIPLINE_EVENT_DATE);
  RegisterDateField(frEmployeeDisciplineEvents.cdsGridDataSTORNO_DATE);
  RegisterDateFields(cdsEmployeeOccupations);

  RegisterFieldTextVisibility(IsEGNVisible, cdsDataEGN);
end;

procedure TfmEmployee.DoApplyUpdates;
begin
  inherited;
  dmMain.RefreshLoginContext;
end;

procedure TfmEmployee.btnDocsClick(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if (EditMode = emReadOnly) or
     FEditDisciplineEventOnly or
     not LoginContext.HasUserActivity(uaEmployeesEdit) then
    em:= emReadOnly
  else
    em:= emEdit;

  if (em <> emReadOnly) then
    CheckEditMode(cdsData);

  dmDocClient.DSOpenDoc(em, Sender as TControl, dotEmployee, dsData.DataSet);
end;

class function TfmEmployee.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmEmployee.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmEmployee.CloseDataSets;
begin
  cdsEmployeeNotProfessions.Close;
  inherited;
end;

procedure TfmEmployee.OpenDataSets;
begin
  inherited;
  cdsEmployeeNotProfessions.Open;
end;

procedure TfmEmployee.cdsEmployeeProfessionsNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsEmployeeProfessionsEMPLOYEE_CODE.Assign(cdsDataEMPLOYEE_CODE);
end;

procedure TfmEmployee.cdsEmployeeNotProfessionsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsEmployeeNotProfessions.Params, cdsData);
end;

procedure TfmEmployee.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frCompanyStatus) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  if (AFrame = frPerson) or
     (AFrame = frCurrentDept) or
     (AFrame = frProfessions) then
    begin
      AFrame.ReadOnly:=
        (EditMode = emReadOnly) or
        FEditDisciplineEventOnly or
        not LoginContext.HasUserActivity(uaEmployeesEdit);
      Exit;
    end;                                                  

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmEmployee.actFormUpdate(Sender: TObject);
begin
  inherited;

  btnProfessionsDocs.Enabled:= cdsEmployeeProfessionsHAS_DOCUMENTATION.AsBoolean;
  btnProfessionsOtherDataDocs.Enabled:= cdsEmployeeNotProfessionsHAS_DOCUMENTATION.AsBoolean;
  btnOccupationDocs.Enabled:= cdsEmployeeOccupationsOCCUPATION_HAS_DOCS.AsBoolean;
  btnProductDocs.Enabled:= cdsEmployeeOccupationsPRODUCT_HAS_DOCS.AsBoolean;

  chkIsInactive.ReadOnly:=
    (EditMode = emReadOnly) or
    FEditDisciplineEventOnly or
    not LoginContext.HasUserActivity(uaEmployeesEdit);
end;

procedure TfmEmployee.btnProfessionsDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnProfessionsDocs, dotProfession, frProfessions.dsData.DataSet);
end;

procedure TfmEmployee.btnProfessionsOtherDataDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnProfessionsOtherDataDocs, dotProfession, frProfessions.dsExcluded.DataSet);
end;

procedure TfmEmployee.actVIMUpdate(Sender: TObject);
begin
  inherited;
  actVIM.Enabled:=
    not (cdsEmployeeOccupations.Bof and cdsEmployeeOccupations.Eof) and
    not cdsEmployeeOccupationsPRODUCT_CODE.IsNull;
end;

procedure TfmEmployee.actVIMExecute(Sender: TObject);
begin
  inherited;
  ShowProductVIM(nil, cdsEmployeeOccupationsPRODUCT_CODE.AsInteger, ContextDate, False, vofVIMOpenedFromSale, pcNormal); 
end;

procedure TfmEmployee.actOccupationsAndEmployeesExecute(Sender: TObject);
begin
  inherited;
  TfmOccupationsAndEmployees.ShowForm(nil, cdsData, emReadOnly, doNone, False);
end;

procedure TfmEmployee.grdIncludedDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmEmployee.Initialize;
begin
  inherited;

  if (EditMode <> emInsert) then
    begin
      // recalc calc fields
      cdsData.Last;
      cdsData.First;
    end;


  FEditDisciplineEventOnly:=
    Assigned(OuterDataSet) and
    Assigned(OuterDataSet.FindField('DISCIPLINE_EVENT_CODE')) and
    frEmployeeDisciplineEvents.LocateDisciplineEvent(OuterDataSet.FieldByName('DISCIPLINE_EVENT_CODE').AsInteger);

  if FEditDisciplineEventOnly then
    pcMain.ActivePage:= tsDiscplineEvents
  else
    pcMain.ActivePage:= tsProfessions;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotEmployee, dsData.DataSet);
end;

procedure TfmEmployee.cdsEmployeeOccupationsASSIGNMENT_DAY_DIFFGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull then
    Text:= 'Ґ'
  else
    Text:= Sender.AsString;
end;

procedure TfmEmployee.actOccupationsAndEmployeesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsEmployeeOccupations.Active and
    not (cdsEmployeeOccupations.Bof and cdsEmployeeOccupations.Eof);
end;

procedure TfmEmployee.actPersonExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaPerson);
  TfmCompany.ShowForm(nil, nil, cdsDataCOMPANY_CODE.AsInteger, emReadOnly);
end;

procedure TfmEmployee.cdsDataCOMPANY_CODEChange(Sender: TField);
begin
  inherited;

  with cdsCompany do
    begin
      SetParams(Params, cdsData);
      Open;
      try
        cdsDataFIRST_NAME.AsVariant:= cdsCompanyFIRST_NAME.AsVariant;
        cdsDataMIDDLE_NAME.AsVariant:= cdsCompanyMIDDLE_NAME.AsVariant;
        cdsDataLAST_NAME.AsVariant:= cdsCompanyLAST_NAME.AsVariant;
        cdsDataABBREV.AsVariant:= cdsCompanyABBREV.AsVariant;
        cdsDataEGN.AsVariant:= cdsCompanyEGN.AsVariant;
        cdsDataIS_MALE.AsVariant:= cdsCompanyIS_MALE.AsVariant;
        cdsDataIS_EXTERNAL.AsVariant:= cdsCompanyIS_EXTERNAL.AsVariant;
        cdsDataEDUCATION_CODE.AsVariant:= cdsCompanyEDUCATION_CODE.AsVariant;
        cdsDataEDUCATION_NAME.AsVariant:= cdsCompanyEDUCATION_NAME.AsVariant;
      finally
        Close;
      end;
    end;
end;

procedure TfmEmployee.btnOccupationDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, Sender as TControl, dotOccupation,
    cdsEmployeeOccupationsOCCUPATION_DOC_BRANCH_CODE, cdsEmployeeOccupationsOCCUPATION_DOC_CODE);
end;

procedure TfmEmployee.btnProductDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, Sender as TControl, dotProduct,
    cdsEmployeeOccupationsPRODUCT_DOC_BRANCH_CODE, cdsEmployeeOccupationsPRODUCT_DOC_CODE);
end;

procedure TfmEmployee.cdsEmployeeOccupationsASSIGNMENT_BEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if cdsEmployeeOccupationsASSIGNMENT_BEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsShortString(cdsEmployeeOccupationsASSIGNMENT_BEGIN_DATE.AsDateTime, cdsEmployeeOccupationsASSIGNMENT_END_DATE.AsDateTime);
end;

procedure TfmEmployee.cdsEmployeeOccupationsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  with cdsEmployeeOccupationsASSIGNMENT_PERIOD_STATUS_CODE do
    Accept:=
      ((AsInteger = 1) and actPastEmployeeOccupations.Checked) or
      ((AsInteger = 2) and actPresentEmployeeOccupations.Checked) or
      ((AsInteger = 3) and actFutureEmployeeOccupations.Checked);
end;

procedure TfmEmployee.RefilterEmployeeOccupations;
var
  EmployeeOccupationCode: Integer;
begin
  with cdsEmployeeOccupations do
    begin
      DisableControls;
      try
        EmployeeOccupationCode:= cdsEmployeeOccupationsOCCUPATION_EMPLOYEE_CODE.AsInteger;

        Filtered:= False;
        Filtered:= True;

        Locate('OCCUPATION_EMPLOYEE_CODE', EmployeeOccupationCode, []);
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmEmployee.actPastPresentFutureEmployeeOccupationsExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  RefilterEmployeeOccupations;
end;

procedure TfmEmployee.cdsEmployeeOccupationsASSIGNMENT_PERIOD_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
const
  PeriodStatusAbbrevs: array[1..3] of string =
    (SPastPeriodStatusAbbrev, SPresentPeriodStatusAbbrev, SFuturePeriodStatusAbbrev);
begin
  inherited;
  if not Sender.IsNull then
    Text:= PeriodStatusAbbrevs[Sender.AsInteger];
end;

procedure TfmEmployee.actOccupationEmployeeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsEmployeeOccupations.Active and
    (cdsEmployeeOccupations.RecordCount > 0);
end;

procedure TfmEmployee.actOccupationEmployeeExecute(Sender: TObject);
begin
  inherited;
  TfmOccupationAndEmployee.ShowForm(nil, cdsEmployeeOccupations, emReadOnly);
end;

procedure TfmEmployee.grdIncludedDblClick(Sender: TObject);
begin
  inherited;
  actOccupationEmployee.Execute;
end;

procedure TfmEmployee.actEmployeeDayAbsencesExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaEmployeeDayAbsences);
  TfmEmployeeDayAbsences.ShowForm(nil, cdsData, emReadOnly);
end;

procedure TfmEmployee.actEmployeePresenceDeviationExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaEmployeePresenceDeviation);
  TfmEmployeePresenceDeviation.ShowForm(nil, cdsData, emReadOnly);
end;

end.


