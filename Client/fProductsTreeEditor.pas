unit fProductsTreeEditor;
                                                            
interface                                                                       
                                                 
uses                                                                                                 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fTreeNomWithParamsAndPrefixAndSuffixForm, Db, DBClient, ImgList, ActnList, ComCtrls, GridsEh,       
  StdCtrls, TreeParentsComboBox, DBCtrls,
  ColorNavigator, ToolWin, Buttons, ExtCtrls, Menus, fTreeNomWithParamsForm,
  fTreeNomEditorForm, AbmesClientDataSet, DBGridEh, AbmesDBGrid, AbmesFields,
  fBaseFrame, fDBFrame, fTreeNodeParamsFrame, JvButtons, uClientTypes, fTreeSelectForm,
  dDocClient, fFieldEditFrame, fDoc, JvComponent, JvCaptionButton, fTreeForm,
  JvComponentBase, uProducts, ParamDataSet, AbmesDBCheckBox, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  System.Actions;

type                                                                                                      
  TfmProductsTreeEditor = class(TTreeNomWithParamsAndPrefixAndSuffixForm)
    cdsNodeChildrenPRODUCT_CODE: TAbmesFloatField;
    cdsNodeChildrenPARENT_CODE: TAbmesFloatField;
    cdsNodeChildrenNAME: TAbmesWideStringField;
    cdsNodeChildrenCUSTOM_CODE: TAbmesFloatField;
    cdsNodeChildrenMEASURE_CODE: TAbmesFloatField;
    cdsNodeChildrenACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsNodeChildrenACCOUNT_MEASURE_COEF: TAbmesFloatField;                  
    cdsNodeChildrenTECH_MEASURE_CODE: TAbmesFloatField;
    cdsNodeChildrenTECH_MEASURE_COEF: TAbmesFloatField;
    cdsNodeChildrenIS_VAT_FREE: TAbmesFloatField;
    cdsNodeChildrenNOTES: TAbmesWideStringField;
    cdsNodeChildrenPARENT_MEASURE_CODE: TAbmesFloatField;
    cdsNodeChildrenPARENT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsNodeChildrenPARENT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsNodeChildrenPARENT_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsNodeChildrenPARENT_TECH_MEASURE_COEF: TAbmesFloatField;
    cdsNodeChildrenHAS_DOCUMENTATION: TAbmesFloatField;
    actEditSpecification: TAction;
    cdsNodeChildrenSPEC_PRODUCT_CODE: TAbmesFloatField;
    mlNewSpecification: TMenuItem;
    miEditSpecification: TMenuItem;
    cdsNodeChildrenTRANSPORT_MEASURE_CODE: TAbmesFloatField;
    cdsNodeChildrenTRANSPORT_MEASURE_COEF: TAbmesFloatField;
    cdsNodeChildrenPARENT_TRANSPORT_MEASURE_CODE: TAbmesFloatField;
    cdsNodeChildrenPARENT_TRANSPORT_MEASURE_COEF: TAbmesFloatField;
    actExportProduct: TAction;
    cdsNodeChildrenSELF_EXISTENT_STATUS_CODE: TAbmesFloatField;
    cdsNodeChildrenPAR_SELF_EXISTENT_STATUS_CODE: TAbmesFloatField;
    cdsNodeChildrenDOC_BRANCH_CODE: TAbmesFloatField;
    cdsNodeChildrenDOC_CODE: TAbmesFloatField;
    cdsNodeChildrenWORKDAYS_TO_EXIST: TAbmesFloatField;
    cdsNodeChildrenTRANSIENT_STATUS_CODE: TAbmesFloatField;
    cdsNodeChildrenPAR_TRANSIENT_STATUS_CODE: TAbmesFloatField;
    cdsNodeChildrenPARENT_WORKDAYS_TO_EXIST: TAbmesFloatField;
    cdsTransientStatuses: TAbmesClientDataSet;
    cdsTransientStatusesTRANSIENT_STATUS_CODE: TAbmesFloatField;
    cdsTransientStatusesTRANSIENT_STATUS_NAME: TAbmesWideStringField;
    cdsNodeChildren_TRANSIENT_STATUS_NAME: TAbmesWideStringField;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    actShowVIM: TAction;
    btnShowVIM: TToolButton;
    cdsNodeChildrenDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsNodeChildrenDOC_IS_COMPLETE: TAbmesFloatField;
    cdsNodeChildrenACTIVE_DI_COUNT: TAbmesFloatField;
    cdsNodeChildrenUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    pnlDocs: TPanel;
    actShowDocs: TAction;
    btnShowDocs: TToolButton;
    pnlDocStatusPanels: TPanel;
    pnlDocStatusProductName: TPanel;
    pnlDocStatusProductNo: TPanel;
    pnlDocStatus: TPanel;
    txtProductName: TDBText;
    txtProductNo: TDBText;
    cdsProductSpecStructStatus: TAbmesClientDataSet;
    cdsProductSpecStructStatusLEVEL_NO: TAbmesFloatField;
    cdsProductSpecStructStatusLEVEL_IS_COMPLETE: TAbmesFloatField;
    cdsProductSpecStructStatusMAX_LEVEL_NO: TAbmesFloatField;
    tmrProductSpecDocStatus: TTimer;
    dsProductSpecStructStatus: TDataSource;
    cdsProductSpecStructStatus_DISPLAY_TEXT: TAbmesWideStringField;
    txtProductStructStatus: TDBText;
    frDoc: TfrDoc;
    bvlDocBottomLine: TBevel;
    btnSpecDocStatus: TToolButton;
    actSpecDocStatus: TAction;
    cdsNodeChildrenUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsProductSpecStructStatusHAS_MISSING_CHILDREN: TAbmesFloatField;
    cdsNodeChildrenIS_GROUP: TAbmesFloatField;
    cdsNodeChildrenIS_USED_BY_SALES: TAbmesFloatField;
    cdsNodeChildrenUSED_BY_SALES_PR_CODE: TAbmesFloatField;
    cdsNodeChildrenIS_USED_BY_SALE_PRODUCTION: TAbmesFloatField;
    cdsNodeChildrenUSED_BY_SALE_PROD_PR_CODE: TAbmesFloatField;
    cdsNodeChildrenIS_USED_BY_ENV_PRODUCTION: TAbmesFloatField;
    cdsNodeChildrenUSED_BY_ENV_PROD_PR_CODE: TAbmesFloatField;
    cdsNodeChildrenIS_PROVIDED_BY_DELIVERIES: TAbmesFloatField;
    cdsNodeChildrenPROV_BY_DELIVERIES_PR_CODE: TAbmesFloatField;
    cdsNodeChildrenIS_PROVIDED_BY_SALE_PRODUCTION: TAbmesFloatField;
    cdsNodeChildrenPROV_BY_SALE_PROD_PR_CODE: TAbmesFloatField;
    cdsNodeChildrenIS_PROVIDED_BY_ENV_PRODUCTION: TAbmesFloatField;
    cdsNodeChildrenPROV_BY_ENV_PROD_PR_CODE: TAbmesFloatField;
    cdsNodeChildrenIS_COMMON: TAbmesFloatField;
    cdsNodeChildrenCOMMON_STATUS_CODE: TAbmesFloatField;
    cdsNodeChildrenHAS_JOINED_PRODUCT: TAbmesFloatField;
    cdsNodeChildrenIS_JOINED_PRODUCT: TAbmesFloatField;
    cdsNodeChildrenIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    cdsNodeChildrenPRODUCT_ORIGIN_CODE: TAbmesFloatField;
    actCommonGroups: TAction;
    cdsCommonGroupsParams: TAbmesClientDataSet;
    cdsCommonGroupsParamsPRODUCT_PARENT_CODE: TAbmesFloatField;
    btnCommonGroups: TToolButton;
    cdsCommonGroupsParamsPRODUCT_CODE: TAbmesFloatField;
    mlDropEditSpecification: TMenuItem;
    miDropEditSpecification: TMenuItem;
    sepDeptDetailFlow: TToolButton;
    actNewSpecification: TAction;
    actCreateSpecificationLike: TAction;
    actDelSpecification: TAction;
    mlDropNewSpecification: TMenuItem;
    miDropNewSpecification: TMenuItem;
    miDropCreateSpecificationLike: TMenuItem;
    miDropDelSpecification: TMenuItem;
    mlDropDelSpecification: TMenuItem;
    miNewSpecification: TMenuItem;
    miCreateSpecificationLike: TMenuItem;
    miDelSpecification: TMenuItem;
    mlSpecDocStatus: TMenuItem;
    miSpecDocStatus: TMenuItem;
    miCommonGroups: TMenuItem;
    miShowVIM: TMenuItem;
    cdsSpecParams: TAbmesClientDataSet;
    cdsSpecParamsNEW_SPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsNodeChildrenSPEC_AUTHOR_EMPLOYEE_CODE: TAbmesFloatField;
    cdsNodeChildrenCOMMON_PRODUCT_CODE: TAbmesFloatField;
    actOperationLevelDeptDetailFlow: TAction;
    actStageLevelDeptDetailFlow: TAction;
    cdsDeptDetailFlowParams: TAbmesClientDataSet;
    cdsDeptDetailFlowParamsCHOSEN_DETAIL_PRODUCTS: TAbmesWideStringField;
    cdsDeptDetailFlowParamsFLOW_LEVEL: TAbmesFloatField;
    btnDeptDetailFlow: TToolButton;
    pmDeptDetailFlow: TPopupMenu;
    miOperationLevelDeptDetailFlow: TMenuItem;
    miStageLevelDeptDetailFlow: TMenuItem;
    actUpdateSpecificationsImportedSpecProduct: TAction;
    miUpdateSpecificationsImportedSpecProduct: TMenuItem;
    cdsNodeChildrenPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsNodeChildrenBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsNodeChildrenBND_NORMAL_GROUP_PRODUCT_CODE: TAbmesFloatField;
    cdsNodeChildrenPRODUCT_SPEC_REQUIREMENT_CODE: TAbmesFloatField;
    cdsNodeChildrenPARENT_PRODUCT_SPEC_REQ_CODE: TAbmesFloatField;
    cdsNodeChildrenIS_STRATEGIC: TAbmesFloatField;
    chkFindNodeParams: TAbmesDBCheckBox;
    chkFindProductPartnerNames: TAbmesDBCheckBox;
    pdsFindParamsFIND_NODE_PARAMS: TAbmesFloatField;
    pdsFindParamsFIND_PRODUCT_PARTNER_NAMES: TAbmesFloatField;
    pdsNodeChildrenCOMMON_PRODUCT_CODE: TAbmesFloatField;
    actStoreQuantities: TAction;
    cdsStoreQuantitiesParams: TAbmesClientDataSet;
    cdsStoreQuantitiesParamsCHOSEN_PRODUCTS: TStringField;
    cdsStoreQuantitiesParamsSTORE_DEAL_DATE: TAbmesDateTimeField;
    btnStoreQuantities: TToolButton;
    cdsStoreQuantitiesParamsCHOSEN_DEPTS: TStringField;
    cdsNodeChildrenIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    cdsPrintTreeBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsPrintTreeIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    cdsPrintTreeCOMMON_STATUS_CODE: TAbmesFloatField;
    cdsNodeChildrenIMPORT_COUNT: TAbmesFloatField;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsNodeChildren_MEASURE_ABBREV: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsNodeChildrenNewRecord(DataSet: TDataSet);
    procedure cdsNodeChildrenBeforePost(DataSet: TDataSet);
    procedure actEditSpecificationUpdate(Sender: TObject);
    procedure actEditSpecificationExecute(Sender: TObject);
    procedure actExportProductUpdate(Sender: TObject);
    procedure cdsNodeChildrenAfterPost(DataSet: TDataSet);
    procedure btnDocsClick(Sender: TObject);
    procedure actInsertChildExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsNodeChildrenBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsNodeChildrenBeforeDelete(DataSet: TDataSet);
    procedure cdsNodeChildrenTRANSIENT_STATUS_CODEChange(Sender: TField);
    procedure actInsertGroupExecute(Sender: TObject);
    procedure actCreateLikeExecute(Sender: TObject);
    procedure actDelChildExecute(Sender: TObject);
    procedure actShowVIMUpdate(Sender: TObject);
    procedure actShowVIMExecute(Sender: TObject);
    procedure cdsNodeChildrenDOC_EMPTINESS_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure actShowDocsExecute(Sender: TObject);
    procedure actShowDocsUpdate(Sender: TObject);
    procedure actShowParamsExecute(Sender: TObject);
    procedure cdsProductSpecStructStatusCalcFields(DataSet: TDataSet);
    procedure tmrProductSpecDocStatusTimer(Sender: TObject);
    procedure cdsProductSpecStructStatusBeforeOpen(DataSet: TDataSet);
    procedure cdsNodeChildrenAfterScroll(DataSet: TDataSet);
    procedure cdsNodeChildrenAfterOpen(DataSet: TDataSet);
    procedure cdsNodeChildrenBeforeClose(DataSet: TDataSet);
    procedure actSpecDocStatusUpdate(Sender: TObject);
    procedure actSpecDocStatusExecute(Sender: TObject);
    procedure cdsNodeChildrenUNAUTHORIZED_ACTIVE_DI_COUNTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsNodeChildrenCOMMON_STATUS_CODEChange(Sender: TField);
    procedure cdsNodeChildrenIS_USED_BY_SALESChange(Sender: TField);
    procedure cdsNodeChildrenIS_USED_BY_SALE_PRODUCTIONChange(
      Sender: TField);
    procedure cdsNodeChildrenIS_USED_BY_ENV_PRODUCTIONChange(
      Sender: TField);
    procedure cdsNodeChildrenIS_PROVIDED_BY_DELIVERIESChange(
      Sender: TField);
    procedure cdsNodeChildrenIS_PROVIDED_BY_SALE_PRODUCTIONChange(
      Sender: TField);
    procedure cdsNodeChildrenIS_PROVIDED_BY_ENV_PRODUCTIONChange(
      Sender: TField);
    procedure cdsNodeChildrenIS_COMMONChange(Sender: TField);
    procedure actCommonGroupsUpdate(Sender: TObject);
    procedure actCommonGroupsExecute(Sender: TObject);
    procedure actNewSpecificationUpdate(Sender: TObject);
    procedure actNewSpecificationExecute(Sender: TObject);
    procedure actCreateSpecificationLikeUpdate(Sender: TObject);
    procedure actCreateSpecificationLikeExecute(Sender: TObject);
    procedure actDelSpecificationUpdate(Sender: TObject);
    procedure actDelSpecificationExecute(Sender: TObject);
    procedure actOperationLevelDeptDetailFlowUpdate(Sender: TObject);
    procedure actStageLevelDeptDetailFlowUpdate(Sender: TObject);
    procedure actOperationLevelDeptDetailFlowExecute(Sender: TObject);
    procedure actStageLevelDeptDetailFlowExecute(Sender: TObject);
    procedure actUpdateSpecificationsImportedSpecProductUpdate(Sender: TObject);
    procedure actUpdateSpecificationsImportedSpecProductExecute(Sender: TObject);
    procedure cdsTreeToNodeBeforeOpen(DataSet: TDataSet);
    procedure cdsTreeNodeBeforeOpen(DataSet: TDataSet);
    procedure grdChildrenGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsNodeChildrenMEASURE_CODEChange(Sender: TField);
    procedure cdsNodeChildrenBOI_ORDER_TYPE_CODEChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFilterParamsExecute(Sender: TObject);
    procedure cdsFindBeforeOpen(DataSet: TDataSet);
    procedure actStoreQuantitiesExecute(Sender: TObject);
    procedure actStoreQuantitiesUpdate(Sender: TObject);
    procedure cdsNodeChildrenAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
  private
    FProductLocationsClientDataSet: TClientDataSet;
    FProductMinQuantitiesClientDataSet: TClientDataSet;
    FProductDeptOptionsClientDataSet: TClientDataSet;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FBOIOrderType: Integer;
    FCommonStatuses: TCommonStatuses;
    procedure ShowDeptDetailFlow(OnOperationLevel: Boolean);
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure RefreshProductSpecStructStatus;
    function TreeShowDetail: Integer;
  protected
    class function CanUseDocs: Boolean; override;
    function LevelsToExpand: Integer; override;
    function DefaultShowParams: Boolean; override;
    function DoShowEditForm(AEditMode: TEditMode): Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function GetEditActivityCode: Integer; override;
    function GetSortBy(const AFieldName: string): string; override;
    function GetSortByDescFields(const ADescFields: string): string; override;
    function SplitterLowerBound: Integer; override;
    function GetNodeImageIndex(ANodeType: Integer;
      ANodeImage: TNodeImage; ADataSet: TDataSet): Integer; override;
    function GetInsertChildEnabled: Boolean; override;
    function GetNewDescendantEnabled: Boolean; override;
    function GetDelChildEnabled: Boolean; override;
    function GetCreateLikeChildEnabled: Boolean; override;
    function GetFormCaption: string; override;
    function GetParamsFiltered: Boolean; override;
    function IsInstance(ANodeID: Integer): Boolean; override;
    function GetChildReadOnly: Boolean; override;
  public
    procedure Initialize; override;
    procedure Finalize; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ANodeID: Integer = 0;
      ARootNodeID: Integer = 1;
      AEditMode: TEditMode = emEdit;
      ATreeDetailSelection: TTreeDetailSelection = tdsNone;
      AProductClass: TProductClass = pcNormal;
      ABOIOrderType: Integer = 0;
      ACommonStatuses: TCommonStatuses = AllCommonStatuses); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ANodeID: Integer = 0;
      ARootNodeID: Integer = 1;
      AEditMode: TEditMode = emEdit;
      ATreeDetailSelection: TTreeDetailSelection = tdsNone;
      AProductClass: TProductClass = pcNormal;
      ABOIOrderType: Integer = 0;
      ACommonStatuses: TCommonStatuses = AllCommonStatuses): Integer;
  end;

