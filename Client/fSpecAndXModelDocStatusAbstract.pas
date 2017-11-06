unit fSpecAndXModelDocStatusAbstract;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls,
  AbmesFields, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameBald, ComCtrls, fDoc, DBCtrls,
  fSpecAndXModelUnapproveAbstract, ImgList, rSpecAndXModelDocStatusAbstract,
  dDocClient, JvComponent, JvCaptionButton, JvComponentBase, ToolWin,
  DBGridEhGrouping,
  GridsEh, DBGridEh, AbmesDBGrid, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions,
  DynVarsEh, System.ImageList, EhLibVCL, DBAxisGridsEh;

const
  MaxNoPos = 25;

const
  itModel = 1;
  itStage = 2;
  itOperation = 3;

type
  TfmSpecAndXModelDocStatusAbstract = class(TEditForm)
    pnlModel: TPanel;
    pnlLines: TPanel;
    sptMain: TSplitter;
    pnlLinesDoc: TPanel;
    pnlModelDoc: TPanel;
    pnlLinesTop: TPanel;
    pnlModelTop: TPanel;
    cdsDSLines: TAbmesClientDataSet;
    dsDSLines: TDataSource;
    cdsDSLinesNO_AS_TEXT: TAbmesWideStringField;
    cdsDSLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsDSLinesDETAIL_CODE: TAbmesFloatField;
    cdsDSLinesDETAIL_NAME: TAbmesWideStringField;
    cdsDSLinesDETAIL_NO: TAbmesFloatField;
    cdsDSLinesPRODUCT_CODE: TAbmesFloatField;
    cdsDSLinesPRODUCT_NAME: TAbmesWideStringField;
    cdsDSLinesPRODUCT_NO: TAbmesFloatField;
    cdsDSLinesLEVEL_NO: TAbmesFloatField;
    cdsDSLinesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDSLinesDOC_CODE: TAbmesFloatField;
    cdsDSLinesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsDSLinesDOC_IS_COMPLETE: TAbmesFloatField;
    cdsDSLinesACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDSLinesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDSModel: TAbmesClientDataSet;
    dsDSModel: TDataSource;
    cdsDSModelITEM_CODE: TAbmesFloatField;
    cdsDSModelPARENT_ITEM_CODE: TAbmesFloatField;
    cdsDSModelITEM_TYPE_CODE: TAbmesFloatField;
    cdsDSModelDEPT_CODE: TAbmesFloatField;
    cdsDSModelDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDSModelMODEL_VARIANT_QUANTITIES: TAbmesWideStringField;
    cdsDSModelSTAGE_NO: TAbmesFloatField;
    cdsDSModelWORKDAYS: TAbmesWideStringField;
    cdsDSModelOPERATION_NO: TAbmesFloatField;
    cdsDSModelOPERATION_HAS_SPECIAL_CONTROL: TAbmesFloatField;
    cdsDSModelOPERATION_HOUR_TECH_QUANTITIES: TAbmesWideStringField;
    cdsDSModelDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDSModelDOC_CODE: TAbmesFloatField;
    cdsDSModelDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsDSModelDOC_IS_COMPLETE: TAbmesFloatField;
    cdsDSModelACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDSModelUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDSLines_SHOW_NAME: TAbmesWideStringField;
    cdsDSLines_DOC_EMPTINESS_REQUIREMENT_STATUS: TAbmesWideStringField;
    cdsDSLines_DOC_ITEMS_UNAUTHORIZED_STATUS: TAbmesWideStringField;
    cdsDSModel_SHOW_NAME: TAbmesWideStringField;
    cdsDSModel_DOC_EMPTINESS_REQUIREMENT_STATUS: TAbmesWideStringField;
    cdsDSModel_DOC_ITEMS_UNAUTHORIZED_STATUS: TAbmesWideStringField;
    cdsDSModel_SHOW_APPROVE_CYCLE_NO: TAbmesWideStringField;
    pnlDetail: TPanel;
    pnlProduct: TPanel;
    frDetail: TfrProductFieldEditFrameBald;
    pnlProductCaption: TPanel;
    btnProductSpecDocStatus: TSpeedButton;
    frProduct: TfrProductFieldEditFrameBald;
    pnlDetailCaption: TPanel;
    btnDetailSpecDocStatus: TSpeedButton;
    actModel: TAction;
    actDetailSpecDocStatus: TAction;
    actProductSpecDocStatus: TAction;
    cdsDSLinesDETAIL_HAS_SPECIFICATION: TAbmesFloatField;
    cdsDSLinesPRODUCT_HAS_SPECIFICATION: TAbmesFloatField;
    tmrShowLevel: TTimer;
    pnlLinesTopLeft: TPanel;
    udShowLevel: TUpDown;
    edtShowLevel: TEdit;
    btnModel: TSpeedButton;
    frModelDoc: TfrDoc;
    frLineDoc: TfrDoc;
    bvlLinesDoc: TBevel;
    bvlModelDoc: TBevel;
    pnlDetailPanels: TPanel;
    pnlDetailName: TPanel;
    txtDetailName: TDBText;
    pnlDetailNo: TPanel;
    txtDetailNo: TDBText;
    pnlStructStatus: TPanel;
    tmrDetailSpecDocStatus: TTimer;
    pnlModelInfoPanels: TPanel;
    pnlModelDetailName: TPanel;
    txtDetailName2: TDBText;
    pnlModelStageNo: TPanel;
    txtModelStageNo: TDBText;
    pnlModelOperationNo: TPanel;
    txtModelOperationNo: TDBText;
    pnlModelDept: TPanel;
    txtModelDept: TDBText;
    sptLines: TSplitter;
    sptModel: TSplitter;
    cdsDSLinesUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDSModelUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDSModelAPPROVED_DI_COUNT: TAbmesFloatField;
    cdsDSModel_TOTAL_APPROVED_DI_COUNT: TAggregateField;
    cdsDSLines_SHOW_APPROVE_CYCLE_NO: TAbmesWideStringField;
    cdsDSModel_TOTAL_UNAPPROVED_ACTIVE_DI_CNT: TAggregateField;
    cdsDSModel_TOTAL_NOT_IS_COMPLETE_COUNT: TAggregateField;
    cdsDSLines_LINE_TYPE_CODE: TAbmesFloatField;
    cdsDSModel_MAX_DOC_EMPTINESS_REQ_CODE: TAggregateField;
    ilModel: TImageList;
    cdsDSModelOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsDSModel_MAX_STAGE_NO: TAggregateField;
    cdsDSModel_IMAGE_INDEX: TAbmesFloatField;
    cdsDSLinesHAS_CHILDREN: TAbmesFloatField;
    cdsDSLinesIS_LAST_CHILD: TAbmesFloatField;
    pnlPrintLines: TPanel;
    btnPrintLines: TSpeedButton;
    actPrintLines: TAction;
    pnlPrintModel: TPanel;
    btnPrintModel: TSpeedButton;
    actPrintModel: TAction;
    cdsDSModelLEVEL_NO: TAbmesFloatField;
    cdsDSModelHAS_CHILDREN: TAbmesFloatField;
    cdsDSModelIS_LAST_CHILD: TAbmesFloatField;
    cdsDSModelORDER_NO: TAbmesFloatField;
    cdsDSLinesIS_COMPLETE: TAbmesFloatField;
    cdsData_PRINT_FIRST_LINE_STRUCT_COEF: TAbmesWideStringField;
    cdsDSModelDEPT_PRODUCT_CODE: TAbmesFloatField;
    cdsDSModelPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsDSModelSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsDSModelTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsDSModelPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsDSModelSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsDSModelTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    pnlStructStatusLabel: TPanel;
    cdsProductSpecStructStatus: TAbmesClientDataSet;
    cdsProductSpecStructStatusLEVEL_NO: TAbmesFloatField;
    cdsProductSpecStructStatusLEVEL_IS_COMPLETE: TAbmesFloatField;
    cdsProductSpecStructStatusMAX_LEVEL_NO: TAbmesFloatField;
    cdsProductSpecStructStatusHAS_MISSING_CHILDREN: TAbmesFloatField;
    cdsProductSpecStructStatus_DISPLAY_TEXT: TAbmesWideStringField;
    actDeptProductSpecDocStatus: TAction;
    actProgramToolProductSpecDocStatus: TAction;
    actSpecificToolProductSpecDocStatus: TAction;
    actTypicalToolProductSpecDocStatus: TAction;
    cdsDSModelDEPT_PRODUCT_HAS_SPEC: TAbmesFloatField;
    cdsDSModelPROGRAM_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField;
    cdsDSModelSPECIFIC_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField;
    cdsDSModelTYPICAL_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField;
    pnlModelStruct: TPanel;
    pnlModelStructStatuses: TPanel;
    pnlProgramToolProductDocs: TPanel;
    tlbProgramToolProductDocs: TToolBar;
    btnProgramToolProductDocs: TToolButton;
    pnlProgramToolProductStructStatus: TPanel;
    ilSmallDocs: TImageList;
    btnProgramToolProductSpecDocStatus: TSpeedButton;
    pnlDeptProductDocs: TPanel;
    tlbDeptProductDocs: TToolBar;
    btnDeptProductDocs: TToolButton;
    btnDeptProductSpecDocStatus: TSpeedButton;
    pnlDeptProductStructStatus: TPanel;
    pnlSpecificToolProductDocs: TPanel;
    tlbSpecificToolProductDocs: TToolBar;
    btnSpecificToolProductDocs: TToolButton;
    btnSpecificToolProductSpecDocStatus: TSpeedButton;
    pnlSpecificToolProductStructStatus: TPanel;
    pnlTypicalToolProductDocs: TPanel;
    tlbTypicalToolProductDocs: TToolBar;
    btnTypicalToolProductDocs: TToolButton;
    btnTypicalToolProductSpecDocStatus: TSpeedButton;
    pnlTypicalToolProductStructStatus: TPanel;
    cdsDSModelDEPT_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsDSModelPROGRAM_TOOL_PRODUCT_HAS_DI: TAbmesFloatField;
    cdsDSModelSPECIFIC_TOOL_PRODUCT_HAS_DI: TAbmesFloatField;
    cdsDSModelTYPICAL_TOOL_PRODUCT_HAS_DI: TAbmesFloatField;
    actDeptProductSpecDocs: TAction;
    actProgramToolProductSpecDocs: TAction;
    actSpecificToolProductSpecDocs: TAction;
    actTypicalToolProductSpecDocs: TAction;
    cdsDSModelPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsDSModelSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsDSModelTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    pnlBaseGroupDocs: TPanel;
    actBaseGroupDocs: TAction;
    cdsDSModelBASE_GROUP_CODE: TAbmesFloatField;
    cdsDSModelBASE_GROUP_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDSModelBASE_GROUP_DOC_CODE: TAbmesFloatField;
    cdsDSModelBASE_GROUP_HAS_DOC_ITEMS: TAbmesFloatField;
    actBaseGroups: TAction;
    btnBaseGroups: TSpeedButton;
    cdsBaseGroupsParams: TAbmesClientDataSet;
    cdsBaseGroupsParamsGROUP_DEPT_CODE: TAbmesFloatField;
    cdsBaseGroupsParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsDSLinesDETAIL_PARENT_CODE: TAbmesFloatField;
    cdsDSModelNOTES: TAbmesWideStringField;
    tlbToggle: TToolBar;
    sepShowNotes: TToolButton;
    actShowNotes: TAction;
    btnShowNotes: TToolButton;
    cdsDSLinesIS_DETAIL_DOC_AUTHORIZED: TAbmesFloatField;
    grdLines: TAbmesDBGrid;
    grdModel: TAbmesDBGrid;
    actExcelExportLines: TAction;
    btnExcelExportLines: TSpeedButton;
    cdsDSLinesPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDSLinesPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsDSLinesNOTES: TAbmesWideStringField;
    cdsDSLinesCONSTRUCTION_NOTES: TAbmesWideStringField;
    tlbLines: TToolBar;
    actLinesShowDocInfo: TAction;
    actLinesShowNotes: TAction;
    actLinesShowConstructionNotes: TAction;
    btnLinesShowDocInfo: TToolButton;
    btnLinesShowNotes: TToolButton;
    btnLinesShowConstructionNotes: TToolButton;
    procedure cdsDSLinesCalcFields(DataSet: TDataSet);
    procedure cdsDSModelCalcFields(DataSet: TDataSet);
    procedure pnlModelTopResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actDetailSpecDocStatusUpdate(Sender: TObject);
    procedure actDetailSpecDocStatusExecute(Sender: TObject);
    procedure actProductSpecDocStatusUpdate(Sender: TObject);
    procedure actProductSpecDocStatusExecute(Sender: TObject);
    procedure cdsDSLinesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure udShowLevelChangingEx(Sender: TObject;
      var AllowChange: Boolean; NewValue: Integer;
      Direction: TUpDownDirection);
    procedure tmrShowLevelTimer(Sender: TObject);
    procedure tmrDetailSpecDocStatusTimer(Sender: TObject);
    procedure cdsDSLinesAfterScroll(DataSet: TDataSet);
    procedure DocSplittersCanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure cdsDSModelAfterPost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actPrintLinesExecute(Sender: TObject);
    procedure actPrintModelExecute(Sender: TObject);
    procedure cdsData_PRINT_FIRST_LINE_STRUCT_COEFGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actPrintLinesUpdate(Sender: TObject);
    procedure actPrintModelUpdate(Sender: TObject);
    procedure cdsProductSpecStructStatusCalcFields(DataSet: TDataSet);
    procedure cdsDSModelAfterScroll(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure actDeptProductSpecDocStatusUpdate(Sender: TObject);
    procedure actProgramToolProductSpecDocStatusUpdate(Sender: TObject);
    procedure actSpecificToolProductSpecDocStatusUpdate(Sender: TObject);
    procedure actTypicalToolProductSpecDocStatusUpdate(Sender: TObject);
    procedure actDeptProductSpecDocStatusExecute(Sender: TObject);
    procedure actProgramToolProductSpecDocStatusExecute(Sender: TObject);
    procedure actSpecificToolProductSpecDocStatusExecute(Sender: TObject);
    procedure actTypicalToolProductSpecDocStatusExecute(Sender: TObject);
    procedure pnlLinesDocResize(Sender: TObject);
    procedure pnlModelDocResize(Sender: TObject);
    procedure cdsDSModelPROGRAM_TOOL_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDSModelSPECIFIC_TOOL_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDSModelTYPICAL_TOOL_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actDeptProductSpecDocsUpdate(Sender: TObject);
    procedure actProgramToolProductSpecDocsUpdate(Sender: TObject);
    procedure actSpecificToolProductSpecDocsUpdate(Sender: TObject);
    procedure actTypicalToolProductSpecDocsUpdate(Sender: TObject);
    procedure actDeptProductSpecDocsExecute(Sender: TObject);
    procedure actProgramToolProductSpecDocsExecute(Sender: TObject);
    procedure actSpecificToolProductSpecDocsExecute(Sender: TObject);
    procedure actTypicalToolProductSpecDocsExecute(Sender: TObject);
    procedure actBaseGroupDocsUpdate(Sender: TObject);
    procedure actBaseGroupDocsExecute(Sender: TObject);
    procedure actBaseGroupsExecute(Sender: TObject);
    procedure actBaseGroupsUpdate(Sender: TObject);
    procedure actShowNotesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsDSModelAfterOpen(DataSet: TDataSet);
    procedure grdLinesGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdModelGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdLinesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure grdModelDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure cdsDSLinesAfterOpen(DataSet: TDataSet);
    procedure actExcelExportLinesExecute(Sender: TObject);
    procedure actLinesShowDocInfoExecute(Sender: TObject);
    procedure actLinesShowNotesExecute(Sender: TObject);
    procedure actLinesShowConstructionNotesExecute(Sender: TObject);
  private
    FShowLevel: Integer;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FOlddmDocClientOnDocItemEdited: TDocItemEditedEvent;
    FEditingDataSet: TDataSet;
    FUnapproveFormClass: TfmSpecAndXModelUnapproveAbstractClass;
    FApproveCycleNos: TStringList;
    FFinalizedDocs: TStringList;
    FStructureCoefInfo: TStringList;  // NoAsText=HasMissingChildren;DetailIsSelfApproved;IsComplete
    FUnapproving: Boolean;
    FImmediatelyApplyUpdates: Boolean;
    FCycleNoModified: Boolean;
    FLinesReportClass: TrptSpecAndXModelDocStatusAbstractClass;
    FModelReportClass: TrptSpecAndXModelDocStatusAbstractClass;
    FFirstLineStructCoef: string;
    FSyncDocPanels: Boolean;
    procedure SyncDocPanels(Source, Dest: TPanel);
    procedure ModelTopPanelResize;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure dmDocClientOnDocItemEdited(DocItemUnapproved: Boolean);
    procedure DelayedShowDetailDocStatus;
    procedure IncApproveCycleNo;
    procedure RefreshLinesDocFrame;
    procedure RefreshDetailDocStatus;
    function ProductStructStatus(ProductCode: Integer): string;
    procedure RefreshTrees;
    procedure ProceedDataSetOnDocChange(ADataSet: TClientDataSet);
    procedure SetLinesColumns;
  protected
    class function CanUseDocs: Boolean; override;
    procedure ShowSpecDocStatus(ASpecProductCode: Integer; ASpecModelVariantNo: Integer = 0);
    function GetModelNameFormat: string; virtual; abstract;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function ApproveCycleNoField: TField; virtual; abstract;
    function GetAllowSpecUpdate: Boolean; virtual; abstract;
    function LineHasApprovedDocItem: Boolean; virtual; abstract;
    procedure UnapproveLineDocItems(UnapproveInfo: TUnapproveInfo; StageNo: Integer); virtual;
    procedure SetLinesApproveCycleNoAndStructureCoefInfo(CurrentLineOnly: Boolean);
    function LineIdentifier: string; virtual; abstract;
    procedure CheckImmediatelyApplyUpdates;
    procedure DoApplyUpdates; override;
    function GetApplyUpdatesEnabled: Boolean; override;
    function CountApproveCycles: Boolean; virtual; abstract;
    function ModelIdentifier: string; virtual; abstract;
    function GetStructureCoef: string;
    function ForkNo: Integer; virtual; abstract;
    function GetDocFrameReadOnly(ADocFrame: TDBFrame): Boolean; virtual;
    procedure SpecInsertionsUpdated(ASpecProductCode: Integer); virtual;
    procedure RefreshLinesTree; virtual; abstract;
    procedure RefreshModelTree;

    property UnapproveFormClass: TfmSpecAndXModelUnapproveAbstractClass read FUnapproveFormClass write FUnapproveFormClass;
    property ImmediatelyApplyUpdates: Boolean read FImmediatelyApplyUpdates;
    property LinesReportClass: TrptSpecAndXModelDocStatusAbstractClass read FLinesReportClass write FLinesReportClass;
    property ModelReportClass: TrptSpecAndXModelDocStatusAbstractClass read FModelReportClass write FModelReportClass;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  dMain, uDocClientUtils, uDocUtils, uUtils, fSpecDocStatus, uClientTypes,
  uClientUtils, uOperationTypes, Math, uToolRequirements, uColorConsts,
  uUserActivityConsts, uXMLUtils, fBaseGroups, uTreeListUtils, AbmesDialogs,
  uDocExcelExport, uParRelProducts, uScalingUtils;

{$R *.dfm}

resourcestring
  SConfirmAppyUpdates = 'Направените промени трябва да бъдат записани!' + SLineBreak +
                        'Желаете ли да продължите?';
  SStageNameFormat = 'Етап %d';
  SOperationNameFormat = 'Операция %d';

procedure TfmSpecAndXModelDocStatusAbstract.cdsDSLinesCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  cdsDSLines_DOC_EMPTINESS_REQUIREMENT_STATUS.AsString:=
    DocEmptinessRequirementAbbrev(
      IntToDocEmptinessRequirement(cdsDSLinesDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger),
      cdsDSLinesDOC_IS_COMPLETE.AsBoolean
    );

  cdsDSLines_DOC_ITEMS_UNAUTHORIZED_STATUS.AsString:=
    DocItemsUnauthorizedStatus(cdsDSLinesUNAUTHORIZED_ACTIVE_DI_COUNT.AsInteger, cdsDSLinesACTIVE_DI_COUNT.AsInteger);

  cdsDSLines_SHOW_APPROVE_CYCLE_NO.AsString:=
    FApproveCycleNos.Values[LineIdentifier];

  if cdsDSLinesPRODUCT_CODE.IsNull then
    cdsDSLines_LINE_TYPE_CODE.AsInteger:= 2 + Ord(cdsDSLinesIS_COMPLETE.AsBoolean)
  else
    cdsDSLines_LINE_TYPE_CODE.AsInteger:=
      Ord(cdsDSLinesPRODUCT_CODE.AsInteger <> cdsDSLinesDETAIL_CODE.AsInteger);
end;

procedure TfmSpecAndXModelDocStatusAbstract.cdsDSModelCalcFields(
  DataSet: TDataSet);
var
  ii: Integer;
begin
  inherited;

  case cdsDSModelITEM_TYPE_CODE.AsInteger of
    itModel:
      cdsDSModel_SHOW_NAME.AsString:=
        Format(GetModelNameFormat, [cdsDSModelDEPT_IDENTIFIER.AsString, cdsDSModelMODEL_VARIANT_QUANTITIES.AsString]);
    itStage:
      cdsDSModel_SHOW_NAME.AsString:=
        Format(SStageNameFormat, [cdsDSModelSTAGE_NO.AsInteger]);
    itOperation:
      cdsDSModel_SHOW_NAME.AsString:=
        Format(SOperationNameFormat, [cdsDSModelOPERATION_NO.AsInteger]);
  end;

  if (cdsDSModelITEM_TYPE_CODE.AsInteger <> itModel) then
    cdsDSModel_DOC_EMPTINESS_REQUIREMENT_STATUS.AsString:=
      DocEmptinessRequirementAbbrev(
        IntToDocEmptinessRequirement(cdsDSModelDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger),
        cdsDSModelDOC_IS_COMPLETE.AsBoolean
      );

  cdsDSModel_DOC_ITEMS_UNAUTHORIZED_STATUS.AsString:=
    DocItemsUnauthorizedStatus(cdsDSModelUNAUTHORIZED_ACTIVE_DI_COUNT.AsInteger, cdsDSModelACTIVE_DI_COUNT.AsInteger);

  if (cdsDSModelITEM_TYPE_CODE.AsInteger = itModel) or
     (cdsDSModelDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger <> DocEmptinessRequirementToInt(derNotEmpty)) then
    cdsDSModel_SHOW_APPROVE_CYCLE_NO.Clear
  else
    begin
      if (cdsDSModelUNAPPROVED_ACTIVE_DI_COUNT.AsInteger = 0) and
         cdsDSModelDOC_IS_COMPLETE.AsBoolean then
        cdsDSModel_SHOW_APPROVE_CYCLE_NO.AsString:= ApproveCycleNoField.DisplayText
      else
        cdsDSModel_SHOW_APPROVE_CYCLE_NO.AsString:= Format('(%s)', [ApproveCycleNoField.DisplayText]);
    end;

  case cdsDSModelITEM_TYPE_CODE.AsInteger of
    itModel:
      ii:= 0;
      
    itStage:
      if (cdsDSModelSTAGE_NO.AsInteger = 0) or
         ( cdsDSLines.Active and
           (cdsDSLines.RecNo = 1) and
           (cdsDSModelSTAGE_NO.AsInteger = VarToInt(cdsDSModel_MAX_STAGE_NO.AsVariant)) ) then
        ii:= 1
      else
        ii:= 2;

    itOperation:
      ii:= 3 + Ord(cdsDSModelOPERATION_TYPE_CODE.AsInteger = otNormal);
  else
    ii:= -1;
  end;
  cdsDSModel_IMAGE_INDEX.AsInteger:= ii;
end;

procedure TfmSpecAndXModelDocStatusAbstract.cdsDSModelPROGRAM_TOOL_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ToolRequirementFieldGetText(Sender, Sender.DataSet.FieldByName('PROGRAM_TOOL_IS_COMPLETE'), Sender.DataSet.FieldByName('OPERATION_TYPE_CODE'),
    Text, DisplayText);
end;

procedure TfmSpecAndXModelDocStatusAbstract.cdsDSModelSPECIFIC_TOOL_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ToolRequirementFieldGetText(Sender, Sender.DataSet.FieldByName('SPECIFIC_TOOL_IS_COMPLETE'), Sender.DataSet.FieldByName('OPERATION_TYPE_CODE'),
    Text, DisplayText);
end;

procedure TfmSpecAndXModelDocStatusAbstract.cdsDSModelTYPICAL_TOOL_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ToolRequirementFieldGetText(Sender, Sender.DataSet.FieldByName('TYPICAL_TOOL_IS_COMPLETE'), Sender.DataSet.FieldByName('OPERATION_TYPE_CODE'),
    Text, DisplayText);
end;

procedure TfmSpecAndXModelDocStatusAbstract.cdsProductSpecStructStatusCalcFields(
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

procedure TfmSpecAndXModelDocStatusAbstract.Initialize;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  FOlddmDocClientOnDocItemEdited:= dmDocClient.OnDocItemEdited;
  dmDocClient.OnDocItemEdited:= dmDocClientOnDocItemEdited;

  ModelTopPanelResize;

  actForm.Update;
end;

procedure TfmSpecAndXModelDocStatusAbstract.Finalize;
begin
  cdsDSLines.DisableControls;
  try
    cdsDSModel.DisableControls;
    try
      dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
      dmDocClient.OnDocItemEdited:= FOlddmDocClientOnDocItemEdited;
      inherited;
    finally
      cdsDSModel.EnableControls;
    end;  { try }
  finally
    cdsDSLines.EnableControls;
  end;  { try }
end;

procedure TfmSpecAndXModelDocStatusAbstract.RefreshModelTree;
begin
  grdModel.ConvertToTreeList('ITEM_CODE', 'PARENT_ITEM_CODE');
end;

procedure TfmSpecAndXModelDocStatusAbstract.pnlLinesDocResize(
  Sender: TObject);
begin
  inherited;
  SyncDocPanels(pnlLinesDoc, pnlModelDoc);
end;

procedure TfmSpecAndXModelDocStatusAbstract.pnlModelDocResize(
  Sender: TObject);
begin
  inherited;
  SyncDocPanels(pnlModelDoc, pnlLinesDoc);
end;

procedure TfmSpecAndXModelDocStatusAbstract.pnlModelTopResize(
  Sender: TObject);
begin
  inherited;
  ModelTopPanelResize;
end;

function TfmSpecAndXModelDocStatusAbstract.ProductStructStatus(
  ProductCode: Integer): string;
begin
  if (ProductCode = 0) then
    Result:= ''
  else
    begin
      cdsProductSpecStructStatus.Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= ProductCode;
      cdsProductSpecStructStatus.Open;
      try
        Result:= cdsProductSpecStructStatus_DISPLAY_TEXT.AsString;
      finally
        cdsProductSpecStructStatus.Close;
      end;
    end;  { if }
end;

procedure TfmSpecAndXModelDocStatusAbstract.ModelTopPanelResize;
begin
  pnlDetail.Width:= pnlModelTop.Width div 2;
end;

procedure TfmSpecAndXModelDocStatusAbstract.FormCreate(Sender: TObject);
begin
  inherited;

  frDetail.FieldNames:= 'DETAIL_CODE';
  frProduct.FieldNames:= 'PRODUCT_CODE';

  FShowLevel:= udShowLevel.Position;

  FApproveCycleNos:= TStringList.Create;
  FFinalizedDocs:= TStringList.Create;
  FStructureCoefInfo:= TStringList.Create;

  FImmediatelyApplyUpdates:= False;

  pnlClose.Visible:= ImmediatelyApplyUpdates;
  pnlOKCancel.Visible:= not ImmediatelyApplyUpdates;
  pnlApply.Visible:= not ImmediatelyApplyUpdates;

  frLineDoc.ImmediatelyApplyUpdates:= ImmediatelyApplyUpdates;
  frLineDoc.IsExecEnabledOnlyForApprovedItems:= False;
  
  frModelDoc.ImmediatelyApplyUpdates:= ImmediatelyApplyUpdates;
  frModelDoc.IsExecEnabledOnlyForApprovedItems:= False;

  frLineDoc.DocOwnerType:= dotProduct;
end;

procedure TfmSpecAndXModelDocStatusAbstract.SetDBFrameReadOnly(
  AFrame: TDBFrame);
begin
  if (AFrame = frDetail) or
     (AFrame = frProduct) then
    AFrame.ReadOnly:= True
  else
    begin
      if (AFrame = frLineDoc) or (AFrame = frModelDoc) then
        AFrame.ReadOnly:= GetDocFrameReadOnly(AFrame)
      else
        inherited;
    end;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actDetailSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDSLines.Active and
    cdsDSLinesDETAIL_HAS_SPECIFICATION.AsBoolean and
    (cdsDSLinesLEVEL_NO.AsInteger > 0);
end;

procedure TfmSpecAndXModelDocStatusAbstract.actExcelExportLinesExecute(
  Sender: TObject);
begin
  inherited;
  cdsDSLines.PreserveRecNo/
    cdsDSLines.TempDisableControls/
      grdLines.DataSource.DataSet.PreserveRecNo/
        grdLines.DataSource.DataSet.TempDisableControls/
          procedure begin
            GridDocExcelExport(grdLines, True, dmMain.ilSpecLines, cdsDSLines_LINE_TYPE_CODE.FieldName,
              DocDefsOf([TDocDef.Create('DOC_BRANCH_CODE', 'DOC_CODE', SDetail),
                         TDocDef.Create('PRODUCT_DOC_BRANCH_CODE', 'PRODUCT_DOC_CODE', SMaterial)]
              ), False);
          end;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actFormUpdate(Sender: TObject);

  procedure SetStructStatusColor(APanel: TPanel);
  begin
    if (APanel.Caption = '') or IsDocStatusComplete(APanel.Caption) then
      APanel.Font.Color:= clWindowText
    else
      APanel.Font.Color:= clRed;
  end;  { SetStructStatusColor }

begin
  inherited;

  SetStructStatusColor(pnlStructStatusLabel);
  SetStructStatusColor(pnlDeptProductStructStatus);
  SetStructStatusColor(pnlProgramToolProductStructStatus);
  SetStructStatusColor(pnlSpecificToolProductStructStatus);
  SetStructStatusColor(pnlTypicalToolProductStructStatus);

  frProduct.DocReadOnly:= (EditMode = emReadOnly);
end;

procedure TfmSpecAndXModelDocStatusAbstract.actLinesShowConstructionNotesExecute(Sender: TObject);
begin
  inherited;
  SetLinesColumns;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actLinesShowDocInfoExecute(Sender: TObject);
begin
  inherited;
  SetLinesColumns;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actLinesShowNotesExecute(Sender: TObject);
begin
  inherited;
  SetLinesColumns;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actBaseGroupDocsExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl), dotBaseGroup,
    cdsDSModelBASE_GROUP_DOC_BRANCH_CODE, cdsDSModelBASE_GROUP_DOC_CODE);
