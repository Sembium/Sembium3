unit fOperationMovement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, Menus,
  JvButtons, ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields, Mask,
  DBCtrls, fBaseFrame, fDBFrame, fFieldEditFrame, JvToolEdit,
  dDocClient, uClientTypes, AbmesReport, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDeptFieldEditFrameBald, fDateFieldEditFrame,
  JvExControls, JvComponent, JvDBLookup, JvCaptionButton, ToolWin, ComCtrls,
  JvComponentBase, fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald,
  System.Actions, JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TfmOperationMovement = class(TBevelEditForm)
    cdsHeader: TAbmesClientDataSet;
    dsHeader: TDataSource;
    cdsHeaderFROM_MLL_NO_AS_TEXT: TAbmesWideStringField;
    cdsHeaderFROM_MLL_FORK_NO: TAbmesFloatField;
    cdsHeaderFROM_STAGE_IDENTIFIER: TAbmesWideStringField;
    cdsHeaderFROM_MLMS_REMAINING_WORKDAYS: TAbmesFloatField;
    cdsHeaderFROM_DETAIL_CODE: TAbmesFloatField;
    cdsHeaderFROM_DETAIL_NAME: TAbmesWideStringField;
    cdsHeaderFROM_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsHeaderFROM_DETAIL_TECH_MEASURE_ABB: TAbmesWideStringField;
    cdsHeaderFROM_PRODUCT_CODE: TAbmesFloatField;
    cdsHeaderFROM_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsHeaderFROM_PRODUCT_NAME: TAbmesWideStringField;
    cdsHeaderFROM_TOTAL_PRODUCT_TECH_QTY: TAbmesFloatField;
    cdsHeaderFROM_PRODUCT_TECH_MEASURE_ABB: TAbmesWideStringField;
    cdsHeaderFROM_MLMS_OPERATION_IDENTIFIER: TAbmesWideStringField;
    cdsHeaderTO_MLL_NO_AS_TEXT: TAbmesWideStringField;
    cdsHeaderTO_MLL_FORK_NO: TAbmesFloatField;
    cdsHeaderTO_STAGE_IDENTIFIER: TAbmesWideStringField;
    cdsHeaderTO_MLMS_REMAINING_WORKDAYS: TAbmesFloatField;
    cdsHeaderTO_DETAIL_CODE: TAbmesFloatField;
    cdsHeaderTO_DETAIL_NAME: TAbmesWideStringField;
    cdsHeaderTO_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsHeaderTO_DETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsHeaderTO_PRODUCT_CODE: TAbmesFloatField;
    cdsHeaderTO_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsHeaderTO_PRODUCT_NAME: TAbmesWideStringField;
    cdsHeaderTO_TOTAL_PRODUCT_TECH_QTY: TAbmesFloatField;
    cdsHeaderTO_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    pnlHeader: TPanel;
    pnlFrom: TPanel;
    gbFrom: TGroupBox;
    pnlTo: TPanel;
    pnlQuantities: TPanel;
    gbQuantities: TGroupBox;
    edtFromMllNo: TDBEdit;
    lblFromMllNo: TLabel;
    edtFromForkNo: TDBEdit;
    lblFromForkNo: TLabel;
    edtFromStage: TDBEdit;
    lblFromStage: TLabel;
    lblFromRemainingWorkdays: TLabel;
    edtFromRemainingWorkdays: TDBEdit;
    lblFromDetailName: TLabel;
    edtFromDetailName: TDBEdit;
    lblFromLineDetailTechQuantity: TLabel;
    edtFromLineDetailTechQuantity: TDBEdit;
    txtFromDetailTechMeasureAbbrev: TDBText;
    imgFromRemainingWorkdays: TImage;
    lblFromOperation: TLabel;
    edtFromOperation: TDBEdit;
    lblDetailWorkTechQuantity: TLabel;
    edtDetailWorkTechQuantity: TDBEdit;
    lblDetailTotalTechQuantity: TLabel;
    edtDetailTotalTechQuantity: TDBEdit;
    lblDetailQATechQuantity: TLabel;
    edtDetailQATechQuantity: TDBEdit;
    pnlStageLevel: TPanel;
    pnlOperationLevel: TPanel;
    pnlFromBottom: TPanel;
    pnlFromOperationNotes: TPanel;
    edtFromOperationNotes: TDBEdit;
    lblFromOperationNotes: TLabel;
    pnlFromEmployeeOrTeam: TPanel;
    gbFromEmployeeOrTeam: TGroupBox;
    lblFromEmployeeCode: TLabel;
    lblFromTeamCode: TLabel;
    edtFromTeamCode: TDBEdit;
    cbFromTeamName: TJvDBLookupCombo;
    gbTo: TGroupBox;
    pnlToBottom: TPanel;
    pnlToOperationNotes: TPanel;
    lblToOperationNotes: TLabel;
    edtToOperationNotes: TDBEdit;
    pnlToEmployeeOrTeam: TPanel;
    gbToEmployeeOrTeam: TGroupBox;
    lblToEmployeeCode: TLabel;
    lblToTeamCode: TLabel;
    edtToTeamCode: TDBEdit;
    cbToTeamName: TJvDBLookupCombo;
    pnlFromProduct: TPanel;
    lblFromProductName: TLabel;
    edtFromProductName: TDBEdit;
    lblFromTotalProductTechQuantity: TLabel;
    edtFromTotalProductTechQuantity: TDBEdit;
    txtFromProductTechMeasureAbbrev: TDBText;
    gbSale: TGroupBox;
    lblSalePriority: TLabel;
    edtSaleNo: TDBEdit;
    edtSalePriority: TDBEdit;
    cdsDataOM_BRANCH_CODE: TAbmesFloatField;
    cdsDataOM_CODE: TAbmesFloatField;
    cdsDataOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField;
    cdsDataOM_DATE: TAbmesSQLTimeStampField;
    cdsDataOM_TIME: TAbmesSQLTimeStampField;
    cdsDataFROM_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataFROM_TEAM_CODE: TAbmesFloatField;
    cdsDataTO_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataTO_TEAM_CODE: TAbmesFloatField;
    cdsDataTO_DEPT_CODE: TAbmesFloatField;
    cdsDataTO_DEPT_NAME: TAbmesWideStringField;
    cdsDataTO_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDataWASTE_DOC_NO: TAbmesWideStringField;
    cdsDataWASTE_DOC_DATE: TAbmesSQLTimeStampField;
    cdsDataWORK_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsDataTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsDataQA_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsDataQA_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataSTORNO_DATE: TAbmesSQLTimeStampField;
    cdsDataSTORNO_TIME: TAbmesSQLTimeStampField;
    cdsDataBND_OM_BRANCH_CODE: TAbmesFloatField;
    cdsDataBND_OM_CODE: TAbmesFloatField;
    cdsHeaderFROM_NOTES: TAbmesWideStringField;
    cdsHeaderTO_NOTES: TAbmesWideStringField;
    cdsHeaderFROM_PROFESSION_NAME: TAbmesWideStringField;
    cdsHeaderTO_PROFESSION_NAME: TAbmesWideStringField;
    pnlWaste: TPanel;
    gbWaste: TGroupBox;
    lblToDept: TLabel;
    lblWasteDocNo: TLabel;
    edtWasteDocNo: TDBEdit;
    lblWasteDocDate: TLabel;
    gbIdentification: TGroupBox;
    lblMovementBranchNo: TLabel;
    edtMovementBranchNo: TDBEdit;
    lblMovementNo: TLabel;
    edtMovementNo: TDBEdit;
    pnlStornoButton: TPanel;
    btnStorno: TBitBtn;
    pnlPrintButton: TPanel;
    btnPrint: TBitBtn;
    pnlPrintCheck: TPanel;
    chbPrint: TCheckBox;
    cdsData_QA_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsHeaderFROM_PROFESSION_CODE: TAbmesFloatField;
    cdsHeaderTO_PROFESSION_CODE: TAbmesFloatField;
    cdsDataWORK_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsDataTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsDataQA_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsDataPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    pnlProductQuantities: TPanel;
    lblProductWorkTechQuantity: TLabel;
    edtProductWorkTechQuantity: TDBEdit;
    lblProductTotalTechQuantity: TLabel;
    edtProductTotalTechQuantity: TDBEdit;
    lblProductQATechQuantity: TLabel;
    edtProductQATechQuantity: TDBEdit;
    actStorno: TAction;
    cdsOperationMovementTypes: TAbmesClientDataSet;
    cdsOperationMovementTypesOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField;
    cdsOperationMovementTypesOPERATION_MOVEMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsOperationMovementTypesOPERATION_MOVEMENT_TYPE_NAME: TAbmesWideStringField;
    cdsOperationMovementTypes_OMT_ABBREV_AND_NAME: TAbmesWideStringField;
    cdsData_OMT_TYPE_AND_NAME: TAbmesWideStringField;
    cdsDataFROM_MLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataFROM_MLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsDataTO_MLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataTO_MLMSO_OBJECT_CODE: TAbmesFloatField;
    pnlToOperation: TPanel;
    lblToOperation: TLabel;
    cbToOperation: TJvDBLookupCombo;
    cdsFromTeams: TAbmesClientDataSet;
    cdsToTeams: TAbmesClientDataSet;
    cdsFromTeamsTEAM_CODE: TAbmesFloatField;
    cdsFromTeamsTEAM_NAME: TAbmesWideStringField;
    cdsToTeamsTEAM_CODE: TAbmesFloatField;
    cdsToTeamsTEAM_NAME: TAbmesWideStringField;
    cdsToTeamsHAS_THE_PROFESSION: TAbmesFloatField;
    pnlToData: TPanel;
    lblToMllNo: TLabel;
    lblToForkNo: TLabel;
    lblToStage: TLabel;
    lblToRemainingWorkdays: TLabel;
    lblToDetailName: TLabel;
    lblToLineDetailTechQuantity: TLabel;
    txtToDetailTechMeasureAbbrev: TDBText;
    imgToRemainingWorkdays: TImage;
    edtToMllNo: TDBEdit;
    edtToForkNo: TDBEdit;
    edtToRemainingWorkdays: TDBEdit;
    edtToDetailName: TDBEdit;
    edtToLineDetailTechQuantity: TDBEdit;
    edtToStage: TDBEdit;
    pnlToProduct: TPanel;
    lblToProductName: TLabel;
    lblToTotalProductTechQuantity: TLabel;
    txtToProductTechMeasureAbbrev: TDBText;
    edtToProductName: TDBEdit;
    edtToTotalProductTechQuantity: TDBEdit;
    cdsData_FROM_TEAM_NAME: TAbmesWideStringField;
    cdsData_TO_TEAM_NAME: TAbmesWideStringField;
    cdsToMLMSOperations: TAbmesClientDataSet;
    cdsToMLMSOperationsMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsToMLMSOperationsMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsToMLMSOperationsMLMSO_BRANCH_AND_CODE: TAbmesWideStringField;
    cdsToMLMSOperationsMLMSO_IDENTIFIER: TAbmesWideStringField;
    cdsDataTO_MLMSO_BRANCH_AND_CODE: TAbmesWideStringField;
    cdsData_TO_MLMSO_IDENTIFIER: TAbmesWideStringField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsData_OM_BRANCH_NO: TAbmesFloatField;
    gbOperationMovementQuantities: TGroupBox;
    lblDetailTotalInQuantity: TLabel;
    lblDetailTotalOutQuantity: TLabel;
    lblDetailTotalWasteQuantity: TLabel;
    edtDetailTotalInQuantity: TDBEdit;
    edtDetailTotalOutQuantity: TDBEdit;
    edtDetailTotalWasteQuantity: TDBEdit;
    pnlProductTotalQuantities: TPanel;
    lblProductTotalInQuantity: TLabel;
    lblProductTotalOutQuantity: TLabel;
    lblProductTotalWasteQuantity: TLabel;
    edtProductTotalInQuantity: TDBEdit;
    edtProductTotalOutQuantity: TDBEdit;
    edtProductTotalWasteQuantity: TDBEdit;
    lblDetailTotalRemainingQuantity: TLabel;
    edtDetailTotalRemainingQuantity: TDBEdit;
    lblProductTotalRemainingQuantity: TLabel;
    edtProductTotalRemainingQuantity: TDBEdit;
    cdsOperationMovementQuantities: TAbmesClientDataSet;
    cdsOperationMovementQuantitiesMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsOperationMovementQuantitiesMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsOperationMovementQuantitiesPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsOperationMovementQuantitiesDETAIL_TOTAL_IN_TECH_QUANTITY: TAbmesFloatField;
    cdsOperationMovementQuantitiesDETAIL_TOTAL_OUT_TECH_QUANTITY: TAbmesFloatField;
    cdsOperationMovementQuantitiesDETAIL_TOTAL_WASTE_TECH_QTY: TAbmesFloatField;
    cdsOperationMovementQuantitiesDETAIL_REMAINING_TECH_QUANTITY: TAbmesFloatField;
    cdsOperationMovementQuantitiesPRODUCT_TOTAL_IN_TECH_QUANTITY: TAbmesFloatField;
    cdsOperationMovementQuantitiesPRODUCT_TOTAL_OUT_TECH_QTY: TAbmesFloatField;
    cdsOperationMovementQuantitiesPRODUCT_TOTAL_WASTE_TECH_QTY: TAbmesFloatField;
    cdsOperationMovementQuantitiesPRODUCT_REMAINING_TECH_QTY: TAbmesFloatField;
    dsOperationMovementQuantities: TDataSource;
    cdsOperationMovementQuantitiesDETAIL_TOTAL_WORK_TECH_QTY: TAbmesFloatField;
    cdsDataSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    cdsDataREPLACED_OM_BRANCH_CODE: TAbmesFloatField;
    cdsDataREPLACED_OM_CODE: TAbmesFloatField;
    cdsHeaderIS_OPERATIONS_MODEL: TAbmesFloatField;
    cdsHeaderFROM_MLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsHeaderFROM_MLMS_OBJECT_CODE: TAbmesFloatField;
    cdsHeaderTO_MLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsHeaderTO_MLMS_OBJECT_CODE: TAbmesFloatField;
    cdsHeader_PRINT_SALE_IDENTIFIER: TAbmesWideStringField;
    cdsDataFROM_TEAM_NAME: TAbmesWideStringField;
    cdsDataTO_TEAM_NAME: TAbmesWideStringField;
    smrToOperation: TAbmesMatrixReport;
    smrToWaste: TAbmesMatrixReport;
    smrHeader: TAbmesMatrixReport;
    smrFooter: TAbmesMatrixReport;
    lblWasteEmployeeCode: TLabel;
    cdsToMLMSOperationsMLMS_OPERATION_NO: TAbmesFloatField;
    cdsToMLMSOperationsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsHeaderIS_TO_LAST_STAGE: TAbmesFloatField;
    cdsHeaderFROM_SETUP_IS_DONE: TAbmesFloatField;
    frToDept: TfrDeptFieldEditFrameBald;
    cdsHeaderMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField;
    cdsHeaderFROM_MLMS_IS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsData_CURRENT_DATE_TIME_AS_STRING: TAbmesWideStringField;
    cdsFromTeamsHAS_THE_EMPLOYEE: TAbmesFloatField;
    cdsFromTeamsHAS_THE_PROFESSION: TAbmesFloatField;
    frWasteDocDate: TfrDateFieldEditFrame;
    cdsHeaderFROM_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsHeaderFROM_DEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsHeaderTO_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsHeaderTO_DEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsDataTO_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataTO_DEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsHeaderFROM_OPERATION_TYPE_CODE: TAbmesFloatField;
    cdsHeaderTO_OPERATION_TYPE_CODE: TAbmesFloatField;
    frMovementDate: TfrDateFieldEditFrame;
    lblMovementDate: TLabel;
    lblMovementTime: TLabel;
    edtMovementTime: TDBEdit;
    edtMovementType: TDBEdit;
    lblMovementType: TLabel;
    lblAutoMovement: TLabel;
    cdsHeaderPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsHeaderSALE_PRIORITY_COLOR: TAbmesFloatField;
    cdsHeaderSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsHeaderFROM_MLMS_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsHeaderFROM_MLMS_DOC_CODE: TAbmesFloatField;
    cdsHeaderFROM_MLMS_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsHeaderFROM_MLMSO_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsHeaderFROM_MLMSO_DOC_CODE: TAbmesFloatField;
    cdsHeaderFROM_MLMSO_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsHeaderTO_MLMS_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsHeaderTO_MLMS_DOC_CODE: TAbmesFloatField;
    cdsHeaderTO_MLMS_HAS_DOC_ITEMS: TAbmesFloatField;
    tlbFromStageDocs: TToolBar;
    btnFromStageDocs: TToolButton;
    tlbToStageDocs: TToolBar;
    btnToStageDocs: TToolButton;
    tlbFromOperationDocs: TToolBar;
    btnFromOperationDocs: TToolButton;
    tlbMovementDocs: TToolBar;
    btnMovementDocs: TToolButton;
    cdsToMLMSOperationsMLMSO_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsToMLMSOperationsMLMSO_DOC_CODE: TAbmesFloatField;
    cdsToMLMSOperationsMLMSO_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsData_TO_MLMSO_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsData_TO_MLMSO_DOC_CODE: TAbmesFloatField;
    cdsData_TO_MLMSO_HAS_DOC_ITEMS: TAbmesFloatField;
    tlbToOperationDocs: TToolBar;
    btnToOperationDocs: TToolButton;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDataOM_NO: TAbmesFloatField;
    cdsHeaderSALE_WORK_PRIORITY_NO: TAbmesFloatField;
    lblSaleWorkPriority: TLabel;
    edtSaleWorkPriority: TDBEdit;
    cdsHeaderSALE_PRIORITY_NO: TAbmesFloatField;
    frFromEmployee: TfrEmployeeFieldEditFrameBald;
    frToEmployee: TfrEmployeeFieldEditFrameBald;
    cdsData_FROM_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsData_FROM_EMPLOYEE_NO: TAbmesFloatField;
    cdsData_TO_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsData_TO_EMPLOYEE_NO: TAbmesFloatField;
    frToWasteEmployee: TfrEmployeeFieldEditFrameBald;
    cdsData_TO_WASTE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsData_TO_WASTE_EMPLOYEE_NO: TAbmesFloatField;
    frQAEmployee: TfrEmployeeFieldEditFrameBald;
    pnlQAEmployeeLabel: TPanel;
    lblQAEmployee: TLabel;
    cdsEmployeeFrameAllEmployees: TAbmesClientDataSet;
    pnlStorned: TPanel;
    CheckBox: TCheckBox;
    pnlExceptEvent: TPanel;
    btnExceptEvent: TBitBtn;
    actExceptEvent: TAction;
    cdsHeaderFROM_PROF_USED_BY_EMPLOYEES: TAbmesFloatField;
    cdsHeaderFROM_PROF_USED_BY_TEAMS: TAbmesFloatField;
    cdsDataPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    pnlReloadOperationMovement: TPanel;
    chkReloadOperationMovement: TCheckBox;
    cdsHeaderFROM_MLMSO_DEPT_CODE: TAbmesFloatField;
    cdsFromTeamsHAS_THE_OCC_WORK_DEPT: TAbmesFloatField;
    cdsHeaderFROM_MLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsData_TO_MLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    smrSpecControl: TAbmesMatrixReport;
    smrSpecControlHeader: TAbmesMatrixReport;
    cdsHeaderPRINT_NOTES: TAbmesWideStringField;
    cdsHeaderFROM_MLMSO_IS_LAST_IN_STAGE: TAbmesFloatField;
    cdsHeaderTO_MLMSO_VARIANTS_DEPTS: TAbmesWideStringField;
    pnlToNextOperation: TPanel;
    edtToMlmsoVariantsDepts: TDBEdit;
    lblToMlmsoVariantsDepts: TLabel;
    smrToNextOperation: TAbmesMatrixReport;
    cdsHeaderTO_DEPT_ZONE_COUNT: TAbmesFloatField;
    cdsDataTO_DEPT_ZONE_NO: TAbmesFloatField;
    gbToDeptZoneNo: TGroupBox;
    cbToDeptZone: TJvDBComboBox;
    cdsData_PRINT_TO_MLMSO_IDENTIFIER: TAbmesWideStringField;
    procedure frFromEmployeecdsEmployeesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsHeaderAfterOpen(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsDataWORK_DETAIL_TECH_QUANTITYChange(Sender: TField);
    procedure cdsDataWORK_PRODUCT_TECH_QUANTITYChange(Sender: TField);
    procedure cdsDataTOTAL_DETAIL_TECH_QUANTITYChange(Sender: TField);
    procedure cdsDataTOTAL_PRODUCT_TECH_QUANTITYChange(Sender: TField);
    procedure cdsDataQA_DETAIL_TECH_QUANTITYChange(Sender: TField);
    procedure cdsDataQA_PRODUCT_TECH_QUANTITYChange(Sender: TField);
    procedure actStornoUpdate(Sender: TObject);
    procedure actStornoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsOperationMovementTypesCalcFields(DataSet: TDataSet);
    procedure cdsDataTO_DEPT_CODEChange(Sender: TField);
    procedure cdsDataTO_MLMSO_BRANCH_AND_CODEChange(Sender: TField);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsDataTO_EMPLOYEE_CODEChange(Sender: TField);
    procedure cdsDataTO_TEAM_CODEChange(Sender: TField);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsHeaderCalcFields(DataSet: TDataSet);
    procedure smrHeaderGetFieldValues(Sender: TObject;
      FieldValues: TReportFieldValues);
    procedure smrToOperationGetFieldValues(Sender: TObject;
      FieldValues: TReportFieldValues);
    procedure smrToWasteGetFieldValues(Sender: TObject;
      FieldValues: TReportFieldValues);
    procedure smrFooterGetFieldValues(Sender: TObject;
      FieldValues: TReportFieldValues);
    procedure cdsHeaderMODEL_OPERATIONS_STATUS_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsFromTeamsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsFromTeamsBeforeOpen(DataSet: TDataSet);
    procedure cdsDataOM_DATEChange(Sender: TField);
    procedure cdsHeaderFROM_NOTESGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsHeaderTO_NOTESGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure btnFromStageDocsClick(Sender: TObject);
    procedure btnToStageDocsClick(Sender: TObject);
    procedure btnFromOperationDocsClick(Sender: TObject);
    procedure btnToOperationDocsClick(Sender: TObject);
    procedure btnMovementDocsClick(Sender: TObject);
    procedure actExceptEventUpdate(Sender: TObject);
    procedure actExceptEventExecute(Sender: TObject);
    procedure cdsHeaderBeforeOpen(DataSet: TDataSet);
    procedure cdsToMLMSOperationsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsToMLMSOperationsMLMSO_IDENTIFIERGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsHeaderFROM_MLMS_OPERATION_IDENTIFIERGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
  private
    FOperationMovementTypeCode: Integer;
    FCalculatingQuantity: Boolean;
    FStartStornoEmployeeCode: Integer;
    FDirectStorno: Boolean;
    FToOperationVariantNo: Integer;
    FOwnOperationMovement: Boolean;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FUnapprovedDocItemCount: Integer;
    FCanModifyData: Boolean;
    FStartFromEmployeeCode: Integer;
    FStartToEmployeeCode: Integer;
    FAppliedOMBranchCode: Integer;
    FAppliedOMCode: Integer;
    FFromMlmsoObjectBranchCode: Integer;
    FFromMlmsoObjectCode: Integer;
    procedure OpenHeaderDataSets;
    procedure CloseHeaderDataSets;
    procedure RefreshHeaderDataSets;
    function IsStageMovement: Boolean;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    function CanModifyStornedData: Boolean;
    function CanReloadOperationMovement: Boolean;
    procedure OperationIdentifierGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure SetToDeptZones;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoApplyUpdates; override;
    function GetRecordReadOnly: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    class function CanUseDocs: Boolean; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AOperationMovementTypeCode: Integer = 0; AToOperationVariantNo: Integer = -1); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AOperationMovementTypeCode: Integer = 0; AToOperationVariantNo: Integer = -1): Boolean;
    procedure Initialize; override;
    procedure Finalize; override;
    property OperationMovementTypeCode: Integer read FOperationMovementTypeCode;
    property AppliedOMBranchCode: Integer read FAppliedOMBranchCode;
    property AppliedOMCode: Integer read FAppliedOMCode;
  end;