implementation

uses
  fProductsTreeEditorEdit, dMain, fSpecification,
  uDocClientUtils, uTreeNodeParams, fProductParamsFilter,
  Variants, uTreeClientUtils, uTreeNodes, uExcelExport,
  uUserActivityConsts, fTreeNomForm, uUtils, fVIMQuantity,
  uOpenVIMConsts, fSpecDocStatus, uDocUtils, uLoginContext,
  fCommonGroups, uClientUtils, fEditForm, uXMLUtils, fDeptDetailFlow,
  fSpecifications, uProductClientUtils, uBOIOrderTypes, uBudgetClientUtils,
  uClientDateTime, AbmesDialogs, fStoreQuantities;

{$R *.DFM}

resourcestring
  SNonUniquePriorities = 'Неуникални Приоритети';
  SNonPositiveValue = 'Стойността на полето "%s" трябва да е положителна';
  SNoDocumentation = '<Няма ИИО>';
  SConfirmSpecDel = 'Потвърдете изтриването на П-МОДЕл?';
  SSpecCaption = ' на П-МОДЕл';
  SIncorrectBOIOrderType = 'Трябва да изберете статия с %s съдържателен тип!';
  SConfirmAlsoCreateLikeSpecModel = 'Желаете ли да създадете и П-МОДЕл като?';