end;

procedure TfmSpecAndXModelDocStatusAbstract.actBaseGroupDocsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDSModelBASE_GROUP_CODE.IsNull;
  (Sender as TAction).ImageIndex:= cdsDSModelBASE_GROUP_HAS_DOC_ITEMS.AsInteger;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actBaseGroupsExecute(
  Sender: TObject);
var
  AEditMode: TEditMode;
begin
  inherited;

  LoginContext.CheckUserActivity(uaBaseGroups);

  if (EditMode <> emReadOnly) and LoginContext.HasUserActivity(uaBaseGroupsEdit) then
    AEditMode:= emEdit
  else
    AEditMode:= emReadOnly;

  with cdsBaseGroupsParams do
    begin
      CreateDataSet;
      try
        Append;
        try
// ne filtrirame po Rod       
//          cdsBaseGroupsParamsCHOSEN_PRODUCTS.AsString:=
//            ChosenNodeCodeToXML(cdsDSLinesDETAIL_PARENT_CODE.AsInteger);
          cdsBaseGroupsParamsGROUP_DEPT_CODE.AsInteger:=
            cdsDSModelDEPT_CODE.AsInteger;

          Post;
        except
          Cancel;
          raise;
        end;  { try }

        TfmBaseGroups.ShowForm(nil, cdsBaseGroupsParams, AEditMode, doNone, False,
          IntegerArrayOf([cdsDSLinesDETAIL_CODE.AsInteger]));
      finally
        Close;
      end;  { try }
    end;  { with }
