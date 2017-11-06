unit fMLMSOperationVariants;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, JvButtons, ParamDataSet, ActnList,
  DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesFields,
  fBaseFrame, fDBFrame, fFieldEditFrame, Mask, uClientTypes, dDocClient,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameBald, fDateIntervalFrame, JvComponent,
  JvCaptionButton, JvComponentBase, DBGridEhGrouping, fEditForm, uClientConsts, fDBDataForm, ToolCtrlsEh,
  DBGridEhToolCtrls, System.Actions;

type
  [VerticalResizeStep(DualGridRowHeight)]
  [PrintActiveGridEnabled(False)]
  TfmMLMSOperationVariants = class(TGridForm)
    cdsGridDataMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLMS_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsGridDataIS_ACTIVE: TAbmesFloatField;
    cdsGridDataSHOW_NO: TAbmesWideStringField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataDEPT_NAME: TAbmesWideStringField;
    cdsGridDataSETUP_PROFESSION_CODE: TAbmesFloatField;
    cdsGridDataSETUP_PROFESSION_NAME: TAbmesWideStringField;
    cdsGridDataPROFESSION_NAME: TAbmesWideStringField;
    cdsGridDataSETUP_EFFORT_COEF: TAbmesFloatField;
    cdsGridDataSETUP_HOUR_PRICE: TAbmesFloatField;
    cdsGridDataSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataEFFORT_COEF: TAbmesFloatField;
    cdsGridDataHOUR_PRICE: TAbmesFloatField;
    cdsGridDataHOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataNOTES: TAbmesWideStringField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridData_MAX_IS_ACTIVE: TAggregateField;
    pnlHeader: TPanel;
    gbDetail: TGroupBox;
    txtDetailTechMeasureAbbrev: TDBText;
    lblTreeNodeName: TLabel;
    lblDetailTechQuantity: TLabel;
    edtDetailTechQuantity: TDBEdit;
    gbStage: TGroupBox;
    pnlHeaderSpace: TPanel;
    cdsGridData_SHOW_HOUR_TECH_QUANTITY: TAbmesWideStringField;
    sepBeforeOperationDoc: TToolButton;
    btnDeptDoc: TSpeedButton;
    cdsGridDataMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataHAS_OPERATION_MOVEMENTS: TAbmesFloatField;
    cdsGridDataTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    cdsGridDataTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsGridDataTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    btnEditData: TBitBtn;
    cdsGridData_SHOW_TREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridData_SHOW_TREATMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataHAS_SPECIAL_CONTROL: TAbmesFloatField;
    cdsGridDataVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_VARIANT_DETAIL_TECH_QTY: TAggregateField;
    cdsGridData_MAX_WORKDAY_NO: TAggregateField;
    cdsGridDataMLMS_OPERATION_NO: TAbmesFloatField;
    cdsGridDataMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsDataMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataMLMS_OBJECT_CODE: TAbmesFloatField;
    cdsDataSALE_IDENTIFIER: TAbmesWideStringField;
    cdsDataDETAIL_CODE: TAbmesFloatField;
    cdsDataDETAIL_NAME: TAbmesWideStringField;
    cdsDataDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsDataML_MODEL_STAGE_NO: TAbmesFloatField;
    cdsDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDataTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsDataOUTGOING_WORKDAYS: TAbmesFloatField;
    cdsDataTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataMLMS_OPERATION_NO: TAbmesFloatField;
    cdsGridDataHAS_CAPACITY_DEFICIT: TAbmesFloatField;
    gbSale: TGroupBox;
    lblSaleIdentifier: TLabel;
    lblPriority: TLabel;
    edtSaleIdentifier: TDBEdit;
    edtPriority: TDBEdit;
    cdsDataNO_AS_TEXT: TAbmesWideStringField;
    cdsDataFORK_NO: TAbmesFloatField;
    cdsData_MLL_NO: TAbmesWideStringField;
    cdsGridDataOPERATION_SETUP_ABBREV: TAbmesWideStringField;
    cdsGridDataOPERATION_ABBREV: TAbmesWideStringField;
    frDetail: TfrProductFieldEditFrameBald;
    tlbStageDocs: TToolBar;
    btnStageDocs: TSpeedButton;
    cdsData_STAGE_IDENTIFIER: TAbmesWideStringField;
    lblStageNo: TLabel;
    edtStageNo: TDBEdit;
    edtMLMSDeptIdentifier: TDBEdit;
    lblMLMSDeptIdentifier: TLabel;
    frTreatmentInterval: TfrDateIntervalFrame;
    lblTreatmentInterval: TLabel;
    edtMllNo: TDBEdit;
    lblMllNo: TLabel;
    cdsDataPRIORITY_COLOR: TAbmesFloatField;
    cdsDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    edtMllForkNo: TDBEdit;
    lblMllForkNo: TLabel;
    lblDeptDoc: TLabel;
    btnOperationDoc: TSpeedButton;
    lblOperationDoc: TLabel;
    sepBeforeDeptDoc: TToolButton;
    cdsDataPRIORITY_NO: TAbmesFloatField;
    cdsDataWORK_PRIORITY_NO: TAbmesFloatField;
    lblWorkPriority: TLabel;
    edtWorkPriority: TDBEdit;
    cdsGridDataPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsGridDataSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsGridDataTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    actProgramToolSpecDocStatus: TAction;
    actSpecificToolSpecDocStatus: TAction;
    actTypicalToolSpecDocStatus: TAction;
    sepBeforeProgramToolDoc: TToolButton;
    lblProgramToolDoc: TLabel;
    btnProgramToolDoc: TSpeedButton;
    btnProgramToolSpecDocStatus: TToolButton;
    sepBeforeSpecificToolDoc: TToolButton;
    lblSpecificToolDoc: TLabel;
    btnSpecificToolDoc: TSpeedButton;
    btnSpecificToolSpecDocStatus: TToolButton;
    sepBeforeTypicalToolDoc: TToolButton;
    lblTypicalToolDoc: TLabel;
    btnTypicalToolDoc: TSpeedButton;
    btnTypicalToolSpecDocStatus: TToolButton;
    cdsGridDataPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    grdHeader: TAbmesDBGrid;
    cdsGridDataIS_AUTO_SETUP: TAbmesFloatField;
    cdsGridDataIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsGridData_ACTIVE_AUTO_MOVEMENT_COUNT: TAggregateField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure btnStageDocsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDeptDocClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actEditRecordUpdate(Sender: TObject);
    procedure WorkdayFieldsChange(Sender: TField);
    procedure DateFieldsChange(Sender: TField);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataVARIANT_DETAIL_TECH_QUANTITYChange(
      Sender: TField);
    procedure cdsGridDataIS_ACTIVEChange(Sender: TField);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataNOTESGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btnOperationDocClick(Sender: TObject);
    procedure cdsGridDataPROGRAM_TOOL_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSPECIFIC_TOOL_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataTYPICAL_TOOL_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actProgramToolSpecDocStatusUpdate(Sender: TObject);
    procedure actSpecificToolSpecDocStatusUpdate(Sender: TObject);
    procedure actTypicalToolSpecDocStatusUpdate(Sender: TObject);
    procedure actProgramToolSpecDocStatusExecute(Sender: TObject);
    procedure actSpecificToolSpecDocStatusExecute(Sender: TObject);
    procedure actTypicalToolSpecDocStatusExecute(Sender: TObject);
    procedure btnProgramToolDocClick(Sender: TObject);
    procedure btnSpecificToolDocClick(Sender: TObject);
    procedure btnTypicalToolDocClick(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdHeaderEnter(Sender: TObject);
    procedure grdDataDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    FCalculatingDates: Boolean;
    FSettingIsActive: Boolean;
  protected
    procedure DoApplyUpdates; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    class function CanUseDocs: Boolean; override;
  end;

implementation

uses
  dMain, uClientUtils, uExcelExport, uUtils, uDocUtils,
  fMLMSOperationVariant, fDataForm, uColorConsts, uModelUtils,
  uToolRequirements, uOperationTypes, fSpecDocStatus;

{$R *.dfm}

resourcestring
  SPreviousOperation = 'Предходната операция завършва по-късно от текущата!';
  SCurrentOperation = 'Текущата операция завършва по-късно от следващата!';
  SDiffTotalVariantDetailTechQuantity =
    'Общото технологично количество по вариантите е различно от' + SLineBreak +
    'технологичното количеството по реда от МОДЕл-а';
  SNoActiveVariants = 'Не сте посочили активни варианти!';
  SShowDetailTechQuantityFormat = '%s %s/ч';
  SVariantHasMovements = 'По този Вариант има неанулирани движения!';
  SEditCaption = 'Задаване';
  SOperationSetupAbbrev = 'Н';
  SOperationAbbrev = 'И';
  SCannotDeactivateVariant = 'Не можете да деактивирате вариант с движения към него!';
  SInvalidActiveAutoMovementVariants = 'Не е допустим повече от един активен вариант с автоматично отчитане на движение';

{ TfmMLMSOperationVariants }

procedure TfmMLMSOperationVariants.DoApplyUpdates;
var
  mwn: Integer;
begin
  if (cdsGridData.RecordCount > 0) and
     (VarToInt(cdsGridData_MAX_IS_ACTIVE.AsVariant) = 0) then
    raise Exception.Create(SNoActiveVariants);

  if (cdsGridData.RecordCount > 0) and
     (cdsGridData_ACTIVE_AUTO_MOVEMENT_COUNT.AsVarInteger > 1) then
    raise Exception.Create(SInvalidActiveAutoMovementVariants);

  if (VarToFloat(cdsGridData_SUM_VARIANT_DETAIL_TECH_QTY.AsVariant) <>
      cdsDataLINE_DETAIL_TECH_QUANTITY.AsFloat) then
    raise Exception.Create(SDiffTotalVariantDetailTechQuantity);

  mwn:= dmMain.SvrModelMovements.GetMaxOperationWorkdayNo(
          cdsGridDataMLMS_OBJECT_BRANCH_CODE.AsInteger,
          cdsGridDataMLMS_OBJECT_CODE.AsInteger,
          cdsGridDataMLMS_OPERATION_NO.AsInteger - 1);

  if (mwn > VarToInt(cdsGridData_MAX_WORKDAY_NO.AsVariant)) then
    raise Exception.Create(SPreviousOperation);

  mwn:= dmMain.SvrModelMovements.GetMaxOperationWorkdayNo(
          cdsGridDataMLMS_OBJECT_BRANCH_CODE.AsInteger,
          cdsGridDataMLMS_OBJECT_CODE.AsInteger,
          cdsGridDataMLMS_OPERATION_NO.AsInteger + 1);

  if (mwn > 0) and (VarToInt(cdsGridData_MAX_WORKDAY_NO.AsVariant) > mwn) then
    raise Exception.Create(SCurrentOperation);

  inherited;
end;

procedure TfmMLMSOperationVariants.cdsGridDataCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if cdsGridDataHOUR_TECH_QUANTITY.IsNull then
    cdsGridData_SHOW_HOUR_TECH_QUANTITY.Clear
  else
    cdsGridData_SHOW_HOUR_TECH_QUANTITY.AsString:=
      Format(SShowDetailTechQuantityFormat, [
        cdsGridDataHOUR_TECH_QUANTITY.DisplayText,
        txtDetailTechMeasureAbbrev.Caption]);

  cdsGridData_SHOW_TREATMENT_BEGIN_DATE.Assign(cdsGridDataTREATMENT_BEGIN_DATE);
  cdsGridData_SHOW_TREATMENT_END_DATE.Assign(cdsGridDataTREATMENT_END_DATE);

  cdsGridDataOPERATION_SETUP_ABBREV.AsString:= SOperationSetupAbbrev;
  cdsGridDataOPERATION_ABBREV.AsString:= SOperationAbbrev;
end;

procedure TfmMLMSOperationVariants.btnSpecificToolDocClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TControl),
    cdsGridDataSPECIFIC_TOOL_PRODUCT_CODE.AsInteger);