implementation

uses
  dMain, fDataForm, uLoginContext, uUtils, uModelMovementTypes,
  uTreeClientUtils, uOperationTypes, AbmesDialogs, uClientAppResources,
  uClientUtils, rOperationMovementToOperation, rOperationMovementToWaste,
  rBaseOperationMovementReport, StrUtils, uModelUtils, uUserActivityConsts,
  uDocUtils, uExceptEventClientUtils, fExceptEvents, fMain, uProductionOrderTypes,
  uClientDateTime, uToolbarUtils, rOperationMovementToSpecControl,
  rOperationMovementToNextOperation, System.Math, uComboBoxUtils;

{$R *.dfm}

resourcestring
  SCantApplyWithUnapprovedDocItems = 'Не можете да запишете Движение с неутвърдени ИИО!';
  SIncorrectOMDate = 'Не можете да отчитате движение с бъдеща дата!';
  SCantMoveToStore = 'Не можете да правите Етапно Операционно Движение към Крайно ТП Задържащо. Трябва да отчетете Постъпление.';
  SCantMoveWithoutSetup = 'Не можете да правите Операционно Движение без извършена настройка.';
  SCantMoveAutoMovement = 'Не можете да правите автоматично Етапно Операционно Движение!';
  SToEmployeeNeeded = 'При Етапно Операционно Движение е необходимо да предавате към ID Оператор';
  SWasteEmployeeNeeded = 'Посочете Приемащ блокирането';
  SQAEmployeeNeeded = 'При Етапно Операционно Движение е необходимо да въведете Одитиращ';
  SMatrixPrint = 'Печат на матричен принтер?';
  SConfirmStorno = 'Анулиране с оставане на екран?';
  SConfirmStornoForDocsEdit = 'Имате Информационна Отговорност само за редактиране на МИИО. Желаете ли да продължите?';
  SNewNo = 'Движението е записано под номер %d';
  SPositiveTotalQuantityNeeded = 'Общото количество по движението трябва да е положително!';
  SWorkQuantityExceedsTotal = 'Изработеното количество надвишава Общото';
  SQAQuantityExceedsTotal = 'Провереното количество надвишава Общото';
  STotalQuantityExceedsRemaining = 'Общото количество надвишава Оставащото';
  SWorkQuantityExceedsRemainingToWork = 'Изработеното количество надвишава Оставащото за изработка';
  SNsch = 'НСЧ';
  SStorno = 'Анулирано';
  SInactiveFromDept = 'Не можете да предвате от неактивно ТП!';
  SInactiveToDept = 'Не можете да предвате към неактивно ТП!';

  SProfessionNotUsedBy =
    'За тази процесна роля (%s) не може да бъде отчитано движение поради една от следните причини:' + SLineBreak +
    '  - липсва текущ времеви интервал за ролята;' + SLineBreak +
    '  - за текущия времеви интервал не е разрешено %s отчитане';
  SProfessionNotUsedByEmployees = 'индивидуално';
  SProfessionNotUsedByTeams = 'екипно';
  SOMCannotHaveExceptEvents = 'За това Операционно Движение не може да има Недопустими Отклонения';
  SSpecialControlRequired = 'Не е отчетен Специализиран Контрол';

