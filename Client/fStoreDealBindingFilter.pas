unit fStoreDealBindingFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, AbmesFields, DBClient,
  AbmesClientDataSet, fPartnerFieldEditFrame, fPartnerFieldEditFrameBald,
  fDateFieldEditFrame, fBaseFrame, fDBFrame, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDeptFieldEditFrameBald, StdCtrls, JvExStdCtrls,
  JvDBCombobox, AbmesDBCheckBox, Mask, DBCtrls, JvExControls, JvComponent,
  JvDBLookup, ExtCtrls, fProductFieldEditFrame, fProductFieldEditFrameBald,
  fTreeOnlyNodeFieldEditFrame, fFinClassFieldEditFrame,
  fFinClassFieldEditFrameBald, JvCombobox, System.Actions;

type
  TfrStoreDealBindingFilter = class(TFieldEditFrame)
    gbBndProcess: TGroupBox;
    pnlBndProcess: TPanel;
    pnlMaterialListLine: TPanel;
    lblSaleBranchOnMaterialListLinePanel: TLabel;
    lblSaleNoOnMaterialListLinePanel: TLabel;
    lblNoAsTextOnMaterialListLinePanel: TLabel;
    lblForkNoOnMaterialListLinePanel: TLabel;
    lblSaleTypeOnMaterialListLinePanel: TLabel;
    lblProductionOrderTypeOnMaterialListLinePanel: TLabel;
    lblIsWasteCompensatorStatusOnMaterialListLinePanel: TLabel;
    cbSaleBranchOnMaterialListLinePanel: TJvDBLookupCombo;
    edtSaleNoOnMaterialListLinePanel: TDBEdit;
    edtNoAsTextOnMaterialListLinePanel: TDBEdit;
    edtForkNoOnMaterialListLinePanel: TDBEdit;
    cbSaleTypeOnMaterialListLinePanel: TJvDBLookupCombo;
    cbProductionOrderTypeOnMaterialListLinePanel: TJvDBLookupCombo;
    cbIsWasteCompensatorStatusOnMaterialListLinePanel: TJvDBComboBox;
    pnlSaleShipment: TPanel;
    lblSaleBranchOnSaleShipmentPanel: TLabel;
    lblSaleNoOnSaleShipmentPanel: TLabel;
    lblSaleShipmentNoOnSaleShipmentPanel: TLabel;
    edtSaleNoOnSaleShipmentPanel: TDBEdit;
    cbSaleBranchOnSaleShipmentPanel: TJvDBLookupCombo;
    edtSaleShipmentNoOnSaleShipmentPanel: TDBEdit;
    pnlProductionOrder: TPanel;
    lblSaleBranchOnProductionOrderPanel: TLabel;
    lblSaleNoOnProductionOrderPanel: TLabel;
    lblSaleTypeOnProductionOrderPanel: TLabel;
    lblProductionOrderTypeOnProductionOrderPanel: TLabel;
    lblIsWasteCompensatorStatusOnProductionOrderPanel: TLabel;
    edtSaleNoOnProductionOrderPanel: TDBEdit;
    cbSaleBranchOnProductionOrderPanel: TJvDBLookupCombo;
    cbSaleTypeOnProductionOrderPanel: TJvDBLookupCombo;
    cbProductionOrderTypeOnProductionOrderPanel: TJvDBLookupCombo;
    cbIsWasteCompensatorStatusOnProductionOrderPanel: TJvDBComboBox;
    pnlOutStoreDeal: TPanel;
    lblOtherStoreOnOutStoreDealPanel: TLabel;
    lblOtherStoreDealNoOnOutStoreDealPanel: TLabel;
    edtOtherStoreDealNoOnOutStoreDealPanel: TDBEdit;
    frOtherStoreOnOutStoreDealPanel: TfrDeptFieldEditFrameBald;
    pnlDelivery: TPanel;
    lblDCDBranchOnDeliveryPanel: TLabel;
    lblDCDNoOnDeliveryPanel: TLabel;
    lblDeliveryNoOnDeliveryPanel: TLabel;
    lblInvoiceDateOnDeliveryPanel: TLabel;
    lblInvoiceNoOnDeliveryPanel: TLabel;
    lblVendorOnDeliveryPanel: TLabel;
    cbDCDBranchOnDeliveryPanel: TJvDBLookupCombo;
    edtDCDNoOnDeliveryPanel: TDBEdit;
    edtDeliveryNoOnDeliveryPanel: TDBEdit;
    edtInvoiceNoOnDeliveryPanel: TDBEdit;
    edtInvoiceAbbrevOnDeliveryPanel: TDBEdit;
    frInvoiceDateOnDeliveryPanel: TfrDateFieldEditFrame;
    frVendorOnDeliveryPanel: TfrPartnerFieldEditFrameBald;
    pnlBOIO: TPanel;
    lblBudgetOrderBranchOnBOIOPanel: TLabel;
    lblBudgetOrderNoOnBOIOPanel: TLabel;
    lblBudgetOrderItemNoOnBOIOPanel: TLabel;
    lblBOIOrderNoOnBOIOPanel: TLabel;
    cbBudgetOrderBranchOnBOIOPanel: TJvDBLookupCombo;
    edtBudgetOrderNoOnBOIOPanel: TDBEdit;
    edtBudgetOrderItemNoOnBOIOPanel: TDBEdit;
    edtBOIOrderNoOnBOIOPanel: TDBEdit;
    pnlMLMSOperation: TPanel;
    lblSaleBranchOnMLMSOperationPanel: TLabel;
    lblSaleNoOnMLMSOperationPanel: TLabel;
    lblNoAsTextOnMLMSOperationPanel: TLabel;
    lblForkNoOnMLMSOperationPanel: TLabel;
    lblSaleTypeOnMLMSOperationPanel: TLabel;
    lblProductionOrderTypeOnMLMSOperationPanel: TLabel;
    lblModelStageNoOnMLMSOperationPanel: TLabel;
    lblMLMSOperationNoOnMLMSOperationPanel: TLabel;
    lblMLMSOperationVariantNoOnMOMSOperationPanel: TLabel;
    cbSaleBranchOnMLMSOperationPanel: TJvDBLookupCombo;
    edtSaleNoOnMLMSOperationPanel: TDBEdit;
    edtNoAsTextOnMLMSOperationPanel: TDBEdit;
    edtForkNoOnMLMSOperationPanel: TDBEdit;
    cbSaleTypeOnMLMSOperationPanel: TJvDBLookupCombo;
    cbProductionOrderTypeOnMLMSOperationPanel: TJvDBLookupCombo;
    edtModelStageNoOnMLMSOperationPanel: TDBEdit;
    edtMLMSOperationNoOnMLMSOperationPanel: TDBEdit;
    edtMLMSOperationVariantNoOnMOMSOperationPanel: TDBEdit;
    pnlLiteDelivery: TPanel;
    lblInvoiceDateOnLiteDeliveryPanel: TLabel;
    lblInvoiceNoOnLiteDeliveryPanel: TLabel;
    lblVendorOnLiteDeliveryPanel: TLabel;
    edtInvoiceNoOnLiteDeliveryPanel: TDBEdit;
    edtInvoiceAbbrevOnLiteDeliveryPanel: TDBEdit;
    frInvoiceDateOnLiteDeliveryPanel: TfrDateFieldEditFrame;
    frVendorOnLiteDeliveryPanel: TfrPartnerFieldEditFrameBald;
    pnlDeficitCoverDecision: TPanel;
    cdsProcesses: TAbmesClientDataSet;
    dsProcesses: TDataSource;
    pnlBndProcessCombo: TPanel;
    cbBndProcess: TJvDBLookupCombo;
    cdsProcessesPROCESS_CODE: TAbmesFloatField;
    cdsProcessesPROCESS_NO: TAbmesFloatField;
    cdsProcessesPROCESS_ABBREV: TAbmesWideStringField;
    cdsProcessesPROCESS_NAME: TAbmesWideStringField;
    cdsProcessesIS_INBOUND_PROCESS: TAbmesFloatField;
    cdsProcessesIS_OUTBOUND_PROCESS: TAbmesFloatField;
    pnlTopSpace: TPanel;
    cdsBinding: TAbmesClientDataSet;
    dsBinding: TDataSource;
    cdsBindingBND_PROCESS_CODE: TAbmesFloatField;
    cdsBindingSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsBindingSALE_BRANCH_CODE: TAbmesFloatField;
    cdsBindingSALE_NO: TAbmesFloatField;
    cdsBindingSALE_TYPE_CODE: TAbmesFloatField;
    cdsBindingSALE_SHIPMENT_NO: TAbmesFloatField;
    cdsBindingCLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsBindingPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsBindingIS_WASTE_COMPENSATOR_STATUS: TAbmesFloatField;
    cdsBindingNO_AS_TEXT: TAbmesWideStringField;
    cdsBindingFORK_NO: TAbmesFloatField;
    cdsBindingIS_WASTE_FORK_STATUS: TAbmesFloatField;
    cdsBindingML_MODEL_STAGE_NO: TAbmesFloatField;
    cdsBindingMLMS_OPERATION_NO: TAbmesFloatField;
    cdsBindingMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsBindingDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsBindingDCD_BRANCH_CODE: TAbmesFloatField;
    cdsBindingDCD_CODE: TAbmesFloatField;
    cdsBindingDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsBindingVENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsBindingINVOICE_NO: TAbmesFloatField;
    cdsBindingINVOICE_ABBREV: TAbmesWideStringField;
    cdsBindingINVOICE_DATE: TAbmesSQLTimeStampField;
    cdsBindingIS_PROFORM_INVOICE_STATUS: TAbmesFloatField;
    cdsBindingOTHER_STORE_DEAL_STORE_CODE: TAbmesFloatField;
    cdsBindingOTHER_STORE_DEAL_NO: TAbmesFloatField;
    cdsBindingBUDGET_ORDER_CLASS_CODE: TAbmesFloatField;
    cdsBindingBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsBindingBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsBindingBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsBindingBOI_ORDER_CODE: TAbmesFloatField;
    cbSaleTypeOnSaleShipmentPanel: TJvDBLookupCombo;
    lblSaleTypeOnSaleShipmentPanel: TLabel;
    cbIsWasteCompensatorStatusOnMLMSOperationPanel: TJvDBComboBox;
    lblIsWasteCompensatorStatusOnMLMSOperationPanel: TLabel;
    lblDCDBranchOnDeficitCoverDecisionPanel: TLabel;
    lblDCDNoOnDeficitCoverDecisionPanel: TLabel;
    cbDCDBranchOnDeficitCoverDecisionPanel: TJvDBLookupCombo;
    edtDCDNoOnDeficitCoverDecisionPanel: TDBEdit;
    cdsProductionOrderTypes: TAbmesClientDataSet;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_NAME: TAbmesWideStringField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_TEXT: TAbmesWideStringField;
    cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_NO: TAbmesFloatField;
    cdsProductionOrderTypesIS_REVERSIBLE: TAbmesFloatField;
    dsProductionOrderTypes: TDataSource;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    dsBranches: TDataSource;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    dsSaleTypes: TDataSource;
    cbSaleDealTypeOnSaleShipmentPanel: TJvDBLookupCombo;
    lblSaleDealTypeOnSaleShipmentPanel: TLabel;
    cbDeliveryDealTypeOnDeficitCoverDecisionPanel: TJvDBLookupCombo;
    lblDeliveryDealTypeOnDeficitCoverDecisionPanel: TLabel;
    cbDeliveryDealTypeOnDeliveryPanel: TJvDBLookupCombo;
    lblDeliveryDealTypeOnDeliveryPanel: TLabel;
    cdsSaleDealTypes: TAbmesClientDataSet;
    cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    dsSaleDealTypes: TDataSource;
    cdsDeliveryTypes: TAbmesClientDataSet;
    cdsDeliveryTypesDELIVERY_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryTypesDELIVERY_TYPE_ABBREV: TAbmesWideStringField;
    dsDeliveryTypes: TDataSource;
    cdsDeliveryDealTypes: TAbmesClientDataSet;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    dsDeliveryDealTypes: TDataSource;
    cbDeliveryTypeOnDeliveryPanel: TJvDBLookupCombo;
    lblDeliveryTypeOnDeliveryPanel: TLabel;
    frClientOnSaleShipmentPanel: TfrPartnerFieldEditFrameBald;
    lblClientOnSaleShipmentPanel: TLabel;
    cdsBudgetOrderClasses: TAbmesClientDataSet;
    dsBudgetOrderClasses: TDataSource;
    cdsBudgetOrderClassesBUDGET_ORDER_CLASS_CODE: TAbmesFloatField;
    cdsBudgetOrderClassesBUDGET_ORDER_CLASS_NAME: TAbmesWideStringField;
    lblBudgetOrderClassOnBOIOPanel: TLabel;
    cbBudgetOrderClassOnBOIOPanel: TJvDBLookupCombo;
    cdsBindingDELIVERY_TYPE_CODE: TAbmesFloatField;
    cbIsWasteForkStatusOnMaterialListLinePanel: TJvDBComboBox;
    lblIsWasteForkStatusOnMaterialListLinePanel: TLabel;
    cbIsWasteForkStatusOnMLMSOperationPanel: TJvDBComboBox;
    lblIsWasteForkStatusOnMLMSOperationPanel: TLabel;
    cbIsProformInvoiceStatusOnDeliveryPanel: TJvDBComboBox;
    lblIsProformInvoiceStatusOnDeliveryPanel: TLabel;
    cbIsProformInvoiceStatusOnLiteDeliveryPanel: TJvDBComboBox;
    lblIsProformInvoiceStatusOnLiteDeliveryPanel: TLabel;
    cdsBindingOTHER_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    frOtherStoreDealDateOnOutStoreDealPanel: TfrDateFieldEditFrame;
    lblOtherStoreDealDateOnOutStoreDealPanel: TLabel;
    pnlInStoreDeal: TPanel;
    lblOtherStoreOnInStoreDealPanel: TLabel;
    lblOtherStoreDealNoOnInStoreDealPanel: TLabel;
    lblOtherStoreDealDateOnInStoreDealPanel: TLabel;
    edtOtherStoreDealNoOnInStoreDealPanel: TDBEdit;
    frOtherStoreOnInStoreDealPanel: TfrDeptFieldEditFrameBald;
    frOtherStoreDealDateOnInStoreDealPanel: TfrDateFieldEditFrame;
    cdsBindingFIN_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsBindingFIN_ORDER_NO: TAbmesFloatField;
    cdsBindingFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsBindingFIN_MODEL_LINE_NO: TAbmesFloatField;
    cdsBindingPARTNER_CODE: TAbmesFloatField;
    cdsBindingBASE_DATE: TAbmesSQLTimeStampField;
    cdsBindingDOCUMENT_IDENTIFIER_STATUS: TAbmesFloatField;
    cdsBindingDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    cdsBindingSALE_GROUP_BRANCH_CODE: TAbmesFloatField;
    cdsBindingSALE_GROUP_CODE: TAbmesFloatField;
    pnlFinOrderInternal: TPanel;
    lblFinOrderBranchOnFinOrderInternalPanel: TLabel;
    lblFinOrderNoOnFinOrderInternalPanel: TLabel;
    cbFinOrderBranchOnFinOrderInternalPanel: TJvDBLookupCombo;
    edtFinOrderNoOnFinOrderInternalPanel: TDBEdit;
    cdsFinModelLineTypes: TAbmesClientDataSet;
    dsFinModelLineTypes: TDataSource;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NO: TAbmesFloatField;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NAME: TAbmesWideStringField;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField;
    cbFinModelLineTypeOnFinOrderInternalPanel: TJvDBLookupCombo;
    lblFinModelLineTypeOnFinOrderInternalPanel: TLabel;
    edtFinModelLineNoOnFinOrderInternalPanel: TDBEdit;
    frBaseDateOnFinOrderInternalPanel: TfrDateFieldEditFrame;
    lblBaseDateOnFinOrderInternalPanel: TLabel;
    cbDocumentIdentifierStatusOnFinOrderInternalPanel: TJvDBComboBox;
    lblDocumentIdentifierStatusOnFinOrderInternalPanel: TLabel;
    edtDocumentIdentifierOnFinOrderInternalPanel: TDBEdit;
    lblDocumentIdentifierOnFinOrderInternalPanel: TLabel;
    pnlFinOrderAdmin: TPanel;
    lblFinOrderBranchOnFinOrderAdminPanel: TLabel;
    lblFinOrderNoOnFinOrderAdminPanel: TLabel;
    lblFinModelLineTypeOnFinOrderAdminPanel: TLabel;
    lblBaseDateOnFinOrderAdminPanel: TLabel;
    lblDocumentIdentifierStatusOnFinOrderAdminPanel: TLabel;
    lblDocumentIdentifierOnFinOrderAdminPanel: TLabel;
    cbFinOrderBranchOnFinOrderAdminPanel: TJvDBLookupCombo;
    edtFinOrderNoOnFinOrderAdminPanel: TDBEdit;
    cbFinModelLineTypeOnFinOrderAdminPanel: TJvDBLookupCombo;
    edtFinModelLineNoOnFinOrderAdminPanel: TDBEdit;
    frBaseDateOnFinOrderAdminPanel: TfrDateFieldEditFrame;
    cbDocumentIdentifierStatusOnFinOrderAdminPanel: TJvDBComboBox;
    edtDocumentIdentifierOnFinOrderAdminPanel: TDBEdit;
    frPartnerOnFinOrderAdminPanel: TfrPartnerFieldEditFrameBald;
    lblPartnerOnFinOrderAdminPanel: TLabel;
    pnlFinOrderSaleShipment: TPanel;
    lblFinOrderBranchOnFinOrderSaleShipmentPanel: TLabel;
    lblFinOrderNoOnFinOrderSaleShipmentPanel: TLabel;
    lblFinModelLineTypeOnFinOrderSaleShipmentPanel: TLabel;
    lblBaseDateOnFinOrderSaleShipmentPanel: TLabel;
    lblDocumentIdentifierStatusOnFinOrderSaleShipmentPanel: TLabel;
    lblDocumentIdentifierOnFinOrderSaleShipmentPanel: TLabel;
    lblPartnerOnFinOrderSaleShipmentPanel: TLabel;
    cbFinOrderBranchOnFinOrderSaleShipmentPanel: TJvDBLookupCombo;
    edtFinOrderNoOnFinOrderSaleShipmentPanel: TDBEdit;
    cbFinModelLineTypeOnFinOrderSaleShipmentPanel: TJvDBLookupCombo;
    edtFinModelLineNoOnFinOrderSaleShipmentPanel: TDBEdit;
    frBaseDateOnFinOrderSaleShipmentPanel: TfrDateFieldEditFrame;
    cbDocumentIdentifierStatusOnFinOrderSaleShipmentPanel: TJvDBComboBox;
    edtDocumentIdentifierOnFinOrderSaleShipmentPanel: TDBEdit;
    frPartnerOnFinOrderSaleShipmentPanel: TfrPartnerFieldEditFrameBald;
    pnlFinOrderDelivery: TPanel;
    lblFinOrderBranchOnFinOrderDeliveryPanel: TLabel;
    lblFinOrderNoOnFinOrderDeliveryPanel: TLabel;
    lblFinModelLineTypeOnFinOrderDeliveryPanel: TLabel;
    lblBaseDateOnFinOrderDeliveryPanel: TLabel;
    lblDocumentIdentifierStatusOnFinOrderDeliveryPanel: TLabel;
    lblDocumentIdentifierOnFinOrderDeliveryPanel: TLabel;
    lblPartnerOnFinOrderDeliveryPanel: TLabel;
    cbFinOrderBranchOnFinOrderDeliveryPanel: TJvDBLookupCombo;
    edtFinOrderNoOnFinOrderDeliveryPanel: TDBEdit;
    cbFinModelLineTypeOnFinOrderDeliveryPanel: TJvDBLookupCombo;
    edtFinModelLineNoOnFinOrderDeliveryPanel: TDBEdit;
    frBaseDateOnFinOrderDeliveryPanel: TfrDateFieldEditFrame;
    cbDocumentIdentifierStatusOnFinOrderDeliveryPanel: TJvDBComboBox;
    edtDocumentIdentifierOnFinOrderDeliveryPanel: TDBEdit;
    frPartnerOnFinOrderDeliveryPanel: TfrPartnerFieldEditFrameBald;
    pnlFinOrderBOIO: TPanel;
    lblFinOrderBranchOnFinOrderBOIOPanel: TLabel;
    lblFinOrderNoOnFinOrderBOIOPanel: TLabel;
    lblFinModelLineTypeOnFinOrderBOIOPanel: TLabel;
    lblBaseDateOnFinOrderBOIOPanel: TLabel;
    lblDocumentIdentifierStatusOnFinOrderBOIOPanel: TLabel;
    lblDocumentIdentifierOnFinOrderBOIOPanel: TLabel;
    lblPartnerOnFinOrderBOIOPanel: TLabel;
    cbFinOrderBranchOnFinOrderBOIOPanel: TJvDBLookupCombo;
    edtFinOrderNoOnFinOrderBOIOPanel: TDBEdit;
    cbFinModelLineTypeOnFinOrderBOIOPanel: TJvDBLookupCombo;
    edtFinModelLineNoOnFinOrderBOIOPanel: TDBEdit;
    frBaseDateOnFinOrderBOIOPanel: TfrDateFieldEditFrame;
    cbDocumentIdentifierStatusOnFinOrderBOIOPanel: TJvDBComboBox;
    edtDocumentIdentifierOnFinOrderBOIOPanel: TDBEdit;
    frPartnerOnFinOrderBOIOPanel: TfrPartnerFieldEditFrameBald;
    pnlFinOrderGroupSale: TPanel;
    lblFinOrderBranchOnFinOrderGroupSalePanel: TLabel;
    lblFinOrderNoOnFinOrderGroupSalePanel: TLabel;
    lblFinModelLineTypeOnFinOrderGroupSalePanel: TLabel;
    lblBaseDateOnFinOrderGroupSalePanel: TLabel;
    lblDocumentIdentifierStatusOnFinOrderGroupSalePanel: TLabel;
    lblDocumentIdentifierOnFinOrderGropupSalePanel: TLabel;
    lblPartnerOnFinOrderGroupSalePanel: TLabel;
    cbFinOrderBranchOnFinOrderGroupSalePanel: TJvDBLookupCombo;
    edtFinOrderNoOnFinOrderGroupSalePanel: TDBEdit;
    cbFinModelLineTypeOnFinOrderGroupSalePanel: TJvDBLookupCombo;
    edtFinModelLineNoOnFinOrderGroupSalePanel: TDBEdit;
    frBaseDateOnFinOrderGroupSalePanel: TfrDateFieldEditFrame;
    cbDocumentIdentifierStatusOnFinOrderGroupSalePanel: TJvDBComboBox;
    edtDocumentIdentifierOnFinOrderGropupSalePanel: TDBEdit;
    frPartnerOnFinOrderGroupSalePanel: TfrPartnerFieldEditFrameBald;
    gbFinOrderBindingOnFinOrderSaleShipmentPanel: TGroupBox;
    cbSaleDealTypeOnFinOrderSaleShipmentPanel: TJvDBLookupCombo;
    lblSaleDealTypeOnFinOrderSaleShipmentPanel: TLabel;
    cbSaleTypeOnFinOrderSaleShipmentPanel: TJvDBLookupCombo;
    edtSaleShipmentNoOnFinOrderSaleShipmentPanel: TDBEdit;
    edtSaleNoOnFinOrderSaleShipmentPanel: TDBEdit;
    cbSaleBranchOnFinOrderSaleShipmentPanel: TJvDBLookupCombo;
    lblSaleTypeOnFinOrderSaleShipmentPanel: TLabel;
    lblSaleShipmentNoOnFinOrderSaleShipmentPanel: TLabel;
    lblSaleNoOnFinOrderSaleShipmentPanel: TLabel;
    lblSaleBranchOnFinOrderSaleShipmentPanel: TLabel;
    gbFinOrderBindingOnFinOrderDeliveryPanel: TGroupBox;
    cbDeliveryDealTypeOnFinOrderDeliveryPanel: TJvDBLookupCombo;
    lblDeliveryDealTypeOnFinOrderDeliveryPanel: TLabel;
    cbDeliveryTypeOnFinOrderDeliveryPanel: TJvDBLookupCombo;
    edtDeliveryNoOnFinOrderDeliveryPanel: TDBEdit;
    edtDCDNoOnFinOrderDeliveryPanel: TDBEdit;
    cbDCDBranchOnFinOrderDeliveryPanel: TJvDBLookupCombo;
    lblDeliveryTypeOnFinOrderDeliveryPanel: TLabel;
    lblDeliveryNoOnFinOrderDeliveryPanel: TLabel;
    lblDCDNoOnFinOrderDeliveryPanel: TLabel;
    lblDCDBranchOnFinOrderDeliveryPanel: TLabel;
    gbFinOrderBindingOnFinOrderBOIOPanel: TGroupBox;
    cbBudgetOrderClassOnFinOrderBOIOPanel: TJvDBLookupCombo;
    lblBudgetOrderClassOnFinOrderBOIOPanel: TLabel;
    edtBOIOrderNoOnFinOrderBOIOPanel: TDBEdit;
    edtBudgetOrderItemNoOnFinOrderBOIOPanel: TDBEdit;
    edtBudgetOrderNoOnFinOrderBOIOPanel: TDBEdit;
    cbBudgetOrderBranchOnFinOrderBOIOPanel: TJvDBLookupCombo;
    lblBOIOrderNoOnFinOrderBOIOPanel: TLabel;
    lblBudgetOrderItemNoOnFinOrderBOIOPanel: TLabel;
    lblBudgetOrderNoOnFinOrderBOIOPanel: TLabel;
    lblBudgetOrderBranchOnFinOrderBOIOPanel: TLabel;
    gbFinOrderBindingOnFinOrderGroupSalePanel: TGroupBox;
    lblSaleGroupCodeOnFinOrderGroupSalePanel: TLabel;
    lblSaleGroupBranchOnFinOrderGroupSalePanel: TLabel;
    edtSaleGroupCodeOnFinOrderGroupSalePanel: TDBEdit;
    cbSaleGroupBranchOnFinOrderGroupSalePanel: TJvDBLookupCombo;
    cdsBindingBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsBindingBUDGET_ORDER_PRODUCT_CODE: TAbmesFloatField;
    lblBudgetOrderItemTypeOnBOIOPanel: TLabel;
    frBudgetOrderProductOnBOIOPanel: TfrProductFieldEditFrameBald;
    lblBudgetOrderProductOnBOIOPanel: TLabel;
    frProjectProductOnMaterialListLinePanel: TfrProductFieldEditFrameBald;
    frProjectProductOnProductionOrderPanel: TfrProductFieldEditFrameBald;
    lblProjectProductOnProductionOrderPanel: TLabel;
    lblProjectProductOnMaterialListLinePanel: TLabel;
    cdsBindingPROJECT_PRODUCT_CODE: TAbmesFloatField;
    cdsOrgTaskProposalStates: TAbmesClientDataSet;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NO: TAbmesFloatField;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField;
    dsOrgTaskProposalStates: TDataSource;
    cbOrgTaskProposalStateOnBOIOPanel: TJvDBLookupCombo;
    lblOrgTaskProposalStateOnBOIOPanel: TLabel;
    cdsBindingORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField;
    edtBudgetOrderItemTypeOnBOIOPanel: TEdit;
    pnlSaleRequestLine: TPanel;
    lblRequestBranchOnSaleRequestLinePanel: TLabel;
    lblRequestNoOnSaleRequestLinePanel: TLabel;
    lblSaleDealTypeOnSaleRequestLinePanel: TLabel;
    cbRequestBranchOnSaleRequestLinePanel: TJvDBLookupCombo;
    edtRequestNoOnSaleRequestLinePanel: TDBEdit;
    cbSaleDealTypeOnSaleRequestLinePanel: TJvDBLookupCombo;
    edtRequestLineNoOnSaleRequestLinePanel: TDBEdit;
    lblRequestLineNoOnSaleRequestLinePanel: TLabel;
    cdsBindingREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsBindingREQUEST_NO: TAbmesFloatField;
    cdsBindingREQUEST_LINE_NO: TAbmesFloatField;
    frFinClassOnFinOrderInternalPanel: TfrFinClassFieldEditFrameBald;
    frFinClassOnFinOrderAdminPanel: TfrFinClassFieldEditFrameBald;
    lblFinClassOnFinOrderInternalPanel: TLabel;
    lblFinClassOnFinOrderAdminPanel: TLabel;
    cdsBindingFIN_CLASS_CODE: TAbmesFloatField;
    procedure actFrameUpdate(Sender: TObject);
    procedure cdsBindingBeforePost(DataSet: TDataSet);
    procedure cdsProcessesBeforeOpen(DataSet: TDataSet);
    procedure cdsBindingAfterEdit(DataSet: TDataSet);
    procedure cdsBindingAfterInsert(DataSet: TDataSet);
    procedure cdsBindingNO_AS_TEXTValidate(Sender: TField);
  private
    FChangingData: Boolean;
    FIsInboundProcess: Boolean;
    FIsOutboundProcess: Boolean;
    FIsRealStoreDealProcess: Boolean;
    FIsPlanStoreDealProcess: Boolean;
    FIsProjStoreDealProcess: Boolean;
    FIsFinancialProcess: Boolean;
    procedure InitializeAllDBComboBoxes;
  protected
    procedure DataChange(Sender: TObject); override;
    procedure UpdateData(Sender: TObject); override;
  public
    procedure Initialize; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDataSet(ADataSet: TDataSet); override;

    property IsInboundProcess: Boolean read FIsInboundProcess write FIsInboundProcess;
    property IsOutboundProcess: Boolean read FIsOutboundProcess write FIsOutboundProcess;

    property IsRealStoreDealProcess: Boolean read FIsRealStoreDealProcess write FIsRealStoreDealProcess;
    property IsPlanStoreDealProcess: Boolean read FIsPlanStoreDealProcess write FIsPlanStoreDealProcess;
    property IsProjStoreDealProcess: Boolean read FIsProjStoreDealProcess write FIsProjStoreDealProcess;

    property IsFinancialProcess: Boolean read FIsFinancialProcess write FIsFinancialProcess;
  end;