end;

procedure TfmMLMSOperationVariants.btnStageDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnStageDocs, dotRealStage, cdsData);
end;

procedure TfmMLMSOperationVariants.btnTypicalToolDocClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TControl),
    cdsGridDataTYPICAL_TOOL_PRODUCT_CODE.AsInteger);
end;

procedure TfmMLMSOperationVariants.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmMLMSOperationVariant;

  frDetail.FieldNames:= 'DETAIL_CODE';
  frTreatmentInterval.FieldNames:= 'TREATMENT_BEGIN_DATE;TREATMENT_END_DATE';
  RegisterDateFields(cdsData);
  RegisterDateFields([cdsGridData_SHOW_TREATMENT_BEGIN_DATE, cdsGridData_SHOW_TREATMENT_END_DATE]);

  RegisterFieldsTextVisibility(
    IsHighLevelInvestedValueVisible,
    [ cdsGridDataHOUR_PRICE,
      cdsGridDataSETUP_HOUR_PRICE]);
end;

procedure TfmMLMSOperationVariants.btnDeptDocClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDeptDoc(emReadOnly, (Sender as TControl), cdsGridDataDEPT_CODE.AsInteger);
end;

procedure TfmMLMSOperationVariants.grdDataDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
//  inherited; do nothing
end;

