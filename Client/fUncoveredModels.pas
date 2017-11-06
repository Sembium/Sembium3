unit fUncoveredModels;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fMasterDetailForm, ExtCtrls, Menus, JvButtons, ImgList,
  ParamDataSet, ActnList, Db, DBClient, AbmesClientDataSet, Buttons, GridsEh,
  DBGridEh, AbmesDBGrid, DBCtrls, ColorNavigator, StdCtrls, AbmesFields,
  ComCtrls, ToolWin, uClientTypes, JvComponent, JvCaptionButton, JvComponentBase;

type
  TProductMeasure = (pmWork, pmTech, pmAccount);

type
  TfmUncoveredModels = class(TMasterDetailForm)
    cdsDetailML_OBJECT_BRANCH_CODE:   TAbmesFloatField;
    cdsDetailML_OBJECT_CODE: TAbmesFloatField;
    cdsDetailFORK_NO: TAbmesFloatField;
    cdsDetailDETAIL_NAME: TAbmesWideStringField;
    cdsDetailTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    pdsGridDataParamsDEPT_NAME: TAbmesWideStringField;
    pdsGridDataParamsDEPT_CODE: TAbmesFloatField;
    btnShowDetail: TSpeedButton;
    btnShowMaterial: TSpeedButton;
    actShowDetail: TAction;
    pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_NO: TAbmesFloatField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    pdsGridDataParams_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsDetail_PRODUCT_NAME_FOR_REPORT: TAbmesWideStringField;
    cdsDetail_PRODUCT_MEASURE_FOR_REPORT: TAbmesWideStringField;
    cdsDetail_PRODUCT_QUANTITY_FOR_REPORT: TAbmesFloatField;
    cdsDetail_PRODUCT_LABEL_FOR_REPORT: TAbmesWideStringField;
    pdsGridDataParamsDEPT_IDENTIFIER: TAbmesWideStringField;
    pnlVIMButton: TPanel;
    actShowVIM: TAction;
    tlbTopButtons: TToolBar;
    tlbDetailTopButtons: TToolBar;
    sepBeforeVIM: TToolButton;
    cdsDetailDETAIL_CODE: TAbmesFloatField;
    actToggleProductDisplay: TAction;
    cdsDetailNO_AS_TEXT: TAbmesWideStringField;
    cdsDetailNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_SALE_TYPE_ABBREV: TAbmesWideStringField;
    btnToggleProductDisplay: TSpeedButton;
    cdsDetailMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDetailMLL_OBJECT_CODE: TAbmesFloatField;
    pnlEditButton: TPanel;
    btnEditRecord: TBitBtn;
    cdsDetailNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    btnVIM: TToolButton;
    tlbDetailDocumentation: TToolBar;
    btnDetailDocumentation: TToolButton;
    tlbProductDocumentation: TToolBar;
    btnProductDocumentation: TToolButton;
    btnDocumentation: TToolButton;
    cdsDetailDETAIL_NO: TAbmesFloatField;
    pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField;
    cdsDetailDETAIL_HAS_DOC: TAbmesFloatField;
    cdsDetailDETAIL_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsDetailDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailMATERIAL_CODE: TAbmesFloatField;
    cdsDetailMATERIAL_NO: TAbmesFloatField;
    cdsDetailMATERIAL_NAME: TAbmesWideStringField;
    cdsDetailMATERIAL_HAS_DOC: TAbmesFloatField;
    cdsDetailMATERIAL_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsDetailMATERIAL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailTOTAL_MATERIAL_QUANTITY: TAbmesFloatField;
    cdsDetailSTORE_IDENTIFIER: TAbmesWideStringField;
    cdsDetailMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDetailPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsDetailPRIORITY_COLOR: TAbmesFloatField;
    cdsDetailPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsDetailRESULT_PRODUCT_CODE: TAbmesFloatField;
    cdsDetailRESULT_PRODUCT_NO: TAbmesFloatField;
    cdsDetailRESULT_PRODUCT_NAME: TAbmesWideStringField;
    cdsDetailRESULT_PRODUCT_HAS_DOC: TAbmesFloatField;
    cdsDetailRESULT_PRODUCT_MEASURE_CODE: TAbmesFloatField;
    cdsDetailRESULT_PRODUCT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailRESULT_PRODUCT_QUANTITY: TAbmesFloatField;
    cdsDetailRESULT_PRODUCT_CLIENT_NAME: TAbmesWideStringField;
    cdsDetailMATERIAL_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDetailMATERIAL_NEED_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataML_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataPRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridDataRESULT_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataRESULT_PRODUCT_NO: TAbmesFloatField;
    cdsGridDataRESULT_PRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataRESULT_PRODUCT_HAS_DOC: TAbmesFloatField;
    cdsGridDataRESULT_PRODUCT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataRESULT_PRODUCT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataRESULT_PRODUCT_QUANTITY: TAbmesFloatField;
    cdsGridDataRESULT_PRODUCT_CLIENT_NAME: TAbmesWideStringField;
    cdsDetail_COUNT_LINES: TAggregateField;
    cdsGridDataUNCOVERED_LINE_COUNT: TAbmesFloatField;
    sepBeforeDetailDocumentation: TToolButton;
    lblDetailDocumentation: TLabel;
    lblProductDocumentation: TLabel;
    sepBeforeDocumentationButton: TToolButton;
    lblDocumentation: TLabel;
    cdsDetailPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField;
    cdsDetailML_STATE_CODE: TAbmesFloatField;
    cdsDetailIS_WASTE_COMPENSATOR: TAbmesFloatField;
    cdsDetailHAS_WASTE: TAbmesFloatField;
    cdsDetailMODEL_START_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataML_STATE_CODE: TAbmesFloatField;
    cdsGridDataIS_WASTE_COMPENSATOR: TAbmesFloatField;
    cdsGridDataHAS_WASTE: TAbmesFloatField;
    cdsGridDataMODEL_START_DATE: TAbmesSQLTimeStampField;
    cdsGridData_MODEL_START_RESERVE: TAbmesFloatField;
    cdsGridData_SUM_UNCOVERED_LINE_COUNT: TAggregateField;
    cdsGridData_AGG_MEASURE_CODE: TAggregateField;
    cdsGridData_SUM_QUANTITY: TAggregateField;
    cdsGridData_TOTAL_QUANTITY: TAbmesFloatField;
    cdsGridData_TOTAL_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_TOTAL_UNCOVERED_LINE_COUNT: TAbmesFloatField;
    pdsGridDataParamsIS_WASTE_COMPENSATOR_STATUS: TAbmesFloatField;
    pdsGridDataParamsIS_LIMITING_STATUS: TAbmesFloatField;
    pdsGridDataParamsPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsHAS_WASTE_STATUS: TAbmesFloatField;
    pdsGridDataParamsMODEL_START_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsMODEL_START_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsMODEL_START_MIN_RESERVE: TAbmesFloatField;
    pdsGridDataParamsMODEL_START_MAX_RESERVE: TAbmesFloatField;
    cdsDetailPRIORITY_NO: TAbmesFloatField;
    cdsDetailWORK_PRIORITY_NO: TAbmesFloatField;
    cdsDetailWORK_PRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsGridDataPRIORITY_NO: TAbmesFloatField;
    cdsGridDataWORK_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataWORK_PRIORITY_FULL_NAME: TAbmesWideStringField;
    pdsGridDataParamsIS_TOWARDS_RESERVE: TAbmesFloatField;
    cdsDetailDETAIL_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailTOTAL_DETAIL_QUANTITY: TAbmesFloatField;
    cdsDetailDETAIL_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailTOTAL_DETAIL_ACC_QUANTITY: TAbmesFloatField;
    cdsDetailTOTAL_MATERIAL_TECH_QUANTITY: TAbmesFloatField;
    cdsDetailMATERIAL_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailMATERIAL_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailTOTAL_MATERIAL_ACC_QUANTITY: TAbmesFloatField;
    cdsDetailRESULT_PR_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailRESULT_PROD_TECH_QUANTITY: TAbmesFloatField;
    cdsDetailRESULT_PROD_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailRESULT_PROD_ACC_QUANTITY: TAbmesFloatField;
    tlbMeasures: TToolBar;
    sepMeasures: TToolButton;
    sbtnAccountMeasure: TSpeedButton;
    sbtnWorkMeasure: TSpeedButton;
    sbtnTechMeasure: TSpeedButton;
    actWorkMeasure: TAction;
    actTechMeasure: TAction;
    actAccountMeasure: TAction;
    cdsGridDataRESULT_PROD_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataRESULT_PR_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataRESULT_PROD_ACC_QUANTITY: TAbmesFloatField;
    cdsGridDataRESULT_PROD_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_TOTAL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridData_TOTAL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_TOTAL_ACC_QUANTITY: TAbmesFloatField;
    cdsGridData_TOTAL_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_SUM_TECH_QUANTITY: TAggregateField;
    cdsGridData_SUM_ACC_QUANTITY: TAggregateField;
    cdsDetailRESULT_PR_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsDetailRESULT_PROD_ACC_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataRESULT_PR_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataRESULT_PROD_ACC_MEASURE_CODE: TAbmesFloatField;
    cdsGridData_AGG_TECH_MEASURE_CODE: TAggregateField;
    cdsGridData_AGG_ACC_MEASURE_CODE: TAggregateField;
    cdsGridData_RESULT_PRODUCT_QUANTITY_FR: TAbmesFloatField;
    cdsGridData_RESULT_PRODUCT_MEASURE_FR: TAbmesWideStringField;
    cdsDetailUNCOVERED_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsDetailUNCOVERED_DETAIL_QUANTITY: TAbmesFloatField;
    cdsDetailUNCOVERED_DETAIL_ACC_QUANTITY: TAbmesFloatField;
    cdsDetailUNCOVERED_MATERIAL_QUANTITY: TAbmesFloatField;
    cdsDetailUNCOVERED_MTRL_TECH_QUANTITY: TAbmesFloatField;
    cdsDetailUNCOVERED_MTRL_ACC_QUANTITY: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsDEPT_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsDEPT_CODEChange(Sender: TField);
    procedure actShowDetailExecute(Sender: TObject);
    procedure pdsGridDataParams_SALE_BRANCH_IDENTIFIERGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsDetailCalcFields(DataSet: TDataSet);
    procedure actShowVIMUpdate(Sender: TObject);
    procedure actShowVIMExecute(Sender: TObject);
    procedure btnDocumentationClick(Sender: TObject);
    procedure btnDetailDocumentationClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure btnProductDocumentationClick(Sender: TObject);
    procedure actToggleProductDisplayExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsDetailAfterOpen(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure cdsDetailMATERIAL_NEED_BEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataML_STATE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataIS_WASTE_COMPENSATORGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure actWorkMeasureExecute(Sender: TObject);
    procedure actTechMeasureExecute(Sender: TObject);
    procedure actAccountMeasureExecute(Sender: TObject);
  private
    FShowDetail: Boolean;
    FShowProductOtherNames: Boolean;
    FProductMeasure: TProductMeasure;
    procedure UnknownProductMeasureError;
  protected
    class function ManualDetailFetch: Boolean; override;
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean; override;
    procedure DoGridApplyUpdates; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fUncoveredModelsFilter, uClientUtils, fXModel, fVIMQuantity,
  rUncoveredModels, uOpenVIMConsts, uTreeClientUtils, uModelUtils,
  uColorConsts, StrUtils, uUtils, rUncoveredModelDetails, uProducts, uClientDateTime;

{$R *.DFM}

resourcestring
  SInputStructPart = 'Начална Структурна Част';
  SEndStructPart = 'Крайна Структурна Част';

{ TfmUncoveredModels }

class function TfmUncoveredModels.ManualDetailFetch: Boolean;
begin
  Result:= True;
end;

class function TfmUncoveredModels.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmUncoveredModels.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmUncoveredModelsFilter;
  ReportClass:= TrptUncoveredModels;
  DetailsReportClass:= TrptUncoveredModelDetails;
  EditFormClass:= TfmXModel;
  DetailEditFormClass:= TfmXModel;

  DelayDetailFetch:= False;

  RegisterDateFields(cdsGridData);
  RegisterDateFields(cdsDetail);
end;

procedure TfmUncoveredModels.FormShow(Sender: TObject);
begin
  inherited;
  actToggleProductDisplay.Execute;
end;

procedure TfmUncoveredModels.OpenDataSets;
begin
  inherited;
  cdsBranches.Open;
  cdsSaleTypes.Open;
end;

procedure TfmUncoveredModels.CloseDataSets;
begin
  inherited;
  cdsBranches.Close;
  cdsSaleTypes.Close;
end;

procedure TfmUncoveredModels.cdsDetailAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsDetail.DisableControls;
  try
    cdsGridData.DisableControls;
    try
      cdsDetail.MasterSource:= nil;
      cdsDetail.MasterFields:= '';

      cdsDetail.First;
      while not cdsDetail.Eof do
        begin
          if (gbFirst in cdsDetail.GetGroupState(2)) then
            begin
              cdsGridData.Append;
              try
                // assign fields
                cdsGridDataML_OBJECT_BRANCH_CODE.AsVariant:= cdsDetailML_OBJECT_BRANCH_CODE.AsVariant;
                cdsGridDataML_OBJECT_CODE.AsVariant:= cdsDetailML_OBJECT_CODE.AsVariant;
                cdsGridDataPRODUCTION_ORDER_IDENTIFIER.AsVariant:= cdsDetailPRODUCTION_ORDER_IDENTIFIER.AsVariant;
                cdsGridDataML_STATE_CODE.AsVariant:= cdsDetailML_STATE_CODE.AsVariant;
                cdsGridDataIS_WASTE_COMPENSATOR.AsVariant:= cdsDetailIS_WASTE_COMPENSATOR.AsVariant;
                cdsGridDataHAS_WASTE.AsVariant:= cdsDetailHAS_WASTE.AsVariant; 
                cdsGridDataMAIN_DEPT_IDENTIFIER.AsVariant:= cdsDetailMAIN_DEPT_IDENTIFIER.AsVariant;
                cdsGridDataPRIORITY_NO.AsVariant:= cdsDetailPRIORITY_NO.AsVariant;
                cdsGridDataPRIORITY_FULL_NAME.AsVariant:= cdsDetailPRIORITY_FULL_NAME.AsVariant;
                cdsGridDataPRIORITY_COLOR.AsVariant:= cdsDetailPRIORITY_COLOR.AsVariant;
                cdsGridDataPRIORITY_BACKGROUND_COLOR.AsVariant:= cdsDetailPRIORITY_BACKGROUND_COLOR.AsVariant;
                cdsGridDataWORK_PRIORITY_NO.AsVariant:= cdsDetailWORK_PRIORITY_NO.AsVariant;
                cdsGridDataWORK_PRIORITY_FULL_NAME.AsVariant:= cdsDetailWORK_PRIORITY_FULL_NAME.AsVariant;
                cdsGridDataRESULT_PRODUCT_CODE.AsVariant:= cdsDetailRESULT_PRODUCT_CODE.AsVariant;
                cdsGridDataRESULT_PRODUCT_NO.AsVariant:= cdsDetailRESULT_PRODUCT_NO.AsVariant;
                cdsGridDataRESULT_PRODUCT_NAME.AsVariant:= cdsDetailRESULT_PRODUCT_NAME.AsVariant;
                cdsGridDataRESULT_PRODUCT_HAS_DOC.AsVariant:= cdsDetailRESULT_PRODUCT_HAS_DOC.AsVariant;
                cdsGridDataRESULT_PRODUCT_MEASURE_CODE.AsVariant:= cdsDetailRESULT_PRODUCT_MEASURE_CODE.AsVariant;
                cdsGridDataRESULT_PRODUCT_MEASURE_ABBREV.AsVariant:= cdsDetailRESULT_PRODUCT_MEASURE_ABBREV.AsVariant;
                cdsGridDataRESULT_PROD_TECH_QUANTITY.AsVariant:= cdsDetailRESULT_PROD_TECH_QUANTITY.AsVariant;
                cdsGridDataRESULT_PR_TECH_MEASURE_CODE.AsVariant:= cdsDetailRESULT_PR_TECH_MEASURE_CODE.AsVariant;
                cdsGridDataRESULT_PR_TECH_MEASURE_ABBREV.AsVariant:= cdsDetailRESULT_PR_TECH_MEASURE_ABBREV.AsVariant;
                cdsGridDataRESULT_PROD_ACC_QUANTITY.AsVariant:= cdsDetailRESULT_PROD_ACC_QUANTITY.AsVariant;
                cdsGridDataRESULT_PROD_ACC_MEASURE_CODE.AsVariant:= cdsDetailRESULT_PROD_ACC_MEASURE_CODE.AsVariant;
                cdsGridDataRESULT_PROD_ACC_MEASURE_ABBREV.AsVariant:= cdsDetailRESULT_PROD_ACC_MEASURE_ABBREV.AsVariant;
                cdsGridDataRESULT_PRODUCT_QUANTITY.AsVariant:= cdsDetailRESULT_PRODUCT_QUANTITY.AsVariant;
                cdsGridDataRESULT_PRODUCT_CLIENT_NAME.AsVariant:= cdsDetailRESULT_PRODUCT_CLIENT_NAME.AsVariant;
                cdsGridDataMODEL_START_DATE.AsVariant:= cdsDetailMODEL_START_DATE.AsVariant;
                cdsGridDataUNCOVERED_LINE_COUNT.AsVariant:= cdsDetail_COUNT_LINES.AsVariant;
                cdsGridData.Post;
              except
                cdsGridData.Cancel;
                raise;
              end;  { try }
            end;  { if }

          cdsDetail.Next;
        end;  { while }

      cdsGridData.First;
      cdsDetail.MasterSource:= dsGridData;
      cdsDetail.MasterFields:= 'ML_OBJECT_BRANCH_CODE;ML_OBJECT_CODE';
      cdsDetail.First;
    finally
      cdsGridData.EnableControls;
    end;  { try }
  finally
    cdsDetail.EnableControls;
  end;  { try }
end;

procedure TfmUncoveredModels.actAccountMeasureExecute(Sender: TObject);
begin
  inherited;
  FProductMeasure:= pmAccount;
end;

procedure TfmUncoveredModels.actFilterExecute(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  if TfmUncoveredModelsFilter.ShowForm(dmDocClient, pdsGridDataParams) then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        cdsGridData.Close;
        cdsGridData.CreateDataSet;

        RefreshDataSet(cdsDetail);
      finally
        Screen.Cursor:= SaveCursor;
      end;  { try }
    end;  { if }
end;

procedure TfmUncoveredModels.DoGridApplyUpdates;
begin
  // do nothing, do not call inherited
end;

procedure TfmUncoveredModels.cdsGridDataCalcFields(DataSet: TDataSet);

  procedure AssignTotalQuantityAndMeasureAbbrev(ATotalQuantityField, ATotalMeasureAbbrevField,
    AAggMeasureCodeField, ASumQuantityField, AMeasureAbbrevField: TField);
  begin
    if (VarToInt(AAggMeasureCodeField.AsVariant) = 0) then
      begin
        ATotalQuantityField.AsVariant:= ASumQuantityField.AsVariant;
        ATotalMeasureAbbrevField.AsVariant:= AMeasureAbbrevField.AsVariant;
      end
    else
      begin
        ATotalQuantityField.Clear;
        ATotalMeasureAbbrevField.Clear;
      end;
  end;

  function ResultProductQuantityField: TAbmesFloatField;
  begin
    Result:= nil;
    case FProductMeasure of
      pmWork: Result:= cdsGridDataRESULT_PRODUCT_QUANTITY;
      pmTech: Result:= cdsGridDataRESULT_PROD_TECH_QUANTITY;
      pmAccount: Result:= cdsGridDataRESULT_PROD_ACC_QUANTITY;
    else
      UnknownProductMeasureError;
    end;  { case }
  end;

  function ResultProductMeasureField: TAbmesWideStringField;
  begin
    Result:= nil;
    case FProductMeasure of
      pmWork: Result:= cdsGridDataRESULT_PRODUCT_MEASURE_ABBREV;
      pmTech: Result:= cdsGridDataRESULT_PR_TECH_MEASURE_ABBREV;
      pmAccount: Result:= cdsGridDataRESULT_PROD_ACC_MEASURE_ABBREV;
    else
      UnknownProductMeasureError;
    end;  { case }
  end;

begin
  inherited;
  cdsGridData_MODEL_START_RESERVE.AsInteger:=
    Trunc(cdsGridDataMODEL_START_DATE.AsDateTime) - Trunc(ContextDate);

  AssignTotalQuantityAndMeasureAbbrev(
    cdsGridData_TOTAL_QUANTITY,
    cdsGridData_TOTAL_MEASURE_ABBREV,
    cdsGridData_AGG_MEASURE_CODE,
    cdsGridData_SUM_QUANTITY,
    cdsGridDataRESULT_PRODUCT_MEASURE_ABBREV);

  AssignTotalQuantityAndMeasureAbbrev(
    cdsGridData_TOTAL_TECH_QUANTITY,
    cdsGridData_TOTAL_TECH_MEASURE_ABBREV,
    cdsGridData_AGG_TECH_MEASURE_CODE,
    cdsGridData_SUM_TECH_QUANTITY,
    cdsGridDataRESULT_PR_TECH_MEASURE_ABBREV);

  AssignTotalQuantityAndMeasureAbbrev(
    cdsGridData_TOTAL_ACC_QUANTITY,
    cdsGridData_TOTAL_ACC_MEASURE_ABBREV,
    cdsGridData_AGG_ACC_MEASURE_CODE,
    cdsGridData_SUM_ACC_QUANTITY,
    cdsGridDataRESULT_PROD_ACC_MEASURE_ABBREV);

  cdsGridData_RESULT_PRODUCT_QUANTITY_FR.AsVariant:= ResultProductQuantityField.AsVariant;
  cdsGridData_RESULT_PRODUCT_MEASURE_FR.AsVariant:= ResultProductMeasureField.AsVariant;

  if (VarToInt(cdsGridData_SUM_UNCOVERED_LINE_COUNT.AsVariant) = 0) then
    cdsGridData_TOTAL_UNCOVERED_LINE_COUNT.Clear
  else
    cdsGridData_TOTAL_UNCOVERED_LINE_COUNT.AsVariant:= cdsGridData_SUM_UNCOVERED_LINE_COUNT.AsVariant;
end;

procedure TfmUncoveredModels.UnknownProductMeasureError;
begin
  raise Exception.Create('Unknown Product Measure');
end;

procedure TfmUncoveredModels.cdsDetailCalcFields(DataSet: TDataSet);

const
  ProductLabels: array[Boolean] of string = (SInputStructPart, SEndStructPart);

  function QuantityField: TFloatField;
  begin
    Result:= nil;
    case FProductMeasure of
      pmWork:
        if FShowDetail then
          Result:= cdsDetailTOTAL_DETAIL_QUANTITY
        else
          Result:= cdsDetailTOTAL_MATERIAL_QUANTITY;

      pmTech:
        if FShowDetail then
          Result:= cdsDetailTOTAL_DETAIL_TECH_QUANTITY
        else
          Result:= cdsDetailTOTAL_MATERIAL_TECH_QUANTITY;

      pmAccount:
        if FShowDetail then
          Result:= cdsDetailTOTAL_DETAIL_ACC_QUANTITY
        else
          Result:= cdsDetailTOTAL_MATERIAL_ACC_QUANTITY;
    else
      UnknownProductMeasureError;
    end;  { case }
  end;

  function MeasureAbbrevField: TAbmesWideStringField;
  begin
    Result:= nil;
    case FProductMeasure of
      pmWork:
        if FShowDetail then
          Result:= cdsDetailDETAIL_MEASURE_ABBREV
        else
          Result:= cdsDetailMATERIAL_MEASURE_ABBREV;

      pmTech:
        if FShowDetail then
          Result:= cdsDetailDETAIL_TECH_MEASURE_ABBREV
        else
          Result:= cdsDetailMATERIAL_TECH_MEASURE_ABBREV;

      pmAccount:
        if FShowDetail then
          Result:= cdsDetailDETAIL_ACC_MEASURE_ABBREV
        else
          Result:= cdsDetailMATERIAL_ACC_MEASURE_ABBREV;
    else
      UnknownProductMeasureError;
    end;  { case }
  end;

  function ProductNameField: TAbmesWideStringField;
  begin
    if FShowDetail then
      Result:= cdsDetailDETAIL_NAME
    else
      Result:= cdsDetailMATERIAL_NAME;
  end;

begin
  inherited;
  cdsDetail_PRODUCT_QUANTITY_FOR_REPORT.AsFloat:= QuantityField.AsFloat;
  cdsDetail_PRODUCT_MEASURE_FOR_REPORT.AsString:= MeasureAbbrevField.AsString;
  cdsDetail_PRODUCT_NAME_FOR_REPORT.AsString:= ProductNameField.AsString;
  cdsDetail_PRODUCT_LABEL_FOR_REPORT.AsString:= ProductLabels[FShowDetail];
end;

procedure TfmUncoveredModels.pdsGridDataParams_SALE_BRANCH_IDENTIFIERGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmUncoveredModels.pdsGridDataParamsDEPT_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmUncoveredModels.pdsGridDataParamsDEPT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(pdsGridDataParamsDEPT_CODE,
    pdsGridDataParamsDEPT_NAME, pdsGridDataParamsDEPT_IDENTIFIER);
end;

procedure TfmUncoveredModels.actFormUpdate(Sender: TObject);

  function ProductMeasureButton: TSpeedButton;
  begin
    Result:= nil;
    case FProductMeasure of
      pmWork: Result:= sbtnWorkMeasure;
      pmTech: Result:= sbtnTechMeasure;
      pmAccount: Result:= sbtnAccountMeasure;
    else
      UnknownProductMeasureError;
    end;  { case }
  end;

begin
  inherited;

  ProductMeasureButton.Down:= True;

  grdData.Columns[5].Visible:= not FShowProductOtherNames;
  grdData.Columns[6].Visible:= not FShowProductOtherNames;
  grdData.Columns[7].Visible:= FShowProductOtherNames;

  grdData.Columns[8].Visible:= (FProductMeasure = pmWork);
  grdData.Columns[9].Visible:= (FProductMeasure = pmWork);
  grdData.Columns[10].Visible:= (FProductMeasure = pmTech);
  grdData.Columns[11].Visible:= (FProductMeasure = pmTech);
  grdData.Columns[12].Visible:= (FProductMeasure = pmAccount);
  grdData.Columns[13].Visible:= (FProductMeasure = pmAccount);

  grdDetail.Columns[2].Visible:= FShowDetail;
  grdDetail.Columns[4].Visible:= FShowDetail and (FProductMeasure = pmWork);
  grdDetail.Columns[5].Visible:= FShowDetail and (FProductMeasure = pmWork);
  grdDetail.Columns[6].Visible:= FShowDetail and (FProductMeasure = pmWork);
  grdDetail.Columns[7].Visible:= FShowDetail and (FProductMeasure = pmTech);
  grdDetail.Columns[8].Visible:= FShowDetail and (FProductMeasure = pmTech);
  grdDetail.Columns[9].Visible:= FShowDetail and (FProductMeasure = pmTech);
  grdDetail.Columns[10].Visible:= FShowDetail and (FProductMeasure = pmAccount);
  grdDetail.Columns[11].Visible:= FShowDetail and (FProductMeasure = pmAccount);
  grdDetail.Columns[12].Visible:= FShowDetail and (FProductMeasure = pmAccount);

  grdDetail.Columns[13].Visible:= not FShowDetail;
  grdDetail.Columns[15].Visible:= not FShowDetail and (FProductMeasure = pmWork);
  grdDetail.Columns[16].Visible:= not FShowDetail and (FProductMeasure = pmWork);
  grdDetail.Columns[17].Visible:= not FShowDetail and (FProductMeasure = pmWork);
  grdDetail.Columns[18].Visible:= not FShowDetail and (FProductMeasure = pmTech);
  grdDetail.Columns[19].Visible:= not FShowDetail and (FProductMeasure = pmTech);
  grdDetail.Columns[20].Visible:= not FShowDetail and (FProductMeasure = pmTech);
  grdDetail.Columns[21].Visible:= not FShowDetail and (FProductMeasure = pmAccount);
  grdDetail.Columns[22].Visible:= not FShowDetail and (FProductMeasure = pmAccount);
  grdDetail.Columns[23].Visible:= not FShowDetail and (FProductMeasure = pmAccount);

  btnDocumentation.ImageIndex:= cdsGridDataRESULT_PRODUCT_HAS_DOC.AsInteger;
  btnDocumentation.Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);

  btnDetailDocumentation.ImageIndex:= cdsDetailDETAIL_HAS_DOC.AsInteger;
  btnDetailDocumentation.Enabled:=
    cdsDetail.Active and
    (cdsDetail.RecordCount > 0) and
    FShowDetail and
    (not cdsDetailDETAIL_CODE.IsNull);

  btnProductDocumentation.ImageIndex:= cdsDetailMATERIAL_HAS_DOC.AsInteger;
  btnProductDocumentation.Enabled:=
    cdsDetail.Active and
    (cdsDetail.RecordCount > 0) and
    (not FShowDetail) and
    (not cdsDetailMATERIAL_CODE.IsNull);
end;

procedure TfmUncoveredModels.btnDocumentationClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    btnDocumentation,
    cdsGridDataRESULT_PRODUCT_CODE.AsInteger);