implementation

uses
  dMain,
  uProcesses,
  uClientUtils,
  uCompanyKinds,
  uUtils,
  uScalingUtils;

{$R *.dfm}

resourcestring
  SBudgetOrderItemTypeExpenseAbbrev = 'Р';

{ TfrStoreDealBindingFilter }

procedure TfrStoreDealBindingFilter.DataChange(Sender: TObject);
var
  cdsParams: TAbmesClientDataSet;
  s: string;
begin
  inherited;
  Assert(FieldCount > 0);
  Assert(not FChangingData);

  FChangingData:= True;
  try
    cdsBinding.Close;

    if Assigned(Fields[0]) and Assigned(Fields[0].DataSet) and Fields[0].DataSet.Active then
      begin
        cdsBinding.CreateDataSet;
        try
          s:= Fields[0].AsString;
          if (s <> '') then
            begin
              cdsParams:= TAbmesClientDataSet.Create(Self);
              try
                cdsParams.XMLData:= s;
                try
                  if not cdsParams.IsEmpty then
                    begin
                      cdsBinding.Edit;
                      try
                        cdsBinding.AssignFields(cdsParams);
                        cdsBinding.Post;
                      except
                        cdsBinding.Cancel;
                        raise;
                      end;  { try }
                    end;  { if }
                finally
                  cdsParams.Close;
                end;  { try }
              finally
                FreeAndNil(cdsParams);
              end;  { try }
            end;  { if }
        except
          cdsBinding.Close;
          raise;
        end;  { try }
      end;  { if }
  finally
    FChangingData:= False;
  end;  { try }