procedure TfmMLMSOperationVariants.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);

  procedure SetToolRequirementFont(ToolRequirementField, ToolIsCompleteField: TField);
  var
    ToolIsComplete: Boolean;
  begin
    ToolIsComplete:= (ToolIsCompleteField.AsInteger = 1);

    if ToolIsComplete then
      AFont.Color:= clGreen
    else
      AFont.Color:= clRed;
  end;

begin
  inherited;

  if (Column.Field = cdsGridDataHAS_CAPACITY_DEFICIT) and
     (Column.Field.AsInteger = 1) and
     (Background = clWindow) then
    Background:= ccTotalLateNotSelected
  else
    begin
      if cdsGridDataIS_ACTIVE.AsBoolean and (Background = clWindow) then
        Background:= $00D3F1DA;
    end;

  if (Column.Field = cdsGridDataPROGRAM_TOOL_REQUIREMENT_CODE) then
    SetToolRequirementFont(Column.Field, cdsGridDataPROGRAM_TOOL_IS_COMPLETE);

  if (Column.Field = cdsGridDataSPECIFIC_TOOL_REQUIREMENT_CODE) then
    SetToolRequirementFont(Column.Field, cdsGridDataSPECIFIC_TOOL_IS_COMPLETE);

  if (Column.Field = cdsGridDataTYPICAL_TOOL_REQUIREMENT_CODE) then
    SetToolRequirementFont(Column.Field, cdsGridDataTYPICAL_TOOL_IS_COMPLETE);