const
  MaxProfessionNamePrintLength = 43;
  Eps = 0.0001;

{ TfmOperationMovement }

procedure TfmOperationMovement.cdsHeaderAfterOpen(DataSet: TDataSet);
begin
  inherited;

  gbFromEmployeeOrTeam.Caption:=
    ' ' + cdsHeaderFROM_PROFESSION_NAME.AsString + ' ';

  if (cdsHeaderTO_PROFESSION_NAME.AsString = '') then
    gbToEmployeeOrTeam.Caption:= ''
  else
    gbToEmployeeOrTeam.Caption:=
      ' ' + cdsHeaderTO_PROFESSION_NAME.AsString + ' ';

  SetToDeptZones;
end;

procedure TfmOperationMovement.cdsHeaderBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if (OperationMovementTypeCode = omtSpecialControl) then
    cdsHeader.Params.ParamByName('OVERRIDING_FROM_PROFESSION_CODE').AsInteger:= LoginContext.SpecialControlProfessionCode
  else
    cdsHeader.Params.ParamByName('OVERRIDING_FROM_PROFESSION_CODE').Clear;
end;

procedure TfmOperationMovement.Initialize;
var
  f: TField;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  if (EditMode = emInsert) and
     not (OperationMovementTypeCode in [omtWorkWaste, omtOrganizationWaste]) then
    cdsDataTO_MLMSO_BRANCH_AND_CODE.Assign(cdsToMLMSOperationsMLMSO_BRANCH_AND_CODE);

  if not cdsHeader.Active then
    RefreshHeaderDataSets;

  FStartFromEmployeeCode:= cdsDataFROM_EMPLOYEE_CODE.AsInteger;
  frFromEmployee.RequiredProfessionCode:=
    IfThen((OperationMovementTypeCode = omtSpecialControl),
           LoginContext.SpecialControlProfessionCode,
           cdsHeaderFROM_PROFESSION_CODE.AsInteger);
  frFromEmployee.cdsEmployees.Filtered:= True;

  if not (OperationMovementTypeCode in [omtOrganizationWaste, omtWorkWaste]) then
    begin
      FStartToEmployeeCode:= cdsDataTO_EMPLOYEE_CODE.AsInteger;
      frToEmployee.RequiredProfessionCode:= cdsHeaderTO_PROFESSION_CODE.AsInteger;
      frToEmployee.cdsEmployees.Filtered:= True;
    end;

  cdsFromTeams.Filtered:= True;
  cdsToTeams.Filtered:= True;

  if (EditMode = emInsert) then
    begin
      cdsDataOM_BRANCH_CODE.AsInteger:= LoginContext.LocalBranchCode;
      cdsDataOM_CODE.AsInteger:=
        dmMain.SvrModelMovements.GetOMCode(cdsDataOM_BRANCH_CODE.AsInteger);
      cdsDataOM_NO.AsInteger:=
        dmMain.SvrModelMovements.GetOMNo;
      cdsDataPRODUCT_TECH_QUANTITY.Assign(cdsHeaderFROM_PRODUCT_TECH_QUANTITY);
    end;

  if (EditMode = emInsert) and
     (OperationMovementTypeCode in [omtOrganizationOrganization, omtOrganizationWork, omtOrganizationWaste]) then
    cdsDataWORK_DETAIL_TECH_QUANTITY.AsInteger:= 0;

  if (OperationMovementTypeCode in [omtOrganizationWaste, omtWorkWaste]) then
    cdsDataTO_EMPLOYEE_CODE.DisplayLabel:= lblWasteEmployeeCode.Caption;

  if (EditMode = emInsert) and
     (FToOperationVariantNo >= 0) then
    cdsDataTO_MLMSO_BRANCH_AND_CODE.AsString:=
      cdsToMLMSOperations.Lookup('MLMS_OPERATION_VARIANT_NO', FToOperationVariantNo, 'MLMSO_BRANCH_AND_CODE');

  pnlClose.Left:= 1000;

  if (EditMode = emInsert) and
     (cdsHeaderIS_TO_LAST_STAGE.AsBoolean or
      ( (OperationMovementTypeCode in [omtWorkWork, omtWorkOrganization, omtWorkNextOperation]) and
        ((cdsHeaderFROM_MLMSO_IS_LAST_IN_STAGE.AsBoolean and cdsHeaderFROM_MLMS_IS_AUTO_MOVEMENT.AsBoolean) or
         not cdsHeaderFROM_SETUP_IS_DONE.AsBoolean)
      )
     ) then
    Abort;

  FCanModifyData:= (EditMode = emInsert);

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotOperationMovement, cdsData);

  chkReloadOperationMovement.Checked:= CanReloadOperationMovement;

  if LoginContext.OperationMovementRequiresOccupationDept then
    begin
      frFromEmployee.RequiredOccupationWorkDeptCode:= cdsHeaderFROM_MLMSO_DEPT_CODE.AsInteger;
      frQAEmployee.RequiredOccupationWorkDeptCode:= cdsHeaderFROM_MLMSO_DEPT_CODE.AsInteger;
    end;

  if (EditMode = emInsert) and frFromEmployee.cdsEmployees.Locate('EMPLOYEE_CODE', LoginContext.UserCode, []) then
    cdsDataFROM_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;

  if (EditMode = emInsert) and (OperationMovementTypeCode = omtWorkNextOperation) then
    begin
      cdsToMLMSOperations.First;
      cdsDataTO_MLMSO_BRANCH_AND_CODE.Assign(cdsToMLMSOperationsMLMSO_BRANCH_AND_CODE);
      ActiveControl:= edtDetailWorkTechQuantity;
    end;

  if (EditMode = emInsert) and (OperationMovementTypeCode in [omtLoading, omtReturning]) then
    begin
      if (OperationMovementTypeCode = omtReturning) then
        Assert(cdsToMLMSOperations.Locate('MLMS_OPERATION_VARIANT_NO', -1, []), 'Mlms operation variant -1 not found');

      cdsDataTO_MLMSO_BRANCH_AND_CODE.Assign(cdsToMLMSOperationsMLMSO_BRANCH_AND_CODE);

      if frFromEmployee.cdsEmployees.Locate('EMPLOYEE_CODE', LoginContext.UserCode, []) then
        cdsDataFROM_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;

      if frToEmployee.cdsEmployees.Locate('EMPLOYEE_CODE', LoginContext.UserCode, []) then
        cdsDataTO_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;

      chbPrint.Checked:= False;

      cdsDataWORK_DETAIL_TECH_QUANTITY.AsFloat:= 0;
      cdsDataQA_DETAIL_TECH_QUANTITY.AsFloat:= 0;

      if (OperationMovementTypeCode = omtLoading) and Assigned(OuterDataSet) then
        begin
          f:= OuterDataSet.FindField('OP_AVAILABLE_DETAIL_TECH_QTY');

          if Assigned(f) then
            cdsDataTOTAL_DETAIL_TECH_QUANTITY.Assign(f);
        end;

      if (OperationMovementTypeCode = omtReturning) then
        cdsDataTOTAL_DETAIL_TECH_QUANTITY.Assign(cdsOperationMovementQuantitiesDETAIL_REMAINING_TECH_QUANTITY);

      if (OperationMovementTypeCode = omtLoading) and (cdsHeaderTO_DEPT_ZONE_COUNT.AsInteger = 1) then
        cdsDataTO_DEPT_ZONE_NO.AsInteger:= 1;

      ActiveControl:= edtDetailTotalTechQuantity;
    end;