end;

procedure TfrStoreDealBindingFilter.UpdateData(Sender: TObject);
begin
  inherited;
  Assert(FieldCount > 0);

  cdsBinding.CheckBrowseMode;

  if Assigned(Fields[0]) then
    Fields[0].AsString:= cdsBinding.XMLData;

  if (FieldCount > 1) and Assigned(Fields[1]) then
    Fields[1].Assign(cdsBindingBND_PROCESS_CODE);
end;

procedure TfrStoreDealBindingFilter.SetDataSet(ADataSet: TDataSet);
begin
  frOtherStoreOnInStoreDealPanel.SetDataSet(cdsBinding);
  frOtherStoreOnInStoreDealPanel.FieldNames:= 'OTHER_STORE_DEAL_STORE_CODE';
  frOtherStoreOnInStoreDealPanel.ShowAllWhenEmpty:= True;
  frOtherStoreOnInStoreDealPanel.DocButtonVisible:= False;

  frOtherStoreDealDateOnInStoreDealPanel.SetDataSet(cdsBinding);
  frOtherStoreDealDateOnInStoreDealPanel.FieldNames:= 'OTHER_STORE_DEAL_DATE';

  frOtherStoreOnOutStoreDealPanel.SetDataSet(cdsBinding);
  frOtherStoreOnOutStoreDealPanel.FieldNames:= 'OTHER_STORE_DEAL_STORE_CODE';
  frOtherStoreOnOutStoreDealPanel.ShowAllWhenEmpty:= True;
  frOtherStoreOnOutStoreDealPanel.DocButtonVisible:= False;

  frOtherStoreDealDateOnOutStoreDealPanel.SetDataSet(cdsBinding);
  frOtherStoreDealDateOnOutStoreDealPanel.FieldNames:= 'OTHER_STORE_DEAL_DATE';

  frInvoiceDateOnDeliveryPanel.SetDataSet(cdsBinding);
  frInvoiceDateOnDeliveryPanel.FieldNames:= 'INVOICE_DATE';

  frVendorOnDeliveryPanel.SetDataSet(cdsBinding);
  frVendorOnDeliveryPanel.FieldNames:= 'VENDOR_COMPANY_CODE';
  frVendorOnDeliveryPanel.ShowAllWhenEmpty:= True;
  frVendorOnDeliveryPanel.FilterCompanyKind:= ckVendor;
  frVendorOnDeliveryPanel.SecondaryFilterCompanyKind:= ckClient;
  frVendorOnDeliveryPanel.DocButtonVisible:= False;

  frInvoiceDateOnLiteDeliveryPanel.SetDataSet(cdsBinding);
  frInvoiceDateOnLiteDeliveryPanel.FieldNames:= 'INVOICE_DATE';

  frVendorOnLiteDeliveryPanel.SetDataSet(cdsBinding);
  frVendorOnLiteDeliveryPanel.FieldNames:= 'VENDOR_COMPANY_CODE';
  frVendorOnLiteDeliveryPanel.ShowAllWhenEmpty:= True;
  frVendorOnLiteDeliveryPanel.FilterCompanyKind:= ckVendor;
  frVendorOnLiteDeliveryPanel.SecondaryFilterCompanyKind:= ckClient;
  frVendorOnLiteDeliveryPanel.DocButtonVisible:= False;

  frClientOnSaleShipmentPanel.SetDataSet(cdsBinding);
  frClientOnSaleShipmentPanel.FieldNames:= 'CLIENT_COMPANY_CODE';
  frClientOnSaleShipmentPanel.ShowAllWhenEmpty:= True;
  frClientOnSaleShipmentPanel.FilterCompanyKind:= ckClient;
  frClientOnSaleShipmentPanel.SecondaryFilterCompanyKind:= ckVendor;
  frClientOnSaleShipmentPanel.DocButtonVisible:= False;

  frBaseDateOnFinOrderInternalPanel.SetDataSet(cdsBinding);
  frBaseDateOnFinOrderInternalPanel.FieldNames:= 'BASE_DATE';

  frPartnerOnFinOrderAdminPanel.SetDataSet(cdsBinding);
  frPartnerOnFinOrderAdminPanel.FieldNames:= 'PARTNER_CODE';
  frPartnerOnFinOrderAdminPanel.ShowAllWhenEmpty:= True;

  frBaseDateOnFinOrderAdminPanel.SetDataSet(cdsBinding);
  frBaseDateOnFinOrderAdminPanel.FieldNames:= 'BASE_DATE';

  frPartnerOnFinOrderSaleShipmentPanel.SetDataSet(cdsBinding);
  frPartnerOnFinOrderSaleShipmentPanel.FieldNames:= 'PARTNER_CODE';
  frPartnerOnFinOrderSaleShipmentPanel.ShowAllWhenEmpty:= True;
  frPartnerOnFinOrderSaleShipmentPanel.DocButtonVisible:= False;

  frBaseDateOnFinOrderSaleShipmentPanel.SetDataSet(cdsBinding);
  frBaseDateOnFinOrderSaleShipmentPanel.FieldNames:= 'BASE_DATE';

  frPartnerOnFinOrderDeliveryPanel.SetDataSet(cdsBinding);
  frPartnerOnFinOrderDeliveryPanel.FieldNames:= 'PARTNER_CODE';
  frPartnerOnFinOrderDeliveryPanel.ShowAllWhenEmpty:= True;
  frPartnerOnFinOrderDeliveryPanel.DocButtonVisible:= False;

  frBaseDateOnFinOrderDeliveryPanel.SetDataSet(cdsBinding);
  frBaseDateOnFinOrderDeliveryPanel.FieldNames:= 'BASE_DATE';

  frPartnerOnFinOrderBOIOPanel.SetDataSet(cdsBinding);
  frPartnerOnFinOrderBOIOPanel.FieldNames:= 'PARTNER_CODE';
  frPartnerOnFinOrderBOIOPanel.ShowAllWhenEmpty:= True;
  frPartnerOnFinOrderBOIOPanel.DocButtonVisible:= False;

  frBaseDateOnFinOrderBOIOPanel.SetDataSet(cdsBinding);
  frBaseDateOnFinOrderBOIOPanel.FieldNames:= 'BASE_DATE';

  frPartnerOnFinOrderGroupSalePanel.SetDataSet(cdsBinding);
  frPartnerOnFinOrderGroupSalePanel.FieldNames:= 'PARTNER_CODE';
  frPartnerOnFinOrderGroupSalePanel.ShowAllWhenEmpty:= True;
  frPartnerOnFinOrderGroupSalePanel.DocButtonVisible:= False;

  frBaseDateOnFinOrderGroupSalePanel.SetDataSet(cdsBinding);
  frBaseDateOnFinOrderGroupSalePanel.FieldNames:= 'BASE_DATE';

  frBudgetOrderProductOnBOIOPanel.SetDataSet(cdsBinding);
  frBudgetOrderProductOnBOIOPanel.FieldNames:= 'BUDGET_ORDER_PRODUCT_CODE';
  frBudgetOrderProductOnBOIOPanel.ShowAllWhenEmpty:= True;
  frBudgetOrderProductOnBOIOPanel.DocButtonVisible:= False;
  frBudgetOrderProductOnBOIOPanel.VIMButtonVisible:= False;

  frProjectProductOnProductionOrderPanel.SetDataSet(cdsBinding);
  frProjectProductOnProductionOrderPanel.FieldNames:= 'PROJECT_PRODUCT_CODE';
  frProjectProductOnProductionOrderPanel.ShowAllWhenEmpty:= True;
  frProjectProductOnProductionOrderPanel.DocButtonVisible:= False;
  frProjectProductOnProductionOrderPanel.VIMButtonVisible:= False;

  frProjectProductOnMaterialListLinePanel.SetDataSet(cdsBinding);
  frProjectProductOnMaterialListLinePanel.FieldNames:= 'PROJECT_PRODUCT_CODE';
  frProjectProductOnMaterialListLinePanel.ShowAllWhenEmpty:= True;
  frProjectProductOnMaterialListLinePanel.DocButtonVisible:= False;
  frProjectProductOnMaterialListLinePanel.VIMButtonVisible:= False;

  frFinClassOnFinOrderInternalPanel.SetDataSet(cdsBinding);
  frFinClassOnFinOrderInternalPanel.ShowAllWhenEmpty:= True;
  frFinClassOnFinOrderInternalPanel.DocButtonVisible:= False;

  frFinClassOnFinOrderAdminPanel.SetDataSet(cdsBinding);
  frFinClassOnFinOrderAdminPanel.ShowAllWhenEmpty:= True;
  frFinClassOnFinOrderAdminPanel.DocButtonVisible:= False;

  inherited;