end;

procedure TfmMLMSOperationVariants.grdHeaderEnter(Sender: TObject);
begin
  inherited;
  ActiveControl:= grdData;
end;

procedure TfmMLMSOperationVariants.actFormUpdate(Sender: TObject);
begin
  inherited;
  edtPriority.Font.Color:= cdsDataPRIORITY_COLOR.AsInteger;
  edtPriority.Color:= cdsDataPRIORITY_BACKGROUND_COLOR.AsInteger;

  btnEditData.Default:=
    (not pnlOKCancel.Visible);

  btnProgramToolDoc.Enabled:= not cdsGridDataPROGRAM_TOOL_PRODUCT_CODE.IsNull;
  btnSpecificToolDoc.Enabled:= not cdsGridDataSPECIFIC_TOOL_PRODUCT_CODE.IsNull;
  btnTypicalToolDoc.Enabled:= not cdsGridDataTYPICAL_TOOL_PRODUCT_CODE.IsNull;
end;

procedure TfmMLMSOperationVariants.actProgramToolSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient,
    cdsGridDataPROGRAM_TOOL_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmMLMSOperationVariants.actProgramToolSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridDataPROGRAM_TOOL_PRODUCT_CODE.IsNull;
end;

procedure TfmMLMSOperationVariants.actSpecificToolSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient,
    cdsGridDataSPECIFIC_TOOL_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmMLMSOperationVariants.actSpecificToolSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridDataSPECIFIC_TOOL_PRODUCT_CODE.IsNull;