end;

procedure TfmSpecAndXModelDocStatusAbstract.actBaseGroupsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDSModel.Active and
    (cdsDSModelITEM_TYPE_CODE.AsInteger in [itStage, itOperation]);
end;

procedure TfmSpecAndXModelDocStatusAbstract.actDeptProductSpecDocsExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl),
    cdsDSModelDEPT_PRODUCT_CODE.AsInteger);
end;

procedure TfmSpecAndXModelDocStatusAbstract.actDeptProductSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  ShowSpecDocStatus(cdsDSModelDEPT_PRODUCT_CODE.AsInteger);
end;

procedure TfmSpecAndXModelDocStatusAbstract.actDeptProductSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsDSModelDEPT_PRODUCT_HAS_SPEC.AsBoolean;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actDeptProductSpecDocsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDSModel.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsDSModelDEPT_PRODUCT_HAS_DOC_ITEMS.AsInteger;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actDetailSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  ShowSpecDocStatus(cdsDSLinesDETAIL_CODE.AsInteger);
end;

procedure TfmSpecAndXModelDocStatusAbstract.actProductSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDSLines.Active and
    cdsDSLinesPRODUCT_HAS_SPECIFICATION.AsBoolean and
    (not cdsDSLinesPRODUCT_CODE.IsNull) and
    (cdsDSLinesPRODUCT_CODE.AsInteger <> cdsDSLinesDETAIL_CODE.AsInteger);