end;

procedure TfmUncoveredModels.btnDetailDocumentationClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly, btnDetailDocumentation, cdsDetailDETAIL_CODE.AsInteger);
end;

procedure TfmUncoveredModels.btnProductDocumentationClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, btnDetailDocumentation,
    cdsDetailMATERIAL_CODE.AsInteger);
end;

procedure TfmUncoveredModels.actTechMeasureExecute(Sender: TObject);
begin
  inherited;
  FProductMeasure:= pmTech;
end;

procedure TfmUncoveredModels.actToggleProductDisplayExecute(
  Sender: TObject);
begin
  inherited;
  FShowProductOtherNames:= btnToggleProductDisplay.Down;
end;

procedure TfmUncoveredModels.actWorkMeasureExecute(Sender: TObject);
begin
  inherited;
  FProductMeasure:= pmWork;
end;

procedure TfmUncoveredModels.actShowDetailExecute(Sender: TObject);
begin
  inherited;
  FShowDetail:= btnShowDetail.Down;
end;

procedure TfmUncoveredModels.actShowVIMUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not (cdsDetail.Bof and cdsDetail.Eof);
end;

procedure TfmUncoveredModels.actShowVIMExecute(Sender: TObject);
begin
  inherited;
  ShowProductVIM(
    dmDocClient, 
    cdsDetailMATERIAL_CODE.AsInteger,
    cdsDetailMATERIAL_NEED_BEGIN_DATE.AsDateTime,
    False,
    vofVIMOpenedFromModel,
    pcNormal);