end;

function TfmOperationMovement.CanReloadOperationMovement: Boolean;
begin
  Result:=
    (EditMode = emInsert) and
    (OperationMovementTypeCode in [omtWorkWaste, omtOrganizationWaste]);
end;

procedure TfmOperationMovement.Finalize;
begin
  CloseHeaderDataSets;
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmOperationMovement.SetToDeptZones;
var
  i: Integer;
begin
  cbToDeptZone.Items.BeginUpdate;
  try
    cbToDeptZone.Items.Clear;

    for i:= 1 to cdsHeaderTO_DEPT_ZONE_COUNT.AsInteger do
      cbToDeptZone.Items.Add(IntToStr(i));
  finally
    cbToDeptZone.Items.EndUpdate;
  end;

  cbToDeptZone.Values.Assign(cbToDeptZone.Items);

  cbToDeptZone.DropDownCount:= Min(cdsHeaderTO_DEPT_ZONE_COUNT.AsInteger, 15);
end;

procedure TfmOperationMovement.OperationIdentifierGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if DisplayText and not Sender.IsNull then
    Text:= Sender.AsString.Replace('-1', '-');
end;

procedure TfmOperationMovement.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AOperationMovementTypeCode, AToOperationVariantNo: Integer);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FOperationMovementTypeCode:= AOperationMovementTypeCode;
  FToOperationVariantNo:= AToOperationVariantNo;
end;

class function TfmOperationMovement.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AOperationMovementTypeCode, AToOperationVariantNo: Integer): Boolean;
var
  f: TfmOperationMovement;
  MustShowForm: Boolean;
  OMParamsDataSet: TAbmesClientDataSet;
  FormModalResult: Integer;
begin
  if (AEditMode = emInsert) and
     dmMain.LoginContext.OMRequiresSpecialControlFirst and
     (AOperationMovementTypeCode <> omtSpecialControl) and
     dmMain.SvrModelMovements.GetSpecialControlNeeded(
       ADataSet.FieldByName('MLMSO_OBJECT_BRANCH_CODE').AsInteger,
       ADataSet.FieldByName('MLMSO_OBJECT_CODE').AsInteger) then
    raise Exception.Create(SSpecialControlRequired);

  Result:= False;
  MustShowForm:= True;
  OMParamsDataSet:= TAbmesClientDataSet.Create(nil);
  try
    OMParamsDataSet.FieldDefs.Add('OM_BRANCH_CODE', ftFloat);
    OMParamsDataSet.FieldDefs.Add('OM_CODE', ftFloat);
    OMParamsDataSet.CreateDataSet;

    while MustShowForm do
      begin
        f:= CreateEx;
        try
          f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AOperationMovementTypeCode, AToOperationVariantNo);

          FormModalResult:= f.InternalShowForm;

          Result:= Result or f.IsDataModified;

          MustShowForm:=
            (FormModalResult = mrOk) and
            f.chkReloadOperationMovement.Checked;

          OMParamsDataSet.SafeEdit/
            procedure begin
              OMParamsDataSet.FieldByName('OM_BRANCH_CODE').AsInteger:= f.AppliedOMBranchCode;
              OMParamsDataSet.FieldByName('OM_CODE').AsInteger:= f.AppliedOMCode;
            end;

          AEditMode:= emEdit;
          ADataSet:= OMParamsDataSet;
        finally
          f.ReleaseForm;
        end;
      end;
  finally
    FreeAndNil(OMParamsDataSet);
  end;
end;

procedure TfmOperationMovement.actExceptEventExecute(Sender: TObject);

  function ProdOrderBaseTypeToExceptEventGenType(AProdOrderBaseType: TProdOrderBaseType): TExceptEventGenType;
  begin
    Assert(AProdOrderBaseType in [pobtEnvCover, pobtProjectCover, pobtSaleCover]);
    case AProdOrderBaseType of
      pobtEnvCover, pobtProjectCover: Result:= eegtEnvironment;
      pobtSaleCover: Result:= eegtProduction;
    else
      raise Exception.Create(SOMCannotHaveExceptEvents);
    end;  { case }
  end;

var
  ExceptEventGenType: TExceptEventGenType;
  em: TEditMode;

begin
  inherited;
  LoginContext.CheckUserActivity(uaExceptEvents);
  if LoginContext.HasUserActivity(uaExceptEventsEdit) and (EditMode = emEdit) then
    em:= emEdit
  else
    em:= emReadOnly;
  
  ExceptEventGenType:=
    ProdOrderBaseTypeToExceptEventGenType(
      IntToProdOrderBaseType(cdsDataPROD_ORDER_BASE_TYPE_CODE.AsInteger));

  TfmExceptEvents.ShowExceptEventsForGenerator(em, ExceptEventGenType, cdsData);
end;

procedure TfmOperationMovement.actExceptEventUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (cdsData.State = dsBrowse) and
    (EditMode <> emInsert) and
    not cdsDataTO_DEPT_CODE.IsNull and
    (IntToProdOrderBaseType(cdsDataPROD_ORDER_BASE_TYPE_CODE.AsInteger) in
      [pobtEnvCover, pobtProjectCover, pobtSaleCover]
    );
end;

procedure TfmOperationMovement.actFormUpdate(Sender: TObject);

  procedure SetVisibleQuantities(AWinControl: TWinControl);
  var
    c: TControl;
  begin
    for c in AWinControl.AllControls do
      if (c <> pnlProductQuantities) then
        c.Visible:=
          not (OperationMovementTypeCode in [omtLoading, omtReturning]) or
          ContainsText(c.Name, 'TotalTech');
  end;

const
  StageLevelColors: array[Boolean] of TColor = (clMedGray, clBlue);
var
  ro: Boolean;
begin
  inherited;

//  pnlFromEmployeeOrTeam.Visible:=
//    (OperationMovementTypeCode in
//       [omtWorkWork, omtWorkWork, omtWorkWaste, omtRedirection, omtShift]);

  pnlToEmployeeOrTeam.Visible:=
    (OperationMovementTypeCode in
       [omtWorkWork, omtOrganizationWork, omtWorkOrganization, omtOrganizationOrganization, omtRedirection, omtShift, omtLoading, omtReturning]);

  pnlWaste.Visible:=
    (OperationMovementTypeCode in
       [omtWorkWaste, omtOrganizationWaste]);

  pnlStornoButton.Visible:=
    cdsData.Active and
    (EditMode = emEdit) and
    (cdsData.State = dsBrowse)  and
    cdsDataSTORE_DEAL_OBJECT_CODE.IsNull;

  pnlStorned.Visible:=
    (FStartStornoEmployeeCode > 0);

  pnlFromProduct.Visible:=
    cdsHeader.Active and
    (not cdsHeaderFROM_PRODUCT_CODE.IsNull);

  pnlProductQuantities.Visible:=
    cdsHeader.Active and
    (not cdsHeaderFROM_PRODUCT_CODE.IsNull);

  pnlProductTotalQuantities.Visible:=
    cdsHeader.Active and
    (not cdsHeaderFROM_PRODUCT_CODE.IsNull);

  pnlToData.Visible:=
    not cdsDataTO_MLMSO_OBJECT_CODE.IsNull;

  pnlToProduct.Visible:=
    cdsHeader.Active and
    (not cdsHeaderTO_PRODUCT_CODE.IsNull);

  pnlToOperation.Visible:=
    not (OperationMovementTypeCode in [omtWorkWaste, omtOrganizationWaste]);

  pnlToOperation.Enabled:=
    (OperationMovementTypeCode in [omtWorkWork, omtOrganizationWork, omtRedirection]) and
    (FToOperationVariantNo < 0);

  pnlToOperationNotes.Visible:=
    not (OperationMovementTypeCode in [omtWorkWaste, omtOrganizationWaste]);

  NormalizedToolbar(tlbToOperationDocs).Visible:= pnlToOperation.Visible;

  pnlPrintCheck.Visible:=
    cdsData.Active and
    (cdsData.State in dsEditModes);
  pnlPrintButton.Visible:=
    cdsData.Active and
    not (cdsData.State in dsEditModes);

  pnlStageLevel.Font.Color:= StageLevelColors[IsStageMovement];

  ro:=
    (not cdsData.Active) or
    (EditMode = emReadOnly) or
    (FStartStornoEmployeeCode > 0) or
    ( (EditMode = emEdit) and
      (cdsData.State = dsBrowse) ) or
    (not cdsDataSTORE_DEAL_OBJECT_CODE.IsNull) or
    (not FCanModifyData);

  edtMovementTime.ReadOnly:= ro;
  edtFromTeamCode.ReadOnly:= ro;
  cbFromTeamName.ReadOnly:= ro;
  edtWasteDocNo.ReadOnly:= ro;
  edtToTeamCode.ReadOnly:= ro;
  cbToTeamName.ReadOnly:= ro;

  edtMovementTime.Color:= ReadOnlyColors[ro];
  edtFromTeamCode.Color:= ReadOnlyColors[ro];
  cbFromTeamName.Color:= ReadOnlyColors[ro];
  edtWasteDocNo.Color:= ReadOnlyColors[ro];
  edtToTeamCode.Color:= ReadOnlyColors[ro];
  cbToTeamName.Color:= ReadOnlyColors[ro];

  SetControlsReadOnly(
    (ro or (OperationMovementTypeCode in [omtWorkNextOperation, omtLoading, omtReturning])),
    [cbToOperation]
  );

  SetControlsReadOnly(
    ro,
    [
      edtDetailTotalTechQuantity,
      edtDetailQATechQuantity,
      edtProductTotalTechQuantity,
      edtProductQATechQuantity,
      ReplacedDBComboBox(cbToDeptZone)
    ]
  );

  SetControlsReadOnly(
    (ro or (OperationMovementTypeCode in [omtOrganizationOrganization, omtOrganizationWork, omtOrganizationWaste, omtSpecialControl, omtLoading, omtReturning])),
    [
      edtDetailWorkTechQuantity,
      edtProductWorkTechQuantity
    ]
  );

  pnlOKCancel.Visible:=
    (EditMode = emInsert) or
    ( (EditMode = emEdit) and
      cdsData.Active and
      (cdsData.State = dsEdit) and
      cdsDataSTORE_DEAL_OBJECT_CODE.IsNull);
  pnlClose.Visible:= not pnlOKCancel.Visible;

  lblAutoMovement.Visible:=
    cdsData.Active and
    not cdsDataBND_OM_CODE.IsNull;

  if cdsHeader.Active then
    begin
      edtSalePriority.Color:= cdsHeaderSALE_PRIORITY_BACKGROUND_COLOR.AsInteger;
      edtSalePriority.Font.Color:= cdsHeaderSALE_PRIORITY_COLOR.AsInteger;
    end;

  btnFromStageDocs.ImageIndex:= cdsHeaderFROM_MLMS_HAS_DOC_ITEMS.AsInteger;
  btnToStageDocs.ImageIndex:= cdsHeaderTO_MLMS_HAS_DOC_ITEMS.AsInteger;
  btnFromOperationDocs.ImageIndex:= cdsHeaderFROM_MLMSO_HAS_DOC_ITEMS.AsInteger;
  btnToOperationDocs.ImageIndex:= cdsData_TO_MLMSO_HAS_DOC_ITEMS.AsInteger;
  btnMovementDocs.ImageIndex:= cdsDataHAS_DOC_ITEMS.AsInteger;

  pnlExceptEvent.Visible:= not cdsDataTO_DEPT_CODE.IsNull;

  gbQuantities.Height:= frQAEmployee.Top + frQAEmployee.Height + frQAEmployee.Left;

  pnlReloadOperationMovement.Visible:= CanReloadOperationMovement;

  gbTo.Visible:= (OperationMovementTypeCode <> omtSpecialControl);

  gbOperationMovementQuantities.Visible:=
    not (OperationMovementTypeCode in [omtLoading, omtReturning]);

  SetVisibleQuantities(gbQuantities);
  SetVisibleQuantities(pnlProductQuantities);

  pnlToNextOperation.Visible:= (OperationMovementTypeCode = omtWorkNextOperation);
  gbToDeptZoneNo.Visible:= (OperationMovementTypeCode = omtLoading);
