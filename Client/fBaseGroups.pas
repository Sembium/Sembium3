unit fBaseGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, JvButtons, ParamDataSet,
  ActnList, DB, DBClient, AbmesClientDataSet, ComCtrls, ToolWin, Buttons,
  GridsEh, DBGridEh, AbmesDBGrid, DBCtrls, ColorNavigator, StdCtrls, 
  fBaseFrame, fDBFrame, fFieldEditFrame, 
  AbmesFields, dDocClient, uClientTypes, uUtils, fDualGridFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fProductFieldEditFrame,
  JvComponent, JvCaptionButton, JvComponentBase, Menus, Mask, DBGridEhGrouping;

type
  TfmBaseGroups = class(TMasterDetailForm)
    pnlFilter: TPanel;                                                                                    
    pnlTopSeparator: TPanel;
    pnlBaseGroupButtons: TPanel;
    pnlDataButtons: TPanel;
    btnAddData: TBitBtn;
    btnDeleteData: TBitBtn;
    btnEditData: TBitBtn;
    cdsGridDataBASE_GROUP_CODE: TAbmesFloatField;
    cdsGridDataGROUP_DEPT_CODE: TAbmesFloatField;
    cdsGridDataGROUP_DEPT_NAME: TAbmesWideStringField;
    cdsGridDataGROUP_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataBASE_GROUP_NO: TAbmesFloatField;
    cdsGridDataBASE_GROUP_NAME: TAbmesWideStringField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataBASE_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataBASE_PRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataBASE_PRODUCT_NO: TAbmesFloatField;
    cdsGridDataBASE_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    pdsGridDataParamsGROUP_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsGROUP_DEPT_NAME: TAbmesWideStringField;
    pdsGridDataParamsGROUP_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsCandidateProducts: TAbmesClientDataSet;
    cdsCandidateProductsPRODUCT_CODE: TAbmesFloatField;
    cdsCandidateProductsPRODUCT_NAME: TAbmesWideStringField;
    cdsCandidateProductsPRODUCT_NO: TAbmesFloatField;
    cdsCandidateProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsDetailBASE_GROUP_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_NAME: TAbmesWideStringField;
    cdsDetailPRODUCT_NO: TAbmesFloatField;
    cdsDetailPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsDetailIS_BASE_PRODUCT: TAbmesFloatField;
    actSetBaseProduct: TAction;
    cdsGridDataqryBaseGroupProducts: TDataSetField;
    pdsGridDataParams_GROUP_DEPT_NAME: TAbmesWideStringField;
    cdsGridData_MAX_BASE_GROUP_NO: TAggregateField;
    cdsGridDataDOC_CHANGED: TAbmesFloatField;
    cdsDetailDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailDOC_CODE: TAbmesFloatField;
    cdsCandidateProductsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsCandidateProductsDOC_CODE: TAbmesFloatField;
    frBaseGroupProducts: TDualGridFrame;
    tlbBaseGroupProducts: TToolBar;
    sepSetBaseProduct: TToolButton;
    btnSetBaseProduct: TSpeedButton;
    tlbCandidateProductDocs: TToolBar;
    frGroupDept: TfrDeptFieldEditFrame;
    actJoinedProductSpecDocStatus: TAction;
    actCandidateProductSpecDocStatus: TAction;
    sepJoinedProductSpecDocStatus: TToolButton;
    btnJoinedProductSpecDocStatus: TToolButton;
    sepCandidateProductSpecDocStatus: TToolButton;
    btnCandidateProductSpecDocStatus: TToolButton;
    actJoinedProductStage: TAction;
    actCandidateProductStage: TAction;
    btnJoinedProductStage: TToolButton;
    sepJoinedProductStage: TToolButton;
    sepCandidateProductStage: TToolButton;
    btnCandidateProductStage: TToolButton;
    cdsDetailIS_INACTIVE: TAbmesFloatField;
    cdsCandidateProductsIS_INACTIVE: TAbmesFloatField;
    cdsDetailHAS_SPEC: TAbmesFloatField;
    cdsCandidateProductsHAS_SPEC: TAbmesFloatField;
    tlbToggles: TToolBar;
    btnShowInactive: TToolButton;
    actShowInactive: TAction;
    pnlBottomButtonsClient: TPanel;
    pnlResizeWorkspaceButton: TPanel;
    cdsGridDataBASE_GROUP_PRODUCTS_COUNT: TAbmesFloatField;
    cdsAllCandidateProducts: TAbmesClientDataSet;
    cdsAllCandidateProductsPRODUCT_CODE: TAbmesFloatField;
    cdsAllCandidateProductsPRODUCT_NAME: TAbmesWideStringField;
    cdsAllCandidateProductsPRODUCT_NO: TAbmesFloatField;
    cdsAllCandidateProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsAllCandidateProductsIS_INACTIVE: TAbmesFloatField;
    cdsAllCandidateProductsHAS_SPEC: TAbmesFloatField;
    cdsAllCandidateProductsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsAllCandidateProductsDOC_CODE: TAbmesFloatField;
    pdsGridDataParamsALL_FILTERED_PRODUCTS: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParams_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_NO: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField;
    gbJoinedProduct: TGroupBox;
    edtProductName: TDBEdit;
    edtProductNo: TDBEdit;
    cdsDetailJOINED_IN_BASE_GROUPS_COUNT: TAbmesFloatField;
    cdsDetailGROUP_DEPT_FLOW_COUNT: TAbmesFloatField;
    cdsAllCandidateProductsJOINED_IN_BASE_GROUPS_COUNT: TAbmesFloatField;
    cdsAllCandidateProductsGROUP_DEPT_FLOW_COUNT: TAbmesFloatField;
    cdsCandidateProductsJOINED_IN_BASE_GROUPS_COUNT: TAbmesFloatField;
    cdsCandidateProductsGROUP_DEPT_FLOW_COUNT: TAbmesFloatField;
    sepJoinedProductBaseGroups: TToolButton;
    btnJoinedProductBaseGroups: TSpeedButton;
    actJoinedProductBaseGroups: TAction;
    actCandidateProductBaseGroups: TAction;
    sepCandidateProductBaseGroups: TToolButton;
    btnCandidateProductBaseGroups: TSpeedButton;
    cdsProductBaseGroupsParams: TAbmesClientDataSet;
    cdsProductBaseGroupsParamsGROUP_DEPT_CODE: TAbmesFloatField;
    cdsProductBaseGroupsParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    btnDeptToolNeeds: TSpeedButton;
    pmDeptToolNeeds: TPopupMenu;
    pmDeptDetailToolNeeds: TPopupMenu;
    actDeptToolNeeds: TAction;
    actDeptDetailToolNeeds: TAction;
    pdsGridDataParamsHAS_SMVS_OPERATIONS_FOR_DEPT: TAbmesFloatField;
    btnDeptDetailToolNeeds: TSpeedButton;
    pdsAllCandidateProductsParams: TParamDataSet;
    pdsAllCandidateProductsParamsFLOWS_THROUGH_DEPT: TAbmesFloatField;
    btnCandidateProductsFilter: TToolButton;
    sepCandidateProductsFilter: TToolButton;
    actCandidateProductsFilter: TAction;
    pdsAllCandidateProductsParamsCANDIDATE_CHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsCANDIDATE_CHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsAllCandidateProductsParamsGROUP_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsFLOWS_THROUGH_DEPT: TAbmesFloatField;
    cdsDetailMODEL_VARIANTS_COUNT: TAbmesFloatField;
    cdsAllCandidateProductsMODEL_VARIANTS_COUNT: TAbmesFloatField;
    cdsCandidateProductsMODEL_VARIANTS_COUNT: TAbmesFloatField;
    tlbBaseGroupDoc: TToolBar;
    lblBaseGroupDoc: TLabel;
    btnBaseGroupDoc: TToolButton;
    sepBaseGroupDoc: TToolButton;
    actBaseGroupDoc: TAction;
    tlbBaseGroupProductDoc: TToolBar;
    sepBaseGroupProductDoc: TToolButton;
    lblBaseGroupProductDoc: TLabel;
    btnBaseGroupProductDoc: TToolButton;
    actBaseGroupProductDoc: TAction;
    tlbCandidateProductDoc: TToolBar;
    sepCandidateProductDoc: TToolButton;
    lblCandidateProductDoc: TLabel;
    btnCandidateProductDoc: TToolButton;
    actCandidateProductDoc: TAction;
    procedure pdsGridDataParamsGROUP_DEPT_CODEChange(Sender: TField);
    procedure cdsGridDataGROUP_DEPT_CODEChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure actSetBaseProductUpdate(Sender: TObject);
    procedure actSetBaseProductExecute(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataBeforeClose(DataSet: TDataSet);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cdsGridDataBeforeDelete(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure actFilterExecute(Sender: TObject);
    procedure frBaseGroupProductsactIncludeUpdate(Sender: TObject);
    procedure frBaseGroupProductsResize(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure actJoinedProductSpecDocStatusUpdate(Sender: TObject);
    procedure actCandidateProductSpecDocStatusUpdate(Sender: TObject);
    procedure actJoinedProductSpecDocStatusExecute(Sender: TObject);
    procedure actCandidateProductSpecDocStatusExecute(Sender: TObject);
    procedure actJoinedProductStageUpdate(Sender: TObject);
    procedure actCandidateProductStageUpdate(Sender: TObject);
    procedure actJoinedProductStageExecute(Sender: TObject);
    procedure actCandidateProductStageExecute(Sender: TObject);
    procedure frBaseGroupProductsgrdIncludedGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure frBaseGroupProductsgrdExcludedGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure actShowInactiveExecute(Sender: TObject);
    procedure cdsDetailFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsCandidateProductsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actExcelExportExecute(Sender: TObject);
    procedure pdsGridDataParamsCHOSEN_PRODUCTSChange(Sender: TField);
    procedure actJoinedProductBaseGroupsUpdate(Sender: TObject);
    procedure actCandidateProductBaseGroupsUpdate(Sender: TObject);
    procedure actJoinedProductBaseGroupsExecute(Sender: TObject);
    procedure actCandidateProductBaseGroupsExecute(Sender: TObject);
    procedure actDeptDetailToolNeedsUpdate(Sender: TObject);
    procedure actDeptToolNeedsExecute(Sender: TObject);
    procedure actDeptDetailToolNeedsExecute(Sender: TObject);
    procedure actCandidateProductsFilterExecute(Sender: TObject);
    procedure pdsAllCandidateProductsParamsBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParamsBeforeClose(DataSet: TDataSet);
    procedure actCandidateProductsFilterUpdate(Sender: TObject);
    procedure actBaseGroupDocUpdate(Sender: TObject);
    procedure actBaseGroupDocExecute(Sender: TObject);
    procedure actBaseGroupProductDocUpdate(Sender: TObject);
    procedure actCandidateProductDocUpdate(Sender: TObject);
    procedure actCandidateProductDocExecute(Sender: TObject);
    procedure actBaseGroupProductDocExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FSelectedProducts: TIntegerArray;
    FParamDataSetActive: Boolean;
    FChangingCandidateParams: Boolean;
    FExcludingBaseProduct: Boolean;
    procedure ClearBaseProduct;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure CheckForChanges;
    procedure SelectProducts;
    procedure RefilterProducts;
    procedure FillCandidateProductsDataSet;
    procedure ChosenProductsChange;
    procedure ShowBaseGroupsForProduct(AProductCode: Integer);
    procedure actToolNeedsExecute(Sender: TObject);
    procedure BeforeIncludeProducts(Sender: TObject; AMovingAllRecords: Boolean);
    procedure BeforeExcludeProducts(Sender: TObject; AMovingAllRecords: Boolean);
    procedure AfterIncludeProducts(Sender: TObject; AMovingAllRecords: Boolean; AException: Exception);
    procedure AfterExcludeProducts(Sender: TObject; AMovingAllRecords: Boolean; AException: Exception);
    procedure ClearDocChanged;
    procedure PositionToolbars;
  protected
    procedure DoApplyUpdates; override;
    class function CanUseDocs: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure FetchCustomDetails; override;
    function OpenTimeInSeconds: Integer; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      ASelectedProducts: TIntegerArray = nil): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      ASelectedProducts: TIntegerArray = nil); reintroduce; virtual;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uTreeClientUtils, fBaseGroupsFilter, fBaseGroup, AbmesDialogs,
  fSpecification, uDocUtils, fSpecDocStatus, uToolbarUtils,
  uDataSetUtils, uXMLUtils, fDeptDetailFlowToolNeeds, uClientUtils,
  fBaseGroupsCandidateProductsFilter, uClientConsts;

{$R *.dfm}

resourcestring
  SIncorrectSelectedProducts = 'Избраните Управляеми Обекти не са в една базова група или не са свободни всички';
  SSavePrompt = 'Желаете ли да запишете промените?';
  SNoBaseProduct = 'Не е обявен Типо-Представител!';
  STooManyCandidateProducts = 'Прекалено много кандидати за Базова Група';

{ TfmBaseGroups }

procedure TfmBaseGroups.RefilterProducts;

  procedure RefilterDataSet(ADataSet: TClientDataSet);
  begin
    ADataSet.DisableControls;
    try
      ADataSet.Filtered:= False;
      ADataSet.Filtered:= True;
      ADataSet.First;
    finally
      ADataSet.EnableControls;
    end;  { try }
  end;

begin
  RefilterDataSet(cdsDetail);
  RefilterDataSet(cdsCandidateProducts);
end;

procedure TfmBaseGroups.pdsGridDataParamsGROUP_DEPT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(pdsGridDataParamsGROUP_DEPT_CODE,
    pdsGridDataParamsGROUP_DEPT_NAME, pdsGridDataParamsGROUP_DEPT_IDENTIFIER);

  pdsGridDataParamsHAS_SMVS_OPERATIONS_FOR_DEPT.AsBoolean:=
    dmMain.SvrBaseGroups.HasSMVSOperationsForDept(pdsGridDataParamsGROUP_DEPT_CODE.AsInteger);
end;

procedure TfmBaseGroups.cdsGridDataGROUP_DEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsGridDataGROUP_DEPT_CODE,
    cdsGridDataGROUP_DEPT_NAME, cdsGridDataGROUP_DEPT_IDENTIFIER);