end;

procedure TfmMLMSOperationVariants.actTypicalToolSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient,
    cdsGridDataTYPICAL_TOOL_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmMLMSOperationVariants.actTypicalToolSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridDataTYPICAL_TOOL_PRODUCT_CODE.IsNull;
end;

procedure TfmMLMSOperationVariants.actEditRecordUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:= GetEditRecordEnabled;

  if GetGridRecordReadOnly then
    (Sender as TAction).Caption:= SReadOnlyCaption + cDialogSuffix
  else
    (Sender as TAction).Caption:= SEditCaption + cDialogSuffix;
end;

procedure TfmMLMSOperationVariants.WorkdayFieldsChange(
  Sender: TField);
begin
  inherited;

  if FCalculatingDates then
    Exit;

  FCalculatingDates:= True;
  try
    if cdsGridDataTREATMENT_BEGIN_WORKDAY_NO.IsNull or cdsGridDataTREATMENT_WORKDAYS.IsNull then
      begin
        cdsGridDataTREATMENT_BEGIN_DATE.Clear;
        cdsGridDataTREATMENT_END_DATE.Clear;
      end
    else
      begin
        cdsGridDataTREATMENT_BEGIN_DATE.AsDateTime:=
          dmMain.IncDateByWorkdays(
            cdsDAtaTREATMENT_BEGIN_DATE.AsDateTime - 1,
            cdsGridDataTREATMENT_BEGIN_WORKDAY_NO.AsInteger
          );
        cdsGridDataTREATMENT_END_DATE.AsDateTime:=
          dmMain.IncDateByWorkdays(
            cdsGridDataTREATMENT_BEGIN_DATE.AsDateTime - 1,
            cdsGridDataTREATMENT_WORKDAYS.AsInteger
          );
      end;
  finally
    FCalculatingDates:= False;
  end;  { try }
end;

procedure TfmMLMSOperationVariants.DateFieldsChange(
  Sender: TField);
begin
  inherited;

  if FCalculatingDates then
    Exit;

  CheckDatePeriod(cdsGridDataTREATMENT_BEGIN_DATE, cdsGridDataTREATMENT_END_DATE);

  FCalculatingDates:= True;
  try
    if cdsGridDataTREATMENT_BEGIN_DATE.IsNull or cdsGridDataTREATMENT_END_DATE.IsNull then
      begin
        cdsGridDataTREATMENT_BEGIN_WORKDAY_NO.Clear;
        cdsGridDataTREATMENT_WORKDAYS.Clear;
      end
    else
      begin
        cdsGridDataTREATMENT_BEGIN_WORKDAY_NO.AsInteger:=
          dmMain.CountWorkdays(
            cdsDataTREATMENT_BEGIN_DATE.AsDateTime,
            cdsGridDataTREATMENT_BEGIN_DATE.AsDateTime
          );
        cdsGridDataTREATMENT_WORKDAYS.AsInteger:=
          dmMain.CountWorkdays(
            cdsGridDataTREATMENT_BEGIN_DATE.AsDateTime,
            cdsGridDataTREATMENT_END_DATE.AsDateTime
          );
      end;
  finally
    FCalculatingDates:= False;
  end;  { try }