end;

procedure TfmSpecAndXModelDocStatusAbstract.actProgramToolProductSpecDocsExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl),
    cdsDSModelPROGRAM_TOOL_PRODUCT_CODE.AsInteger);
end;

procedure TfmSpecAndXModelDocStatusAbstract.actProgramToolProductSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  ShowSpecDocStatus(cdsDSModelPROGRAM_TOOL_PRODUCT_CODE.AsInteger);
end;

procedure TfmSpecAndXModelDocStatusAbstract.actProgramToolProductSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsDSModelPROGRAM_TOOL_PRODUCT_HAS_SPEC.AsBoolean;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actProgramToolProductSpecDocsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
     (not cdsDSModel.IsEmpty) and
     (cdsDSModelITEM_TYPE_CODE.AsInteger = itOperation);
  (Sender as TAction).ImageIndex:=
    cdsDSModelPROGRAM_TOOL_PRODUCT_HAS_DI.AsInteger;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actShowNotesExecute(
  Sender: TObject);
begin
  inherited;

  grdModel.Columns[1].Visible:= not btnShowNotes.Down;
  grdModel.Columns[2].Visible:= not btnShowNotes.Down;
  grdModel.Columns[3].Visible:= not btnShowNotes.Down;
  grdModel.Columns[4].Visible:= not btnShowNotes.Down;
  grdModel.Columns[5].Visible:= not btnShowNotes.Down;
  grdModel.Columns[6].Visible:= not btnShowNotes.Down;
  grdModel.Columns[7].Visible:= not btnShowNotes.Down;
  grdModel.Columns[8].Visible:= not btnShowNotes.Down;
  grdModel.Columns[9].Visible:= not btnShowNotes.Down;
  grdModel.Columns[10].Visible:= not btnShowNotes.Down;

  grdModel.Columns[11].Visible:= btnShowNotes.Down;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actSpecificToolProductSpecDocsExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl),
    cdsDSModelSPECIFIC_TOOL_PRODUCT_CODE.AsInteger);