end;

procedure TfmBaseGroups.FormCreate(Sender: TObject);
begin
  inherited;

  frGroupDept.FieldNames:= 'GROUP_DEPT_CODE';
  frGroupDept.SetDataSet(pdsGridDataParams);

  FilterFormClass:= TfmBaseGroupsFilter;
  EditFormClass:= TfmBaseGroup;

  CreateToolNeedsPopupMenuItems(Self, alActions, pmDeptToolNeeds, cdsGridData, actToolNeedsExecute);
  CreateToolNeedsPopupMenuItems(Self, alActions, pmDeptDetailToolNeeds, cdsDetail, actToolNeedsExecute);

  frBaseGroupProducts.BeforeInclude:= BeforeIncludeProducts;
  frBaseGroupProducts.BeforeExclude:= BeforeExcludeProducts;
  frBaseGroupProducts.AfterInclude:= AfterIncludeProducts;
  frBaseGroupProducts.AfterExclude:= AfterExcludeProducts;
end;

procedure TfmBaseGroups.FormShow(Sender: TObject);
begin
  inherited;
  PositionToolbars;
end;

procedure TfmBaseGroups.BeforeExcludeProducts(Sender: TObject; AMovingAllRecords: Boolean);
begin
  if RecordChangePending then
    Abort;

  FExcludingBaseProduct:= AMovingAllRecords or cdsDetailIS_BASE_PRODUCT.AsBoolean;
