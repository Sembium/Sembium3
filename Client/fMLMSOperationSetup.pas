unit fMLMSOperationSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, Menus,
  JvButtons, ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields, 
  Mask, DBCtrls, JvToolEdit, AbmesReport, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateFieldEditFrame, dDocClient, uClientTypes,
  JvExControls, JvComponent, JvDBLookup, JvCaptionButton, ComCtrls, ToolWin,
  JvComponentBase, fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald, System.Actions;

type
  TfmMLMSOperationSetup = class(TBevelEditForm)
    cdsDataMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsDataSETUP_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataSETUP_TEAM_CODE: TAbmesFloatField;
    cdsDataSETUP_PROFESSION_CODE: TAbmesFloatField;
    cdsData_SETUP_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsData_SETUP_TEAM_NAME: TAbmesWideStringField;
    cdsDataSETUP_DATE: TAbmesSQLTimeStampField;
    cdsProfessionEmployeeMonthTeams: TAbmesClientDataSet;
    cdsProfessionEmployeeMonthTeamsTEAM_CODE: TAbmesFloatField;
    cdsProfessionEmployeeMonthTeamsTEAM_NAME: TAbmesWideStringField;
    cdsProfessionEmployeeMonthTeamsHAS_THE_PROFESSION: TAbmesFloatField;
    cdsProfessionEmployeeMonthTeamsHAS_THE_EMPLOYEE: TAbmesFloatField;
    cdsData_SETUP_EMPLOYEE_OR_TEAM_NAME: TAbmesWideStringField;
    smrSetup: TAbmesMatrixReport;
    gbMovementDateTime: TGroupBox;
    lblMovementTime: TLabel;
    lblSetupDate: TLabel;
    edtSetupTime: TDBEdit;
    gbSale: TGroupBox;
    lblSalePriority: TLabel;
    edtSalePriority: TDBEdit;
    gbOperation: TGroupBox;
    lblMllNo: TLabel;
    lblForkNo: TLabel;
    lblStage: TLabel;
    lblRemainingWorkdays: TLabel;
    lblDetailName: TLabel;
    lblLineDetailTechQuantity: TLabel;
    txtDetailTechMeasureAbbrev: TDBText;
    imgRemainingWorkdays: TImage;
    lblOperation: TLabel;
    edtMllNo: TDBEdit;
    edtForkNo: TDBEdit;
    edtStage: TDBEdit;
    edtRemainingWorkdays: TDBEdit;
    edtDetailName: TDBEdit;
    edtLineDetailTechQuantity: TDBEdit;
    edtOperation: TDBEdit;
    pnlFromBottom: TPanel;
    pnlOperationNotes: TPanel;
    lblOperationNotes: TLabel;
    edtOperationNotes: TDBEdit;
    pnlFromEmployeeOrTeam: TPanel;
    gbEmployeeOrTeam: TGroupBox;
    pnlProduct: TPanel;
    lblProductName: TLabel;
    lblTotalProductTechQuantity: TLabel;
    txtProductTechMeasureAbbrev: TDBText;
    edtProductName: TDBEdit;
    edtTotalProductTechQuantity: TDBEdit;
    lblEmployee: TLabel;
    lblSetupTeamName: TLabel;
    edtSetupTeamCode: TDBEdit;
    cbSetupTeamName: TJvDBLookupCombo;
    lblOr: TLabel;
    cdsDataSETUP_TIME: TAbmesSQLTimeStampField;
    cdsDataNO_AS_TEXT: TAbmesWideStringField;
    cdsDataFORK_NO: TAbmesFloatField;
    cdsDataMLMS_IDENTIFIER: TAbmesWideStringField;
    cdsDataDETAIL_CODE: TAbmesFloatField;
    cdsDataDETAIL_NAME: TAbmesWideStringField;
    cdsDataLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsDataDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsDataPRODUCT_NAME: TAbmesWideStringField;
    cdsDataTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsDataPRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataMLMSO_IDENTIFIER: TAbmesWideStringField;
    cdsDataSETUP_PROFESSION_NAME: TAbmesWideStringField;
    cdsDataNOTES: TAbmesWideStringField;
    cdsDataMLMS_REMAINING_WORKDAYS: TAbmesFloatField;
    actStorno: TAction;
    pnlStornoButton: TPanel;
    btnStorno: TBitBtn;
    pnlBottomMiddleButtons: TPanel;
    pnlPrintCheck: TPanel;
    chbPrint: TCheckBox;
    pnlPrintButton: TPanel;
    btnPrint: TBitBtn;
    cdsDataSETUP_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsDataSETUP_TEAM_NAME: TAbmesWideStringField;
    frSetupDate: TfrDateFieldEditFrame;
    cdsDataDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsDataSALE_PRIORITY_COLOR: TAbmesFloatField;
    cdsDataSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsDataPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField;
    edtSaleNo: TDBEdit;
    cdsDataMLMS_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataMLMS_DOC_CODE: TAbmesFloatField;
    cdsDataMLMS_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsDataMLMSO_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataMLMSO_DOC_CODE: TAbmesFloatField;
    cdsDataMLMSO_HAS_DOC_ITEMS: TAbmesFloatField;
    tlbStageDocs: TToolBar;
    btnStageDocs: TToolButton;
    tlbOperationDocs: TToolBar;
    btnOperationDocs: TToolButton;
    lblSaleWorkPriority: TLabel;
    edtSaleWorkPriority: TDBEdit;
    cdsDataSALE_PRIORITY_NO: TAbmesFloatField;
    cdsDataSALE_WORK_PRIORITY_NO: TAbmesFloatField;
    frSetupEmployee: TfrEmployeeFieldEditFrameBald;
    cdsData_SETUP_EMPLOYEE_NO: TAbmesFloatField;
    pnlSetupCount: TPanel;
    gbSetupCount: TGroupBox;
    edtSetupCount: TDBEdit;
    edtDoneSetupCount: TDBEdit;
    lblSetupCount: TLabel;
    lblDoneSetupCount: TLabel;
    cdsDataSETUP_COUNT: TAbmesFloatField;
    cdsDataDONE_SETUP_COUNT: TAbmesFloatField;
    cdsDataDEPT_CODE: TAbmesFloatField;
    cdsDataSETUP_PROF_USED_BY_EMPLOYEES: TAbmesFloatField;
    cdsDataSETUP_PROF_USED_BY_TEAMS: TAbmesFloatField;
    cdsDataHAS_MOVEMENTS: TAbmesFloatField;
    cdsDataMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    procedure frSetupEmployeecdsEmployeesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsProfessionEmployeeMonthTeamsBeforeOpen(DataSet: TDataSet);
    procedure cdsProfessionEmployeeMonthTeamsFilterRecord(
      DataSet: TDataSet; var Accept: Boolean);
    procedure cdsDataSETUP_DATEChange(Sender: TField);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure actStornoExecute(Sender: TObject);
    procedure smrSetupGetFieldValues(Sender: TObject;
      FieldValues: TReportFieldValues);
    procedure cdsDataBeforeClose(DataSet: TDataSet);
    procedure btnStageDocsClick(Sender: TObject);
    procedure btnOperationDocsClick(Sender: TObject);
  private
    FOwnSetup: Boolean;
    FHadSetup: Boolean;
    FStorned: Boolean;
    FNewSetupIsDone: Boolean;
    FStartSetupEmployeeCode: Integer;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetRecordReadOnly: Boolean; override;
    procedure DoApplyUpdates; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ANewSetupIsDone: PBoolean = nil): Boolean;
  end;