end;

procedure TfmOperationMovement.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsDataOPERATION_MOVEMENT_TYPE_CODE.AsInteger:= OperationMovementTypeCode;
  cdsDataOM_DATE.AsDateTime:= ContextDate;
  cdsDataOM_TIME.AsDateTime:= ContextTime;

  cdsDataFROM_MLMSO_OBJECT_BRANCH_CODE.AsInteger:= FFromMlmsoObjectBranchCode;
  cdsDataFROM_MLMSO_OBJECT_CODE.AsInteger:= FFromMlmsoObjectCode;

  cdsDataCREATE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataCREATE_DATE.AsDateTime:= ContextDate;
  cdsDataCREATE_TIME.AsDateTime:= ContextTime;

  cdsDataHAS_DOC_ITEMS.AsBoolean:= False;

  if (OperationMovementTypeCode = omtSpecialControl) then
    begin
      cdsDataWORK_DETAIL_TECH_QUANTITY.AsFloat:= 0;
      cdsDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat:= 0;
      cdsDataQA_DETAIL_TECH_QUANTITY.AsFloat:= 0;
    end;

  if (OperationMovementTypeCode in [omtShift, omtSpecialControl]) then
    begin
      cdsDataTO_MLMSO_OBJECT_BRANCH_CODE.AsInteger:= cdsDataFROM_MLMSO_OBJECT_BRANCH_CODE.AsInteger;
      cdsDataTO_MLMSO_OBJECT_CODE.AsInteger:= cdsDataFROM_MLMSO_OBJECT_CODE.AsInteger;
    end;
end;

procedure TfmOperationMovement.OpenHeaderDataSets;
begin
  SetParams(cdsHeader.Params, cdsData);
  cdsHeader.Open;

  cdsFromTeams.Open;

  cdsToTeams.Params.ParamByName('PROFESSION_CODE').AsInteger:=
    cdsHeaderTO_PROFESSION_CODE.AsInteger;
  cdsToTeams.Open;

  if (EditMode = emInsert) then
    begin
      if cdsHeaderIS_TO_LAST_STAGE.AsBoolean then
        MessageDlgEx(SCantMoveToStore, mtError, [mbOK], 0);

      if (OperationMovementTypeCode in [omtWorkWork, omtWorkOrganization, omtWorkNextOperation]) and
         not cdsHeaderFROM_SETUP_IS_DONE.AsBoolean then
        begin
          MessageDlgEx(SCantMoveWithoutSetup, mtError, [mbOK], 0);
          Abort;
        end;

      if cdsHeaderFROM_MLMSO_IS_LAST_IN_STAGE.AsBoolean and
         cdsHeaderFROM_MLMS_IS_AUTO_MOVEMENT.AsBoolean then
        begin
          MessageDlgEx(SCantMoveAutoMovement, mtError, [mbOK], 0);
          Abort;
        end;
    end;
end;

procedure TfmOperationMovement.CloseHeaderDataSets;
begin
  cdsFromTeams.Close;
  cdsToTeams.Close;
  cdsHeader.Close;
end;

procedure TfmOperationMovement.RefreshHeaderDataSets;
var
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    CloseHeaderDataSets;
    OpenHeaderDataSets;
  finally
    Screen.Cursor:= SaveCursor;
  end;  { cursor try }
end;

procedure TfmOperationMovement.OpenDataSets;
var
  otc: Integer;
begin
  cdsBranches.Open;

  if (EditMode = emInsert) then
    begin
      FFromMlmsoObjectBranchCode:= OuterDataSet.FieldByName('MLMSO_OBJECT_BRANCH_CODE').AsInteger;
      FFromMlmsoObjectCode:= OuterDataSet.FieldByName('MLMSO_OBJECT_CODE').AsInteger;

      if (OperationMovementTypeCode = omtLoading) then
        begin
          // find operation variant -1 to use as From...
          cdsToMLMSOperations.Params.ParamByName('FROM_MLMSO_OBJECT_BRANCH_CODE').AsInteger:= FFromMlmsoObjectBranchCode;
          cdsToMLMSOperations.Params.ParamByName('FROM_MLMSO_OBJECT_CODE').AsInteger:= FFromMlmsoObjectCode;
          cdsToMLMSOperations.Params.ParamByName('OPERATION_TYPE_CODE').AsInteger:= -1;
          cdsToMLMSOperations.Params.ParamByName('ONLY_CURRENT').AsInteger:= 0;
          try
            cdsToMLMSOperations.TempUnfilter/
              cdsToMLMSOperations.TempOpen/
                procedure begin
                  Assert(cdsToMLMSOperations.Locate('MLMS_OPERATION_VARIANT_NO', -1, []), 'Mlms operation variant -1 not found');

                  FFromMlmsoObjectBranchCode:= cdsToMLMSOperations.FieldByName('MLMSO_OBJECT_BRANCH_CODE').AsInteger;
                  FFromMlmsoObjectCode:= cdsToMLMSOperations.FieldByName('MLMSO_OBJECT_CODE').AsInteger;
                end;
          finally
            ClearParams(cdsToMLMSOperations.Params);
          end;
        end;
    end
  else
    begin
      dmMain.SvrModelMovements.GetOmData(
        OuterDataSet.FieldByName('OM_BRANCH_CODE').AsInteger,
        OuterDataSet.FieldByName('OM_CODE').AsInteger,
        FFromMlmsoObjectBranchCode,
        FFromMlmsoObjectCode,
        FOperationMovementTypeCode
      );
    end;

  with cdsOperationMovementQuantities do
    begin
      Params.ParamByName('FROM_MLMSO_OBJECT_BRANCH_CODE').AsInteger:= FFromMlmsoObjectBranchCode;
      Params.ParamByName('FROM_MLMSO_OBJECT_CODE').AsInteger:= FFromMlmsoObjectCode;
      Open;
    end;  { with }

  with cdsToMLMSOperations do
    begin
      if (OperationMovementTypeCode = omtLoading) then
        begin
          if (EditMode = emInsert) then
            begin
              Params.ParamByName('FROM_MLMSO_OBJECT_BRANCH_CODE').AsInteger:= OuterDataSet.FieldByName('MLMSO_OBJECT_BRANCH_CODE').AsInteger;
              Params.ParamByName('FROM_MLMSO_OBJECT_CODE').AsInteger:= OuterDataSet.FieldByName('MLMSO_OBJECT_CODE').AsInteger;
              Params.ParamByName('OPERATION_TYPE_CODE').Value:= -1;
              Params.ParamByName('ONLY_CURRENT').AsInteger:= 1;
            end
          else
            begin
              Params.ParamByName('FROM_MLMSO_OBJECT_BRANCH_CODE').AsInteger:= FFromMlmsoObjectBranchCode;
              Params.ParamByName('FROM_MLMSO_OBJECT_CODE').AsInteger:= FFromMlmsoObjectCode;
              Params.ParamByName('OPERATION_TYPE_CODE').Value:= -1;
              Params.ParamByName('ONLY_CURRENT').AsInteger:= 0;
            end;
        end
      else
        begin
          Params.ParamByName('FROM_MLMSO_OBJECT_BRANCH_CODE').AsInteger:= FFromMlmsoObjectBranchCode;
          Params.ParamByName('FROM_MLMSO_OBJECT_CODE').AsInteger:= FFromMlmsoObjectCode;

          if (OperationMovementTypeCode in [omtWorkWork, omtOrganizationWork]) then
            otc:= otNormal
          else
            begin
              if (OperationMovementTypeCode in [omtWorkOrganization, omtOrganizationOrganization]) then
                otc:= otEnd
              else
                if (OperationMovementTypeCode in [omtRedirection, omtReturning, omtShift, omtSpecialControl]) then
                  otc:= -1
                else
                  otc:= 0;
            end;

          Params.ParamByName('OPERATION_TYPE_CODE').Value:= IntToVar(otc);
          Params.ParamByName('ONLY_CURRENT').AsInteger:=
            Ord(OperationMovementTypeCode in [omtWorkWaste, omtOrganizationWaste, omtShift, omtSpecialControl]);
        end;

      Open;
    end;  { with }

  inherited;
end;

procedure TfmOperationMovement.CloseDataSets;
begin
  inherited;
  cdsToMLMSOperations.Close;
  cdsOperationMovementQuantities.Close;
  cdsBranches.Close;
end;

procedure TfmOperationMovement.cdsDataWORK_DETAIL_TECH_QUANTITYChange(
  Sender: TField);
begin
  inherited;

  if FCalculatingQuantity then
    Exit;

  FCalculatingQuantity:= True;
  try
    if cdsDataPRODUCT_TECH_QUANTITY.IsNull then
      cdsDataWORK_PRODUCT_TECH_QUANTITY.Clear
    else
      cdsDataWORK_PRODUCT_TECH_QUANTITY.AsFloat:=
        cdsDataWORK_DETAIL_TECH_QUANTITY.AsFloat *
        cdsDataPRODUCT_TECH_QUANTITY.AsFloat;
  finally
    FCalculatingQuantity:= False;
  end;   { try }
end;

procedure TfmOperationMovement.cdsDataWORK_PRODUCT_TECH_QUANTITYChange(
  Sender: TField);
begin
  inherited;

  if FCalculatingQuantity then
    Exit;

  FCalculatingQuantity:= True;
  try
    if cdsDataPRODUCT_TECH_QUANTITY.IsNull then
      cdsDataWORK_DETAIL_TECH_QUANTITY.Clear
    else
      cdsDataWORK_DETAIL_TECH_QUANTITY.AsFloat:=
        cdsDataWORK_PRODUCT_TECH_QUANTITY.AsFloat /
        cdsDataPRODUCT_TECH_QUANTITY.AsFloat;
  finally
    FCalculatingQuantity:= False;
  end;   { try }