end;

procedure TfmBaseGroups.BeforeIncludeProducts(Sender: TObject; AMovingAllRecords: Boolean);
begin
  if RecordChangePending then
    Abort;
end;

procedure TfmBaseGroups.AfterExcludeProducts(Sender: TObject; AMovingAllRecords: Boolean; AException: Exception);
begin
  if FExcludingBaseProduct and not Assigned(AException) then
    ClearBaseProduct;
end;

procedure TfmBaseGroups.AfterIncludeProducts(Sender: TObject; AMovingAllRecords: Boolean; AException: Exception);
begin
  if AMovingAllRecords and not Assigned(AException) then
    begin
      cdsDetail.First;
      frBaseGroupProducts.grdExcluded.SelectedIndex:= -1;
    end;  { if }
end;

procedure TfmBaseGroups.actSetBaseProductUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDetail.Active and
    (cdsDetail.RecordCount > 0) and
    (not cdsDetailIS_BASE_PRODUCT.AsBoolean) and
    ( (cdsDetail.RecordCount = 1) or
      (frBaseGroupProducts.grdIncluded.SelectedRows.Count = 0) or
      ( (frBaseGroupProducts.grdIncluded.SelectedRows.Count = 1) and
        (frBaseGroupProducts.grdIncluded.SelectedRows[0] = cdsDetail.Bookmark) ) );