end;

procedure TfmMLMSOperationVariants.cdsGridDataBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  CheckDatePeriod(cdsDataTREATMENT_BEGIN_DATE, cdsGridDataTREATMENT_BEGIN_DATE, True);
  CheckDatePeriod(cdsGridDataTREATMENT_END_DATE, cdsDataTREATMENT_END_DATE);

  if cdsGridDataHAS_OPERATION_MOVEMENTS.AsBoolean and
     not cdsGridDataIS_ACTIVE.AsBoolean then
    begin
      cdsGridDataVARIANT_DETAIL_TECH_QUANTITY.FocusControl;
      raise Exception.Create(SCannotDeactivateVariant)
    end;
end;

procedure TfmMLMSOperationVariants.cdsGridDataVARIANT_DETAIL_TECH_QUANTITYChange(
  Sender: TField);
begin
  inherited;
  cdsGridDataIS_ACTIVE.AsBoolean:=
    (cdsGridDataVARIANT_DETAIL_TECH_QUANTITY.AsFloat > 0);
end;

procedure TfmMLMSOperationVariants.cdsGridDataIS_ACTIVEChange(
  Sender: TField);
begin
  inherited;

  if FSettingIsActive then
    Exit;

  FSettingIsActive:= True;
  try
    if not cdsGridDataIS_ACTIVE.AsBoolean then
      cdsGridDataVARIANT_DETAIL_TECH_QUANTITY.AsFloat:= 0;
  finally
    FSettingIsActive:= False;
  end;  { try }
end;

procedure TfmMLMSOperationVariants.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsData_MLL_NO.AsString:=
    cdsDataNO_AS_TEXT.AsString + '/' + cdsDataFORK_NO.AsString;

  cdsData_STAGE_IDENTIFIER.AsString:=
    cdsDataML_MODEL_STAGE_NO.AsString + ': ' + cdsDataDEPT_IDENTIFIER.AsString;
end;

class function TfmMLMSOperationVariants.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

class function TfmMLMSOperationVariants.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmMLMSOperationVariants.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= True;  // vsichko e readonly
end;

procedure TfmMLMSOperationVariants.cdsGridDataBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsGridData.Params, cdsData);
end;

procedure TfmMLMSOperationVariants.cdsGridDataNOTESGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  OperationNotesGetText(Sender, Text, cdsGridDataOPERATION_TYPE_CODE.AsInteger);
end;

procedure TfmMLMSOperationVariants.cdsGridDataPROGRAM_TOOL_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ToolRequirementFieldGetText(Sender, cdsGridDataPROGRAM_TOOL_IS_COMPLETE, cdsGridDataOPERATION_TYPE_CODE,
    Text, DisplayText);
end;

procedure TfmMLMSOperationVariants.cdsGridDataSPECIFIC_TOOL_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ToolRequirementFieldGetText(Sender, cdsGridDataSPECIFIC_TOOL_IS_COMPLETE, cdsGridDataOPERATION_TYPE_CODE,
    Text, DisplayText);
end;

procedure TfmMLMSOperationVariants.cdsGridDataTYPICAL_TOOL_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ToolRequirementFieldGetText(Sender, cdsGridDataTYPICAL_TOOL_IS_COMPLETE, cdsGridDataOPERATION_TYPE_CODE,
    Text, DisplayText);
end;

procedure TfmMLMSOperationVariants.btnOperationDocClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TControl), dotRealOperation,
    cdsGridDataDOC_BRANCH_CODE,
    cdsGridDataDOC_CODE,
    cdsGridDataMLMS_OPERATION_VARIANT_NO.AsInteger);
end;

procedure TfmMLMSOperationVariants.btnProgramToolDocClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TControl),
    cdsGridDataPROGRAM_TOOL_PRODUCT_CODE.AsInteger);
end;

end.