implementation

uses
  dMain, uClientUtils, uUtils, uUserActivityConsts, AbmesDialogs, uClientAppResources,
  rMLMSOperationSetup, StrUtils, uDocUtils, Math, uClientDateTime;

{$R *.dfm}

resourcestring
  SEmployeeOrTeamRequired = 'Не сте задали Служител или Екип!';
  SInvalidTeam = 'Невалиден Екип!';
  SInvalidEmployee = 'Невалиден служител!';
  SMatrixPrint = 'Печат на матричен принтер?';
  SConfirmStorno = 'Анулиране с оставане на екран?';
  SIncorrectSetupDate = 'Не можете да отчитате настройка с бъдеща дата!';
  SInactiveDept = 'Не можете да отчитате настройка на неактивно ТП!';
  SExceedingDoneSetupCount = '''%s'' не трябва да надвишава План (%d) и Кратност ОпЗн на ОпТП (%d)!';

  SProfessionNotUsedBy =
    'За тази процесна роля (%s) не може да бъде отчитана настройка поради една от следните причини:' + SLineBreak +
    '  - липсва текущ времеви интервал за ролята;' + SLineBreak +
    '  - за текущия времеви интервал не е разрешено %s отчитане';
  SProfessionNotUsedByEmployees = 'индивидуално';
  SProfessionNotUsedByTeams = 'екипно';
  SCannotAnnul = 'Не можете да анулирате без оставане на екран настройка, след която има отчетени движения!';

const
  MaxProfessionNamePrintLength = 43;
  
{ TfmMLMSOperationSetup }

procedure TfmMLMSOperationSetup.OpenDataSets;

  procedure FilterLookupDataSet(ADataSet: TClientDataSet);
  begin
    with ADataSet do
      begin
        Close;
        Params.ParamByName('PROFESSION_CODE').AsInteger:=
          cdsDataSETUP_PROFESSION_CODE.AsInteger;
        Filtered:= True;
        Open;
      end;  { with }
  end;

begin
  cdsProfessionEmployeeMonthTeams.Open;
  inherited;
  FilterLookupDataSet(cdsProfessionEmployeeMonthTeams);
end;

procedure TfmMLMSOperationSetup.CloseDataSets;
begin
  inherited;
  cdsProfessionEmployeeMonthTeams.Close;
end;

procedure TfmMLMSOperationSetup.Initialize;
begin
  inherited;

  FHadSetup:= not cdsDataSETUP_DATE.IsNull;

  FStartSetupEmployeeCode:= cdsDataSETUP_EMPLOYEE_CODE.AsInteger;
  frSetupEmployee.RequiredProfessionCode:= cdsDataSETUP_PROFESSION_CODE.AsInteger;
  frSetupEmployee.cdsEmployees.Filtered:= True;

  if (EditMode = emEdit) and (not FHadSetup) then
    begin
      CheckEditMode(cdsData);
      cdsDataSETUP_DATE.AsDateTime:= ContextDate;
      cdsDataSETUP_TIME.AsDateTime:= ContextTime;
      cdsDataDONE_SETUP_COUNT.AsInteger:= 1;
    end;  { if }
end;

class function TfmMLMSOperationSetup.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmMLMSOperationSetup.cdsDataBeforePost(DataSet: TDataSet);
var
  DeptParallelProcessCount: Integer;
begin
  inherited;

  if (not FHadSetup) or FStorned then
    begin
      CheckRequiredField(cdsDataSETUP_DATE);

      if (cdsDataSETUP_DATE.AsDateTime > ContextDate) then
        begin
          cdsDataSETUP_DATE.FocusControl;
          raise Exception.Create(SIncorrectSetupDate);
        end;

      CheckRequiredField(cdsDataSETUP_TIME);

      if (not cdsDataSETUP_EMPLOYEE_CODE.IsNull) and
         cdsData_SETUP_EMPLOYEE_NAME.IsNull then
        begin
          cdsData_SETUP_EMPLOYEE_NAME.FocusControl;
          raise Exception.Create(SInvalidEmployee);
        end;

      CheckRequiredField(cdsDataDONE_SETUP_COUNT);
      dmMain.SvrDeptsTree.GetDeptPeriodData(
        cdsDataDEPT_CODE.AsInteger, cdsDataSETUP_DATE.AsDateTime,
        DeptParallelProcessCount);
      DeptParallelProcessCount:= Max(DeptParallelProcessCount, 1);

      if (cdsDataDONE_SETUP_COUNT.AsInteger > cdsDataSETUP_COUNT.AsInteger) or
         (cdsDataDONE_SETUP_COUNT.AsInteger > DeptParallelProcessCount) then
        begin
          cdsDataDONE_SETUP_COUNT.FocusControl;
          raise Exception.CreateFmt(SExceedingDoneSetupCount,
            [cdsDataDONE_SETUP_COUNT.DisplayLabel, cdsDataSETUP_COUNT.AsInteger, DeptParallelProcessCount]);
        end;

      if (not cdsDataSETUP_TEAM_CODE.IsNull) and
         cdsData_SETUP_TEAM_NAME.IsNull then
        begin
          cdsData_SETUP_TEAM_NAME.FocusControl;
          raise Exception.Create(SInvalidTeam);
        end;

      if cdsDataSETUP_EMPLOYEE_CODE.IsNull and cdsDataSETUP_TEAM_CODE.IsNull then
        begin
          cdsData_SETUP_EMPLOYEE_NAME.FocusControl;
          raise Exception.Create(SEmployeeOrTeamRequired);
        end;

      if ((cdsDataSETUP_DATE.AsDateTime < cdsDataDEPT_BEGIN_DATE.AsDateTime) or
          ((not cdsDataDEPT_END_DATE.IsNull) and (cdsDataSETUP_DATE.AsDateTime > cdsDataDEPT_END_DATE.AsDateTime))) then
        raise Exception.Create(SInactiveDept);

      if (not cdsDataSETUP_EMPLOYEE_CODE.IsNull) and
         cdsDataSETUP_TEAM_CODE.IsNull and
         (not cdsDataSETUP_PROF_USED_BY_EMPLOYEES.AsBoolean) then
        raise Exception.CreateFmt(SProfessionNotUsedBy, [cdsDataSETUP_PROFESSION_NAME.AsString, SProfessionNotUsedByEmployees]);

      if (not cdsDataSETUP_TEAM_CODE.IsNull) and
         (not cdsDataSETUP_PROF_USED_BY_TEAMS.AsBoolean) then
        raise Exception.CreateFmt(SProfessionNotUsedBy, [cdsDataSETUP_PROFESSION_NAME.AsString, SProfessionNotUsedByTeams]);
    end;  { if }

  cdsDataSETUP_EMPLOYEE_NAME.Assign(cdsData_SETUP_EMPLOYEE_NAME);
  cdsDataSETUP_TEAM_NAME.Assign(cdsData_SETUP_TEAM_NAME);
end;

procedure TfmMLMSOperationSetup.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  ro:= (EditMode = emReadOnly) or (FHadSetup and not FStorned);

  edtSetupTime.ReadOnly:= ro;
  edtSetupTime.Color:= ReadOnlyColors[ro];

  ro:= ro or (cdsData.Active and cdsDataSETUP_DATE.IsNull);

  edtSetupTeamCode.ReadOnly:= ro;
  cbSetupTeamName.ReadOnly:= ro;
  edtDoneSetupCount.ReadOnly:= ro;
  edtSetupTeamCode.Color:= ReadOnlyColors[ro];
  cbSetupTeamName.Color:= ReadOnlyColors[ro];
  edtDoneSetupCount.Color:= ReadOnlyColors[ro];

  pnlPrintCheck.Visible:=
    cdsData.Active and
    (cdsData.State in dsEditModes);
  pnlPrintButton.Visible:=
    cdsData.Active and
    (not (cdsData.State in dsEditModes)) and
    (not cdsDataSETUP_DATE.IsNull);

  pnlProduct.Visible:=
    cdsData.Active and
    (not cdsDataPRODUCT_CODE.IsNull);

  pnlStornoButton.Visible:=
    (EditMode = emEdit) and
    FHadSetup and
    (not FStorned);

  if cdsData.Active then
    begin
      edtSalePriority.Color:= cdsDataSALE_PRIORITY_BACKGROUND_COLOR.AsInteger;
      edtSalePriority.Font.Color:= cdsDataSALE_PRIORITY_COLOR.AsInteger;
    end;

  btnStageDocs.ImageIndex:= cdsDataMLMS_HAS_DOC_ITEMS.AsInteger;
  btnOperationDocs.ImageIndex:= cdsDataMLMSO_HAS_DOC_ITEMS.AsInteger;
end;

procedure TfmMLMSOperationSetup.FormCreate(Sender: TObject);
begin
  inherited;

  ReportClass:= TrptMLMSOperationSetup;

  FOwnSetup:= not LoginContext.HasUserActivity(uaOperationSetup);

  frSetupDate.FieldNames:= 'SETUP_DATE';
  frSetupEmployee.FieldNames:= 'SETUP_EMPLOYEE_CODE';
  frSetupEmployee.DocButtonVisible:= False;
end;

procedure TfmMLMSOperationSetup.frSetupEmployeecdsEmployeesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (not FOwnSetup) or
    (frSetupEmployee.cdsEmployeesEMPLOYEE_CODE.AsInteger = FStartSetupEmployeeCode) or
    (frSetupEmployee.cdsEmployeesEMPLOYEE_CODE.AsInteger = LoginContext.UserCode);
end;

procedure TfmMLMSOperationSetup.cdsProfessionEmployeeMonthTeamsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsProfessionEmployeeMonthTeams.Params.ParamByName('EMPLOYEE_CODE').AsInteger:=
    LoginContext.UserCode;
  cdsProfessionEmployeeMonthTeams.Params.ParamByName('THE_DATE').Value:=
    cdsDataSETUP_DATE.AsVariant;
end;

procedure TfmMLMSOperationSetup.cdsProfessionEmployeeMonthTeamsFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    cdsProfessionEmployeeMonthTeamsHAS_THE_PROFESSION.AsBoolean and
    ((not FOwnSetup) or cdsProfessionEmployeeMonthTeamsHAS_THE_EMPLOYEE.AsBoolean);
end;

procedure TfmMLMSOperationSetup.cdsDataSETUP_DATEChange(Sender: TField);
var
  TeamCode: Variant;
begin
  inherited;

  TeamCode:= cdsDataSETUP_TEAM_CODE.AsVariant;

  cdsProfessionEmployeeMonthTeams.Close;
  cdsProfessionEmployeeMonthTeams.Open;

  if (cdsData.State in dsEditModes) and
     (not VarIsNull(TeamCode)) and
     (not cdsProfessionEmployeeMonthTeams.Locate('TEAM_CODE', TeamCode, [])) then
    cdsDataSETUP_TEAM_CODE.Clear;
end;

function TfmMLMSOperationSetup.GetRecordReadOnly: Boolean;
begin
  Result:=
    (EditMode = emEdit) and
    FOwnSetup and
    ( ( (not cdsDataSETUP_EMPLOYEE_CODE.IsNull) and
        (cdsDataSETUP_EMPLOYEE_CODE.AsInteger <> LoginContext.UserCode) ) or
      ( (not cdsDataSETUP_TEAM_CODE.IsNull) and
        (not cdsProfessionEmployeeMonthTeams.Locate('TEAM_CODE', cdsDataSETUP_TEAM_CODE.AsInteger, [])) ) );
end;

procedure TfmMLMSOperationSetup.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsData_SETUP_EMPLOYEE_NAME.IsNull then
    cdsData_SETUP_EMPLOYEE_OR_TEAM_NAME.Assign(cdsData_SETUP_TEAM_NAME)
  else
    cdsData_SETUP_EMPLOYEE_OR_TEAM_NAME.Assign(cdsData_SETUP_EMPLOYEE_NAME);
end;

procedure TfmMLMSOperationSetup.actPrintExecute(Sender: TObject);
begin
  case MessageDlgEx(SMatrixPrint, mtConfirmation, mbYesNoCancel, 0) of
    mrYes: smrSetup.Print(True);
    mrNo: inherited;
  end;
end;

procedure TfmMLMSOperationSetup.DoApplyUpdates;
begin
  inherited;

  if chbPrint.Checked and ((not FHadSetup) or FStorned) then
    actPrint.Execute;
end;

procedure TfmMLMSOperationSetup.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  gbEmployeeOrTeam.Caption:= ' ' + cdsDataSETUP_PROFESSION_NAME.AsString + ' ';
end;

procedure TfmMLMSOperationSetup.actStornoExecute(Sender: TObject);
begin
  inherited;

  if (cdsDataSETUP_EMPLOYEE_CODE.AsInteger <> LoginContext.UserCode) then
    LoginContext.CheckUserActivity(uaStornoForeignOperationSetup);

  case MessageDlgEx(SConfirmStorno, mtConfirmation, mbYesNoCancel, 0) of
    mrCancel:
      Abort;
    mrYes:
      begin
        ActiveControl:= frSetupDate;
        FStorned:= True;
      end;
    mrNo:
      begin
        if cdsDataHAS_MOVEMENTS.AsBoolean then
          raise Exception.Create(SCannotAnnul);

        CheckEditMode(cdsData);
        cdsDataSETUP_DATE.Clear;
        cdsDataSETUP_TIME.Clear;
        cdsDataSETUP_EMPLOYEE_CODE.Clear;
        cdsDataSETUP_TEAM_CODE.Clear;

        ModalResult:= mrOK;
      end;
  end;
end;

procedure TfmMLMSOperationSetup.smrSetupGetFieldValues(Sender: TObject;
  FieldValues: TReportFieldValues);
begin
  inherited;

  FieldValues.Values['__SALE_IDENTIFIER']:=
    cdsDataPRODUCTION_ORDER_IDENTIFIER.AsString + '/' +
    cdsDataSALE_PRIORITY_NO.AsString + '/' +
    cdsDataSALE_WORK_PRIORITY_NO.AsString;

  FieldValues.Values['__NO_AS_TEXT_AND_FORK']:=
    cdsDataNO_AS_TEXT.AsString + '/' +
    cdsDataFORK_NO.AsString;

  FieldValues.Values['__SETUP_PROFESSION_NAME']:=
    LeftStr(
      cdsDataSETUP_PROFESSION_NAME.AsString +
       StringOfChar('-', MaxProfessionNamePrintLength),
      MaxProfessionNamePrintLength
    );

  FieldValues.Values['COMPANY_SHORT_NAME']:= LoginContext.CompanyShortName;
  FieldValues.Values['AppName']:= SAppName;
end;

procedure TfmMLMSOperationSetup.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frSetupDate) or
     (AFrame = frSetupEmployee) then
    begin
      AFrame.ReadOnly:= (EditMode = emReadOnly) or (FHadSetup and not FStorned);
      Exit;
    end;

  inherited;
end;

procedure TfmMLMSOperationSetup.cdsDataBeforeClose(DataSet: TDataSet);
begin
  inherited;
  FNewSetupIsDone:= not cdsDataSETUP_DATE.IsNull;
end;

class function TfmMLMSOperationSetup.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ANewSetupIsDone: PBoolean): Boolean;
var
  f: TfmMLMSOperationSetup;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
    f.InternalShowForm;
    Result:= f.IsDataModified;

    if Assigned(ANewSetupIsDone) then
      ANewSetupIsDone^:= f.FNewSetupIsDone;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmMLMSOperationSetup.btnStageDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TControl), dotRealStage,
    cdsDataMLMS_DOC_BRANCH_CODE, cdsDataMLMS_DOC_CODE);
end;

procedure TfmMLMSOperationSetup.btnOperationDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TControl), dotRealOperation,
    cdsDataMLMSO_DOC_BRANCH_CODE,
    cdsDataMLMSO_DOC_CODE,
    cdsDataMLMS_OPERATION_VARIANT_NO.AsInteger);
end;

end.