end;

procedure TfmBaseGroups.actShowInactiveExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  RefilterProducts;
end;

procedure TfmBaseGroups.actSetBaseProductExecute(Sender: TObject);

  procedure SetIsBaseProduct(AValue: Boolean);
  begin
    with cdsDetail do
      begin
        Edit;
        try
          cdsDetailIS_BASE_PRODUCT.AsBoolean:= AValue;
          Post;
        except
          Cancel;
          raise;
        end;  { try }
      end;  { with }
  end;

var
  SavedFiltered: Boolean;
  SavedProductCode: Integer;
begin
  inherited;

  with cdsDetail do
    begin
      DisableControls;
      try
        SavedProductCode:= cdsDetailPRODUCT_CODE.AsInteger;
        try
          SavedFiltered:= Filtered;
          Filtered:= False;
          try
            First;
            while Locate('IS_BASE_PRODUCT', True, []) do
              SetIsBaseProduct(False);

            Locate('PRODUCT_CODE', SavedProductCode, []);
            SetIsBaseProduct(True);

            with cdsGridData do
              begin
                DisableControls;
                try
                  Edit;
                  try
                    cdsGridDataBASE_PRODUCT_CODE.Assign(cdsDetailPRODUCT_CODE);
                    cdsGridDataBASE_PRODUCT_NAME.Assign(cdsDetailPRODUCT_NAME);
                    cdsGridDataBASE_PRODUCT_NO.Assign(cdsDetailPRODUCT_NO);
                    cdsGridDataBASE_PRODUCT_HAS_DOC_ITEMS.Assign(cdsDetailPRODUCT_HAS_DOC_ITEMS);

                    Post;
                  except
                    Cancel;
                    raise;
                  end;  { try }
                finally
                  EnableControls;
                end;  { try }
              end;  { with }
          finally
            Filtered:= SavedFiltered;
          end;
        finally
          Locate('PRODUCT_CODE', SavedProductCode, []);
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmBaseGroups.FillCandidateProductsDataSet;
begin
  cdsCandidateProducts.DisableControls;
  try
    cdsCandidateProducts.EmptyDataSet;
    SetDataSetData(cdsCandidateProducts, GetDataSetData(cdsAllCandidateProducts, True), True);
    cdsCandidateProducts.Subtract(cdsDetail, 'PRODUCT_CODE');
  finally
    cdsCandidateProducts.EnableControls;
  end;  { try }
end;

procedure TfmBaseGroups.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsAllCandidateProducts.Open;

  cdsCandidateProducts.CreateDataSet;
  FillCandidateProductsDataSet;
end;

procedure TfmBaseGroups.FetchCustomDetails;
begin
  inherited;
  FillCandidateProductsDataSet;
end;

procedure TfmBaseGroups.cdsGridDataBeforeClose(DataSet: TDataSet);
begin
  inherited;
  cdsCandidateProducts.Close;
  cdsAllCandidateProducts.Close;
end;

procedure TfmBaseGroups.pdsGridDataParamsBeforeClose(DataSet: TDataSet);
begin
  inherited;
  pdsAllCandidateProductsParams.Close;
end;

procedure TfmBaseGroups.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if FParamDataSetActive then
    CheckRequiredFields(pdsGridDataParams, 'GROUP_DEPT_NAME');

  if not FChangingCandidateParams then
    begin
      pdsAllCandidateProductsParams.Edit;
      try
        pdsAllCandidateProductsParams.AssignFields(pdsGridDataParams);
        pdsAllCandidateProductsParams.Post;
      except
        pdsAllCandidateProductsParams.Cancel;
        raise;
      end;  { try }
    end;  { if }