end;

procedure TfmSpecAndXModelDocStatusAbstract.actSpecificToolProductSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  ShowSpecDocStatus(cdsDSModelSPECIFIC_TOOL_PRODUCT_CODE.AsInteger);
end;

procedure TfmSpecAndXModelDocStatusAbstract.actSpecificToolProductSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsDSModelSPECIFIC_TOOL_PRODUCT_HAS_SPEC.AsBoolean;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actSpecificToolProductSpecDocsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
     (not cdsDSModel.IsEmpty) and
     (cdsDSModelITEM_TYPE_CODE.AsInteger = itOperation);
  (Sender as TAction).ImageIndex:=
    cdsDSModelSPECIFIC_TOOL_PRODUCT_HAS_DI.AsInteger;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actTypicalToolProductSpecDocsExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl),
    cdsDSModelTYPICAL_TOOL_PRODUCT_CODE.AsInteger);
end;

procedure TfmSpecAndXModelDocStatusAbstract.actTypicalToolProductSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  ShowSpecDocStatus(cdsDSModelTYPICAL_TOOL_PRODUCT_CODE.AsInteger);
end;

procedure TfmSpecAndXModelDocStatusAbstract.actTypicalToolProductSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsDSModelTYPICAL_TOOL_PRODUCT_HAS_SPEC.AsBoolean;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actTypicalToolProductSpecDocsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
     (not cdsDSModel.IsEmpty) and
     (cdsDSModelITEM_TYPE_CODE.AsInteger = itOperation);
  (Sender as TAction).ImageIndex:=
    cdsDSModelTYPICAL_TOOL_PRODUCT_HAS_DI.AsInteger;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actProductSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  ShowSpecDocStatus(cdsDSLinesPRODUCT_CODE.AsInteger);
end;

procedure TfmSpecAndXModelDocStatusAbstract.cdsDSLinesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:= (cdsDSLinesLEVEL_NO.AsInteger <= FShowLevel);
end;

procedure TfmSpecAndXModelDocStatusAbstract.udShowLevelChangingEx(
  Sender: TObject; var AllowChange: Boolean; NewValue: Integer;
  Direction: TUpDownDirection);
begin
  inherited;

  if Visible and (NewValue in [udShowLevel.Min..udShowLevel.Max]) then
    begin
      FShowLevel:= NewValue;
      tmrShowLevel.Enabled:= False;
      tmrShowLevel.Enabled:= True;
    end;
end;

procedure TfmSpecAndXModelDocStatusAbstract.tmrShowLevelTimer(
  Sender: TObject);
begin
  inherited;
  tmrShowLevel.Enabled:= False;
  RefilterDataSet(cdsDSLines);
  RefreshLinesTree;
end;

class function TfmSpecAndXModelDocStatusAbstract.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmSpecAndXModelDocStatusAbstract.ProceedDataSetOnDocChange(ADataSet: TClientDataSet);
var
  ApprovedDocItemsCountField: TField;
  ModelBookmark: TBookmark;
begin
  if dmDocClient.DSIsCurrent(ADataSet) then
    begin
      FEditingDataSet:= ADataSet;
      try
        cdsDSModel.DisableControls;
        try
          ModelBookmark:= cdsDSModel.Bookmark;
          try
            ADataSet.DisableControls;
            try
              ADataSet.Edit;
              try
                ADataSet.FieldByName('DOC_EMPTINESS_REQUIREMENT_CODE').AsVariant:=
                  dmDocClient.cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant;
                ADataSet.FieldByName('DOC_IS_COMPLETE').AsVariant:=
                  dmDocClient.cdsDocsIS_COMPLETE.AsVariant;
                ADataSet.FieldByName('ACTIVE_DI_COUNT').AsInteger:=
                  dmDocClient.DSDocItemCount(ADataSet, True);
                ADataSet.FieldByName('UNAUTHORIZED_ACTIVE_DI_COUNT').AsInteger:=
                  ADataSet.FieldByName('ACTIVE_DI_COUNT').AsInteger -
                  dmDocClient.DSAuthorizedDocItemCount(ADataSet, True);
                ADataSet.FieldByName('UNAPPROVED_ACTIVE_DI_COUNT').AsInteger:=
                  ADataSet.FieldByName('ACTIVE_DI_COUNT').AsInteger -
                  dmDocClient.DSApprovedDocItemCount(ADataSet, True);

                ApprovedDocItemsCountField:= ADataSet.FindField('APPROVED_DI_COUNT');
                if Assigned(ApprovedDocItemsCountField) then
                  ApprovedDocItemsCountField.AsInteger:= dmDocClient.DSApprovedDocItemCount(ADataSet);

                ADataSet.Post;
              except
                ADataSet.Cancel;
                raise;
              end;  { try }
            finally
              ADataSet.EnableControls;
            end;  { try }
          finally
            cdsDSModel.Bookmark:= ModelBookmark;
          end;  { try }
        finally
          cdsDSModel.EnableControls;
        end;  { try }
      finally
        FEditingDataSet:= nil;
      end;  { try }
    end;  { if }
end;

procedure TfmSpecAndXModelDocStatusAbstract.dmDocClientOnDataChanged(
  Sender: TObject);
var
  ModelLineFinalizedDocs: Boolean;
begin
  cdsDSModel.TempDisableControls/
    cdsDSLines.TempDisableControls/
      grdModel.PreserveTopRow/
        grdLines.PreserveTopRow/
          procedure begin
            ModelLineFinalizedDocs:=
              CountApproveCycles and
              dmDocClient.DSIsCurrent(cdsDSModel) and
              StrToBoolDef(FFinalizedDocs.Values[LineIdentifier], False);

            ProceedDataSetOnDocChange(cdsDSLines);
            ProceedDataSetOnDocChange(cdsDSModel);

            if ModelLineFinalizedDocs and
               not StrToBoolDef(FFinalizedDocs.Values[LineIdentifier], False) then
              IncApproveCycleNo;

            if Assigned(FOlddmDocClientOnDataChanged) then
              FOlddmDocClientOnDataChanged(Sender);

            if dmDocClient.DSIsCurrent(cdsDSLines) then
              SetLinesApproveCycleNoAndStructureCoefInfo(True);

            RefreshTrees;
          end;
end;

procedure TfmSpecAndXModelDocStatusAbstract.dmDocClientOnDocItemEdited(
  DocItemUnapproved: Boolean);
var
  UnapproveMethods: TUnapproveMethods;
  ui: TUnapproveInfo;
  SaveCursor: TCursor;
  DocBookmark: Variant;
  DocItemCode: Integer;
begin
  DocItemCode:= dmDocClient.cdsDocItemsDOC_ITEM_CODE.AsInteger;

  if DocItemUnapproved and
     LoginContext.DocItemsUnapprovePrompt and
     dmDocClient.DSIsCurrent(cdsDSModel) and
     LineHasApprovedDocItem then
    begin
      UnapproveMethods:= [umNone..umAllModelVariantsLineStagesAndOperationsDocs];
      if (cdsDSModelITEM_TYPE_CODE.AsInteger = itStage) then
        UnapproveMethods:= UnapproveMethods - [umRangeOperationsDocs];

      ui:=
        UnapproveFormClass.SelectUnapproveMethod(dmDocClient,
          cdsDSLinesNO_AS_TEXT.AsString,
          cdsDSModelSTAGE_NO.AsInteger,
          cdsDSModelOPERATION_NO.AsString,
          ModelIdentifier,
          True,
          UnapproveMethods
        );

      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crHourGlass;
      try
        DocBookmark:= dmDocClient.Bookmark;
        try
          FUnapproving:= True;
          try
            case ui.UnapproveMethod of
              umDocItemOnly, umDoc:
                dmDocClient.UnapproveDocItems(
                  cdsDSModelDOC_BRANCH_CODE.AsInteger,
                  cdsDSModelDOC_CODE.AsInteger,
                  (ui.UnapproveMethod = umDoc), [DocItemCode]);

              umRangeOperationsDocs..umAllModelVariantsLineStagesAndOperationsDocs:
                UnapproveLineDocItems(ui, cdsDSModelSTAGE_NO.AsInteger);
            end;  { case }
          finally
            FUnapproving:= False;
          end;  { try }
        finally
          dmDocClient.Bookmark:= DocBookmark;
        end;  { try }

        if ImmediatelyApplyUpdates then
          dmDocClient.ApplyUpdates;
      finally
        Screen.Cursor:= SaveCursor;
      end;  { cursor try }
    end;