end;

procedure TfmOperationMovement.cdsDataTOTAL_DETAIL_TECH_QUANTITYChange(
  Sender: TField);
begin
  inherited;

  if FCalculatingQuantity then
    Exit;

  FCalculatingQuantity:= True;
  try
    if cdsDataPRODUCT_TECH_QUANTITY.IsNull then
      cdsDataTOTAL_PRODUCT_TECH_QUANTITY.Clear
    else
      cdsDataTOTAL_PRODUCT_TECH_QUANTITY.AsFloat:=
        cdsDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat *
        cdsDataPRODUCT_TECH_QUANTITY.AsFloat;
  finally
    FCalculatingQuantity:= False;
  end;   { try }
end;

procedure TfmOperationMovement.cdsDataTOTAL_PRODUCT_TECH_QUANTITYChange(
  Sender: TField);
begin
  inherited;

  if FCalculatingQuantity then
    Exit;

  FCalculatingQuantity:= True;
  try
    if cdsDataPRODUCT_TECH_QUANTITY.IsNull then
      cdsDataTOTAL_DETAIL_TECH_QUANTITY.Clear
    else
      cdsDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat:=
        cdsDataTOTAL_PRODUCT_TECH_QUANTITY.AsFloat /
        cdsDataPRODUCT_TECH_QUANTITY.AsFloat;
  finally
    FCalculatingQuantity:= False;
  end;   { try }
end;

procedure TfmOperationMovement.cdsDataQA_DETAIL_TECH_QUANTITYChange(
  Sender: TField);
begin
  inherited;

  if FCalculatingQuantity then
    Exit;

  FCalculatingQuantity:= True;
  try
    if cdsDataPRODUCT_TECH_QUANTITY.IsNull then
      cdsDataQA_PRODUCT_TECH_QUANTITY.Clear
    else
      cdsDataQA_PRODUCT_TECH_QUANTITY.AsFloat:=
        cdsDataQA_DETAIL_TECH_QUANTITY.AsFloat *
        cdsDataPRODUCT_TECH_QUANTITY.AsFloat;
  finally
    FCalculatingQuantity:= False;
  end;   { try }
end;

procedure TfmOperationMovement.cdsDataQA_PRODUCT_TECH_QUANTITYChange(
  Sender: TField);
begin
  inherited;

  if FCalculatingQuantity then
    Exit;

  FCalculatingQuantity:= True;
  try
    if cdsDataPRODUCT_TECH_QUANTITY.IsNull then
      cdsDataQA_DETAIL_TECH_QUANTITY.Clear
    else
      cdsDataQA_DETAIL_TECH_QUANTITY.AsFloat:=
        cdsDataQA_PRODUCT_TECH_QUANTITY.AsFloat /
        cdsDataPRODUCT_TECH_QUANTITY.AsFloat;
  finally
    FCalculatingQuantity:= False;
  end;   { try }
end;

procedure TfmOperationMovement.actStornoUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    (EditMode = emEdit) and
    (cdsData.State = dsBrowse) and
    cdsDataBND_OM_CODE.IsNull;
end;

procedure TfmOperationMovement.actStornoExecute(Sender: TObject);

  procedure ConfirmStornoForDocsEdit;
  begin
    if (MessageDlgEx(SConfirmStornoForDocsEdit, mtConfirmation, [mbOK, mbCancel], 0) <> mrOK) then
      Abort;
  end;

var
  r: Integer;
begin
  inherited;

  r:= mrCancel;

  if not cdsDataTO_DEPT_CODE.IsNull then
    begin
      if not LoginContext.HasUserActivity(uaStornoWasteOperationMovement) then
        begin
          if LoginContext.HasUserActivity(uaStornoWasteOperationMovementDocs) then
            ConfirmStornoForDocsEdit
          else
            LoginContext.CheckUserActivity(uaStornoWasteOperationMovement);

          r:= mrYes;
        end;
    end
  else
    begin
      if (cdsDataFROM_EMPLOYEE_CODE.AsInteger <> LoginContext.UserCode) then
        begin
          if not LoginContext.HasUserActivity(uaStornoForeignOperationMovement) then
            begin
              if LoginContext.HasUserActivity(uaStornoForeignOperationMovementDocs) then
                ConfirmStornoForDocsEdit
              else
                LoginContext.CheckUserActivity(uaStornoForeignOperationMovement);

              r:= mrYes;
            end;
        end;
    end;

  if (r = mrCancel) then
    r:= MessageDlgEx(SConfirmStorno, mtConfirmation, mbYesNoCancel, 0);

  case r of
    mrCancel:
      Abort;
    mrYes:
      begin
        with cdsOperationMovementQuantities do
          begin
            DisableControls;
            try
              Edit;
              try
                if (OperationMovementTypeCode in [omtWorkWork..omtOrganizationWork, omtRedirection]) then
                  begin
                    cdsOperationMovementQuantitiesDETAIL_TOTAL_OUT_TECH_QUANTITY.AsFloat:=
                      cdsOperationMovementQuantitiesDETAIL_TOTAL_OUT_TECH_QUANTITY.AsFloat -
                      cdsDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat;
                    cdsOperationMovementQuantitiesPRODUCT_TOTAL_OUT_TECH_QTY.AsFloat:=
                      cdsOperationMovementQuantitiesPRODUCT_TOTAL_OUT_TECH_QTY.AsFloat -
                      cdsDataTOTAL_PRODUCT_TECH_QUANTITY.AsFloat;
                  end;

                if (OperationMovementTypeCode in [omtWorkWaste, omtOrganizationWaste]) then
                  begin
                    cdsOperationMovementQuantitiesDETAIL_TOTAL_WASTE_TECH_QTY.AsFloat:=
                      cdsOperationMovementQuantitiesDETAIL_TOTAL_WASTE_TECH_QTY.AsFloat -
                      cdsDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat;
                    cdsOperationMovementQuantitiesPRODUCT_TOTAL_WASTE_TECH_QTY.AsFloat:=
                      cdsOperationMovementQuantitiesPRODUCT_TOTAL_WASTE_TECH_QTY.AsFloat -
                      cdsDataTOTAL_PRODUCT_TECH_QUANTITY.AsFloat;
                  end;

                if not (OperationMovementTypeCode in [omtShift, omtSpecialControl]) then
                  begin
                    cdsOperationMovementQuantitiesDETAIL_REMAINING_TECH_QUANTITY.AsFloat:=
                      cdsOperationMovementQuantitiesDETAIL_REMAINING_TECH_QUANTITY.AsFloat +
                      cdsDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat;
                    cdsOperationMovementQuantitiesPRODUCT_REMAINING_TECH_QTY.AsFloat:=
                      cdsOperationMovementQuantitiesPRODUCT_REMAINING_TECH_QTY.AsFloat +
                      cdsDataTOTAL_PRODUCT_TECH_QUANTITY.AsFloat;
                  end;

                cdsOperationMovementQuantitiesDETAIL_TOTAL_WORK_TECH_QTY.AsFloat:=
                  cdsOperationMovementQuantitiesDETAIL_TOTAL_WORK_TECH_QTY.AsFloat -
                  cdsDataWORK_DETAIL_TECH_QUANTITY.AsFloat;

                Post;
              except
                Cancel;
                raise;
              end;  { try }
            finally
              EnableControls;
            end;  { try }
          end;  { with }

        CheckEditMode(cdsData);
        cdsDataOM_CODE.AsInteger:=
          dmMain.SvrModelMovements.GetOMCode(cdsDataOM_BRANCH_CODE.AsInteger);

        if not cdsDataDOC_CODE.IsNull then
          begin
            cdsDataDOC_CODE.AsInteger:=
              dmDocClient.CreateDocLike(cdsDataDOC_BRANCH_CODE.AsInteger, cdsDataDOC_CODE.AsInteger, True);
            cdsDataDOC_BRANCH_CODE.AsInteger:= LoginContext.LocalBranchCode;
          end;

        FCanModifyData:= CanModifyStornedData;

        ActiveControl:= frMovementDate;
      end;
    mrNo:
      begin
        CheckEditMode(cdsData);
        cdsDataSTORNO_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
        FDirectStorno:= True;
        ModalResult:= mrOk;
      end;
  end;
end;

class function TfmOperationMovement.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmOperationMovement.FormCreate(Sender: TObject);
begin
  inherited;

  frToDept.FieldNames:= 'TO_DEPT_CODE';
  ReportClass:= TrptOperationMovementToOperation;

  FOwnOperationMovement:= not LoginContext.HasUserActivity(uaNewOperationMovement);

  cdsEmployeeFrameAllEmployees.Open;

  frFromEmployee.FieldNames:= 'FROM_EMPLOYEE_CODE';
  frFromEmployee.DocButtonVisible:= False;
  frToEmployee.FieldNames:= 'TO_EMPLOYEE_CODE';
  frToEmployee.DocButtonVisible:= False;
  frToWasteEmployee.FieldNames:= 'TO_EMPLOYEE_CODE';
  frToWasteEmployee.DocButtonVisible:= False;
  frToWasteEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;
  frQAEmployee.FieldNames:= 'QA_EMPLOYEE_CODE';
  frQAEmployee.DocButtonVisible:= False;
  frMovementDate.FieldNames:= 'OM_DATE';
  frWasteDocDate.FieldNames:= 'WASTE_DOC_DATE';
end;

procedure TfmOperationMovement.FormShow(Sender: TObject);
begin
  inherited;
  actForm.Update;
end;

procedure TfmOperationMovement.frFromEmployeecdsEmployeesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (not FOwnOperationMovement) or
    (frFromEmployee.cdsEmployeesEMPLOYEE_CODE.AsInteger = FStartFromEmployeeCode) or
    (frFromEmployee.cdsEmployeesEMPLOYEE_CODE.AsInteger = LoginContext.UserCode);
end;

procedure TfmOperationMovement.cdsOperationMovementTypesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsOperationMovementTypes_OMT_ABBREV_AND_NAME.AsString:=
    cdsOperationMovementTypesOPERATION_MOVEMENT_TYPE_ABBREV.AsString +
    ' - ' +
    cdsOperationMovementTypesOPERATION_MOVEMENT_TYPE_NAME.AsString;
end;

procedure TfmOperationMovement.cdsToMLMSOperationsFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (OperationMovementTypeCode in [omtWorkNextOperation, omtReturning]) or
    (cdsToMLMSOperationsMLMS_OPERATION_VARIANT_NO.AsInteger >= 0);
end;

procedure TfmOperationMovement.cdsToMLMSOperationsMLMSO_IDENTIFIERGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  OperationIdentifierGetText(Sender, Text, DisplayText);
end;

procedure TfmOperationMovement.cdsDataTO_DEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsDataTO_DEPT_CODE,
    cdsDataTO_DEPT_NAME, cdsDataTO_DEPT_IDENTIFIER,
    nil, nil, nil, nil,
    cdsDataTO_DEPT_BEGIN_DATE, cdsDataTO_DEPT_END_DATE);
end;

procedure TfmOperationMovement.cdsDataTO_MLMSO_BRANCH_AND_CODEChange(
  Sender: TField);