end;

procedure TfmBaseGroups.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;
  // sledvashtite poleta triabvat, shtoto CheckRequiredFields fokusira tukashnite frame-ove
  pdsGridDataParams_GROUP_DEPT_NAME.Assign(pdsGridDataParamsGROUP_DEPT_NAME);
end;

procedure TfmBaseGroups.ChosenProductsChange;
begin
  pdsGridDataParams_PRODUCT_CODE.Clear;
  pdsGridDataParams_PRODUCT_NO.Clear;
  pdsGridDataParams_PRODUCT_NAME.Clear;

  if HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
    begin
      if IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
        begin
          pdsGridDataParams_PRODUCT_CODE.AsInteger:=
            ChosenNodeXMLToNodeCode(pdsGridDataParamsCHOSEN_PRODUCTS.AsString);

          DoProductFieldChanged(
            pdsGridDataParams_PRODUCT_CODE,
            pdsGridDataParams_PRODUCT_NAME,
            pdsGridDataParams_PRODUCT_NO);
        end
      else
        pdsGridDataParams_PRODUCT_NAME.AsString:= SProductsSetNormal;
    end
  else
    pdsGridDataParams_PRODUCT_NAME.AsString:= SAllInBrackets;
end;

procedure TfmBaseGroups.pdsGridDataParamsCHOSEN_PRODUCTSChange(Sender: TField);
begin
  inherited;
  ChosenProductsChange;
end;

procedure TfmBaseGroups.cdsCandidateProductsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:= (actShowInactive.Checked or not cdsCandidateProductsIS_INACTIVE.AsBoolean);
end;

procedure TfmBaseGroups.cdsDetailFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:= (actShowInactive.Checked or not cdsDetailIS_INACTIVE.AsBoolean);
end;

procedure TfmBaseGroups.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDetailBASE_GROUP_CODE.Assign(cdsGridDataBASE_GROUP_CODE);
end;

procedure TfmBaseGroups.cdsGridDataBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  frBaseGroupProducts.DoExcludeAll;

  dmDocClient.DSDeleteDoc(cdsGridData);
end;

procedure TfmBaseGroups.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsGridDataBASE_GROUP_CODE.AsInteger:=
    dmMain.SvrBaseGroups.NewBaseGroupCode;

  cdsGridDataBASE_GROUP_NO.AsInteger:=
    VarToInt(cdsGridData_MAX_BASE_GROUP_NO.Value) + 1;

  cdsGridDataGROUP_DEPT_CODE.Assign(pdsGridDataParamsGROUP_DEPT_CODE);
end;

procedure TfmBaseGroups.ClearBaseProduct;
begin
  cdsGridData.Edit;
  try
    cdsGridDataBASE_PRODUCT_CODE.Clear;
    cdsGridDataBASE_PRODUCT_NAME.Clear;
    cdsGridDataBASE_PRODUCT_NO.Clear;
    cdsGridDataBASE_PRODUCT_HAS_DOC_ITEMS.AsBoolean:= False;
    cdsGridData.Post;
  except
    cdsGridData.Cancel;
    raise;
  end;  { try }
end;

procedure TfmBaseGroups.ClearDocChanged;
var
  GridDataBookmark: TBookmark;
  DetailBookmark: TBookmark;
begin
  cdsGridData.DisableControls;
  cdsDetail.DisableControls;
  try
    GridDataBookmark:= cdsGridData.Bookmark;
    DetailBookmark:= cdsDetail.Bookmark;
    try
      cdsGridData.First;
      while not cdsGridData.Eof do
        begin
          if cdsGridDataDOC_CHANGED.AsBoolean then
            begin
              cdsGridData.Edit;
              try
                cdsGridDataDOC_CHANGED.AsBoolean:= False;
                cdsGridData.Post;
              except
                cdsGridData.Cancel;
                raise;
              end;
            end;

          cdsGridData.Next;
        end;  { while }

      cdsGridData.MergeChangeLog;
    finally
      cdsGridData.Bookmark:= GridDataBookmark;
      cdsDetail.Bookmark:= DetailBookmark;
    end;  { try }
  finally
    cdsDetail.EnableControls;
    cdsGridData.EnableControls;
  end;  { try }
end;

procedure TfmBaseGroups.DoApplyUpdates;
var
  GridDataBookmark: TBookmark;
  DetailBookmark: TBookmark;
begin
  cdsGridData.DisableControls;
  cdsDetail.DisableControls;
  try
    GridDataBookmark:= cdsGridData.Bookmark;
    DetailBookmark:= cdsDetail.Bookmark;
    try
      cdsGridData.First;
      while not cdsGridData.Eof do
        begin
          if cdsGridDataBASE_PRODUCT_CODE.IsNull and
             (cdsDetail.RecordCount > 0) then
            begin
              GridDataBookmark:= cdsGridData.Bookmark;
              DetailBookmark:= cdsDetail.Bookmark;

              raise Exception.Create(SNoBaseProduct);
            end;

          cdsGridData.Next;
        end;  { while }
    finally
      cdsGridData.Bookmark:= GridDataBookmark;
      cdsDetail.Bookmark:= DetailBookmark;
    end;  { try }
  finally
    cdsDetail.EnableControls;
    cdsGridData.EnableControls;
  end;  { try }

  inherited DoApplyUpdates;

  ClearDocChanged;
  dmDocClient.CommitUpdates;