end;

procedure TfmSpecAndXModelDocStatusAbstract.DelayedShowDetailDocStatus;
begin
  tmrDetailSpecDocStatus.Enabled:= False;
  tmrDetailSpecDocStatus.Enabled:= True;
end;

procedure TfmSpecAndXModelDocStatusAbstract.tmrDetailSpecDocStatusTimer(
  Sender: TObject);
begin
  inherited;
  tmrDetailSpecDocStatus.Enabled:= False;

  if cdsDSLines.Active then
    RefreshDetailDocStatus;
end;

procedure TfmSpecAndXModelDocStatusAbstract.cdsDSLinesAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  SetLinesApproveCycleNoAndStructureCoefInfo(False);
  RefreshLinesTree;
end;

procedure TfmSpecAndXModelDocStatusAbstract.cdsDSLinesAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if not cdsDSLines.ControlsDisabled then
    begin
      DelayedShowDetailDocStatus;
      RefreshModelTree;
    end;
end;

procedure TfmSpecAndXModelDocStatusAbstract.DocSplittersCanResize(
  Sender: TObject; var NewSize: Integer; var Accept: Boolean);
begin
  inherited;
  GridSplitterCanResize(NewSize, Accept, 144);
end;

procedure TfmSpecAndXModelDocStatusAbstract.UnapproveLineDocItems(
  UnapproveInfo: TUnapproveInfo; StageNo: Integer);
var
  FromOperationNo: Integer;
  ToOperationNo: Integer;
  b: TBookmark;
begin
  if (UnapproveInfo.UnapproveMethod = umRangeOperationsDocs) then
    begin
      FromOperationNo:= UnapproveInfo.FromOperationNo;
      ToOperationNo:= UnapproveInfo.ToOperationNo;
    end
  else
    begin
      FromOperationNo:= -1;
      ToOperationNo:= MaxInt;
    end;

  with cdsDSModel do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          First;
          while not Eof do
            begin
              if (not cdsDSModelDOC_CODE.IsNull) and
                 ( ( (cdsDSModelITEM_TYPE_CODE.AsInteger = itStage) and
                     ( (UnapproveInfo.UnapproveMethod >= umLineStagesAndOperationsDocs) or
                       (cdsDSModelSTAGE_NO.AsInteger = StageNo) ) ) or
                   ( (cdsDSModelITEM_TYPE_CODE.AsInteger = itOperation) and
                     (FromOperationNo <= cdsDSModelOPERATION_NO.AsInteger) and
                     (cdsDSModelOPERATION_NO.AsInteger <= ToOperationNo) ) and
                     ( (UnapproveInfo.UnapproveMethod >= umLineStagesAndOperationsDocs) or
                       (cdsDSModelSTAGE_NO.AsInteger = StageNo) ) ) then
                dmDocClient.UnapproveDocItems(
                  cdsDSModelDOC_BRANCH_CODE.AsInteger,
                  cdsDSModelDOC_CODE.AsInteger,
                  True, []);

              Next;
            end;  { while }
        finally
          Bookmark:= b;
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmSpecAndXModelDocStatusAbstract.SetLinesApproveCycleNoAndStructureCoefInfo(
  CurrentLineOnly: Boolean);
var
  LinesBookmark: TBookmark;
  ModelBookmark: TBookmark;
  acn: string;
  DocFinalized: Boolean;
begin
  FEditingDataSet:= cdsDSLines;
  try
    cdsDSModel.DisableControls;
    try
      if cdsDSModel.Active then
        ModelBookmark:= cdsDSModel.Bookmark
      else
        SetLength(ModelBookmark, 0);
      try
        cdsDSLines.DisableControls;
        try
          LinesBookmark:= cdsDSLines.Bookmark;
          try
            if not CurrentLineOnly then
              begin
                FApproveCycleNos.Clear;
                FFinalizedDocs.Clear;
                FStructureCoefInfo.Clear;
              end;

            if not CurrentLineOnly then
              cdsDSLines.First;
            while not cdsDSLines.Eof do
              begin
                DocFinalized:=
                  (VarToInt(cdsDSModel_TOTAL_UNAPPROVED_ACTIVE_DI_CNT.AsVariant) = 0) and
                  (VarToInt(cdsDSModel_TOTAL_NOT_IS_COMPLETE_COUNT.AsVariant) = 0);

                if (VarToInt(cdsDSModel_MAX_DOC_EMPTINESS_REQ_CODE.AsVariant) <>
                    DocEmptinessRequirementToInt(derNotEmpty)) then
                  acn:= ''
                else
                  begin
                    if DocFinalized then
                      acn:= ApproveCycleNoField.DisplayText
                    else
                      acn:= Format('(%s)', [ApproveCycleNoField.DisplayText]);
                  end;

                FApproveCycleNos.Values[LineIdentifier]:= acn;
                FFinalizedDocs.Values[LineIdentifier]:= BoolToStr(DocFinalized);

                FStructureCoefInfo.Values[cdsDSLinesNO_AS_TEXT.AsString]:=
                  Format('%d;%d;%d', [     // NoAsText=HasMissingChildren;DetailIsSelfApproved;IsComplete
                    Ord(cdsDSLinesPRODUCT_CODE.IsNull and not cdsDSLinesHAS_CHILDREN.AsBoolean),
                    Ord(cdsDSLinesIS_DETAIL_DOC_AUTHORIZED.AsBoolean),
                    Ord(cdsDSLinesIS_COMPLETE.AsBoolean)
                  ]);

                if CurrentLineOnly then
                  cdsDSLines.Last;

                cdsDSLines.Next;
              end;  { while }
          finally
            cdsDSLines.Bookmark:= LinesBookmark;
          end;  { try }
        finally
          cdsDSLines.EnableControls;
        end;  { try }
      finally
        if cdsDSModel.Active and
           (Length(ModelBookmark) > 0) and
           cdsDSModel.BookmarkValid(ModelBookmark) then
          cdsDSModel.Bookmark:= ModelBookmark;
      end;  { try }
    finally
      cdsDSModel.EnableControls;
    end;  { try }
  finally
    FEditingDataSet:= nil;
  end;  { try }

  RefreshDetailDocStatus;
end;

procedure TfmSpecAndXModelDocStatusAbstract.SetLinesColumns;
begin
  grdLines.Columns[2].Visible:= actLinesShowDocInfo.Checked;
  grdLines.Columns[3].Visible:= actLinesShowDocInfo.Checked;
  grdLines.Columns[4].Visible:= actLinesShowDocInfo.Checked;
  grdLines.Columns[5].Visible:= actLinesShowNotes.Checked;
  grdLines.Columns[6].Visible:= actLinesShowConstructionNotes.Checked;
end;

procedure TfmSpecAndXModelDocStatusAbstract.cdsDSModelAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  RefreshModelTree;
end;

procedure TfmSpecAndXModelDocStatusAbstract.cdsDSModelAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if not FUnapproving then
    SetLinesApproveCycleNoAndStructureCoefInfo(True);
end;

procedure TfmSpecAndXModelDocStatusAbstract.cdsDSModelAfterScroll(
  DataSet: TDataSet);
begin
  inherited;

  if not cdsDSModel.ControlsDisabled then
    begin
      pnlDeptProductStructStatus.Caption:= ProductStructStatus(cdsDSModelDEPT_PRODUCT_CODE.AsInteger);
      pnlProgramToolProductStructStatus.Caption:= ProductStructStatus(cdsDSModelPROGRAM_TOOL_PRODUCT_CODE.AsInteger);
      pnlSpecificToolProductStructStatus.Caption:= ProductStructStatus(cdsDSModelSPECIFIC_TOOL_PRODUCT_CODE.AsInteger);
      pnlTypicalToolProductStructStatus.Caption:= ProductStructStatus(cdsDSModelTYPICAL_TOOL_PRODUCT_CODE.AsInteger);

      // fix na greshno podrejdane v QuantumTreeList 5.49
      cdsDSModel.TempDisableControls/
        cdsDSModel.PreserveRecNo/
          procedure begin
            cdsDSModel.Last;
          end;
    end;  { if }
end;

procedure TfmSpecAndXModelDocStatusAbstract.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FStructureCoefInfo);
  FreeAndNil(FFinalizedDocs);
  FreeAndNil(FApproveCycleNos);
end;