begin
  inherited;

  if (cdsDataTO_MLMSO_BRANCH_AND_CODE.AsString = '') then
    begin
      cdsDataTO_MLMSO_OBJECT_BRANCH_CODE.Clear;
      cdsDataTO_MLMSO_OBJECT_CODE.Clear;
      RefreshHeaderDataSets;
    end
  else  { if }
    begin
      if (cdsDataTO_MLMSO_OBJECT_BRANCH_CODE.AsInteger <> cdsToMLMSOperationsMLMSO_OBJECT_BRANCH_CODE.AsInteger) or
         (cdsDataTO_MLMSO_OBJECT_CODE.AsInteger <> cdsToMLMSOperationsMLMSO_OBJECT_CODE.AsInteger) then
        begin
          cdsToMLMSOperations.Locate('MLMSO_BRANCH_AND_CODE', cdsDataTO_MLMSO_BRANCH_AND_CODE.AsString, []);
          cdsDataTO_MLMSO_OBJECT_BRANCH_CODE.Assign(cdsToMLMSOperationsMLMSO_OBJECT_BRANCH_CODE);
          cdsDataTO_MLMSO_OBJECT_CODE.Assign(cdsToMLMSOperationsMLMSO_OBJECT_CODE);
          RefreshHeaderDataSets;
        end;
    end;  { if }
end;

procedure TfmOperationMovement.DoApplyUpdates;
var
  OldNo: Integer;
begin
  if (FUnapprovedDocItemCount > 0) then
    raise Exception.Create(SCantApplyWithUnapprovedDocItems);

  OldNo:= cdsDataOM_CODE.AsInteger;

  try
    inherited;

  except
    if FDirectStorno then
      begin
        FDirectStorno:= False;
        DoCancelUpdates;
      end;
    raise;
  end;  { try }

  if (cdsDataOM_CODE.AsInteger <> OldNo) then
    ShowMessageFmtEx(SNewNo, [cdsDataOM_CODE.AsInteger]);

  FAppliedOMBranchCode:= cdsDataOM_BRANCH_CODE.AsInteger;
  FAppliedOMCode:= cdsDataOM_CODE.AsInteger;
end;

procedure TfmOperationMovement.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if FDirectStorno then
    Exit;

  if cdsHeaderIS_TO_LAST_STAGE.AsBoolean then
    raise Exception.Create(SCantMoveToStore);

  CheckRequiredField(cdsDataOM_DATE);
  if (cdsDataOM_DATE.AsDateTime > ContextDate) then
    begin
      cdsDataOM_DATE.FocusControl;
      raise Exception.Create(SIncorrectOMDate);
    end;

  CheckRequiredField(cdsDataOM_TIME);
  CheckRequiredField(cdsDataFROM_EMPLOYEE_CODE);

  if (OperationMovementTypeCode <> omtReturning) then
    begin
      if pnlToEmployeeOrTeam.Visible and
         IsStageMovement and
         cdsDataTO_EMPLOYEE_CODE.IsNull then
        begin
          cdsDataTO_EMPLOYEE_CODE.FocusControl;
          raise Exception.Create(SToEmployeeNeeded);
        end;
    end;

  if pnlWaste.Visible then
    CheckRequiredFields(cdsData, 'TO_DEPT_NAME; WASTE_DOC_DATE');

  if ((pnlToEmployeeOrTeam.Visible and cdsData_TO_TEAM_NAME.IsNull) or pnlWaste.Visible) then
    CheckRequiredField(cdsDataTO_EMPLOYEE_CODE);

  CheckRequiredFields(cdsData,
    'WORK_DETAIL_TECH_QUANTITY; TOTAL_DETAIL_TECH_QUANTITY; QA_DETAIL_TECH_QUANTITY');

  if (cdsDataQA_DETAIL_TECH_QUANTITY.AsFloat > 0) then
    CheckRequiredField(cdsData_QA_EMPLOYEE_NAME);

  if IsStageMovement and
     cdsDAta_QA_EMPLOYEE_NAME.IsNull then
    begin
      cdsDAta_QA_EMPLOYEE_NAME.FocusControl;
      raise Exception.Create(SQAEmployeeNeeded);
    end;

  if (OperationMovementTypeCode <> omtSpecialControl) and
     (LargeZero(cdsDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat, Eps) <= 0) then
    begin
      cdsDataTOTAL_DETAIL_TECH_QUANTITY.FocusControl;
      raise Exception.Create(SPositiveTotalQuantityNeeded);
    end;

  if (LargeZero(cdsDataWORK_DETAIL_TECH_QUANTITY.AsFloat - cdsDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat, Eps) > 0) then
    begin
      cdsDataWORK_DETAIL_TECH_QUANTITY.FocusControl;
      raise Exception.Create(SWorkQuantityExceedsTotal);
    end;

  if (LargeZero(cdsDataQA_DETAIL_TECH_QUANTITY.AsFloat - cdsDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat, Eps) > 0) then
    begin
      cdsDataQA_DETAIL_TECH_QUANTITY.FocusControl;
      raise Exception.Create(SQAQuantityExceedsTotal);
    end;

  if not (OperationMovementTypeCode in [omtShift, omtSpecialControl]) and
     (LargeZero(cdsDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat - cdsOperationMovementQuantitiesDETAIL_REMAINING_TECH_QUANTITY.AsFloat, Eps) > 0) then
    begin
      cdsDataTOTAL_DETAIL_TECH_QUANTITY.FocusControl;
      raise Exception.Create(STotalQuantityExceedsRemaining);
    end;

  if (LargeZero(cdsDataWORK_DETAIL_TECH_QUANTITY.AsFloat -
        cdsOperationMovementQuantitiesDETAIL_REMAINING_TECH_QUANTITY.AsFloat, Eps) > 0) then
    begin
      cdsDataTOTAL_DETAIL_TECH_QUANTITY.FocusControl;
      raise Exception.Create(SWorkQuantityExceedsRemainingToWork);
    end;

  if (OperationMovementTypeCode = omtLoading) then
    CheckRequiredField(cdsDataTO_DEPT_ZONE_NO);

  if (ContextDate < cdsHeaderFROM_DEPT_BEGIN_DATE.AsDateTime) or
     ((not cdsHeaderFROM_DEPT_END_DATE.IsNull) and (ContextDate > cdsHeaderFROM_DEPT_END_DATE.AsDateTime)) then
    raise Exception.Create(SInactiveFromDept);

  if cdsDataTO_DEPT_CODE.IsNull and
     ((cdsDataOM_DATE.AsDateTime < cdsHeaderTO_DEPT_BEGIN_DATE.AsDateTime) or
      ((not cdsHeaderTO_DEPT_END_DATE.IsNull) and (cdsDataOM_DATE.AsDateTime > cdsHeaderTO_DEPT_END_DATE.AsDateTime))) then
    raise Exception.Create(SInactiveToDept);

  if (not cdsDataTO_DEPT_CODE.IsNull) and
     ((cdsDataOM_DATE.AsDateTime < cdsDataTO_DEPT_BEGIN_DATE.AsDateTime) or
      ((not cdsDataTO_DEPT_END_DATE.IsNull) and (cdsDataOM_DATE.AsDateTime > cdsDataTO_DEPT_END_DATE.AsDateTime))) then
    raise Exception.Create(SInactiveToDept);


  if (cdsHeaderFROM_OPERATION_TYPE_CODE.AsInteger = otNormal) and
     (cdsHeaderFROM_MLMS_OPERATION_VARIANT_NO.AsInteger >= 0) then
    begin
      if (not cdsDataFROM_EMPLOYEE_CODE.IsNull) and
         cdsDataFROM_TEAM_CODE.IsNull and
         (not cdsHeaderFROM_PROF_USED_BY_EMPLOYEES.AsBoolean) then
        raise Exception.CreateFmt(SProfessionNotUsedBy, [cdsHeaderFROM_PROFESSION_NAME.AsString, SProfessionNotUsedByEmployees]);

      if (not cdsDataFROM_TEAM_CODE.IsNull) and
         (not cdsHeaderFROM_PROF_USED_BY_TEAMS.AsBoolean) then
        raise Exception.CreateFmt(SProfessionNotUsedBy, [cdsHeaderFROM_PROFESSION_NAME.AsString, SProfessionNotUsedByTeams]);
    end;

  cdsDataFROM_TEAM_NAME.Assign(cdsData_FROM_TEAM_NAME);
  cdsDataTO_TEAM_NAME.Assign(cdsData_TO_TEAM_NAME);

  if (OperationMovementTypeCode = omtSpecialControl) then
    begin
      cdsDataTO_EMPLOYEE_CODE.Assign(cdsDataFROM_EMPLOYEE_CODE);
      cdsDataTO_TEAM_CODE.Assign(cdsDataFROM_TEAM_CODE);
    end;
end;

procedure TfmOperationMovement.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  OriginalModalResult: Integer;
begin
  OriginalModalResult:= ModalResult;

  inherited;

  if (OriginalModalResult = mrOK) and chbPrint.Checked then
    actPrint.Execute;
end;

procedure TfmOperationMovement.cdsDataTO_EMPLOYEE_CODEChange(
  Sender: TField);
begin
  inherited;
  if not cdsDataTO_EMPLOYEE_CODE.IsNull then
    cdsDataTO_TEAM_CODE.Clear;
end;

procedure TfmOperationMovement.cdsDataTO_TEAM_CODEChange(Sender: TField);
begin
  inherited;
  if not cdsDataTO_TEAM_CODE.IsNull then
    cdsDataTO_EMPLOYEE_CODE.Clear;
end;

procedure TfmOperationMovement.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FStartStornoEmployeeCode:= cdsDataSTORNO_EMPLOYEE_CODE.AsInteger;
end;

procedure TfmOperationMovement.actPrintExecute(Sender: TObject);
begin
//  inherited;
  if (FStartStornoEmployeeCode > 0) or
     cdsDataSTORNO_EMPLOYEE_CODE.IsNull then
    case MessageDlgEx(SMatrixPrint, mtConfirmation, mbYesNoCancel, 0) of
      mrYes:
        begin
          if (OperationMovementTypeCode in [omtWorkWaste, omtOrganizationWaste]) then
            smrToWaste.Print(True)
          else if (OperationMovementTypeCode = omtSpecialControl) then
            smrSpecControl.Print(True)
          else if (OperationMovementTypeCode = omtWorkNextOperation) then
            smrToNextOperation.Print(True)
          else
            smrToOperation.Print(True);
        end;
      mrNo:
        begin
          if (OperationMovementTypeCode in [omtWorkWaste, omtOrganizationWaste]) then
            TrptOperationMovementToWaste.PrintReport(cdsData, cdsHeader)
          else if (OperationMovementTypeCode = omtSpecialControl) then
            TrptOperationMovementToSpecControl.PrintReport(cdsData, cdsHeader)
          else if (OperationMovementTypeCode = omtWorkNextOperation) then
            TrptOperationMovementToNextOperation.PrintReport(cdsData, cdsHeader)
          else
            TrptOperationMovementToOperation.PrintReport(cdsData, cdsHeader);
        end;
    end;
end;

procedure TfmOperationMovement.cdsHeaderCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsHeader_PRINT_SALE_IDENTIFIER.AsVariant:=
    cdsHeaderPRODUCTION_ORDER_IDENTIFIER.AsVariant;
end;

procedure TfmOperationMovement.smrHeaderGetFieldValues(Sender: TObject;
  FieldValues: TReportFieldValues);