end;

class function TfmBaseGroups.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmBaseGroups.actFormUpdate(Sender: TObject);
begin
  inherited;
  actDeptToolNeeds.Visible:= pdsGridDataParamsHAS_SMVS_OPERATIONS_FOR_DEPT.AsBoolean;
  actDeptDetailToolNeeds.Visible:= pdsGridDataParamsHAS_SMVS_OPERATIONS_FOR_DEPT.AsBoolean;
end;

procedure TfmBaseGroups.ShowBaseGroupsForProduct(AProductCode: Integer);
begin
  cdsProductBaseGroupsParams.CreateDataSet;
  try
    cdsProductBaseGroupsParams.Append;
    try
      cdsProductBaseGroupsParamsGROUP_DEPT_CODE.AsInteger:= pdsGridDataParamsGROUP_DEPT_CODE.AsInteger;
      cdsProductBaseGroupsParamsCHOSEN_PRODUCTS.AsString:= ChosenNodeCodeToXML(AProductCode);
      cdsProductBaseGroupsParams.Post;
    except
      cdsProductBaseGroupsParams.Cancel;
      raise;
    end;  { try }

    TfmBaseGroups.ShowForm(dmDocClient, cdsProductBaseGroupsParams, emReadOnly, doNone, False);
  finally
    cdsProductBaseGroupsParams.Close;
  end;  { try }
end;

procedure TfmBaseGroups.actJoinedProductBaseGroupsExecute(Sender: TObject);
begin
  inherited;
  ShowBaseGroupsForProduct(cdsDetailPRODUCT_CODE.AsInteger);
end;

procedure TfmBaseGroups.actJoinedProductBaseGroupsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmBaseGroups.actJoinedProductSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(nil, cdsDetailPRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmBaseGroups.actJoinedProductSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDetail.Active and
    cdsDetailHAS_SPEC.AsBoolean;
end;

procedure TfmBaseGroups.actJoinedProductStageExecute(Sender: TObject);
begin
  inherited;
  TfmSpecification.ShowOperations(
    nil,
    cdsDetailPRODUCT_CODE.AsInteger,
    cdsGridDataGROUP_DEPT_CODE.AsInteger);
end;

procedure TfmBaseGroups.actJoinedProductStageUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDetail.Active and
    cdsDetailHAS_SPEC.AsBoolean;
end;

procedure TfmBaseGroups.cdsGridDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmBaseGroups.dmDocClientOnDataChanged(Sender: TObject);
begin
  if dmDocClient.DSIsCurrent(cdsGridData) then
    with cdsGridData do
      begin
        Edit;
        try
          cdsGridDataHAS_DOC_ITEMS.AsBoolean:=
            (dmDocClient.DSDocItemCount(cdsGridData, True) > 0);
          cdsGridDataDOC_CHANGED.AsBoolean:= True;
          Post;
        except
          Cancel;
          raise;
        end;  { try }
      end;  { with }
end;

procedure TfmBaseGroups.Initialize;
begin
  inherited;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;
  SelectProducts;

  // smiatane na imena na product i dept
  with pdsGridDataParams do
    begin
      Edit;
      try
        pdsGridDataParamsGROUP_DEPT_CODE.AsInteger:= pdsGridDataParamsGROUP_DEPT_CODE.AsInteger;
        Post;
      except
        Cancel;
        raise;
      end;  { try }
    end;  { with }
end;

procedure TfmBaseGroups.PositionToolbars;

  procedure PositionToolbar(AToolbar: TToolBar);
  var
    ntlb: TWinControl;
  begin
    ntlb:= NormalizedToolbar(AToolbar);
    ntlb.Parent.Top:= frBaseGroupProducts.Top;
  end;

begin
  PositionToolbar(tlbBaseGroupProductDoc);
  PositionToolbar(tlbBaseGroupProducts);
  PositionToolbar(tlbCandidateProductDocs);
  PositionToolbar(tlbToggles);
  PositionToolbar(tlbCandidateProductDoc);
end;

procedure TfmBaseGroups.CheckForChanges;
begin
  if (cdsGridData.ChangeCount > 0) then
    case MessageDlgEx(SSavePrompt, mtConfirmation, mbYesNoCancel, 0) of
      mrYes: DoApplyUpdates;
      mrCancel: Abort;
    end;
end;

procedure TfmBaseGroups.navDataBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbRefresh) then
    CheckForChanges;

  inherited;
end;

function TfmBaseGroups.OpenTimeInSeconds: Integer;
begin
  Result:= inherited OpenTimeInSeconds + cdsAllCandidateProducts.OpenTimeInSeconds;
end;

procedure TfmBaseGroups.actFilterExecute(Sender: TObject);
begin
  CheckForChanges;
  inherited;
end;