procedure TfmSpecAndXModelDocStatusAbstract.FormShow(Sender: TObject);
begin
  inherited;
  pnlModelStructStatuses.Left:= 2;
  pnlModelStructStatuses.Width:= pnlModelStruct.Width - pnlModelStructStatuses.Left - GetVerticalScrollBarWidth;
  pnlDeptProductDocs.Height:= pnlProgramToolProductDocs.Height;
end;

procedure TfmSpecAndXModelDocStatusAbstract.IncApproveCycleNo;
var
  ModelItemCode: Integer;
  DocBookmark: Variant;
  r: Integer;
begin
  cdsDSModel.DisableControls;
  try
    ModelItemCode:= cdsDSModelITEM_CODE.AsInteger;
    try
      DocBookmark:= dmDocClient.Bookmark;
      try
        with ApproveCycleNoField do
          begin
            DataSet.DisableControls;
            try
              DataSet.Edit;
              try
                AsInteger:= AsInteger + 1;
                DataSet.Post;
              except
                DataSet.Cancel;
                raise;
              end;  { try }

              FCycleNoModified:= True;

              if ImmediatelyApplyUpdates then
                begin
                  r:= cdsDSLines.RecNo;
                  DoApplyUpdates;
                  cdsDSLines.RecNo:= r;
                end;
            finally
              DataSet.EnableControls;
            end;  { try }
          end;
      finally
        dmDocClient.Bookmark:= DocBookmark;
      end;  { try }
    finally
      cdsDSModel.Locate('ITEM_CODE', ModelItemCode, []);
    end;  { try }
  finally
    cdsDSModel.EnableControls;
  end;  { try }

  SetLinesApproveCycleNoAndStructureCoefInfo(True);
end;

procedure TfmSpecAndXModelDocStatusAbstract.cdsDataBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  
  if ImmediatelyApplyUpdates then
    OwnerData:= Unassigned
  else
    OwnerData:= DocsDelta;
end;

procedure TfmSpecAndXModelDocStatusAbstract.CheckImmediatelyApplyUpdates;
begin
  if (not ImmediatelyApplyUpdates) and GetApplyUpdatesEnabled then
    begin
      if (MessageDlgEx(SConfirmAppyUpdates, mtConfirmation, [mbOK, mbCancel], 0) <> mrOk) then
        Abort;
      DoApplyUpdates;
    end;
end;

procedure TfmSpecAndXModelDocStatusAbstract.DoApplyUpdates;
var
  LinesRecNo: Integer;
  ModelRecNo: Integer;
  DocsBookmark: Variant;
begin
  DocsBookmark:= dmDocClient.Bookmark;
  try
    cdsDSModel.DisableControls;
    try
      ModelRecNo:= cdsDSModel.RecNo;
      try
        cdsDSLines.DisableControls;
        try
          LinesRecNo:= cdsDSLines.RecNo;
          try
            inherited;
          finally
            cdsDSLines.RecNo:= LinesRecNo;
          end;  { try }
        finally
          cdsDSLines.EnableControls;
        end;  { try }
      finally
        cdsDSModel.RecNo:= ModelRecNo;
      end;  { try }
    finally
      cdsDSModel.EnableControls;
    end;  { try }
  finally
    dmDocClient.Bookmark:= DocsBookmark;
  end;  { try }

  FCycleNoModified:= False;

  RefreshDetailDocStatus;
end;

function TfmSpecAndXModelDocStatusAbstract.GetApplyUpdatesEnabled: Boolean;
begin
  Result:=
    FCycleNoModified or
    (Assigned(dmDocClient) and IsDocModifiedHere);
end;

procedure TfmSpecAndXModelDocStatusAbstract.RefreshLinesDocFrame;
var
  SaveDataSet: TDataSet;
begin
  SaveDataSet:= frLineDoc.dsData.DataSet;
  frLineDoc.dsData.DataSet:= nil;
  frLineDoc.dsData.DataSet:= SaveDataSet;
end;

procedure TfmSpecAndXModelDocStatusAbstract.RefreshTrees;
begin
  cdsDSModel.TempDisableControls/
    cdsDSLines.TempDisableControls/
      cdsDSModel.PreserveRecNo/
        cdsDSLines.PreserveRecNo/
          procedure begin
            grdLines.RefreshTreeList(True);
            grdModel.RefreshTreeList(True);
          end;
end;

procedure TfmSpecAndXModelDocStatusAbstract.RefreshDetailDocStatus;
begin
  pnlStructStatusLabel.Caption:= GetStructureCoef;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actPrintLinesExecute(
  Sender: TObject);
var
  ModelBookmark: TBookmark;
  LinesBookmark: TBookmark;
begin
  inherited;

  cdsDSModel.DisableControls;
  try
    ModelBookmark:= cdsDSModel.Bookmark;
    try
      cdsDSLines.DisableControls;
      try
        LinesBookmark:= cdsDSLines.Bookmark;
        try
          cdsDSLines.First;
          FFirstLineStructCoef:= GetStructureCoef;

          LinesReportClass.PrintReport(cdsDSLines, cdsData);
        finally
          cdsDSLines.Bookmark:= LinesBookmark;
        end;  { try }
      finally
        cdsDSLines.EnableControls;
      end;  { try }
    finally
      cdsDSModel.Bookmark:= ModelBookmark;
    end;  { try }
  finally
    cdsDSModel.EnableControls;
  end;  { try }
end;

procedure TfmSpecAndXModelDocStatusAbstract.actPrintModelExecute(
  Sender: TObject);
var
  ModelBookmark: TBookmark;
begin
  inherited;

  cdsDSModel.DisableControls;
  try
    ModelBookmark:= cdsDSModel.Bookmark;
    try
      ModelReportClass.PrintReport(cdsDSModel, cdsDSLines);
    finally
      cdsDSModel.Bookmark:= ModelBookmark;
    end;  { try }
  finally
    cdsDSModel.EnableControls;
  end;  { try }
end;

function TfmSpecAndXModelDocStatusAbstract.GetStructureCoef: string;

  function GetLevelNo(ANoAsText: string): Integer;
  var
    i: Integer;
  begin
    if (ANoAsText = '0') then
      Result:= 0
    else
      begin
        Result:= 1;
        for i:= 1 to Length(ANoAsText) do
          if (ANoAsText[i] = '.') then
            Inc(Result);
      end;
  end;

var
  i: Integer;
  CurrentLevelNo: Integer;
  CurrentNoAsText: string;
  LevelNo: Integer;
  MaxLevelNo: Integer;
  LevelHasMissingChildren: array[0..MaxNoPos] of Boolean;
  LevelIsSelfApproved: array[0..MaxNoPos] of Boolean;
  LevelIsComplete: array[0..MaxNoPos] of Boolean;
  MaxSelfApprovedLevelNo, MaxCompleteLevelNo: Integer;
  NoAsText: string;
  EncodedValues: TStringList;
  HasMissingChildren: Boolean;
  IsSelfApproved: Boolean;
  IsComplete: Boolean;

  ResultLevelNo: Integer;
  ResultLevelIsComplete: Boolean;
  ResultMaxLevelNo: Integer;
  ResultHasMissingChildren: Boolean;