begin
  inherited;

  if(not cdsHeaderTO_MLMS_OBJECT_CODE.IsNull) and
    ( (cdsHeaderFROM_MLMS_OBJECT_BRANCH_CODE.AsInteger <> cdsHeaderTO_MLMS_OBJECT_BRANCH_CODE.AsInteger) or
      (cdsHeaderFROM_MLMS_OBJECT_CODE.AsInteger <> cdsHeaderTO_MLMS_OBJECT_CODE.AsInteger) ) then
    FieldValues.Values['__MOVEMENT_LEVEL_NAME']:= SStageLevel
  else
    FieldValues.Values['__MOVEMENT_LEVEL_NAME']:= SOperationLevel;

  if not cdsDataSTORNO_EMPLOYEE_CODE.IsNull then
    FieldValues.Values['__MOVEMENT_LEVEL_NAME']:=
      SStorno + '   ' + FieldValues.Values['__MOVEMENT_LEVEL_NAME'];

  FieldValues.Values['__SALE_IDENTIFIER']:=
    cdsHeader_PRINT_SALE_IDENTIFIER.AsString + '/' +
    cdsHeaderSALE_PRIORITY_NO.AsString + '/' + cdsHeaderSALE_WORK_PRIORITY_NO.AsString; 
end;

procedure TfmOperationMovement.smrToOperationGetFieldValues(
  Sender: TObject; FieldValues: TReportFieldValues);
begin
  inherited;

  FieldValues.Values['__FROM_MLL_NO_AS_TEXT_AND_FORK']:=
    cdsHeaderFROM_MLL_NO_AS_TEXT.AsString + '/' +
    cdsHeaderFROM_MLL_FORK_NO.AsString;

  FieldValues.Values['__TO_MLL_NO_AS_TEXT_AND_FORK']:=
    cdsHeaderTO_MLL_NO_AS_TEXT.AsString + '/' +
    cdsHeaderTO_MLL_FORK_NO.AsString;

  FieldValues.Values['__FROM_PROFESSION_NAME']:=
    LeftStr(
      cdsHeaderFROM_PROFESSION_NAME.AsString +
       StringOfChar('-', MaxProfessionNamePrintLength),
      MaxProfessionNamePrintLength
    );

  FieldValues.Values['__TO_PROFESSION_NAME']:=
    LeftStr(
      cdsHeaderTO_PROFESSION_NAME.AsString +
       StringOfChar('-', MaxProfessionNamePrintLength),
      MaxProfessionNamePrintLength
    );
end;

procedure TfmOperationMovement.smrToWasteGetFieldValues(Sender: TObject;
  FieldValues: TReportFieldValues);
begin
  inherited;

  FieldValues.Values['__FROM_MLL_NO_AS_TEXT_AND_FORK']:=
    cdsHeaderFROM_MLL_NO_AS_TEXT.AsString + '/' +
    cdsHeaderFROM_MLL_FORK_NO.AsString;

  FieldValues.Values['__FROM_PROFESSION_NAME']:=
    LeftStr(
      cdsHeaderFROM_PROFESSION_NAME.AsString +
       StringOfChar('-', MaxProfessionNamePrintLength),
      MaxProfessionNamePrintLength
    );
end;

procedure TfmOperationMovement.smrFooterGetFieldValues(Sender: TObject;
  FieldValues: TReportFieldValues);
begin
  inherited;

  if cdsHeaderFROM_PRODUCT_CODE.IsNull then
    FieldValues.Values['__NSCH']:= ''
  else
    FieldValues.Values['__NSCH']:= SNsch;

  FieldValues.Values['COMPANY_SHORT_NAME']:= LoginContext.CompanyShortName;
  FieldValues.Values['AppName']:= SAppName;
end;

function TfmOperationMovement.IsStageMovement: Boolean;
begin
  Result:=
    cdsHeader.Active and
    ( (cdsHeaderFROM_MLMS_OBJECT_BRANCH_CODE.AsInteger <> cdsHeaderTO_MLMS_OBJECT_BRANCH_CODE.AsInteger) or
      (cdsHeaderFROM_MLMS_OBJECT_CODE.AsInteger <> cdsHeaderTO_MLMS_OBJECT_CODE.AsInteger) );
end;

function TfmOperationMovement.GetRecordReadOnly: Boolean;
begin
  Result:=
    (not cdsDataSTORNO_EMPLOYEE_CODE.IsNull) or
    (not cdsDataSTORE_DEAL_OBJECT_CODE.IsNull) or
    ( (EditMode = emEdit) and
      FOwnOperationMovement and
      ( ( (not cdsDataFROM_EMPLOYEE_CODE.IsNull) and
          (cdsDataFROM_EMPLOYEE_CODE.AsInteger <> LoginContext.UserCode) ) or
        ( (not cdsDataFROM_TEAM_CODE.IsNull) and
          (not cdsFromTeams.Locate('TEAM_CODE', cdsDataFROM_TEAM_CODE.AsInteger, [])) ) ) );
end;

procedure TfmOperationMovement.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frToDept) or
     (AFrame = frMovementDate) or
     (AFrame = frWasteDocDate) or
     (AFrame = frFromEmployee) or
     (AFrame = frToEmployee) or
     (AFrame = frToWasteEmployee) or
     (AFrame = frQAEmployee) then
    begin
      AFrame.ReadOnly:=
        (not cdsData.Active) or
        (EditMode = emReadOnly) or
        (FStartStornoEmployeeCode > 0) or
        ( (EditMode = emEdit) and
          (cdsData.State = dsBrowse) ) or
        (not cdsDataSTORE_DEAL_OBJECT_CODE.IsNull) or
        (not FCanModifyData);

      Exit;
    end;

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmOperationMovement.cdsHeaderMODEL_OPERATIONS_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  ModelOperationsStatusFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOperationMovement.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsData_CURRENT_DATE_TIME_AS_STRING.AsString:=
    DateToStr(ContextDate) + ' ' + TimeToStr(ContextTime);
  cdsData_PRINT_TO_MLMSO_IDENTIFIER.AsString:=
    cdsData_TO_MLMSO_IDENTIFIER.AsString +
    IfThen(cdsDataTO_DEPT_ZONE_NO.IsNull, '', Format(' (%d)', [cdsDataTO_DEPT_ZONE_NO.AsInteger]))
end;

procedure TfmOperationMovement.cdsFromTeamsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    cdsFromTeamsHAS_THE_PROFESSION.AsBoolean and
    cdsFromTeamsHAS_THE_OCC_WORK_DEPT.AsBoolean and
    ((not FOwnOperationMovement) or cdsFromTeamsHAS_THE_EMPLOYEE.AsBoolean);
end;

procedure TfmOperationMovement.cdsFromTeamsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsFromTeams.Params.ParamByName('PROFESSION_CODE').AsInteger:=
    IfThen((OperationMovementTypeCode = omtSpecialControl),
           LoginContext.SpecialControlProfessionCode,
           cdsHeaderFROM_PROFESSION_CODE.AsInteger);
  cdsFromTeams.Params.ParamByName('EMPLOYEE_CODE').AsInteger:=
    LoginContext.UserCode;
  cdsFromTeams.Params.ParamByName('THE_DATE').Value:=
    cdsDataOM_DATE.AsVariant;
  cdsFromTeams.Params.ParamByName('REQUIRED_OCC_WORK_DEPT_CODE').Value:=
    cdsHeaderFROM_MLMSO_DEPT_CODE.AsVariant;
end;

procedure TfmOperationMovement.cdsDataOM_DATEChange(Sender: TField);
var
  TeamCode: Variant;
begin
  inherited;

  TeamCode:= cdsDataFROM_TEAM_CODE.AsVariant;

  cdsFromTeams.Close;
  cdsFromTeams.Open;

  if (cdsData.State in dsEditModes) and
     (not VarIsNull(TeamCode)) and
     (not cdsFromTeams.Locate('TEAM_CODE', TeamCode, [])) then
    cdsDataFROM_TEAM_CODE.Clear;
end;

procedure TfmOperationMovement.cdsHeaderFROM_MLMS_OPERATION_IDENTIFIERGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  OperationIdentifierGetText(Sender, Text, DisplayText);
end;

procedure TfmOperationMovement.cdsHeaderFROM_NOTESGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  OperationNotesGetText(Sender, Text, cdsHeaderFROM_OPERATION_TYPE_CODE.AsInteger);
end;

procedure TfmOperationMovement.cdsHeaderTO_NOTESGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  OperationNotesGetText(Sender, Text, cdsHeaderTO_OPERATION_TYPE_CODE.AsInteger);
end;

class function TfmOperationMovement.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmOperationMovement.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmOperationMovement.btnFromStageDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TControl), dotRealStage,
    cdsHeaderFROM_MLMS_DOC_BRANCH_CODE, cdsHeaderFROM_MLMS_DOC_CODE);
end;

procedure TfmOperationMovement.btnToStageDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TControl), dotRealStage,
    cdsHeaderTO_MLMS_DOC_BRANCH_CODE, cdsHeaderTO_MLMS_DOC_CODE);
end;

procedure TfmOperationMovement.btnFromOperationDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TControl), dotRealOperation,
    cdsHeaderFROM_MLMSO_DOC_BRANCH_CODE,
    cdsHeaderFROM_MLMSO_DOC_CODE,
    cdsHeaderFROM_MLMS_OPERATION_VARIANT_NO.AsInteger);
end;

procedure TfmOperationMovement.btnToOperationDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TControl), dotRealOperation,
    cdsData_TO_MLMSO_DOC_BRANCH_CODE,
    cdsData_TO_MLMSO_DOC_CODE,
    cdsData_TO_MLMS_OPERATION_VARIANT_NO.AsInteger);
end;

procedure TfmOperationMovement.btnMovementDocsClick(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if (not cdsData.Active) or
     (EditMode = emReadOnly) or
     (FStartStornoEmployeeCode > 0) or
     ( (EditMode = emEdit) and
      (cdsData.State = dsBrowse) ) or
     (not cdsDataSTORE_DEAL_OBJECT_CODE.IsNull) then
    em:= emReadOnly
  else
    em:= EditMode;

  dmDocClient.DSOpenDoc(em, (Sender as TControl), dotOperationMovement, cdsData);
end;

procedure TfmOperationMovement.dmDocClientOnDataChanged(Sender: TObject);
var
  DocItemCount: Integer;
  ActiveDocItemCount: Integer;
begin
  if dmDocClient.DSIsCurrent(cdsData) then
    begin
      DocItemCount:= dmDocClient.DSDocItemCount(cdsData, False);
      ActiveDocItemCount:= dmDocClient.DSDocItemCount(cdsData, True);
      FUnapprovedDocItemCount:=
        ActiveDocItemCount - dmDocClient.DSApprovedDocItemCount(cdsData, True);

      CheckEditMode(cdsData);
      cdsDataHAS_DOC_ITEMS.AsBoolean:= (DocItemCount > 0);
    end;
end;

function TfmOperationMovement.CanModifyStornedData: Boolean;
begin
  Result:=
    ( cdsDataTO_DEPT_CODE.IsNull and
      ( (cdsDataFROM_EMPLOYEE_CODE.AsInteger = LoginContext.UserCode) or
        LoginContext.HasUserActivity(uaStornoForeignOperationMovement)
      )
    ) or
    ( (not cdsDataTO_DEPT_CODE.IsNull) and
      LoginContext.HasUserActivity(uaStornoWasteOperationMovement)
    );
end;

end.