{ TfmProductsTreeEditor }

procedure TfmProductsTreeEditor.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  OriginalModalResult: Integer;
begin
  OriginalModalResult:= ModalResult;

  inherited;

  if (OriginalModalResult = mrOK) and
     (TreeDetailSelection <> tdsNone) and
     (FProductClass = pcBudget) and
     (FBOIOrderType <> 0) and
     (cdsNodeChildrenBOI_ORDER_TYPE_CODE.AsInteger <> FBOIOrderType) then
    raise Exception.CreateFmt(SIncorrectBOIOrderType, [BOIOrderTypeNames[FBOIOrderType]]);

  if (OriginalModalResult = mrOK) and
     (TreeDetailSelection <> tdsNone) and
     (FProductClass <> pcBudget) then
    CheckSelectedCommonStatus(IntToCommonStatus(cdsNodeChildrenCOMMON_STATUS_CODE.AsInteger), FCommonStatuses, FProductClass);
end;

procedure TfmProductsTreeEditor.FormCreate(Sender: TObject);             
begin
  inherited;
  ChildEditFormClass:= TfmProductsTreeEditorEdit;

  FTreeNodeParams:= TProductParams.Create;
  TreeNodeParamsTreeFilterFormClass:= TfmProductParamsFilter;

  btnShowDocs.Left:= 46;

  frDoc.DocOwnerType:= dotProduct;

  RegisterChildrenActions([
    actEditSpecification,
    actShowVIM,
    actSpecDocStatus,
    actCommonGroups,
    actNewSpecification,
    actCreateSpecificationLike,
    actDelSpecification,
    actOperationLevelDeptDetailFlow,
    actStageLevelDeptDetailFlow,
    actUpdateSpecificationsImportedSpecProduct
  ]);
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenNewRecord(
  DataSet: TDataSet);

  procedure CopyToChild(ASrcField, ADestField: TField); overload;
  begin
    if ((ASrcField.DataType = ftWideString) and (ASrcField.AsString = '')) or
       (ASrcField.AsFloat = 0) then
      ADestField.Clear
    else
      ADestField.Assign(ASrcField);
  end;

  procedure CopyToChild(AFields: array of TField); overload;
  var
    i: Integer;
    Fld: TField;
    PrefixLength: Integer;
  begin

    for i:= Low(AFields) to High(AFields) do
      begin
        PrefixLength:= Pos('_', AFields[i].FieldName);

        Fld:= DataSet.FieldByName(System.Copy(AFields[i].FieldName, PrefixLength + 1, 100));

        CopyToChild(AFields[i], Fld);
      end;
  end;

var
  ParentCode: Integer;
  NodeNo: Real;
begin
  inherited;

  if LoginContext.DefaultTreeCustomCode and GetParamsFiltered then
    begin
      ParentCode:= TNomNodeData(tvTree.Selected.Data).ID;
      NodeNo:= dmMain.SvrProductsTreeEditor.GetNewProductNo(ParentCode);
      if (NodeNo > 1) then
        cdsNodeChildrenNODE_NO.AsFloat:= NodeNo;
    end;

  cdsNodeChildrenHAS_JOINED_PRODUCT.AsBoolean:= False;
  cdsNodeChildrenIS_JOINED_PRODUCT.AsBoolean:= False;
  cdsNodeChildrenCOMMON_STATUS_CODE.AsInteger:= cscSingle;
  cdsNodeChildrenIS_THOROUGHLY_ENGINEERED.AsBoolean:= False;
  cdsNodeChildrenCOMMON_PRODUCT_CODE.Clear;

  if (CreateLikeNodeID = 0) then
    begin
      cdsNodeChildrenIS_VAT_FREE.AsBoolean:= False;
      cdsNodeChildrenHAS_DOCUMENTATION.AsBoolean:= False;
      cdsNodeChildrenIS_INACTIVE.AsBoolean:= False;
      cdsNodeChildrenIS_PRODUCTION_PRODUCT.AsBoolean:= False;

      cdsNodeChildrenIS_USED_BY_SALES.AsBoolean:= False;
      cdsNodeChildrenIS_USED_BY_SALE_PRODUCTION.AsBoolean:= False;
      cdsNodeChildrenIS_USED_BY_ENV_PRODUCTION.AsBoolean:= False;
      cdsNodeChildrenIS_PROVIDED_BY_DELIVERIES.AsBoolean:= False;
      cdsNodeChildrenIS_PROVIDED_BY_SALE_PRODUCTION.AsBoolean:= False;
      cdsNodeChildrenIS_PROVIDED_BY_ENV_PRODUCTION.AsBoolean:= False;

      cdsNodeChildrenPRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);

      DoProductFieldChanged(
        cdsNodeChildrenPARENT_NODE_ID,
        nil, nil,
        cdsNodeChildrenPARENT_MEASURE_CODE,
        cdsNodeChildrenPARENT_ACCOUNT_MEASURE_CODE,
        cdsNodeChildrenPARENT_ACCOUNT_MEASURE_COEF,
        cdsNodeChildrenPARENT_TECH_MEASURE_CODE,
        cdsNodeChildrenPARENT_TECH_MEASURE_COEF,
        nil,
        nil, nil, nil,
        cdsNodeChildrenPARENT_TRANSPORT_MEASURE_CODE,
        cdsNodeChildrenPARENT_TRANSPORT_MEASURE_COEF,
        cdsNodeChildrenPAR_SELF_EXISTENT_STATUS_CODE,
        nil,
        cdsNodeChildrenPAR_TRANSIENT_STATUS_CODE,
        cdsNodeChildrenPARENT_WORKDAYS_TO_EXIST,
        nil, nil, nil, nil, nil,
        cdsNodeChildrenPARENT_PRODUCT_SPEC_REQ_CODE
      );

      CopyToChild([
        cdsNodeChildrenPARENT_MEASURE_CODE,
        cdsNodeChildrenPARENT_ACCOUNT_MEASURE_CODE,
        cdsNodeChildrenPARENT_ACCOUNT_MEASURE_COEF,
        cdsNodeChildrenPARENT_TECH_MEASURE_CODE,
        cdsNodeChildrenPARENT_TECH_MEASURE_COEF,
        cdsNodeChildrenPARENT_TRANSPORT_MEASURE_CODE,
        cdsNodeChildrenPARENT_TRANSPORT_MEASURE_COEF,
        cdsNodeChildrenPAR_SELF_EXISTENT_STATUS_CODE,
        cdsNodeChildrenPAR_TRANSIENT_STATUS_CODE,
        cdsNodeChildrenPARENT_WORKDAYS_TO_EXIST]);
      CopyToChild(cdsNodeChildrenPARENT_PRODUCT_SPEC_REQ_CODE, cdsNodeChildrenPRODUCT_SPEC_REQUIREMENT_CODE);

      if cdsNodeChildrenPRODUCT_SPEC_REQUIREMENT_CODE.IsNull then
        cdsNodeChildrenPRODUCT_SPEC_REQUIREMENT_CODE.AsVariant:= IntToVar(LoginContext.DefaultProductSpecRequirementCode);

      if (FProductClass in [pcFinancial, pcBudget]) then
        begin
          cdsNodeChildrenSELF_EXISTENT_STATUS_CODE.AsInteger:= sesYes;
          cdsNodeChildrenTRANSIENT_STATUS_CODE.AsInteger:= tsPermanent;
          cdsNodeChildrenPRODUCT_SPEC_REQUIREMENT_CODE.Clear;
        end;
    end
  else   { if }
    begin
      cdsNodeChildrenSPEC_PRODUCT_CODE.Clear;

      dmDocClient.CreateDocLike(
        cdsNodeChildrenDOC_BRANCH_CODE.AsInteger,
        cdsNodeChildrenDOC_CODE.AsInteger,
        False,
        cdsNodeChildrenDOC_BRANCH_CODE,
        cdsNodeChildrenDOC_CODE);
    end;   { if }