procedure TfmBaseGroups.actBaseGroupDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    EditMode,
    (Sender as TAction).ActionComponent as TControl,
    dotBaseGroup,
    cdsGridData);
end;

procedure TfmBaseGroups.actBaseGroupDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataHAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmBaseGroups.actBaseGroupProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsDetail);
end;

procedure TfmBaseGroups.actBaseGroupProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsDetailPRODUCT_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmBaseGroups.actCandidateProductBaseGroupsExecute(Sender: TObject);
begin
  inherited;
  ShowBaseGroupsForProduct(cdsCandidateProductsPRODUCT_CODE.AsInteger);
end;

procedure TfmBaseGroups.actCandidateProductBaseGroupsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsCandidateProducts.IsEmpty;
end;

procedure TfmBaseGroups.actCandidateProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsCandidateProducts);
end;

procedure TfmBaseGroups.actCandidateProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsCandidateProductsPRODUCT_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsCandidateProducts.IsEmpty;
end;

procedure TfmBaseGroups.actCandidateProductsFilterExecute(Sender: TObject);
begin
  inherited;
  if TfmBaseGroupsCandidateProductsFilter.ShowForm(dmDocClient, pdsAllCandidateProductsParams, emEdit) then
    begin
      RefreshDataSet(cdsAllCandidateProducts);
      FillCandidateProductsDataSet;
    end;  { if }
end;

procedure TfmBaseGroups.actCandidateProductsFilterUpdate(Sender: TObject);
var
  s: string;
begin
  inherited;
  s:= SFilter;
  if cdsAllCandidateProducts.Active then
    s:= s + Format(SRows, [Int(cdsAllCandidateProducts.RecordCount), cdsAllCandidateProducts.OpenTimeInSeconds]);

  (Sender as TAction).Hint:= s;
end;

procedure TfmBaseGroups.actCandidateProductSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(nil, cdsCandidateProductsPRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmBaseGroups.actCandidateProductSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsCandidateProducts.Active and
    cdsCandidateProductsHAS_SPEC.AsBoolean;
end;

procedure TfmBaseGroups.actCandidateProductStageExecute(Sender: TObject);
begin
  inherited;
  TfmSpecification.ShowOperations(
    nil,
    cdsCandidateProductsPRODUCT_CODE.AsInteger,
    cdsGridDataGROUP_DEPT_CODE.AsInteger);
end;

procedure TfmBaseGroups.actCandidateProductStageUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsCandidateProducts.Active and
    cdsCandidateProductsHAS_SPEC.AsBoolean;
end;

procedure TfmBaseGroups.actDeptDetailToolNeedsExecute(Sender: TObject);
begin
  inherited;
  PopupMenuFromButton((Sender as TAction).ActionComponent as TControl, pmDeptDetailToolNeeds);
end;

procedure TfmBaseGroups.actDeptDetailToolNeedsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmBaseGroups.actDeptToolNeedsExecute(Sender: TObject);
begin
  inherited;
  PopupMenuFromButton((Sender as TAction).ActionComponent as TControl, pmDeptToolNeeds);
end;

procedure TfmBaseGroups.actExcelExportExecute(Sender: TObject);
var
  SavegrdDetail: TAbmesDBGrid;
begin
  SavegrdDetail:= grdDetail;
  grdDetail:= frBaseGroupProducts.grdIncluded;
  try
    inherited;
  finally
    grdDetail:= SavegrdDetail;
  end;
end;

procedure TfmBaseGroups.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; ASelectedProducts: TIntegerArray);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode,
    ADefaultsOrigin, AFilterFormEnabled);

  FSelectedProducts:= ASelectedProducts;
end;

class function TfmBaseGroups.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; ASelectedProducts: TIntegerArray): Boolean;
var
  f: TfmBaseGroups;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled,
        ASelectedProducts);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmBaseGroups.SelectProducts;

  function LocateInGrid(AGrid: TAbmesDBGrid): Boolean;
  var
    i: Integer;
    c: Integer;
    GridDataSet: TDataSet;
  begin
    Assert(Assigned(AGrid));
    Assert(Assigned(AGrid.DataSource));
    Assert(Assigned(AGrid.DataSource.DataSet));

    GridDataSet:= AGrid.DataSource.DataSet;

    c:= 0;
    for i:= Low(FSelectedProducts) to High(FSelectedProducts) do
      if GridDataSet.Locate('PRODUCT_CODE', FSelectedProducts[i], []) then
        Inc(c);

    if (c > 0) and (c < Length(FSelectedProducts)) then
      raise Exception.Create(SIncorrectSelectedProducts);

    Result:= (c = Length(FSelectedProducts));

    if Result then
      begin
        AGrid.SelectedRows.Clear;
        for i:= Low(FSelectedProducts) to High(FSelectedProducts) do
          begin
            GridDataSet.Locate('PRODUCT_CODE', FSelectedProducts[i], []);
            AGrid.SelectedRows.CurrentRowSelected:= True;
          end;

        GridDataSet.Locate('PRODUCT_CODE', FSelectedProducts[Low(FSelectedProducts)], []);

        ActiveControl:= AGrid;
      end;
  end;  { LocateInGrid }