begin
  CurrentNoAsText:= cdsDSLinesNO_AS_TEXT.AsString;
  CurrentLevelNo:= GetLevelNo(CurrentNoAsText);

  EncodedValues:= TStringList.Create;
  try
    EncodedValues.Delimiter:= ';';

    for i:= 0 to MaxNoPos do
      begin
        LevelIsSelfApproved[i]:= True;
        LevelIsComplete[i]:= True;
        LevelHasMissingChildren[i]:= False;
      end;
    MaxLevelNo:= 0;

    for i:= 0 to FStructureCoefInfo.Count - 1 do
      begin
        NoAsText:= FStructureCoefInfo.Names[i];

        LevelNo:= GetLevelNo(NoAsText);

        if (CurrentLevelNo = 0) or
           ((Pos(CurrentNoAsText + '.', NoAsText + '.') = 1) and (ForkNo = 0)) then
          begin
            Dec(LevelNo, CurrentLevelNo);

            EncodedValues.DelimitedText:= FStructureCoefInfo.Values[NoAsText]; // NoAsText=HasMissingChildren;DetailIsSelfApproved;IsComplete
            Assert(EncodedValues.Count = 3);

            HasMissingChildren:= Boolean(StrToInt(EncodedValues[0]));
            IsSelfApproved:= Boolean(StrToInt(EncodedValues[1]));
            IsComplete:= Boolean(StrToInt(EncodedValues[2]));

            LevelHasMissingChildren[LevelNo]:= LevelHasMissingChildren[LevelNo] or HasMissingChildren;
            LevelIsSelfApproved[LevelNo]:= LevelIsSelfApproved[LevelNo] and IsSelfApproved;
            LevelIsComplete[LevelNo]:= LevelIsComplete[LevelNo] and IsComplete;

            MaxLevelNo:= Max(MaxLevelNo, LevelNo);
          end;  { if }
      end;  { for }
  finally
    FreeAndNil(EncodedValues);
  end;  { try }


  // KSIa
  for i:= 1 to MaxLevelNo do
    LevelIsSelfApproved[i]:= LevelIsSelfApproved[i] and not LevelHasMissingChildren[i-1];

  MaxSelfApprovedLevelNo:= MaxLevelNo + 1;
  for i:= MaxLevelNo downto 0 do
    if not LevelIsSelfApproved[i] then
      MaxSelfApprovedLevelNo:= i;
  Dec(MaxSelfApprovedLevelNo);

  MaxCompleteLevelNo:= MaxLevelNo + 1;
  for i:= MaxLevelNo downto 0 do
    if not LevelIsComplete[i] then       
      MaxCompleteLevelNo:= i;
  Dec(MaxCompleteLevelNo);

  if (MaxSelfApprovedLevelNo > MaxCompleteLevelNo) then
    ResultLevelNo:= MaxCompleteLevelNo + Ord(MaxSelfApprovedLevelNo > MaxCompleteLevelNo + 1)
  else
    ResultLevelNo:= Max((MaxSelfApprovedLevelNo - 1), -1);

  if (ResultLevelNo = -1) then
    ResultLevelIsComplete:= LevelIsSelfApproved[0]
  else
    ResultLevelIsComplete:= LevelIsComplete[ResultLevelNo];

  ResultMaxLevelNo:= MaxLevelNo;

  ResultHasMissingChildren:= False;
  for i:= MaxLevelNo downto 0 do
    ResultHasMissingChildren:=
      ResultHasMissingChildren or not LevelIsComplete[i];

  if (ResultLevelNo = ResultMaxLevelNo - 1) and ResultLevelIsComplete and (not ResultHasMissingChildren) then
    Inc(ResultLevelNo);

  Result:=
    DocStatusToStr(ResultLevelNo, ResultLevelIsComplete, ResultMaxLevelNo, ResultHasMissingChildren);
end;

procedure TfmSpecAndXModelDocStatusAbstract.grdLinesDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;

  with Column.Field.DataSet do
    if BOF and EOF then
      Exit;

  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);

  if (Column.FieldName = '_SHOW_NAME') then
    DrawTreeImageColumnCell(grdLines, dmMain.ilSpecLines, grdLines.DataSource.DataSet.FieldByName('_LINE_TYPE_CODE').AsInteger, Rect, Column, True)
end;

procedure TfmSpecAndXModelDocStatusAbstract.grdLinesGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  s: string;
begin
  inherited;

  if (Column.FieldName = '_DOC_EMPTINESS_REQUIREMENT_STATUS') then
    begin
      if (VarToInt(grdLInes.DataSource.DataSet.FieldByName('DOC_IS_COMPLETE').AsVariant) = 1) then
        AFont.Color:= clGreen
      else
        AFont.Color:= clRed;
    end;

  if (Column.FieldName = '_DOC_ITEMS_UNAUTHORIZED_STATUS') then
    begin
      if (VarToInt(grdLines.DataSource.DataSet.FieldByName('UNAUTHORIZED_ACTIVE_DI_COUNT').AsVariant) = 0) and
         (VarToInt(grdLInes.DataSource.DataSet.FieldByName('UNAPPROVED_ACTIVE_DI_COUNT').AsVariant) = 0) then
        AFont.Color:= clGreen
      else
        AFont.Color:= clRed;
    end;

  if (Column.FieldName = '_SHOW_APPROVE_CYCLE_NO') then
    begin
      s:= VarToStr(grdLines.DataSource.DataSet.FieldByName('_SHOW_APPROVE_CYCLE_NO').AsVariant);
      if (s <> '') and (s[1] = '(') then
        AFont.Color:= clRed
      else
        AFont.Color:= clGreen;
    end;

  if (gdFocused in State) and (ActiveControl = grdLines) then
    AFont.Color:= clHighlightText;
end;

procedure TfmSpecAndXModelDocStatusAbstract.grdModelDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;

  with Column.Field.DataSet do
    if BOF and EOF then
      Exit;

  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);

  if (Column.FieldName = '_SHOW_NAME') then
    DrawTreeImageColumnCell(grdModel, ilModel, grdModel.DataSource.DataSet.FieldByName('_IMAGE_INDEX').AsInteger, Rect, Column, True);
end;

procedure TfmSpecAndXModelDocStatusAbstract.grdModelGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);

  procedure SetToolRequirementFont(ToolRequirementColumnFieldName,
    ToolIsCompleteColumnFieldName: string);
  var
    ToolIsComplete: Boolean;
  begin
    ToolIsComplete:= (VarToInt(grdModel.DataSource.DataSet.FieldByName(ToolIsCompleteColumnFieldName).AsVariant) = 1);

    if ToolIsComplete then
      AFont.Color:= clGreen
    else
      AFont.Color:= clRed;
  end;

begin
  inherited;

  if (Column.FieldName = '_DOC_EMPTINESS_REQUIREMENT_STATUS') then
    begin
      if (VarToInt(grdModel.DataSource.DataSet.FieldByName('DOC_IS_COMPLETE').AsVariant) = 1) then
        AFont.Color:= clGreen
      else
        AFont.Color:= clRed;
    end;

  if (Column.FieldName = '_DOC_ITEMS_UNAUTHORIZED_STATUS') then
    begin
      if (VarToInt(grdModel.DataSource.DataSet.FieldByName('UNAUTHORIZED_ACTIVE_DI_COUNT').AsVariant) = 0) and
         (VarToInt(grdModel.DataSource.DataSet.FieldByName('UNAPPROVED_ACTIVE_DI_COUNT').AsVariant) = 0) then
        AFont.Color:= clGreen
      else
        AFont.Color:= clRed;
    end;

  if (Column.FieldName = '_SHOW_APPROVE_CYCLE_NO') then
    begin
      if (VarToInt(grdModel.DataSource.DataSet.FieldByName('UNAPPROVED_ACTIVE_DI_COUNT').AsVariant) = 0) and
         (VarToInt(grdModel.DataSource.DataSet.FieldByName('DOC_IS_COMPLETE').AsVariant) = 1) then
        AFont.Color:= clGreen
      else
        AFont.Color:= clRed;
    end;

  if (gdFocused in State) and (ActiveControl = grdModel) then
    AFont.Color:= clHighlightText;

  if (Column.FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE') then
    SetToolRequirementFont('PROGRAM_TOOL_REQUIREMENT_CODE', 'PROGRAM_TOOL_IS_COMPLETE');

  if (Column.FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE') then
    SetToolRequirementFont('SPECIFIC_TOOL_REQUIREMENT_CODE', 'SPECIFIC_TOOL_IS_COMPLETE');

  if (Column.FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE') then
    SetToolRequirementFont('TYPICAL_TOOL_REQUIREMENT_CODE', 'TYPICAL_TOOL_IS_COMPLETE');
end;


procedure TfmSpecAndXModelDocStatusAbstract.cdsData_PRINT_FIRST_LINE_STRUCT_COEFGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= FFirstLineStructCoef;
end;

function TfmSpecAndXModelDocStatusAbstract.GetDocFrameReadOnly(
  ADocFrame: TDBFrame): Boolean;
begin
  Result:= ((ADocFrame = frModelDoc) and (cdsDSModelITEM_TYPE_CODE.AsInteger = itModel));
end;

class function TfmSpecAndXModelDocStatusAbstract.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmSpecAndXModelDocStatusAbstract.ShowSpecDocStatus(
  ASpecProductCode, ASpecModelVariantNo: Integer);
var
  InsertionsUpdated: Boolean;
begin
  CheckImmediatelyApplyUpdates;

  TfmSpecDocStatus.ShowForm(dmDocClient, ASpecProductCode, EditMode,
    GetAllowSpecUpdate, @InsertionsUpdated, ASpecModelVariantNo);

  if InsertionsUpdated then
    SpecInsertionsUpdated(ASpecProductCode);

  RefreshDetailDocStatus;
  RefreshLinesDocFrame;
  SaveDocsSavePoint;
end;

procedure TfmSpecAndXModelDocStatusAbstract.SpecInsertionsUpdated(
  ASpecProductCode: Integer);
begin
  // do nothing
end;

procedure TfmSpecAndXModelDocStatusAbstract.SyncDocPanels(Source,
  Dest: TPanel);
begin
  if FSyncDocPanels then
    Exit;

  FSyncDocPanels:= True;
  try
    Dest.Height:= Source.Height;
  finally
    FSyncDocPanels:= False;
  end;
end;

procedure TfmSpecAndXModelDocStatusAbstract.actPrintLinesUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDSLines.Active and
    (cdsDSLines.RecordCount > 0);
end;

procedure TfmSpecAndXModelDocStatusAbstract.actPrintModelUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    cdsDSModel.Active and
    (cdsDSModel.RecordCount > 0);
end;

end.