end;

procedure TfmProductsTreeEditor.Initialize;
var
  MsgParams: TStrings;
begin
  cdsTransientStatuses.Open;

  if (FProductClass = pcBudget) then
    tvTree.Images:= dmMain.ilBudgetClassesTreeIcons;
  if (FProductClass <> pcNormal) then
    cdsFind.Params.ParamByName('FIND_PRODUCT_PARTNER_NAMES').AsInteger:= 0;

  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  if (IntToParamsTreeShowDetail(TreeShowDetail) = ptsdDocs) then
    actShowDocs.Execute;

  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(
      LoginContext,
      FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

function TfmProductsTreeEditor.IsInstance(ANodeID: Integer): Boolean;
begin
  Result:= dmMain.SvrProductsTreeEditor.IsInstance(ANodeID);
end;

procedure TfmProductsTreeEditor.Finalize;
begin
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;

  inherited;

  cdsTransientStatuses.Close;
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenBeforePost(
  DataSet: TDataSet);

  procedure CheckField(AField: TField);
  begin
    if not AField.IsNull and (AField.AsFloat <= 0) then
      raise Exception.CreateFmt(SNonPositiveValue, [AField.DisplayLabel]);
  end;

  procedure RequireOrClearPriority(AProcessField: TField; APriorityField: TField);
  begin
    if AProcessField.AsBoolean then
      CheckRequiredField(APriorityField)
    else
      APriorityField.Clear;
  end;

  procedure CheckUniquePriorities(AFields: array of TField);
  var
    i, k: Integer;
  begin
    for i:= Low(AFields) to High(AFields)-1 do
      for k:= i+1 to High(AFields) do
        if (not AFields[i].IsNull) and
           (not AFields[k].IsNull) and
           (AFields[i].AsInteger = AFields[k].AsInteger) then
          begin
            AFields[i].FocusControl;
            raise Exception.Create(SNonUniquePriorities);
          end;
  end;

begin
  if (Screen.ActiveForm is ChildEditFormClass) then
    inherited;

  if (FProductClass = pcBudget) and
     (cdsNodeChildrenNODE_TYPE.AsInteger = Ord(ntInstance)) then
    begin
      cdsNodeChildrenIS_PROVIDED_BY_DELIVERIES.AsBoolean:= True;
      cdsNodeChildrenPROV_BY_DELIVERIES_PR_CODE.AsInteger:= LoginContext.DefaultPriorityCode;
    end;

  CheckField(cdsNodeChildrenACCOUNT_MEASURE_COEF);
  CheckField(cdsNodeChildrenTECH_MEASURE_COEF);

  if (cdsNodeChildrenNODE_TYPE.AsInteger = Ord(ntInstance)) then
    CheckRequiredField(cdsNodeChildren_TRANSIENT_STATUS_NAME);

  if (FProductClass = pcBudget) and
     (cdsNodeChildrenNODE_TYPE.AsInteger = Ord(ntInstance)) then
    CheckRequiredField(cdsNodeChildrenBOI_ORDER_TYPE_CODE);

  if (cdsNodeChildrenBOI_ORDER_TYPE_CODE.AsInteger = boiotProduct) then
    CheckRequiredField(cdsNodeChildrenBND_NORMAL_GROUP_PRODUCT_CODE);

  if cdsNodeChildrenIS_COMMON.AsBoolean then
    CheckRequiredField(cdsNodeChildrenIS_STRATEGIC);

  RequireOrClearPriority(cdsNodeChildrenIS_USED_BY_SALES, cdsNodeChildrenUSED_BY_SALES_PR_CODE);
  RequireOrClearPriority(cdsNodeChildrenIS_USED_BY_SALE_PRODUCTION, cdsNodeChildrenUSED_BY_SALE_PROD_PR_CODE);
  RequireOrClearPriority(cdsNodeChildrenIS_USED_BY_ENV_PRODUCTION, cdsNodeChildrenUSED_BY_ENV_PROD_PR_CODE);
  RequireOrClearPriority(cdsNodeChildrenIS_PROVIDED_BY_DELIVERIES, cdsNodeChildrenPROV_BY_DELIVERIES_PR_CODE);
  RequireOrClearPriority(cdsNodeChildrenIS_PROVIDED_BY_SALE_PRODUCTION, cdsNodeChildrenPROV_BY_SALE_PROD_PR_CODE);
  RequireOrClearPriority(cdsNodeChildrenIS_PROVIDED_BY_ENV_PRODUCTION, cdsNodeChildrenPROV_BY_ENV_PROD_PR_CODE);

  CheckUniquePriorities([
    cdsNodeChildrenUSED_BY_SALES_PR_CODE,
    cdsNodeChildrenUSED_BY_SALE_PROD_PR_CODE,
    cdsNodeChildrenUSED_BY_ENV_PROD_PR_CODE
  ]);

  CheckUniquePriorities([
    cdsNodeChildrenPROV_BY_DELIVERIES_PR_CODE,
    cdsNodeChildrenPROV_BY_SALE_PROD_PR_CODE,
    cdsNodeChildrenPROV_BY_ENV_PROD_PR_CODE
  ]);

  if cdsNodeChildrenDOC_CODE.IsNull then
    dmDocClient.DSNewDoc(cdsNodeChildren);

  if cdsNodeChildrenSELF_EXISTENT_STATUS_CODE.IsNull and
     not cdsNodeChildrenIS_GROUP.AsBoolean then
    cdsNodeChildrenSELF_EXISTENT_STATUS_CODE.AsInteger:= sesYes;

  if not cdsNodeChildrenIS_COMMON.AsBoolean then
    cdsNodeChildrenIS_STRATEGIC.Clear;
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenBOI_ORDER_TYPE_CODEChange(
  Sender: TField);
begin
  inherited;
  if (Sender.AsInteger <> boiotProduct) then
    cdsNodeChildrenBND_NORMAL_GROUP_PRODUCT_CODE.Clear;
end;

function TfmProductsTreeEditor.LevelsToExpand: Integer;
begin
  case FProductClass of
    pcNormal:
      Result:= LoginContext.ProductsTreeExpandLevels;
    pcFinancial:
      Result:= LoginContext.FinancialProductsTreeExpandLevels;
    pcBudget:
      Result:= LoginContext.BudgetProductsTreeExpandLevels;
  else
    UnknownProductClassError;
  end;
end;

function TfmProductsTreeEditor.DefaultShowParams: Boolean;
begin
  Result:= (IntToParamsTreeShowDetail(TreeShowDetail) = ptsdParams);
end;

function TfmProductsTreeEditor.TreeShowDetail: Integer;
begin
  case FProductClass of
    pcNormal:
      Result:= LoginContext.ProductsTreeShowDetail;
    pcFinancial:
      Result:= LoginContext.FinancialProductsTreeShowDetail;
    pcBudget:
      Result:= LoginContext.BudgetProductsTreeShowDetail;
  else
    UnknownProductClassError;
  end;
end;

procedure TfmProductsTreeEditor.actEditSpecificationUpdate(
  Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    not cdsNodeChildrenSPEC_PRODUCT_CODE.IsNull;

  (Sender as TAction).Visible:=
    (FProductClass = pcNormal);

  ro:=
    (EditMode = emReadOnly) or
    (TreeDetailSelection <> tdsNone) or
    not LoginContext.HasUserActivity(uaProductsEdit);

  if ro then
    (Sender as TAction).Caption:= SReadOnlyCaption + SSpecCaption + cDialogSuffix
  else
    (Sender as TAction).Caption:= SEditCaption + SSpecCaption + cDialogSuffix;
end;

procedure TfmProductsTreeEditor.actEditSpecificationExecute(
  Sender: TObject);
var
  AEditMode: TEditMode;
begin
  inherited;

  if (EditMode = emEdit) and
     (TreeDetailSelection = tdsNone) and
     LoginContext.HasUserActivity(uaProductsEdit) then
    AEditMode:= EditMode
  else
    AEditMode:= emReadOnly;

  if (AEditMode = emEdit) then
    with LoginContext do
      if (cdsNodeChildrenSPEC_AUTHOR_EMPLOYEE_CODE.AsInteger = UserCode) then
        begin
          if not HasUserActivity(uaSpecificationsEdit) then
            CheckUserActivity(uaEditForeignSpecification);
        end
      else   { if }
        CheckUserActivity(uaEditForeignSpecification);

  if TfmSpecification.ShowForm(dmDocClient, cdsNodeChildren, AEditMode) and pnlDocs.Visible then
    RefreshProductSpecStructStatus;
end;

procedure TfmProductsTreeEditor.actExportProductUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    (cdsNodeChildren.RecordCount > 0);
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenAfterPost(
  DataSet: TDataSet);
begin
  if (Screen.ActiveForm is ChildEditFormClass) or MovingNode.IsEntered then
    inherited;
end;                                                                                                 

procedure TfmProductsTreeEditor.btnDocsClick(Sender: TObject);
begin
  inherited;

  Assert(cdsNodeChildren.Active);

  dmDocClient.OpenProductDoc(emReadOnly, btnDocs,
    cdsNodeChildrenNODE_ID.AsInteger);
end;

procedure TfmProductsTreeEditor.actInsertChildExecute(Sender: TObject);
var
  SavePoint: Integer;
  b: TBookmark;
begin
  SavePoint:= cdsNodeChildren.SavePoint;
  b:= cdsNodeChildren.Bookmark;
  try
    inherited;
  except
    cdsNodeChildren.SavePoint:= SavePoint;
    cdsNodeChildren.Bookmark:= b;
    raise;
  end;   { try }                    
end;                                          

function TfmProductsTreeEditor.DoShowEditForm(
  AEditMode: TEditMode): Boolean;
var
  SaveNodeID: Integer;
begin
  Result:= inherited DoShowEditForm(AEditMode);

  if (AEditMode = emInsert) and (not Result) then
    Abort;

  if Result and
     (CreateLikeNodeID > 0) and
     (cdsNodeChildrenNODE_TYPE.AsInteger = Ord(ntInstance)) and
     (not VarIsNullOrEmpty(cdsNodeChildren.Lookup('NODE_ID', CreateLikeNodeID, 'SPEC_PRODUCT_CODE'))) and
     (MessageDlgEx(SConfirmAlsoCreateLikeSpecModel, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      if TfmSpecification.ShowForm(dmDocClient, nil, emInsert, True, True,
           CreateLikeNodeID, nil, 0, 0, cdsNodeChildrenNODE_ID.AsInteger) then
        begin
          SaveNodeID:= cdsNodeChildrenNODE_ID.AsInteger;
          try
            RefreshDataSet(cdsNodeChildren);
          finally
            if not cdsNodeChildren.Locate('NODE_ID', SaveNodeID, []) then
              cdsNodeChildren.First;
          end;
        end;
    end;
end;

procedure TfmProductsTreeEditor.actFilterParamsExecute(Sender: TObject);
begin
  Assert(Assigned(TreeNodeParamsTreeFilterFormClass));
  Assert(Assigned(FTreeNodeParams));

  if TfmProductParamsFilterClass(TreeNodeParamsTreeFilterFormClass).ShowForm(dmDocClient,
       pdsNodeChildren, emEdit, FTreeNodeParams, TNodeData(tvTree.Selected.Data).ID, FProductClass)  then
    RefreshDataSet(cdsNodeChildren);
end;

procedure TfmProductsTreeEditor.actFormUpdate(Sender: TObject);
var
  v: Boolean;
begin
  inherited;
                                              
  btnDocs.Enabled:=
    cdsNodeChildren.Active and
    (cdsNodeChildren.RecordCount > 0);

  with cdsNodeChildrenHAS_DOCUMENTATION do
    btnDocs.ImageIndex:= Ord(DataSet.Active and AsBoolean);

  v:= sptParams.Visible;
  sptParams.Visible:= frTreeNodeParams.Visible or pnlDocs.Visible;

  if (not v) and sptParams.Visible then
    begin
      sptParams.Align:= alTop;
      sptParams.Align:= alBottom;
    end;

  frDoc.ReadOnly:= not GetDelChildEnabled;
  clbMain.Bands[2].MinWidth:= pnlNavChildren.Width;

  mlNewSpecification.Visible:= (FProductClass = pcNormal);
  mlSpecDocStatus.Visible:= (FProductClass in [pcNormal, pcFinancial]);

  chkFindProductPartnerNames.Visible:= (FProductClass = pcNormal);
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;

  VarArrayRedim(OwnerData, 4);

  if Assigned(FProductLocationsClientDataSet) and (FProductLocationsClientDataSet.ChangeCount > 0) then
    OwnerData[1]:= FProductLocationsClientDataSet.Delta
  else
    OwnerData[1]:= Unassigned;

  OwnerData[2]:= DocsDelta;

  if Assigned(FProductMinQuantitiesClientDataSet) and (FProductMinQuantitiesClientDataSet.ChangeCount > 0) then
    OwnerData[3]:= FProductMinQuantitiesClientDataSet.Delta
  else
    OwnerData[3]:= Unassigned;

  if Assigned(FProductDeptOptionsClientDataSet) and (FProductDeptOptionsClientDataSet.ChangeCount > 0) then
    OwnerData[4]:= FProductDeptOptionsClientDataSet.Delta
  else
    OwnerData[4]:= Unassigned;
end;

procedure TfmProductsTreeEditor.SetDataParams(AdmDocClient: TdmDocClient;
  ANodeID, ARootNodeID: Integer; AEditMode: TEditMode;
  ATreeDetailSelection: TTreeDetailSelection;
  AProductClass: TProductClass; ABOIOrderType: Integer;
  ACommonStatuses: TCommonStatuses);
begin
  inherited SetDataParams(AdmDocClient, ANodeID, ARootNodeID,
    AEditMode, ATreeDetailSelection);
  FProductClass:= AProductClass;
  FBOIOrderType:= ABOIOrderType;
  FCommonStatuses:= ACommonStatuses;
end;

procedure TfmProductsTreeEditor.ShowDeptDetailFlow(OnOperationLevel: Boolean);
const
  ProductIsActiveCodes: array[Boolean] of Integer = (piacActive, 0);
begin
  cdsDeptDetailFlowParams.CreateDataSet;
  try
    cdsDeptDetailFlowParams.AppendRecord([
      ChosenNodeCodeToXML(cdsNodeChildrenNODE_ID.AsInteger, ProductIsActiveCodes[btnShowInactive.Down]),
      Ord(OnOperationLevel)
    ]);

    TfmDeptDetailFlow.ShowForm(nil, cdsDeptDetailFlowParams, emReadOnly, doNone, False);
  finally
    cdsDeptDetailFlowParams.Close;
  end;
end;

function TfmProductsTreeEditor.ShowEditForm(AEditMode: TEditMode): Boolean;
var
  NodeID: Integer;
begin
  Assert(Assigned(ChildEditFormClass));
  Assert(ChildEditFormClass.InheritsFrom(TfmProductsTreeEditorEdit));

  Assert(not dmDocClient.Modified);
  Assert(dmDocClient.cdsDocs.State = dsBrowse);

  NodeID:= cdsNodeChildrenNODE_ID.AsInteger;

  Result:=
    TfmProductsTreeEditorEditClass(ChildEditFormClass).ShowForm(dmDocClient, cdsNodeChildren,
      AEditMode, doNone, CreateLikeNodeID,
      @FParamsClientDataSet,
      @FProductLocationsClientDataSet,
      @FProductMinQuantitiesClientDataSet,
      @FProductDeptOptionsClientDataSet,
      FProductClass,
      frTreeNodeParams.actShowNotDefined.Checked);

  Assert(not dmDocClient.Modified);
  Assert(dmDocClient.cdsDocs.State = dsBrowse);

  if (AEditMode = emEdit) and
     (NodeID <> cdsNodeChildrenNODE_ID.AsInteger) then
    cdsNodeChildren.Locate('NODE_ID', NodeID, []);

  if not Result then
    Abort;
end;

class function TfmProductsTreeEditor.ShowForm(AdmDocClient: TdmDocClient;
  ANodeID, ARootNodeID: Integer; AEditMode: TEditMode;
  ATreeDetailSelection: TTreeDetailSelection;
  AProductClass: TProductClass; ABOIOrderType: Integer;
  ACommonStatuses: TCommonStatuses): Integer;
var
  f: TfmProductsTreeEditor;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ANodeID, ARootNodeID, AEditMode, ATreeDetailSelection,
      AProductClass, ABOIOrderType, ACommonStatuses);
    f.InternalShowForm;
    Result:= f.EndNodeID;
  finally
    f.ReleaseForm;
  end;
end;

class function TfmProductsTreeEditor.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenBeforeDelete(
  DataSet: TDataSet);                                                 
begin
  dmDocClient.DeleteProductDoc(cdsNodeChildrenNODE_ID.AsInteger);
  inherited;
end;

function TfmProductsTreeEditor.GetChildReadOnly: Boolean;
begin
  Result:=
    inherited GetChildReadOnly or
    ( (cdsNodeChildrenNODE_TYPE.AsInteger = Ord(ntClass)) and
       not LoginContext.HasUserActivity(uaManageProductGroups) );
end;

function TfmProductsTreeEditor.GetCreateLikeChildEnabled: Boolean;
begin
  Result:=
    inherited GetCreateLikeChildEnabled and
    LoginContext.HasUserActivity(uaProductsEdit);
end;

function TfmProductsTreeEditor.GetDelChildEnabled: Boolean;
begin
  Result:=
    inherited GetDelChildEnabled and
    LoginContext.HasUserActivity(uaProductsEdit);
end;

function TfmProductsTreeEditor.GetEditActivityCode: Integer;
begin                 
  Result:= uaProducts;                                                                                     
end;

function TfmProductsTreeEditor.GetInsertChildEnabled: Boolean;
begin
  Result:=
    inherited GetInsertChildEnabled and
    LoginContext.HasUserActivity(uaProductsEdit);
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenTRANSIENT_STATUS_CODEChange(
  Sender: TField);
begin
  inherited;

  if (Sender.AsInteger <> tsTransient) then
    cdsNodeChildrenWORKDAYS_TO_EXIST.Clear;
end;

procedure TfmProductsTreeEditor.actInsertGroupExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaManageProductGroups);
  inherited;
end;

procedure TfmProductsTreeEditor.actNewSpecificationExecute(
  Sender: TObject);
var
  NewSpecProductCode: Integer;
begin
  inherited;
  LoginContext.CheckUserActivity(uaNewSpecification);

  cdsSpecParams.CreateDataSet;
  try
    if (cdsNodeChildren.RecordCount > 0) and
       (not cdsNodeChildrenIS_GROUP.AsBoolean) and
       cdsNodeChildrenSPEC_PRODUCT_CODE.IsNull then
      cdsSpecParams.AppendRecord([cdsNodeChildrenPRODUCT_CODE.AsInteger]);

    NewSpecProductCode:= 0;
    if TfmSpecification.ShowForm(dmDocClient, cdsSpecParams, emInsert, True, False, 0, @NewSpecProductCode) then
      begin
        if (NewSpecProductCode = cdsNodeChildrenPRODUCT_CODE.AsInteger) then
          begin
            cdsNodeChildren.Edit;
            try
              cdsNodeChildrenSPEC_PRODUCT_CODE.AsInteger:= NewSpecProductCode;
              cdsNodeChildren.Post;
            except
              cdsNodeChildren.Cancel;
              raise;
            end;
            cdsNodeChildren.MergeChangeLog;

            if pnlDocs.Visible then
              RefreshProductSpecStructStatus;
          end
        else
          RefreshDataSet(cdsNodeChildren);
      end;
  finally
    cdsSpecParams.Close;
  end;
end;

procedure TfmProductsTreeEditor.actNewSpecificationUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    cdsNodeChildren.Active and
    cdsNodeChildrenSPEC_PRODUCT_CODE.IsNull;
  (Sender as TAction).Visible:=
    (FProductClass = pcNormal);
end;

procedure TfmProductsTreeEditor.actOperationLevelDeptDetailFlowExecute(
  Sender: TObject);
begin
  inherited;
  ShowDeptDetailFlow(True);
end;

procedure TfmProductsTreeEditor.actOperationLevelDeptDetailFlowUpdate(
  Sender: TObject);
begin
  inherited;
  
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    not cdsNodeChildren.IsEmpty;

  (Sender as TAction).Visible:=
    (FProductClass = pcNormal);
end;

procedure TfmProductsTreeEditor.actCreateLikeExecute(Sender: TObject);
begin
  if (cdsNodeChildrenNODE_TYPE.AsInteger = Ord(ntClass)) then
    LoginContext.CheckUserActivity(uaManageProductGroups);

  inherited;
end;

procedure TfmProductsTreeEditor.actCreateSpecificationLikeExecute(
  Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaNewSpecification);

  if TfmSpecification.ShowForm(dmDocClient, nil, emInsert, True, True,
       cdsNodeChildrenSPEC_PRODUCT_CODE.AsInteger) then
    RefreshDataSet(cdsNodeChildren);
end;

procedure TfmProductsTreeEditor.actCreateSpecificationLikeUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    cdsNodeChildren.Active and
    (not cdsNodeChildrenSPEC_PRODUCT_CODE.IsNull);
  (Sender as TAction).Visible:=
    (FProductClass = pcNormal);
end;

procedure TfmProductsTreeEditor.actDelChildExecute(Sender: TObject);
begin
  if (cdsNodeChildrenNODE_TYPE.AsInteger = Ord(ntClass)) then
    LoginContext.CheckUserActivity(uaManageProductGroups);

  inherited;
end;

procedure TfmProductsTreeEditor.actDelSpecificationExecute(
  Sender: TObject);
var
  SaveCursor: TCursor;
begin
  inherited;

  with LoginContext do
    if (cdsNodeChildrenSPEC_AUTHOR_EMPLOYEE_CODE.AsInteger = UserCode) then
      begin
        if not HasUserActivity(uaSpecificationsDelete) then
          CheckUserActivity(uaDeleteForeignSpecification);
      end
    else   { if }
      CheckUserActivity(uaDeleteForeignSpecification);

  if (cdsNodeChildrenIMPORT_COUNT.AsInteger > 0) then
    raise Exception.Create(SCantDeleteSpecification);

  if (MessageDlgEx(SConfirmSpecDel, mtConfirmation, mbOKCancel, 0) = mrOK) then
    begin
      Application.ProcessMessages;

      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        dmMain.SvrSpecifications.DeleteSpecification(cdsNodeChildrenSPEC_PRODUCT_CODE.AsInteger);
      finally
        Screen.Cursor:= SaveCursor;
      end;

      cdsNodeChildren.Edit;
      try
        cdsNodeChildrenSPEC_PRODUCT_CODE.Clear;
        cdsNodeChildren.Post;
      except
        cdsNodeChildren.Cancel;
        raise;
      end;
      cdsNodeChildren.MergeChangeLog;

      if pnlDocs.Visible then
        RefreshProductSpecStructStatus;
    end;
end;

procedure TfmProductsTreeEditor.actDelSpecificationUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    (not cdsNodeChildrenSPEC_PRODUCT_CODE.IsNull) and
    (EditMode = emEdit) and
    (TreeDetailSelection = tdsNone);
  (Sender as TAction).Visible:=
    (FProductClass = pcNormal);
end;

procedure TfmProductsTreeEditor.actShowVIMUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    (cdsNodeChildren.RecordCount > 0);
  (Sender as TAction).Visible:=
    (FProductClass in [pcNormal, pcFinancial]);
end;

procedure TfmProductsTreeEditor.actShowVIMExecute(Sender: TObject);
begin                                
  inherited;
  ShowProductVIM(dmDocClient, cdsNodeChildrenNODE_ID.AsInteger, ContextDate, False, vofVIMOpenedFromSale, FProductClass);
end;

function TfmProductsTreeEditor.GetSortBy(const AFieldName: string): string;
begin
  Result:= inherited GetSortBy(AFieldName);                
                                                            
  if (AFieldName = cdsNodeChildrenDOC_EMPTINESS_REQUIREMENT_CODE.FieldName) then
    Result:= Result + '; ' + cdsNodeChildrenDOC_IS_COMPLETE.FieldName;

  if (AFieldName = cdsNodeChildrenUNAPPROVED_ACTIVE_DI_COUNT.FieldName) then
    Result:= Result + '; ' + cdsNodeChildrenACTIVE_DI_COUNT.FieldName;
end;

function TfmProductsTreeEditor.GetSortByDescFields(
  const ADescFields: string): string;
begin
  Result:= inherited GetSortByDescFields(ADescFields);

  if (Result = cdsNodeChildrenUNAPPROVED_ACTIVE_DI_COUNT.FieldName) then
    Result:= Result + '; ' + cdsNodeChildrenACTIVE_DI_COUNT.FieldName;

  if (Result = cdsNodeChildrenUNAPPROVED_ACTIVE_DI_COUNT.FieldName) then
    Result:= Result + '; ' + cdsNodeChildrenACTIVE_DI_COUNT.FieldName;
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenDOC_EMPTINESS_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  DocEmptinessRequirementFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmProductsTreeEditor.grdChildrenGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.Field = cdsNodeChildrenDOC_EMPTINESS_REQUIREMENT_CODE) or
     (Column.Field = cdsNodeChildrenUNAUTHORIZED_ACTIVE_DI_COUNT) then
    Background:= $00ECFFFF;

  DocFieldsGetCellParams(Sender, Column, AFont, Background, State);
end;

procedure TfmProductsTreeEditor.actShowDocsExecute(Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    begin
      Checked:= not Checked;

      if Checked then
        begin
          actShowParams.Checked:= False;
          frTreeNodeParams.Visible:= False;

          RefreshProductSpecStructStatus;

          frDoc.dsData.DataSet:= cdsNodeChildren;
        end
      else
        frDoc.dsData.DataSet:= nil;
    end;
end;

procedure TfmProductsTreeEditor.actShowDocsUpdate(Sender: TObject);
begin                                                          
  inherited;
  pnlDocs.Visible:= (Sender as TAction).Checked;
end;

procedure TfmProductsTreeEditor.actShowParamsExecute(Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    if Checked and actShowDocs.Checked then
      actShowDocs.Execute;                           
end;

procedure TfmProductsTreeEditor.dmDocClientOnDataChanged(Sender: TObject);

  procedure SetFields;
  begin
    cdsNodeChildrenDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant:=
      dmDocClient.cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant;
    cdsNodeChildrenDOC_IS_COMPLETE.AsVariant:=
      dmDocClient.cdsDocsIS_COMPLETE.AsVariant;
    cdsNodeChildrenACTIVE_DI_COUNT.AsInteger:=
      dmDocClient.DSDocItemCount(cdsNodeChildren, True);
    cdsNodeChildrenUNAUTHORIZED_ACTIVE_DI_COUNT.AsInteger:=
      cdsNodeChildrenACTIVE_DI_COUNT.AsInteger - dmDocClient.DSAuthorizedDocItemCount(cdsNodeChildren, True);
    cdsNodeChildrenUNAPPROVED_ACTIVE_DI_COUNT.AsInteger:=
      cdsNodeChildrenACTIVE_DI_COUNT.AsInteger - dmDocClient.DSApprovedDocItemCount(cdsNodeChildren, True);

    cdsNodeChildrenHAS_DOCUMENTATION.AsBoolean:=
      (cdsNodeChildrenACTIVE_DI_COUNT.AsInteger > 0);
  end;

begin
  if dmDocClient.DSIsCurrent(cdsNodeChildren) then                   
    begin
      if (cdsNodeChildren.State in dsEditModes) then
        SetFields
      else
        begin
          cdsNodeChildren.Edit;
          try
            SetFields;
            cdsNodeChildren.Post;
          except
            cdsNodeChildren.Cancel;
            raise;
          end;  { try }

          cdsNodeChildren.MergeChangeLog;
        end;

      RefreshProductSpecStructStatus;
    end;
end;

procedure TfmProductsTreeEditor.cdsProductSpecStructStatusCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if cdsProductSpecStructStatusLEVEL_NO.IsNull then
    cdsProductSpecStructStatus_DISPLAY_TEXT.Clear
  else
    cdsProductSpecStructStatus_DISPLAY_TEXT.AsString:=
      DocStatusToStr(
        cdsProductSpecStructStatusLEVEL_NO.AsInteger,
        cdsProductSpecStructStatusLEVEL_IS_COMPLETE.AsBoolean,
        cdsProductSpecStructStatusMAX_LEVEL_NO.AsInteger,
        cdsProductSpecStructStatusHAS_MISSING_CHILDREN.AsBoolean
      );
end;

procedure TfmProductsTreeEditor.cdsTreeNodeBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsTreeNode.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
end;

procedure TfmProductsTreeEditor.cdsTreeToNodeBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsTreeToNode.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
end;

procedure TfmProductsTreeEditor.tmrProductSpecDocStatusTimer(
  Sender: TObject);
begin
  inherited;                                                

  tmrProductSpecDocStatus.Enabled:= False;

  cdsProductSpecStructStatus.Close;

  if pnlDocs.Visible then
    cdsProductSpecStructStatus.Open;
end;

procedure TfmProductsTreeEditor.cdsProductSpecStructStatusBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsProductSpecStructStatus.Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:=
    cdsNodeChildrenPRODUCT_CODE.AsInteger;
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  tmrProductSpecDocStatus.Enabled:= False;
  tmrProductSpecDocStatus.Enabled:= pnlDocs.Visible;
end;

procedure TfmProductsTreeEditor.cdsFindBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsFind.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;

  if Assigned(FProductLocationsClientDataSet) and FProductLocationsClientDataSet.Active then
    FProductLocationsClientDataSet.MergeChangeLog;

  if Assigned(FProductMinQuantitiesClientDataSet) and FProductMinQuantitiesClientDataSet.Active then
    FProductMinQuantitiesClientDataSet.MergeChangeLog;

  if Assigned(FProductDeptOptionsClientDataSet) and FProductDeptOptionsClientDataSet.Active then
    FProductDeptOptionsClientDataSet.MergeChangeLog;
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenAfterOpen(
  DataSet: TDataSet);
begin
  inherited;                
  frDoc.OpenDataSets;
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenBeforeClose(
  DataSet: TDataSet);
begin
  tmrProductSpecDocStatus.Enabled:= False;
  frDoc.CloseDataSets;
  inherited;
end;

function TfmProductsTreeEditor.SplitterLowerBound: Integer;
begin
  if pnlDocs.Visible then
    Result:= 144
  else
    Result:= (inherited SplitterLowerBound);
end;

procedure TfmProductsTreeEditor.actSpecDocStatusUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    not cdsNodeChildrenSPEC_PRODUCT_CODE.IsNull;

  (Sender as TAction).Visible:=
    (FProductClass = pcNormal);
end;

procedure TfmProductsTreeEditor.actStageLevelDeptDetailFlowExecute(
  Sender: TObject);
begin
  inherited;
  ShowDeptDetailFlow(False);
end;

procedure TfmProductsTreeEditor.actStageLevelDeptDetailFlowUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    not cdsNodeChildren.IsEmpty;
end;

procedure TfmProductsTreeEditor.actStoreQuantitiesExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaStoreQuantities);
  cdsStoreQuantitiesParams.TempCreateDataSet /
    procedure begin
      cdsStoreQuantitiesParams.AppendRecord([ChosenNodeCodeToXML(cdsNodeChildrenNODE_ID.AsInteger), Null, ContextDate]);
      TfmStoreQuantities.ShowForm(nil, cdsStoreQuantitiesParams, emReadOnly, doNone, False, FProductClass);
    end;
end;

procedure TfmProductsTreeEditor.actStoreQuantitiesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    (cdsNodeChildren.RecordCount > 0);
end;

procedure TfmProductsTreeEditor.actUpdateSpecificationsImportedSpecProductExecute(
  Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaUpdateImportedSpecInOthers);
  TfmSpecifications.UpdateSpecificationsImportedSpecProduct(cdsNodeChildrenPRODUCT_CODE.AsInteger);
end;

procedure TfmProductsTreeEditor.actUpdateSpecificationsImportedSpecProductUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    (not cdsNodeChildrenSPEC_PRODUCT_CODE.IsNull) and
    (EditMode = emEdit) and
    (TreeDetailSelection = tdsNone);
  (Sender as TAction).Visible:=
    (FProductClass = pcNormal);
end;

procedure TfmProductsTreeEditor.actSpecDocStatusExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if LoginContext.HasUserActivity(uaProductsEdit) then
    em:= EditMode
  else
    em:= emReadOnly;

  TfmSpecDocStatus.ShowForm(dmDocClient, cdsNodeChildrenPRODUCT_CODE.AsInteger, em);
  RefreshProductSpecStructStatus;
end;

procedure TfmProductsTreeEditor.RefreshProductSpecStructStatus;
begin
  cdsProductSpecStructStatus.Close;
  cdsProductSpecStructStatus.Open;
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenUNAUTHORIZED_ACTIVE_DI_COUNTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  UnauthorizedActiveDocItemCountFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenCOMMON_STATUS_CODEChange(
  Sender: TField);
begin
  inherited;
  cdsNodeChildrenIS_COMMON.AsBoolean:=
    (cdsNodeChildrenCOMMON_STATUS_CODE.AsInteger = cscCommon);
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenIS_USED_BY_SALESChange(
  Sender: TField);
begin
  inherited;
  if not Sender.AsBoolean then
    cdsNodeChildrenUSED_BY_SALES_PR_CODE.Clear;
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenIS_USED_BY_SALE_PRODUCTIONChange(
  Sender: TField);
begin
  inherited;
  if not Sender.AsBoolean then
    cdsNodeChildrenUSED_BY_SALE_PROD_PR_CODE.Clear;
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenMEASURE_CODEChange(
  Sender: TField);
begin
  inherited;

  if (FProductClass = pcFinancial) then
    begin
      if Sender.IsNull then
        begin
          cdsNodeChildrenACCOUNT_MEASURE_CODE.Clear;
          cdsNodeChildrenACCOUNT_MEASURE_COEF.Clear;
          cdsNodeChildrenTECH_MEASURE_CODE.Clear;
          cdsNodeChildrenTECH_MEASURE_COEF.Clear;
          cdsNodeChildrenTRANSPORT_MEASURE_CODE.Clear;
          cdsNodeChildrenTRANSPORT_MEASURE_COEF.Clear;
        end
      else
        begin
          cdsNodeChildrenACCOUNT_MEASURE_CODE.Assign(Sender);
          cdsNodeChildrenACCOUNT_MEASURE_COEF.AsFloat:= 1;
          cdsNodeChildrenTECH_MEASURE_CODE.Assign(Sender);
          cdsNodeChildrenTECH_MEASURE_COEF.AsFloat:= 1;
          cdsNodeChildrenTRANSPORT_MEASURE_CODE.Assign(Sender);
          cdsNodeChildrenTRANSPORT_MEASURE_COEF.AsFloat:= 1;
        end;  { if }
    end;
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenIS_USED_BY_ENV_PRODUCTIONChange(
  Sender: TField);
begin
  inherited;
  if not Sender.AsBoolean then
    cdsNodeChildrenUSED_BY_ENV_PROD_PR_CODE.Clear;
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenIS_PROVIDED_BY_DELIVERIESChange(
  Sender: TField);
begin
  inherited;
  if not Sender.AsBoolean then
    cdsNodeChildrenPROV_BY_DELIVERIES_PR_CODE.Clear;
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenIS_PROVIDED_BY_SALE_PRODUCTIONChange(
  Sender: TField);
begin
  inherited;
  if not Sender.AsBoolean then
    cdsNodeChildrenPROV_BY_SALE_PROD_PR_CODE.Clear;
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenIS_PROVIDED_BY_ENV_PRODUCTIONChange(
  Sender: TField);
begin
  inherited;
  if not Sender.AsBoolean then
    cdsNodeChildrenPROV_BY_ENV_PROD_PR_CODE.Clear;
end;

procedure TfmProductsTreeEditor.cdsNodeChildrenIS_COMMONChange(
  Sender: TField);                        
begin
  inherited;
  if not Sender.AsBoolean then
    cdsNodeChildrenIS_THOROUGHLY_ENGINEERED.AsBoolean:= False;
end;

procedure TfmProductsTreeEditor.actCommonGroupsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active;

  (Sender as TAction).Visible:=
    (FProductClass in [pcNormal, pcFinancial]);
end;

procedure TfmProductsTreeEditor.actCommonGroupsExecute(Sender: TObject);
var                                                               
  em: TEditMode;
  ProductCode: Variant;
  ChosenProductCode: Integer;
begin
  inherited;

  if (EditMode = emEdit) and LoginContext.HasUserActivity(uaProductsEdit) then
    em:= emEdit
  else
    em:= emReadOnly;

  cdsCommonGroupsParams.CreateDataSet;
  try
    if cdsNodeChildrenIS_GROUP.AsBoolean then
      ProductCode:= Null
    else
      ProductCode:= cdsNodeChildrenPRODUCT_CODE.AsInteger;

    cdsCommonGroupsParams.AppendRecord([cdsNodeChildrenPARENT_CODE.AsInteger, ProductCode]);

    if TfmCommonGroups.ShowForm(dmDocClient, cdsCommonGroupsParams, em, doNone, False, @ChosenProductCode, FProductClass) then
      RefreshDataSet(cdsNodeChildren);

    if (ChosenProductCode > 0) then
      cdsNodeChildren.Locate('PRODUCT_CODE', ChosenProductCode, []);
  finally
    cdsCommonGroupsParams.Close;
  end;  { try }                                    
end;

function TfmProductsTreeEditor.GetNewDescendantEnabled: Boolean;
begin
  Result:=
    inherited GetNewDescendantEnabled and
    LoginContext.HasUserActivity(uaProductsEdit);
end;

function TfmProductsTreeEditor.GetNodeImageIndex(ANodeType: Integer;
  ANodeImage: TNodeImage; ADataSet: TDataSet): Integer;
begin
  if (FProductClass = pcBudget) then
    begin
      if (ANodeType = Ord(ntInstance)) then
        Result:= 2 * ADataSet.FieldByName('BOI_ORDER_TYPE_CODE').AsInteger
      else
        Result:= 0;

      if (ANodeImage = niSelected) then
        Inc(Result);
    end
  else
    begin
      Result:= inherited GetNodeImageIndex(ANodeType, ANodeImage, ADataSet);

      if (Result = 3) then  // descendant
        Inc(Result, ADataSet.FieldByName('COMMON_STATUS_CODE').AsInteger - 1);

      if (Result = 5) then  // priobshten
        Inc(Result, ADataSet.FieldByName('IS_THOROUGHLY_ENGINEERED').AsInteger);
    end;
end;

function TfmProductsTreeEditor.GetParamsFiltered: Boolean;
begin
  Result:=
    inherited GetParamsFiltered or
    not cdsNodeChildren.Params.ParamByName('COMMON_PRODUCT_CODE').IsNull;
end;

function TfmProductsTreeEditor.GetFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

end.