end;

procedure TfrStoreDealBindingFilter.OpenDataSets;
begin
  inherited;
  cdsProcesses.Open;
  cdsProductionOrderTypes.Open;
  cdsBranches.Open;
  cdsSaleTypes.Open;
  cdsSaleDealTypes.Open;
  cdsDeliveryTypes.Open;
  cdsDeliveryDealTypes.Open;
  cdsBudgetOrderClasses.Open;
  cdsFinModelLineTypes.Open;
  cdsOrgTaskProposalStates.Open;  
end;

procedure TfrStoreDealBindingFilter.cdsBindingAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if FChangingData then
    Exit;

  Edit;
  Modified;
end;

procedure TfrStoreDealBindingFilter.cdsBindingAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if FChangingData then
    Exit;

  Edit;
  Modified;
end;

procedure TfrStoreDealBindingFilter.cdsBindingBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsBindingNO_AS_TEXT.AsString:=
    TrimNoAsText(cdsBindingNO_AS_TEXT.AsString);
end;

procedure TfrStoreDealBindingFilter.cdsBindingNO_AS_TEXTValidate(Sender: TField);
begin
  inherited;
  CheckNoAsTextField(Sender, False);
end;

procedure TfrStoreDealBindingFilter.cdsProcessesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsProcesses.Params.ParamByName('IS_INBOUND_PROCESS').AsInteger:= Ord(IsInboundProcess);
  cdsProcesses.Params.ParamByName('IS_OUTBOUND_PROCESS').AsInteger:= Ord(IsOutboundProcess);
  cdsProcesses.Params.ParamByName('IS_REAL_STORE_DEAL_PROCESS').AsInteger:= Ord(IsRealStoreDealProcess);
  cdsProcesses.Params.ParamByName('IS_PLAN_STORE_DEAL_PROCESS').AsInteger:= Ord(IsPlanStoreDealProcess);
  cdsProcesses.Params.ParamByName('IS_PROJ_STORE_DEAL_PROCESS').AsInteger:= Ord(IsProjStoreDealProcess);
  cdsProcesses.Params.ParamByName('IS_FINANCIAL_PROCESS').AsInteger:= Ord(IsFinancialProcess);