end;

function TfmUncoveredModels.ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean;
begin
  Result:=
    TfmXModel.ShowForm(
      dmDocClient, cdsGridData, AEditMode, True, False, False, 0, 0, nil, nil,
      cdsDetailMLL_OBJECT_BRANCH_CODE.AsInteger, cdsDetailMLL_OBJECT_CODE.AsInteger);
end;

function TfmUncoveredModels.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  // interesen e fakta, che v nachaloto na GridForm.actEditRecordExecute actEditRecord.Enabled = False
  // zatova e i proverkata za bof i eof
  if (EditMode <> emInsert) and not (cdsGridData.Bof and cdsGridData.Eof) then
    Result:= ShowDetailEditForm(AEditMode, doNone)
  else
    Result:= False;
end;

procedure TfmUncoveredModels.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if (Column.Field = cdsGridDataPRIORITY_FULL_NAME) then
    begin
      if not cdsGridDataPRIORITY_COLOR.IsNull then
        AFont.Color:= cdsGridDataPRIORITY_COLOR.AsInteger;

      if not cdsGridDataPRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsGridDataPRIORITY_BACKGROUND_COLOR.AsInteger;
    end;

  if (Column.Field = cdsGridDataML_STATE_CODE) and not Column.Field.IsNull then
    begin
      if (cdsGridDataML_STATE_CODE.AsInteger >= Low(ModelStateColors)) and
         (cdsGridDataML_STATE_CODE.AsInteger <= High(ModelStateColors)) then
        Background:= ModelStateColors[cdsGridDataML_STATE_CODE.AsInteger];
    end;

  if (Column.Field = cdsGridDataIS_WASTE_COMPENSATOR) and
     cdsGridDataHAS_WASTE.AsBoolean then
    Background:= clRed;

  if (Column.Field = cdsGridData_MODEL_START_RESERVE) and
     (cdsGridData_MODEL_START_RESERVE.AsInteger < 0) then
    AFont.Color:= clRed;
end;

procedure TfmUncoveredModels.cdsDetailMATERIAL_NEED_BEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:=
      dmMain.GetDateIntervalAsShortString(
        cdsDetailMATERIAL_NEED_BEGIN_DATE.AsDateTime,
        cdsDetailMATERIAL_NEED_END_DATE.AsDateTime);
end;

procedure TfmUncoveredModels.cdsGridDataML_STATE_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= MLStateNames[Sender.AsInteger]
  else
    Text:= '';
end;

procedure TfmUncoveredModels.cdsGridDataIS_WASTE_COMPENSATORGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if cdsGridDataHAS_WASTE.AsBoolean then
    Text:= Sender.AsString + '!'
  else
    Text:= Sender.AsString;
end;

procedure TfmUncoveredModels.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  InitializePriorityInterval(pdsGridDataParamsBEGIN_PRIORITY_CODE, pdsGridDataParamsEND_PRIORITY_CODE);
end;

end.