var
  CandidateBookmark: TBookmark;
  GridDataBookmark: TBookmark;
  DetailBookmark: TBookmark;
begin
  if Assigned(FSelectedProducts) and (Length(FSelectedProducts) > 0) then
    begin
      cdsCandidateProducts.DisableControls;
      try
        CandidateBookmark:= cdsCandidateProducts.Bookmark;
        try
          if LocateInGrid(frBaseGroupProducts.grdExcluded) then
            CandidateBookmark:= cdsCandidateProducts.Bookmark
          else
            begin
              cdsGridData.DisableControls;
              cdsDetail.DisableControls;
              try
                GridDataBookmark:= cdsGridData.Bookmark;
                DetailBookmark:= cdsDetail.Bookmark;
                try
                  cdsGridData.First;
                  while not cdsGridData.Eof do
                    begin
                      if LocateInGrid(frBaseGroupProducts.grdIncluded) then
                        begin
                          GridDataBookmark:= cdsGridData.Bookmark;
                          DetailBookmark:= cdsDetail.Bookmark;

                          Break;
                        end;  { if }

                      if LocateInGrid(frBaseGroupProducts.grdExcluded) then
                        begin
                          GridDataBookmark:= cdsGridData.Bookmark;
                          CandidateBookmark:= cdsCandidateProducts.Bookmark;

                          Break;
                        end;  { if }

                      cdsGridData.Next;
                    end;  { while }
                finally
                  cdsGridData.Bookmark:= GridDataBookmark;
                  cdsDetail.Bookmark:= DetailBookmark;
                end;  { try }
              finally
                cdsGridData.EnableControls;
                cdsDetail.EnableControls;
              end;  { try }
            end;
        finally
          cdsCandidateProducts.Bookmark:= CandidateBookmark;
        end;  { try }
      finally
        cdsCandidateProducts.EnableControls;
      end;  { try }
    end;  { if }
end;

procedure TfmBaseGroups.frBaseGroupProductsactIncludeUpdate(
  Sender: TObject);
begin
  (Sender as TAction).Enabled:=
    frBaseGroupProducts.GetIncludeEnabled and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmBaseGroups.frBaseGroupProductsgrdExcludedGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if cdsCandidateProductsIS_INACTIVE.AsBoolean then
    AFont.Color:= clRed;
end;

procedure TfmBaseGroups.frBaseGroupProductsgrdIncludedGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if cdsDetailIS_INACTIVE.AsBoolean then
    AFont.Color:= clRed;
end;

procedure TfmBaseGroups.frBaseGroupProductsResize(Sender: TObject);
begin
  inherited;
  PositionToolbars;
end;

procedure TfmBaseGroups.pdsAllCandidateProductsParamsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (pdsAllCandidateProductsParamsFLOWS_THROUGH_DEPT.AsInteger <> 2) and
     not HasChosenNodesOrParams(pdsAllCandidateProductsParamsCANDIDATE_CHOSEN_PRODUCTS.AsString) then
    begin
      raise Exception.Create(STooManyCandidateProducts);
    end;  { if }

  FChangingCandidateParams:= True;
  try
    pdsGridDataParams.Edit;
    try
      pdsGridDataParams.AssignFields(pdsAllCandidateProductsParams, 'CANDIDATE_CHOSEN_PRODUCTS; FLOWS_THROUGH_DEPT');
      pdsGridDataParams.Post;
    except
      pdsGridDataParams.Cancel;
      raise;
    end;  { try }
  finally
    FChangingCandidateParams:= False;
  end;  { try }
end;

procedure TfmBaseGroups.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
const
  FilterDefaultFlowsThroughDeptValue = 2;
begin
  inherited;
  pdsAllCandidateProductsParams.Open;

  with pdsGridDataParams do
    begin
      Edit;
      try
        pdsGridDataParamsFLOWS_THROUGH_DEPT.AsInteger:= FilterDefaultFlowsThroughDeptValue;
        pdsGridDataParamsGROUP_DEPT_CODE.Assign(pdsGridDataParamsGROUP_DEPT_CODE);
        ChosenProductsChange;
        Post;
      except
        Cancel;
        raise;
      end;  { try }
    end;  { with }

  FParamDataSetActive:= True;
end;

procedure TfmBaseGroups.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frGroupDept) then
    AFrame.ReadOnly:= True
  else
    inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmBaseGroups.actToolNeedsExecute(Sender: TObject);
var
  a: TToolNeedsAction;
  Params: TParams;
begin
  a:= (Sender as TToolNeedsAction);

  Params:= TParams.Create(Self);
  try
    Params.CreateParam(ftFloat, 'DEPT_CODE', ptUnknown).AsInteger:= pdsGridDataParamsGROUP_DEPT_CODE.AsInteger;

    if (a.DataSet = cdsDetail) then
      Params.CreateParam(ftFloat, 'DETAIL_CODE', ptUnknown).AsInteger:= cdsDetailPRODUCT_CODE.AsInteger;

    TfmDeptDetailFlowToolNeeds.ShowForm(
      dmDocClient, nil, EditMode, Params, a.ToolType, a.ToolStructPartType);
  finally
    FreeAndNil(Params);
  end;  { try }
end;

end.