end;

procedure TfrStoreDealBindingFilter.CloseDataSets;
begin
  cdsOrgTaskProposalStates.Close;
  cdsFinModelLineTypes.Close;
  cdsBudgetOrderClasses.Close;
  cdsDeliveryDealTypes.Close;
  cdsDeliveryTypes.Close;
  cdsSaleDealTypes.Close;
  cdsSaleTypes.Close;
  cdsBranches.Close;
  cdsProductionOrderTypes.Close;
  cdsProcesses.Close;

  cdsBinding.Close;

  inherited;
end;

procedure TfrStoreDealBindingFilter.actFrameUpdate(Sender: TObject);
const
  FrameHeights: array[Boolean] of Integer = (81, 153);
  DropDownWidths: array[Boolean] of Integer = (465, 514);
var
  ProcessCode: Integer;
  edt: TCustomEdit;
  EditHeight: Integer;
begin
  inherited;
  Height:= ScalePixels(FrameHeights[IsFinancialProcess]);

  ProcessCode:= cdsBindingBND_PROCESS_CODE.AsInteger;

  pnlSaleShipment.Visible:= (ProcessCode = pEXP);
  pnlSaleRequestLine.Visible:= (ProcessCode = pSaleRequestLine);
  pnlProductionOrder.Visible:= (ProcessCode in [pOPWithSale, pOPWithoutMLL, pWaste]);
  pnlMaterialListLine.Visible:= (ProcessCode = pOPWithMLL);
  pnlMLMSOperation.Visible:= (ProcessCode = pOPWithMLMSO);
  pnlDeficitCoverDecision.Visible:= (ProcessCode = pDCD);
  pnlDelivery.Visible:= (ProcessCode = pPD);
  pnlLiteDelivery.Visible:= (ProcessCode = pSimplePD);
  pnlBOIO.Visible:= (ProcessCode = pBPOItem);
  pnlInStoreDeal.Visible:= (ProcessCode = pRPD);
  pnlOutStoreDeal.Visible:= (ProcessCode = pNKT);
  pnlFinOrderInternal.Visible:= (ProcessCode in [pFinVtrRF, pFinVtrOF]);
  pnlFinOrderAdmin.Visible:= (ProcessCode = pFinAdm);
  pnlFinOrderSaleShipment.Visible:= (ProcessCode in [pFinPrdUobZd, pFinPrdFOb]);
  pnlFinOrderDelivery.Visible:= (ProcessCode in [pFinDstUOb, pFinDstFOb]);
  pnlFinOrderBOIO.Visible:= (ProcessCode = pFinDstPrc);
  pnlFinOrderGroupSale.Visible:= (ProcessCode = pFinPrdUobNl);

  cbBndProcess.DropDownWidth:= ScalePixels(DropDownWidths[IsInboundProcess and IsOutboundProcess]);

  EditHeight:= ScalePixels(21);
  for edt in AllComponents.OfType<TCustomEdit> do
    if not (edt is TCustomMemo) then
      edt.Height:= EditHeight;
end;

procedure TfrStoreDealBindingFilter.Initialize;
begin
  inherited;
  InitializeAllDBComboBoxes;
  edtBudgetOrderItemTypeOnBOIOPanel.Text:= SBudgetOrderItemTypeExpenseAbbrev;  
end;

procedure TfrStoreDealBindingFilter.InitializeAllDBComboBoxes;
var
  i: Integer;
begin
  for i:= 0 to ComponentCount - 1 do
    if (Components[i] is TJvDBComboBox) then
      InitializeDBComboBox(Components[i] as TJvDBComboBox);
end;

end.
