unit dCompanies;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, uCompanyKinds, JvStringHolder, WideStrings, FMTBcd,
  SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmCompanies = class(TDBPooledDataModule)
    qryCompanyOffices: TAbmesSQLQuery;
    prvCompanyOffices: TDataSetProvider;
    qryClientProductSignatures: TAbmesSQLQuery;
    prvClientProductSignatures: TDataSetProvider;
    qryClientProductSignaturesCOMPANY_CODE: TAbmesFloatField;
    qryClientProductSignaturesPRODUCT_CODE: TAbmesFloatField;
    qryClientProductSignaturesPRODUCT_NAME: TAbmesWideStringField;
    qryClientProductSignaturesPRODUCT_NO: TAbmesFloatField;
    qryClientProductSignaturesNAME: TAbmesWideStringField;
    qryCompanies: TAbmesSQLQuery;
    prvCompanies: TDataSetProvider;
    qryCompanyTypes: TAbmesSQLQuery;
    prvCompanyTypes: TDataSetProvider;
    qryCompanyOfficesCOMPANY_CODE: TAbmesFloatField;
    qryCompanyOfficesOFFICE_CODE: TAbmesFloatField;
    qryCompanyOfficesOFFICE_NAME: TAbmesWideStringField;
    qryCompanyOfficesCOUNTRY_CODE: TAbmesFloatField;
    qryCompanyOfficesSTATE: TAbmesWideStringField;
    qryCompanyOfficesREGION: TAbmesWideStringField;
    qryCompanyOfficesZIP: TAbmesWideStringField;
    qryCompanyOfficesCITY: TAbmesWideStringField;
    qryCompanyOfficesADDRESS: TAbmesWideStringField;
    qryGetMaxCompanyOfficeCode: TAbmesSQLQuery;
    qryGetMaxCompanyOfficeCodeMAX_OFFICE_CODE: TAbmesFloatField;
    qryInsertRelatedCompanyRecord: TAbmesSQLQuery;
    qryCompanyTypesCOMPANY_TYPE_CODE: TAbmesFloatField;
    qryCompanyTypesCOMPANY_TYPE_ABBREV: TAbmesWideStringField;
    qryCompanyTypesABBREV_BEFORE: TAbmesFloatField;
    qryCompanyTypesCOMPANY_TYPE_NAME: TAbmesWideStringField;
    qryDeleteRelatedCompanyRecord: TAbmesSQLQuery;
    qrySetCompanyPriority: TAbmesSQLQuery;
    qryCompanyRepresentatives: TAbmesSQLQuery;
    prvCompanyRepresentatives: TDataSetProvider;
    qryCompanyRepresentativesCOMPANY_CODE: TAbmesFloatField;
    qryCompanyRepresentativesREPRESENTATIVE_CODE: TAbmesFloatField;
    qryCompanyRepresentativesOFFICE_COMPANY_CODE: TAbmesFloatField;
    qryCompanyRepresentativesOFFICE_CODE: TAbmesFloatField;
    qryCompanyRepresentativesFIRST_NAME: TAbmesWideStringField;
    qryCompanyRepresentativesMIDDLE_NAME: TAbmesWideStringField;
    qryCompanyRepresentativesLAST_NAME: TAbmesWideStringField;
    qryCompanyRepresentativesOCCUPATION: TAbmesWideStringField;
    qryCompanyRepresentativesEGN: TAbmesWideStringField;
    qryCompanyRepresentativesMALE: TAbmesFloatField;
    qryCompanyRepresentativesLANGUAGE_CODE: TAbmesFloatField;
    qryGetMaxRepresentativeCode: TAbmesSQLQuery;
    qryGetMaxRepresentativeCodeMAX_REPRESENTATIVE_CODE: TAbmesFloatField;
    qryCompanyContacts: TAbmesSQLQuery;
    prvCompanyContacts: TDataSetProvider;
    qryCompanyContactsCOMPANY_CODE: TAbmesFloatField;
    qryCompanyContactsCONTACT_CODE: TAbmesFloatField;
    qryCompanyContactsOFFICE_COMPANY_CODE: TAbmesFloatField;
    qryCompanyContactsOFFICE_CODE: TAbmesFloatField;
    qryCompanyContactsREPRESENTATIVE_COMPANY_CODE: TAbmesFloatField;
    qryCompanyContactsREPRESENTATIVE_CODE: TAbmesFloatField;
    qryCompanyContactsCONTACT_TYPE_CODE: TAbmesFloatField;
    qryCompanyContactsCONTACT_TEXT: TAbmesWideStringField;
    qryCompanyContactsNOTES: TAbmesWideStringField;
    qryCompanyBankAccounts: TAbmesSQLQuery;
    qryCompanyBankAccountsBANK_COMPANY_CODE: TAbmesFloatField;
    qryCompanyBankAccountsACCOUNT: TAbmesFloatField;
    qryCompanyBankAccountsCOMPANY_CODE: TAbmesFloatField;
    qryCompanyBankAccountsCURRENCY_CODE: TAbmesFloatField;
    qryCompanyBankAccountsDESCRIPTION: TAbmesWideStringField;
    prvCompanyBankAccounts: TDataSetProvider;
    qryGetMaxContactCode: TAbmesSQLQuery;
    qryGetMaxContactCodeMAX_CONTACT_CODE: TAbmesFloatField;
    qryCompany: TAbmesSQLQuery;
    prvCompany: TDataSetProvider;
    qryCompanyCOMPANY_CODE: TAbmesFloatField;
    qryCompanySHORT_NAME: TAbmesWideStringField;
    qryCompanyCOMPANY_TYPE_CODE: TAbmesFloatField;
    qryCompanyVAT_REGISTERED: TAbmesFloatField;
    qryCompanyCOUNTRY_CODE: TAbmesFloatField;
    qryCompanySTATE: TAbmesWideStringField;
    qryCompanyREGION: TAbmesWideStringField;
    qryCompanyZIP: TAbmesWideStringField;
    qryCompanyCITY: TAbmesWideStringField;
    qryCompanyADDRESS: TAbmesWideStringField;
    qryCompanyLANGUAGE_CODE: TAbmesFloatField;
    qryCompanyBANK_NO: TAbmesFloatField;
    qryCompanyCOMPANY_NAME: TAbmesWideStringField;
    qryCompanyTAX_NO: TAbmesFloatField;
    qryCompanyRepresentativesOFFICE_NAME: TAbmesWideStringField;
    qryCompanyContactsOFFICE_NAME: TAbmesWideStringField;
    qryCompanyContactsCONTACT_TYPE_NAME: TAbmesWideStringField;
    qryCompanyBankAccountsBANK_NAME: TAbmesWideStringField;
    qryCompanyBankAccountsCURRENCY_ABBREV: TAbmesWideStringField;
    qryCompanyRepresentativesNAME: TAbmesWideStringField;
    qryCompanyBankAccountsACCOUNT_FULL_NAME: TAbmesWideStringField;
    qryCompanyDOC_BRANCH_CODE: TAbmesFloatField;
    qryCompanyDOC_CODE: TAbmesFloatField;
    qryInsertPerson: TAbmesSQLQuery;
    qryDeletePerson: TAbmesSQLQuery;
    qryModifyPerson: TAbmesSQLQuery;
    qryCompanyEGN: TAbmesWideStringField;
    qryCompanyFIRST_NAME: TAbmesWideStringField;
    qryCompanyMIDDLE_NAME: TAbmesWideStringField;
    qryCompanyLAST_NAME: TAbmesWideStringField;
    qryCompanyABBREV: TAbmesWideStringField;
    qryPartners: TAbmesSQLQuery;
    prvPartners: TDataSetProvider;
    qryInsertFirm: TAbmesSQLQuery;
    qryDeleteFirm: TAbmesSQLQuery;
    qryCompanyIS_MALE: TAbmesFloatField;
    qryClientProductSignaturesCOMPANY_NAME: TAbmesWideStringField;
    qryCompanyCOMPANY_NO: TAbmesFloatField;
    qryNewCompanyCode: TAbmesSQLQuery;
    qryNewCompanyCodeCOMPANY_CODE: TAbmesFloatField;
    qryPartnerInfo: TAbmesSQLQuery;
    qryPartnersCOMPANY_CODE: TAbmesFloatField;
    qryPartnersCOMPANY_NO: TAbmesFloatField;
    qryPartnersPARTNER_NAME: TAbmesWideStringField;
    qryCompanyCOMPANY_CLASS_CODE: TAbmesFloatField;
    qryCompanyStatusesChanges: TAbmesSQLQuery;
    qryCompanyStatusesChangesCOMPANY_CODE: TAbmesFloatField;
    qryCompanyStatusesChangesCOMPANY_STATUS_CODE: TAbmesFloatField;
    qryCompanyStatusesChangesSTATUS_DATE: TAbmesSQLTimeStampField;
    qryCompanyStatuses: TAbmesSQLQuery;
    prvCompanyStatuses: TDataSetProvider;
    qryCompanyStatusesCOMPANY_STATUS_CODE: TAbmesFloatField;
    qryCompanyStatusesCOMPANY_STATUS_NAME: TAbmesWideStringField;
    prvCompanyStatus: TDataSetProvider;
    qryCompanyStatus: TAbmesSQLQuery;
    qryCompanyStatusCOMPANY_STATUS_CODE: TAbmesFloatField;
    qryCompanyIS_CLIENT: TAbmesFloatField;
    qryCompanyCLIENT_PRIORITY_CODE: TAbmesFloatField;
    qryCompanyIS_MEDIATOR: TAbmesFloatField;
    qryCompanyMEDIATOR_PRIORITY_CODE: TAbmesFloatField;
    qryCompanyIS_VENDOR: TAbmesFloatField;
    qryCompanyVENDOR_PRIORITY_CODE: TAbmesFloatField;
    qryCompanyIS_GOV_ORGANIZATION: TAbmesFloatField;
    qryCompanyGOV_ORGANIZATION_PRIORITY_CODE: TAbmesFloatField;
    qryCompanyIS_BANK: TAbmesFloatField;
    qryCompanyBANK_PRIORITY_CODE: TAbmesFloatField;
    qryCompanyStatusesChangesNEXT_STATUS_DATE: TAbmesSQLTimeStampField;
    qryCompanyStatusBASE_ROLE_CODE: TAbmesFloatField;
    qryCompanyStatusSTATUS_DATE: TAbmesSQLTimeStampField;
    qryCompanyStatusesChangesCOMPANY_STATUS_NAME: TAbmesWideStringField;
    qryCompanyStatusCOMPANY_NAME: TAbmesWideStringField;
    qryCompanyStatusCOMPANY_STATUS_NAME: TAbmesWideStringField;
    qryCompanyStatusEXISTANCE_MONTHS: TAbmesFloatField;
    qryCompanyStatusCURRENT_STATUS_REACH_MONTHS: TAbmesFloatField;
    qryCompanyStatusCOMPANY_CODE: TAbmesFloatField;
    qryDeleteCumulativePartner: TAbmesSQLQuery;
    qryInsertCumulativePartner: TAbmesSQLQuery;
    qryCompaniesCOMPANY_CODE: TAbmesFloatField;
    qryCompaniesCOMPANY_NO: TAbmesFloatField;
    qryCompaniesCOUNTRY_NAME: TAbmesWideStringField;
    qryCompaniesTAX_NO: TAbmesFloatField;
    qryCompaniesCITY: TAbmesWideStringField;
    qryCompaniesLANGUAGE_NAME: TAbmesWideStringField;
    qryCompaniesSTATE: TAbmesWideStringField;
    qryCompaniesREGION: TAbmesWideStringField;
    qryCompaniesZIP: TAbmesWideStringField;
    qryCompaniesADDRESS: TAbmesWideStringField;
    qryCompaniesDOC_BRANCH_CODE: TAbmesFloatField;
    qryCompaniesDOC_CODE: TAbmesFloatField;
    qryCompaniesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryCompaniesDOC_IS_COMPLETE: TAbmesFloatField;
    qryCompaniesACTIVE_DI_COUNT: TAbmesFloatField;
    qryCompaniesUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryCompaniesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryCompaniesCOMPANY_CLASS_CODE: TAbmesFloatField;
    qryCompaniesSHORT_NAME: TAbmesWideStringField;
    qryCompaniesCUSTOM_ID: TAbmesWideStringField;
    qryCompaniesIS_CLIENT: TAbmesFloatField;
    qryCompaniesIS_MEDIATOR: TAbmesFloatField;
    qryCompaniesIS_VENDOR: TAbmesFloatField;
    qryCompaniesIS_GOV_ORGANIZATION: TAbmesFloatField;
    qryCompaniesIS_BANK: TAbmesFloatField;
    qryCompaniesCOMPANY_STATUS_CODE: TAbmesFloatField;
    qryCompaniesBASE_ROLE_CODE: TAbmesFloatField;
    qryCompaniesEXISTANCE_MONTHS: TAbmesFloatField;
    qryCompaniesCURRENT_STATUS_REACH_MONTHS: TAbmesFloatField;
    qryCompaniesCOMPANY_STATUS_NAME: TAbmesWideStringField;
    qryCompaniesCOMPANY_CLASS_ABBREV: TAbmesWideStringField;
    qryInsertInitialCompanyStatus: TAbmesSQLQuery;
    qryCompanyEDUCATION_CODE: TAbmesFloatField;
    dsCompany: TDataSource;
    qryPersonCrafts: TAbmesSQLQuery;
    qryPersonCraftsCOMPANY_CODE: TAbmesFloatField;
    qryPersonCraftsCRAFT_CODE: TAbmesFloatField;
    qryPersonCraftsPRIORITY_CODE: TAbmesFloatField;
    qryPersonCraftsCRAFT_TYPE_CODE: TAbmesFloatField;
    qryCompanyEDUCATION_NAME: TAbmesWideStringField;
    qryCompaniesIS_WORKER: TAbmesFloatField;
    qryCompanyIS_WORKER: TAbmesFloatField;
    qryCompanyWORKER_PRIORITY_CODE: TAbmesFloatField;
    qryPartnerInfoCOMPANY_CODE: TAbmesFloatField;
    qryPartnerInfoCOMPANY_NO: TAbmesFloatField;
    qryPartnerInfoCUSTOM_ID: TAbmesWideStringField;
    qryPartnerInfoPARTNER_NAME: TAbmesWideStringField;
    qryPartnerInfoCITY: TAbmesWideStringField;
    qryPartnerInfoADDRESS: TAbmesWideStringField;
    qryPartnerInfoTAX_NO: TAbmesFloatField;
    qryPartnerInfoEGN: TAbmesWideStringField;
    qryPartnerInfoCOUNTRY_CODE: TAbmesFloatField;
    qryPartnerInfoCOUNTRY_ABBREV: TAbmesWideStringField;
    qryPartnerInfoIS_CLIENT: TAbmesFloatField;
    qryPartnerInfoIS_MEDIATOR: TAbmesFloatField;
    qryPartnerInfoIS_VENDOR: TAbmesFloatField;
    qryPartnerInfoIS_GOVERNMENT_ORGANIZATION: TAbmesFloatField;
    qryPartnerInfoIS_BANK: TAbmesFloatField;
    qryPartnerInfoIS_WORKER: TAbmesFloatField;
    qryPartnerInfoCLIENT_PRIORITY_CODE: TAbmesFloatField;
    qryPartnerInfoMEDIATOR_PRIORITY_CODE: TAbmesFloatField;
    qryPartnerInfoVENDOR_PRIORITY_CODE: TAbmesFloatField;
    qryPartnerInfoGOV_ORG_PRIORITY_CODE: TAbmesFloatField;
    qryPartnerInfoBANK_PRIORITY_CODE: TAbmesFloatField;
    qryPartnerInfoWORKER_PRIORITY_CODE: TAbmesFloatField;
    qryCompanyIS_EXTERNAL: TAbmesFloatField;
    qryCompanyBIRTH_DATE: TAbmesSQLTimeStampField;
    qryPartnersDOC_BRANCH_CODE: TAbmesFloatField;
    qryPartnersDOC_CODE: TAbmesFloatField;
    qryPartnersHAS_DOCUMENTATION: TAbmesFloatField;
    dsCompanyStatus: TDataSource;
    qryCompaniesCLIENT_PRIORITY_NO: TAbmesFloatField;
    qryCompaniesMEDIATOR_PRIORITY_NO: TAbmesFloatField;
    qryCompaniesVENDOR_PRIORITY_NO: TAbmesFloatField;
    qryCompaniesGOV_ORG_PRIORITY_NO: TAbmesFloatField;
    qryCompaniesBANK_PRIORITY_NO: TAbmesFloatField;
    qryCompaniesWORKER_PRIORITY_NO: TAbmesFloatField;
    qryCompanyStatusPRIORITY_NO: TAbmesFloatField;
    qryPartnerInfoCOMPANY_SHORT_NAME: TAbmesWideStringField;
    qryPartnersPRIORITY_NO: TAbmesFloatField;
    qryPartnersPRIORITY_COLOR: TAbmesFloatField;
    qryPartnersPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryPartnersCOUNTRY_ABBREV: TAbmesWideStringField;
    qryCompaniesBULSTAT: TAbmesWideStringField;
    qryCompanyBULSTAT: TAbmesWideStringField;
    qryCompanyBULSTAT_EX: TAbmesWideStringField;
    qryPartnerInfoBULSTAT: TAbmesWideStringField;
    qryPartnerInfoBULSTAT_EX: TAbmesWideStringField;
    prvParRel: TDataSetProvider;
    qryParRelPeriods: TAbmesSQLQuery;
    qryParRelPeriodsPARTNER_CODE: TAbmesFloatField;
    qryParRelPeriodsBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qryParRelPeriodsPAR_REL_PERIOD_CODE: TAbmesFloatField;
    qryParRelPeriodsBEGIN_DATE: TAbmesSQLTimeStampField;
    qryParRelPeriodsEND_DATE: TAbmesSQLTimeStampField;
    qryParRelPeriodsDOC_BRANCH_CODE: TAbmesFloatField;
    qryParRelPeriodsDOC_CODE: TAbmesFloatField;
    qryParRelPeriodsHAS_DOC_ITEMS: TAbmesFloatField;
    qryParRelPeriodsCURRENCY_CODE: TAbmesFloatField;
    qryParRelPeriodsSTORE_CODE: TAbmesFloatField;
    qryParRelPeriodsPARTNER_OFFICE_CODE: TAbmesFloatField;
    qryParRelPeriodsTRANSPORT_DURATION_DAYS: TAbmesFloatField;
    qryParRelPeriodsMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    qryParRelPeriodsSHIPMENT_TYPE_CODE: TAbmesFloatField;
    qryParRelPeriodsIS_PARTNER_TRANSPORT: TAbmesFloatField;
    qryParRelPeriodsCUSTOMHOUSE_CODE: TAbmesFloatField;
    qryNewParRelPeriodCode: TAbmesSQLQuery;
    qryNewParRelPeriodCodeNEW_PAR_REL_PRIOD_CODE: TAbmesFloatField;
    qryParRel: TAbmesSQLQuery;
    dsParRel: TDataSource;
    qryParRelPARTNER_CODE: TAbmesFloatField;
    qryParRelBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qryParRelPRIORITY_CODE: TAbmesFloatField;
    qryParRelPeriodsSTORE_IDENTIFIER: TAbmesWideStringField;
    qryParRelPeriodsMEDIATOR_COMPANY_SHORT_NAME: TAbmesWideStringField;
    qryPartnerInfoIS_PERSON: TAbmesFloatField;
    qryPartnerInfoFIRST_NAME: TAbmesWideStringField;
    qryPartnerInfoMIDDLE_NAME: TAbmesWideStringField;
    qryPartnerInfoLAST_NAME: TAbmesWideStringField;
    qryCompanyBankAccountsIBAN: TAbmesWideStringField;
    qryCompanyBankAccountsACCOUNT_CODE: TAbmesFloatField;
    qryNewAccountCode: TAbmesSQLQuery;
    qryNewAccountCodeNEW_ACCOUNT_CODE: TAbmesFloatField;
    qryCompanyBIC: TAbmesWideStringField;
    qryParRelPeriodsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryParRelPeriodsCREATE_DATE: TAbmesSQLTimeStampField;
    qryParRelPeriodsCREATE_TIME: TAbmesSQLTimeStampField;
    qryParRelPeriodsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryParRelPeriodsCHANGE_DATE: TAbmesSQLTimeStampField;
    qryParRelPeriodsCHANGE_TIME: TAbmesSQLTimeStampField;
    qryParRelExists: TAbmesSQLQuery;
    qryParRelExistsPAR_REL_EXISTS: TAbmesFloatField;
    qryClientProductSignaturesCOMPANY_DOC_BRANCH_CODE: TAbmesFloatField;
    qryClientProductSignaturesCOMPANY_DOC_CODE: TAbmesFloatField;
    qryClientProductSignaturesCOMPANY_HAS_DOC: TAbmesFloatField;
    qryClientProductSignaturesPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryClientProductSignaturesPRODUCT_DOC_CODE: TAbmesFloatField;
    qryClientProductSignaturesPRODUCT_HAS_DOC: TAbmesFloatField;
    qryClientProductSignaturesCOMPANY_NO: TAbmesFloatField;
    qryPartnerInfoVAT_REGISTERED: TAbmesFloatField;
    qryCompanyVAT_NO: TAbmesWideStringField;
    qryPartnerInfoVAT_NO: TAbmesWideStringField;
    qryCompanyBankAccountsNAME: TAbmesWideStringField;
    qryCompanyBankAccountsSHORT_NAME: TAbmesWideStringField;
    qryCompanyBankAccountsBIC: TAbmesWideStringField;
    qryCompanyTypesCOMPANY_TYPE_NO: TAbmesFloatField;
    qryGetNewCompanyTypeCode: TAbmesSQLQuery;
    qryGetNewCompanyTypeCodeNEW_COMPANY_TYPE_CODE: TAbmesFloatField;
    dsParRelPeriods: TDataSource;
    qrySpecFinModels: TAbmesSQLQuery;
    dsSpecFinModels: TDataSource;
    qrySpecFinModelLines: TAbmesSQLQuery;
    qrySpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    qrySpecFinModelsPARTNER_CODE: TAbmesFloatField;
    qrySpecFinModelsBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qrySpecFinModelsPAR_REL_PERIOD_CODE: TAbmesFloatField;
    qrySpecFinModelsFINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    qrySpecFinModelsFINANCIAL_PRODUCT_NAME: TAbmesWideStringField;
    qrySpecFinModelsFINANCIAL_PRODUCT_NO: TAbmesFloatField;
    qrySpecFinModelsSPEC_FIN_MODEL_NAME: TAbmesWideStringField;
    qrySpecFinModelsIS_EST_MODEL: TAbmesFloatField;
    qrySpecFinModelsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySpecFinModelsAUTHORIZE_DATE: TAbmesSQLTimeStampField;
    qrySpecFinModelsAUTHORIZE_TIME: TAbmesSQLTimeStampField;
    qrySpecFinModelsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySpecFinModelsCREATE_DATE: TAbmesSQLTimeStampField;
    qrySpecFinModelsCREATE_TIME: TAbmesSQLTimeStampField;
    qrySpecFinModelsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySpecFinModelsCHANGE_DATE: TAbmesSQLTimeStampField;
    qrySpecFinModelsCHANGE_TIME: TAbmesSQLTimeStampField;
    qrySpecFinModelLinesSPEC_FIN_MODEL_LINE_CODE: TAbmesFloatField;
    qrySpecFinModelLinesSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    qrySpecFinModelLinesPARTNER_CODE: TAbmesFloatField;
    qrySpecFinModelLinesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    qrySpecFinModelLinesFIN_MODEL_LINE_NO: TAbmesFloatField;
    qrySpecFinModelLinesLINE_QUANTITY_PERCENT: TAbmesFloatField;
    qrySpecFinModelLinesMOVEMENT_OFFSET_DAYS: TAbmesFloatField;
    qrySpecFinModelLinesMOVEMENT_DURATION_DAYS: TAbmesFloatField;
    qrySpecFinModelLinesFIN_STORE_CODE: TAbmesFloatField;
    qrySpecFinModelLinesPARTNER_ACCOUNT_CODE: TAbmesFloatField;
    qrySpecFinModelLinesFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField;
    qryNewSpecFinModelCode: TAbmesSQLQuery;
    qryNewSpecFinModelLineCode: TAbmesSQLQuery;
    qryNewSpecFinModelCodeNEW_SPEC_FIN_MODEL_CODE: TAbmesFloatField;
    qryNewSpecFinModelLineCodeNEW_SPEC_FIN_MODEL_LINE_CODE: TAbmesFloatField;
    qryFixSpecFinModelLineNos: TAbmesSQLQuery;
    qrySpecFinModelsPRIMARY_FIN_MODEL_LINE_COUNT: TAbmesFloatField;
    qrySpecFinModelsSECONDARY_LINE_QTY_PERCENT: TAbmesFloatField;
    qrySpecFinModelLinesIS_PRIMARY_FIN_MODEL_LINE_TYPE: TAbmesFloatField;
    qrySpecFinModelLinesSECONDARY_LINE_QTY_PERCENT: TAbmesFloatField;
    qrySpecFinModelLinesFIN_STORE_IDENTIFIER: TAbmesWideStringField;
    qrySpecFinModelLinesPRIMARY_LINE_QTY_PERCENT: TAbmesFloatField;
    qrySpecFinModelLinesABS_MOVEMENT_OFFSET_DAYS: TAbmesFloatField;
    qrySpecFinModelLinesMOVEMENT_OFFSET_DAYS_SIGN: TAbmesFloatField;
    qryCompanyBankAccountsCURRENCY_PRODUCT_CODE: TAbmesFloatField;
    qryParRelPeriodsAUTHORIZED_SPEC_FIN_MODEL_CNT: TAbmesFloatField;
    qryParRelPeriodsIS_PAST: TAbmesFloatField;
    qryParRelPeriodsIS_PRESENT: TAbmesFloatField;
    qryParRelPeriodsIS_FUTURE: TAbmesFloatField;
    qryParRelMAX_SPEC_FIN_MODEL_CODE: TAbmesFloatField;
    qryClearEstModels: TAbmesSQLQuery;
    qryCompanyOfficesCOUNTRY_NAME: TAbmesWideStringField;
    mshLocalMacroLibrary: TJvMultiStringHolder;
    qryCompanyClasses: TAbmesSQLQuery;
    prvCompanyClasses: TDataSetProvider;
    qryCompanyClassesCOMPANY_CLASS_CODE: TAbmesFloatField;
    qryCompanyClassesCOMPANY_CLASS_ABBREV: TAbmesWideStringField;
    qryCompanyClassesCOMPANY_CLASS_NAME: TAbmesWideStringField;
    qryCompanyCLIENT_COMMON_PARTNER_CODE: TAbmesFloatField;
    qryCompanyVENDOR_COMMON_PARTNER_CODE: TAbmesFloatField;
    qryInsertRelatedCompanyWithCommonPartnerRecord: TAbmesSQLQuery;
    qrySetCompanyCommonPartner: TAbmesSQLQuery;
    qryCompanyConcretePartners: TAbmesSQLQuery;
    prvCompanyConcretePartners: TDataSetProvider;
    qryCompanyConcretePartnersCOMPANY_STATUS_NAME: TAbmesWideStringField;
    qryCompanyConcretePartnersCOMPANY_NO: TAbmesFloatField;
    qryCompanyConcretePartnersCOMPANY_CLASS_ABBREV: TAbmesWideStringField;
    qryCompanyConcretePartnersSHORT_NAME: TAbmesWideStringField;
    qryCompanyConcretePartnersCOUNTRY_NAME: TAbmesWideStringField;
    qryCompanyConcretePartnersCITY: TAbmesWideStringField;
    qryCompaniesCLIENT_COMMON_PARTNER_CODE: TAbmesFloatField;
    qryCompaniesVENDOR_COMMON_PARTNER_CODE: TAbmesFloatField;
    qryCompaniesCLIENT_COMMON_PARTNER_NO: TAbmesFloatField;
    qryCompaniesCLIENT_COMMON_PARTNER_NAME: TAbmesWideStringField;
    qryCompaniesVENDOR_COMMON_PARTNER_NO: TAbmesFloatField;
    qryCompaniesVENDOR_COMMON_PARTNER_NAME: TAbmesWideStringField;
    qryCompanyConcretePartnersCOMPANY_STATUS_CODE: TAbmesFloatField;
    qryCompanyConcretePartnersBASE_ROLE_CODE: TAbmesFloatField;
    qryParRelPeriodsCOMPANY_CLASS_CODE: TAbmesFloatField;
    qryParRelCOMPANY_CLASS_CODE: TAbmesFloatField;
    qryParRelPeriodsOVERRIDE_CURRENCY: TAbmesFloatField;
    qryParRelPeriodsOVERRIDE_STORE: TAbmesFloatField;
    qryParRelPeriodsOVERRIDE_TRANSPORT_DUR_DAYS: TAbmesFloatField;
    qryParRelPeriodsOVERRIDE_MEDIATOR_COMPANY: TAbmesFloatField;
    qryParRelPeriodsOVERRIDE_SHIPMENT_TYPE: TAbmesFloatField;
    qryParRelPeriodsOVERRIDE_IS_PARTNER_TRANSPORT: TAbmesFloatField;
    qryParRelPeriodsOVERRIDE_CUSTOMHOUSE: TAbmesFloatField;
    qryParRelPeriodsINHRT_CURRENCY_CODE: TAbmesFloatField;
    qryParRelPeriodsINHRT_STORE_CODE: TAbmesFloatField;
    qryParRelPeriodsINHRT_STORE_IDENTIFIER: TAbmesWideStringField;
    qryParRelPeriodsINHRT_TRANSPORT_DURATION_DAYS: TAbmesFloatField;
    qryParRelPeriodsINHRT_MEDIATOR_COMPANY_CODE: TAbmesFloatField;
    qryParRelPeriodsINHRT_MED_COMPANY_SHORT_NAME: TAbmesWideStringField;
    qryParRelPeriodsINHRT_SHIPMENT_TYPE_CODE: TAbmesFloatField;
    qryParRelPeriodsINHRT_IS_PARTNER_TRANSPORT: TAbmesFloatField;
    qryParRelPeriodsINHRT_CUSTOMHOUSE_CODE: TAbmesFloatField;
    prvCommonParRelPeriod: TDataSetProvider;
    qryCommonParRelPeriod: TAbmesSQLQuery;
    qryCommonParRelPeriodCURRENCY_CODE: TAbmesFloatField;
    qryCommonParRelPeriodSTORE_CODE: TAbmesFloatField;
    qryCommonParRelPeriodSTORE_IDENTIFIER: TAbmesWideStringField;
    qryCommonParRelPeriodTRANSPORT_DURATION_DAYS: TAbmesFloatField;
    qryCommonParRelPeriodMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    qryCommonParRelPeriodMEDIATOR_COMPANY_SHORT_NAME: TAbmesWideStringField;
    qryCommonParRelPeriodSHIPMENT_TYPE_CODE: TAbmesFloatField;
    qryCommonParRelPeriodIS_PARTNER_TRANSPORT: TAbmesFloatField;
    qryCommonParRelPeriodCUSTOMHOUSE_CODE: TAbmesFloatField;
    prvBankAccountTypes: TDataSetProvider;
    qryBankAccountTypes: TAbmesSQLQuery;
    qryBankAccountTypesBANK_ACCOUNT_TYPE_CODE: TAbmesFloatField;
    qryBankAccountTypesBANK_ACCOUNT_TYPE_NAME: TAbmesWideStringField;
    qryCompanyBankAccountsBANK_ACCOUNT_TYPE_CODE: TAbmesFloatField;
    qryPRPerPriceModifiers: TAbmesSQLQuery;
    qryPRPerPriceModifiersPRPER_PRICE_MODIFIER_CODE: TAbmesFloatField;
    qryPRPerPriceModifiersPARTNER_CODE: TAbmesFloatField;
    qryPRPerPriceModifiersBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qryPRPerPriceModifiersPAR_REL_PERIOD_CODE: TAbmesFloatField;
    qryPRPerPriceModifiersPRPER_PRICE_MODIFIER_NO: TAbmesFloatField;
    qryPRPerPriceModifiersPRPER_PRICE_MODIFIER_NAME: TAbmesWideStringField;
    qryPRPerPriceModifiersPRODUCT_SET_CODE: TAbmesFloatField;
    qryPRPerPriceModifiersACQUIRE_PRICE_MODIFIER: TAbmesFloatField;
    qryPRPerPriceModifiersLEASE_PRICE_MODIFIER: TAbmesFloatField;
    qryGetNewPRPerPriceModifierCode: TAbmesSQLQuery;
    qryGetNewPRPerPriceModifierCodeNEW_PRPER_PRICE_MODIFIER_CODE: TAbmesFloatField;
    qryFixPRPerPriceModifierNos: TAbmesSQLQuery;
    qryPRPerPriceModifierProductSets: TAbmesSQLQuery;
    qryPRPerPriceModifierProductSetsPRODUCT_SET_CODE: TAbmesFloatField;
    qryPRPerPriceModifierProductSetsPRODUCT_SET_NO: TAbmesFloatField;
    qryPRPerPriceModifierProductSetsPRODUCT_SET_NAME: TAbmesWideStringField;
    prvPRPerPriceModifierProductSets: TDataSetProvider;
    qryCompaniesCOMPANY_NAME: TAbmesWideStringField;
    qryCompaniesVAT_NO: TAbmesWideStringField;
    qryCompaniesCOMPANY_TYPE_ABBREV: TAbmesWideStringField;
    qryPartnersCOMPANY_STATUS_CODE: TAbmesFloatField;
    qrySpecFinModelsFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField;
    prvFMMovementOffsetTypes: TDataSetProvider;
    qryFMMovementOffsetTypes: TAbmesSQLQuery;
    qryFMMovementOffsetTypesFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField;
    qryFMMovementOffsetTypesFM_MOVEMENT_OFFSET_TYPE_NAME: TAbmesWideStringField;
    qrySetSkipPRPerCheckPartnerCode: TAbmesSQLQuery;
    qryCheckPerRelPeriods: TAbmesSQLQuery;
    qryParRelPeriodsFIN_PARTNER_CODE: TAbmesFloatField;
    qryParRelPeriodsFIN_PARTNER_SHORT_NAME: TAbmesWideStringField;
    qryParRelPeriodsOVERRIDE_FIN_PARTNER: TAbmesFloatField;
    qryParRelPeriodsINHRT_FIN_PARTNER_CODE: TAbmesFloatField;
    qryParRelPeriodsINHRT_FIN_PARTNER_SHORT_NAME: TAbmesWideStringField;
    qryCommonParRelPeriodFIN_PARTNER_CODE: TAbmesFloatField;
    qryCommonParRelPeriodFIN_PARTNER_SHORT_NAME: TAbmesWideStringField;
    qryCompanyI_FIRST_NAME: TAbmesWideStringField;
    qryCompanyI_MIDDLE_NAME: TAbmesWideStringField;
    qryCompanyI_LAST_NAME: TAbmesWideStringField;
    qryCompanyI_ABBREV: TAbmesWideStringField;
    qryCompanyI_SHORT_NAME: TAbmesWideStringField;
    qryCompanyI_COMPANY_NAME: TAbmesWideStringField;
    qryCompanyI_STATE: TAbmesWideStringField;
    qryCompanyI_REGION: TAbmesWideStringField;
    qryCompanyI_CITY: TAbmesWideStringField;
    qryCompanyI_ADDRESS: TAbmesWideStringField;
    qryCompanyRepresentativesI_FIRST_NAME: TAbmesWideStringField;
    qryCompanyRepresentativesI_MIDDLE_NAME: TAbmesWideStringField;
    qryCompanyRepresentativesI_LAST_NAME: TAbmesWideStringField;
    qryCompanyOfficesI_OFFICE_NAME: TAbmesWideStringField;
    qryCompanyOfficesI_STATE: TAbmesWideStringField;
    qryCompanyOfficesI_REGION: TAbmesWideStringField;
    qryCompanyOfficesI_CITY: TAbmesWideStringField;
    qryCompanyOfficesI_ADDRESS: TAbmesWideStringField;
    qryCompanyI_COMPANY_TYPE_CODE: TAbmesFloatField;
    qryParRelPeriod: TAbmesSQLQuery;
    qryParRelPeriodFIN_PARTNER_CODE: TAbmesFloatField;
    qryPartnerInfoI_PARTNER_NAME: TAbmesWideStringField;
    qryPartnerInfoI_COMPANY_SHORT_NAME: TAbmesWideStringField;
    qryPartnerInfoI_CITY: TAbmesWideStringField;
    qryPartnerInfoI_ADDRESS: TAbmesWideStringField;
    qryPartnerInfoI_FIRST_NAME: TAbmesWideStringField;
    qryPartnerInfoI_MIDDLE_NAME: TAbmesWideStringField;
    qryPartnerInfoI_LAST_NAME: TAbmesWideStringField;
    qryParRelPartnerOfficeAddress: TAbmesSQLQuery;
    qryParRelPartnerOfficeAddressADDRESS: TAbmesWideStringField;
    qryParRelPartnerOfficeAddressI_ADDRESS: TAbmesWideStringField;
    qryCompanyRepresentativesI_NAME: TAbmesWideStringField;
    qrySpecFinModelsEXEC_DEPT_CODE: TAbmesFloatField;
    qrySpecFinModelsEXEC_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryFixCompanyStatusChanges: TAbmesSQLQuery;
    qryPartnersPARTNER_ID: TAbmesWideStringField;
    procedure qryParRelAfterProviderStartTransaction(DataSet: TDataSet);
    procedure prvParRelUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure prvParRelAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvParRelBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvParRelBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvCompanyOfficesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvCompanyBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure qryCompaniesBeforeOpen(DataSet: TDataSet);
    procedure prvCompanyRepresentativesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvCompanyContactsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvCompanyAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure qryCompanyAfterProviderStartTransaction(DataSet: TDataSet);
    procedure prvCompanyBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvCompanyAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvCompaniesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvCompanyBankAccountsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryClientProductSignaturesBeforeOpen(DataSet: TDataSet);
    procedure qryClientProductSignaturesAfterClose(DataSet: TDataSet);
    procedure qryParRelBeforeProviderEndTransaction(DataSet: TDataSet;
      Commit: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure prvCompanyStatusBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvCompanyStatusAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvCompanyStatusBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryCompanyStatusBeforeProviderEndTransaction(DataSet: TDataSet;
      Commit: Boolean);
  private
    FDocsDelta: Variant;
    FPRPerCheckPartnerCode: Integer;
    FPRPerCheckBorderRelTypeCode: Integer;
    FCompanyCode: Integer;
    procedure GetTableNameAndPrimaryKey(ACompanyKind: TCompanyKind;
      var Table, PrimaryKey: string);
    function GetNewParRelPeriodCode: Integer;
    function GetNewAccountCode: Integer;
    function GetNewSpecFinModelCode: Integer;
    function GetNewSpecFinModelLineCode: Integer;
    procedure InsertRelatedCompanyKindRecord(const ACompanyKind, ACompanyCode,
      APriorityCode, ACommonPartnerCode: Variant);
    procedure SetCompanyPriority(ACompanyKind, ACompanyCode,
      APriorityCode: Integer);
    procedure DeleteCompanyRecord(ACompanyKind, ACompanyCode: Integer);
    procedure SetCompanyCommonPartner(const ACompanyKind, ACompanyCode,
      ACommonPartnerCode: Variant);
    procedure SetSkipPRPerCheckPartnerCode(APartnerCode: Integer);
    procedure CheckParRelPeriods(APartnerCode, AParRelPeriodCode: Integer);
    procedure BeginPRPerCheckDeffer(APartnerCode, ABorderRelTypeCode: Integer);
    procedure CommitPRPerCheckDeffer;
    procedure RollbackPRPerCheckDeffer;
    procedure EndPRPerCheckDeffer(AMustPerformCheck: Boolean);
  protected
    procedure GetCompanyInfo(CompanyCode: Integer;
      out CompanyFullName: string;
      out City: string;
      out Address: string;
      out TaxNo: string;
      out BulstatNo: string;
      out CountryAbbrev: string;
      out MediatorCompanyCode: string;
      out CompanyShortName: string;
      out Bulstat: string;
      out BulstatEx: string;
      out IsPerson: Boolean;
      out FirstName: string;
      out MiddleName: string;
      out LastName: string;
      out EGN: string;
      out CompanyNo: Integer;
      out VatRegistered: Boolean;
      out VatNo: string;
      out ICompanyFullName: string;
      out ICompanyShortName: string;
      out IFirstName: string;
      out IMiddleName: string;
      out ILastName: string;
      out ICity: string;
      out IAddress: string);
    procedure GetCompanyRolesInfo(
      CompanyCode: Integer;
      out IsClient: Boolean; out ClientPriorityCode: Integer;
      out IsMediator: Boolean; out MediatorPriorityCode: Integer;
      out IsVendor: Boolean; out VendorPriorityCode: Integer;
      out IsGovernmentOrganization: Boolean; out GovOrgPriorityCode: Integer;
      out IsBank: Boolean; out BankPriorityCode: Integer;
      out IsWorker: Boolean; out WorkerPriorityCode: Integer);
    function ParRelExists(PartnerCode: Integer; BorderRelTypeCode: Integer): Boolean;
    function GetNewCompanyTypeCode: Integer;
    function GetNewPRPerPriceModifierCode: Integer;
    function GetFinPartner(PartnerCode: Integer; BorderRelTypeCode: Integer;
      BeginDate: TDateTime; EndDate: TDateTime): OleVariant;
    procedure GetParRelPartnerOfficeAddress(
      PartnerCode: Integer;
      BorderRelTypeCode: Integer;
      ToDate: TDateTime;
      out Address: string;
      out IAddress: string);
  end;

type
  IdmCompaniesProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmCompaniesProxy = class(TDBPooledDataModuleProxy, IdmCompaniesProxy)
  private
    class var FSingleton: TdmCompaniesProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmCompanies>;
  strict protected
    property LockedInstance: ISmartLock<TdmCompanies> read GetLockedInstance;
  public
    class property Singleton: TdmCompaniesProxy read FSingleton;

    procedure GetCompanyInfo(CompanyCode: Integer;
      out CompanyFullName: string;
      out City: string;
      out Address: string;
      out TaxNo: string;
      out BulstatNo: string;
      out CountryAbbrev: string;
      out MediatorCompanyCode: string;
      out CompanyShortName: string;
      out Bulstat: string;
      out BulstatEx: string;
      out IsPerson: Boolean;
      out FirstName: string;
      out MiddleName: string;
      out LastName: string;
      out EGN: string;
      out CompanyNo: Integer;
      out VatRegistered: Boolean;
      out VatNo: string;
      out ICompanyFullName: string;
      out ICompanyShortName: string;
      out IFirstName: string;
      out IMiddleName: string;
      out ILastName: string;
      out ICity: string;
      out IAddress: string);
    procedure GetCompanyRolesInfo(
      CompanyCode: Integer;
      out IsClient: Boolean; out ClientPriorityCode: Integer;
      out IsMediator: Boolean; out MediatorPriorityCode: Integer;
      out IsVendor: Boolean; out VendorPriorityCode: Integer;
      out IsGovernmentOrganization: Boolean; out GovOrgPriorityCode: Integer;
      out IsBank: Boolean; out BankPriorityCode: Integer;
      out IsWorker: Boolean; out WorkerPriorityCode: Integer);
    function ParRelExists(PartnerCode: Integer; BorderRelTypeCode: Integer): Boolean;
    function GetNewCompanyTypeCode: Integer;
    function GetNewPRPerPriceModifierCode: Integer;
    function GetFinPartner(PartnerCode: Integer; BorderRelTypeCode: Integer;
      BeginDate: TDateTime; EndDate: TDateTime): OleVariant;
    procedure GetParRelPartnerOfficeAddress(
      PartnerCode: Integer;
      BorderRelTypeCode: Integer;
      ToDate: TDateTime;
      out Address: string;
      out IAddress: string);
  end;

implementation

uses
  uUtils, Variants, uDBPooledDataModuleHelper, uServerMessageIds,
  uSvrUtils, DateUtils, uCompanyClasses;

{$R *.DFM}

const
  CompanyKindsFields: array [0..5] of record
    CompanyKind: TCompanyKind;
    KeyField: string;
    PriorityCodeField: string;
    CommonPartnerCodeField: string;
  end = (
    (CompanyKind: ckClient; KeyField: 'IS_CLIENT'; PriorityCodeField: 'CLIENT_PRIORITY_CODE'; CommonPartnerCodeField: 'CLIENT_COMMON_PARTNER_CODE'),
    (CompanyKind: ckMediator; KeyField: 'IS_MEDIATOR'; PriorityCodeField: 'MEDIATOR_PRIORITY_CODE'; CommonPartnerCodeField: ''),
    (CompanyKind: ckVendor; KeyField: 'IS_VENDOR'; PriorityCodeField: 'VENDOR_PRIORITY_CODE'; CommonPartnerCodeField: 'VENDOR_COMMON_PARTNER_CODE'),
    (CompanyKind: ckGovernmentOrganization; KeyField: 'IS_GOV_ORGANIZATION'; PriorityCodeField: 'GOV_ORGANIZATION_PRIORITY_CODE'; CommonPartnerCodeField: ''),
    (CompanyKind: ckBank; KeyField: 'IS_BANK'; PriorityCodeField: 'BANK_PRIORITY_CODE'; CommonPartnerCodeField: ''),
    (CompanyKind: ckWorker; KeyField: 'IS_WORKER'; PriorityCodeField: 'WORKER_PRIORITY_CODE'; CommonPartnerCodeField: '')
  );

{ TdmCompaniesProxy }

function TdmCompaniesProxy.GetLockedInstance: ISmartLock<TdmCompanies>;
begin
  Result:= ISmartLock<TdmCompanies>(inherited LockedInstance);
end;

procedure TdmCompaniesProxy.GetCompanyInfo(CompanyCode: Integer;
  out CompanyFullName: string;
  out City: string;
  out Address: string;
  out TaxNo: string;
  out BulstatNo: string;
  out CountryAbbrev: string;
  out MediatorCompanyCode: string;
  out CompanyShortName: string;
  out Bulstat: string;
  out BulstatEx: string;
  out IsPerson: Boolean;
  out FirstName: string;
  out MiddleName: string;
  out LastName: string;
  out EGN: string;
  out CompanyNo: Integer;
  out VatRegistered: Boolean;
  out VatNo: string;
  out ICompanyFullName: string;
  out ICompanyShortName: string;
  out IFirstName: string;
  out IMiddleName: string;
  out ILastName: string;
  out ICity: string;
  out IAddress: string);
begin
  LockedInstance.Value.GetCompanyInfo(CompanyCode,
    CompanyFullName,
    City,
    Address,
    TaxNo,
    BulstatNo,
    CountryAbbrev,
    MediatorCompanyCode,
    CompanyShortName,
    Bulstat,
    BulstatEx,
    IsPerson,
    FirstName,
    MiddleName,
    LastName,
    EGN,
    CompanyNo,
    VatRegistered,
    VatNo,
    ICompanyFullName,
    ICompanyShortName,
    IFirstName,
    IMiddleName,
    ILastName,
    ICity,
    IAddress);
end;

procedure TdmCompaniesProxy.GetCompanyRolesInfo(CompanyCode: Integer;
  out IsClient: Boolean; out ClientPriorityCode: Integer;
  out IsMediator: Boolean; out MediatorPriorityCode: Integer;
  out IsVendor: Boolean; out VendorPriorityCode: Integer;
  out IsGovernmentOrganization: Boolean; out GovOrgPriorityCode: Integer;
  out IsBank: Boolean; out BankPriorityCode: Integer;
  out IsWorker: Boolean; out WorkerPriorityCode: Integer);
begin
  LockedInstance.Value.GetCompanyRolesInfo(
    CompanyCode,
    IsClient,
    ClientPriorityCode,
    IsMediator,
    MediatorPriorityCode,
    IsVendor,
    VendorPriorityCode,
    IsGovernmentOrganization,
    GovOrgPriorityCode,
    IsBank,
    BankPriorityCode,
    IsWorker,
    WorkerPriorityCode);
end;

function TdmCompaniesProxy.GetFinPartner(PartnerCode,
  BorderRelTypeCode: Integer; BeginDate, EndDate: TDateTime): OleVariant;
begin
  Result:= LockedInstance.Value.GetFinPartner(PartnerCode, BorderRelTypeCode, BeginDate, EndDate);
end;

function TdmCompaniesProxy.ParRelExists(PartnerCode,
  BorderRelTypeCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.ParRelExists(PartnerCode, BorderRelTypeCode);
end;

function TdmCompaniesProxy.GetNewCompanyTypeCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewCompanyTypeCode;
end;

function TdmCompaniesProxy.GetNewPRPerPriceModifierCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewPRPerPriceModifierCode;
end;

procedure TdmCompaniesProxy.GetParRelPartnerOfficeAddress(PartnerCode,
  BorderRelTypeCode: Integer; ToDate: TDateTime; out Address,
  IAddress: string);
begin
  LockedInstance.Value.GetParRelPartnerOfficeAddress(
    PartnerCode,
    BorderRelTypeCode,
    ToDate,
    Address,
    IAddress);
end;

{ TdmCompanies }

procedure TdmCompanies.prvCompanyOfficesBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if (UpdateKind = ukInsert) then
    begin
      qryGetMaxCompanyOfficeCode.ParamByName('COMPANY_CODE').Value:= DeltaDS.FieldByName('COMPANY_CODE').NewValue;
      qryGetMaxCompanyOfficeCode.TempOpen/
        procedure begin
          DeltaDS.FieldByName('OFFICE_CODE').NewValue:= qryGetMaxCompanyOfficeCodeMAX_OFFICE_CODE.AsInteger + 1;
        end;
    end;  { with }
end;

procedure TdmCompanies.prvCompanyBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);

var
  i: Integer;
  CompanyCode: Integer;

begin
  inherited;

  if (SourceDS = qryCompany) then
    begin
      if (UpdateKind = ukInsert) then
        qryNewCompanyCode.TempOpen/
          procedure begin
            DeltaDS.FieldByName('COMPANY_CODE').NewValue:= qryNewCompanyCodeCOMPANY_CODE.AsInteger;
          end;

      CompanyCode:= GetFieldValue(DeltaDS.FieldByName('COMPANY_CODE'));

      for i:= Low(CompanyKindsFields) to High(CompanyKindsFields) do
        with DeltaDS.FieldByName(CompanyKindsFields[i].KeyField) do
          begin
            if not VarIsNullOrEmpty(Value) and
               not VarIsNullOrEmpty(OldValue) and
               ((Value = 0) and (OldValue = 1)) then
              DeleteCompanyRecord(
                Integer(CompanyKindsFields[i].CompanyKind),
                CompanyCode)
            else
              begin
                // samo smenen prioritet na niakoi
                if (UpdateKind = ukModify) and
                   not VarIsNullOrEmpty(DeltaDS.FieldByName(CompanyKindsFields[i].PriorityCodeField).NewValue) and
                   (DeltaDS.FieldByName(CompanyKindsFields[i].KeyField).OldValue = 1) then
                  SetCompanyPriority(
                    Integer(CompanyKindsFields[i].CompanyKind),
                    CompanyCode,
                    DeltaDS.FieldByName(CompanyKindsFields[i].PriorityCodeField).NewValue);

                // samo smenen obobshtawasht na niakoi
                if (CompanyKindsFields[i].CommonPartnerCodeField <> '') and
                   (UpdateKind = ukModify) and
                   not VarIsEmpty(DeltaDS.FieldByName(CompanyKindsFields[i].CommonPartnerCodeField).NewValue) and
                   (DeltaDS.FieldByName(CompanyKindsFields[i].KeyField).OldValue = 1) then
                  SetCompanyCommonPartner(
                    Integer(CompanyKindsFields[i].CompanyKind),
                    CompanyCode,
                    DeltaDS.FieldByName(CompanyKindsFields[i].CommonPartnerCodeField).NewValue);
              end;
          end;  { with }

      if (DeltaDS.FieldByName('COMPANY_CLASS_CODE').OldValue = 1) and
         ( ( not VarIsNullOrEmpty(DeltaDS.FieldByName('COMPANY_CLASS_CODE').NewValue) and
             (DeltaDS.FieldByName('COMPANY_CLASS_CODE').NewValue <> 1) ) or
           (UpdateKind = ukDelete) )  then
        ExecUpdateQuery(ukDelete, DeltaDS, nil, nil, qryDeleteFirm, True);

      if (DeltaDS.FieldByName('COMPANY_CLASS_CODE').OldValue = 2) and
         ( ( not VarIsNullOrEmpty(DeltaDS.FieldByName('COMPANY_CLASS_CODE').NewValue) and
             (DeltaDS.FieldByName('COMPANY_CLASS_CODE').NewValue <> 2) ) or
           (UpdateKind = ukDelete) )  then
        ExecUpdateQuery(ukDelete, DeltaDS, nil, nil, qryDeletePerson, True);

      if (DeltaDS.FieldByName('COMPANY_CLASS_CODE').OldValue = 2) and
         VarIsNullOrEmpty(DeltaDS.FieldByName('COMPANY_CLASS_CODE').NewValue) then
        ExecUpdateQuery(ukModify, DeltaDS, nil, qryModifyPerson, nil, True);

      if (DeltaDS.FieldByName('COMPANY_CLASS_CODE').OldValue = 3) and
         ( ( not VarIsNullOrEmpty(DeltaDS.FieldByName('COMPANY_CLASS_CODE').NewValue) and
             (DeltaDS.FieldByName('COMPANY_CLASS_CODE').NewValue <> 3) ) or
           (UpdateKind = ukDelete) )  then
        ExecUpdateQuery(ukDelete, DeltaDS, nil, nil, qryDeleteCumulativePartner, True);

      Applied:= (UpdateKind = ukModify) and not RecordChanged(DeltaDS);
    end
  else
    begin
      if (SourceDS = qryPersonCrafts) and (UpdateKind = ukInsert) then
        DeltaDS.FieldByName('COMPANY_CODE').NewValue:=
          GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('COMPANY_CODE'));
    end;
end;

procedure TdmCompanies.InsertRelatedCompanyKindRecord(const ACompanyKind, ACompanyCode, APriorityCode, ACommonPartnerCode: Variant);
var
  Table, PrimaryKey: string;
  InsertQuery: TAbmesSQLQuery;
begin
  GetTableNameAndPrimaryKey(TCompanyKind(ACompanyKind), Table, PrimaryKey);

  if VarIsEmpty(ACommonPartnerCode) then
    InsertQuery:= qryInsertRelatedCompanyRecord
  else
    InsertQuery:= qryInsertRelatedCompanyWithCommonPartnerRecord;

  with InsertQuery do
    begin
      MacroByName('COMPANIES_TABLE').Value:= Table;
      MacroByName('COMPANY_CODE').Value:= PrimaryKey;

      ParamByName('COMPANY_CODE').Value:= ACompanyCode;
      ParamByName('PRIORITY_CODE').Value:= APriorityCode;
      if not VarIsEmpty(ACommonPartnerCode) then
        ParamByName('COMMON_PARTNER_CODE').Value:= ACommonPartnerCode;

      ExecSQL;

      if (RowsAffected <> 1) then
        raise Exception.Create(SExecSQLErrorId);
  end;  { with }
end;

function TdmCompanies.ParRelExists(PartnerCode, BorderRelTypeCode: Integer): Boolean;
begin
  qryParRelExists.ParamByName('PARTNER_CODE').AsInteger:= PartnerCode;
  qryParRelExists.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:= BorderRelTypeCode;
  Result:= qryParRelExists.TempOpen/
    function: WordBool begin
      Result:= qryParRelExistsPAR_REL_EXISTS.AsBoolean;
    end;
end;

procedure TdmCompanies.GetTableNameAndPrimaryKey(
  ACompanyKind: TCompanyKind; var Table, PrimaryKey: string);
begin
  case ACompanyKind of
    ckNone:
      begin
        Table:= 'COMPANIES';
        PrimaryKey:= 'COMPANY_CODE';
      end;
    ckClient:
      begin
        Table:= 'CLIENT_COMPANIES';
        PrimaryKey:= 'CLIENT_COMPANY_CODE';
      end;
    ckMediator:
      begin
        Table:= 'MEDIATOR_COMPANIES';
        PrimaryKey:= 'MEDIATOR_COMPANY_CODE';
      end;
    ckVendor:
      begin
        Table:= 'VENDOR_COMPANIES';
        PrimaryKey:= 'VENDOR_COMPANY_CODE';
      end;
    ckGovernmentOrganization:
      begin
        Table:= 'GOVERNMENT_ORGANIZATIONS';
        PrimaryKey:= 'GOVERNMENT_ORGANIZATION_CODE';
      end;
    ckBank:
      begin
        Table:= 'BANK_COMPANIES';
        PrimaryKey:= 'BANK_COMPANY_CODE';
      end;
    ckWorker:
      begin
        Table:= 'WORKERS';
        PrimaryKey:= 'COMPANY_CODE';
      end;
    else
      raise Exception.Create(SUnknownCompanyKindId);
  end;  { case }

  if (ACompanyKind in [ckClient, ckVendor]) then
    Table:= Table + '_FOR_EDIT';
end;

procedure TdmCompanies.DataModuleCreate(Sender: TObject);
begin
  RegisterMacroLibrary(mshLocalMacroLibrary);
  inherited;
end;

procedure TdmCompanies.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  UnregisterMacroLibrary(mshLocalMacroLibrary);
end;

procedure TdmCompanies.DeleteCompanyRecord(ACompanyKind, ACompanyCode: Integer);
var
  Table, PrimaryKey: string;
begin
  GetTableNameAndPrimaryKey(TCompanyKind(ACompanyKind), Table, PrimaryKey);

  with qryDeleteRelatedCompanyRecord do
    begin
      MacroByName('COMPANIES_TABLE').Value:= Table;
      MacroByName('COMPANY_CODE').Value:= PrimaryKey;

      ParamByName('COMPANY_CODE').Value:= ACompanyCode;

      ExecSQL;

      if (RowsAffected <> 1) then
        raise Exception.Create(SExecSQLErrorId);
    end;  { with }
end;

procedure TdmCompanies.qryClientProductSignaturesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmCompanies.qryClientProductSignaturesAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmCompanies.qryCompaniesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with qryCompanies do
    if not ParamByName('EGN').IsNull then
      ProcessNoParamBeforeQueryOpen(ParamByName('EGN'));
end;

procedure TdmCompanies.SetCompanyPriority(ACompanyKind, ACompanyCode, APriorityCode: Integer);
var
  Table, PrimaryKey: string;
begin
  GetTableNameAndPrimaryKey(TCompanyKind(ACompanyKind), Table, PrimaryKey);

  with qrySetCompanyPriority do
    begin
      MacroByName('COMPANIES_TABLE').Value:= Table;
      MacroByName('COMPANY_CODE').Value:= PrimaryKey;

      ParamByName('COMPANY_CODE').Value:= ACompanyCode;
      ParamByName('PRIORITY_CODE').Value:= APriorityCode;

      ExecSQL;

      if (RowsAffected <> 1) then
        raise Exception.Create(SExecSQLErrorId);
    end;  { with }
end;

procedure TdmCompanies.SetCompanyCommonPartner(const ACompanyKind, ACompanyCode, ACommonPartnerCode: Variant);
var
  Table, PrimaryKey: string;
begin
  GetTableNameAndPrimaryKey(TCompanyKind(ACompanyKind), Table, PrimaryKey);

  with qrySetCompanyCommonPartner do
    begin
      MacroByName('COMPANIES_TABLE').Value:= Table;
      MacroByName('COMPANY_CODE').Value:= PrimaryKey;

      ParamByName('COMPANY_CODE').Value:= ACompanyCode;
      ParamByName('COMMON_PARTNER_CODE').Value:= ACommonPartnerCode;

      ExecSQL;

      if (RowsAffected <> 1) then
        raise Exception.Create(SExecSQLErrorId);
    end;  { with }
end;

procedure TdmCompanies.prvCompanyRepresentativesBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if (UpdateKind = ukInsert) then
    begin
      qryGetMaxRepresentativeCode.ParamByName('COMPANY_CODE').Value:= DeltaDS.FieldByName('COMPANY_CODE').Value;
      qryGetMaxRepresentativeCode.TempOpen/
        procedure begin
          DeltaDS.FieldByName('REPRESENTATIVE_CODE').NewValue:=
            qryGetMaxRepresentativeCodeMAX_REPRESENTATIVE_CODE.AsInteger + 1;
        end;
    end;  { if }
end;

procedure TdmCompanies.prvCompanyStatusAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FCompanyCode:= 0;
end;

procedure TdmCompanies.prvCompanyStatusBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FCompanyCode:= 0;
end;

procedure TdmCompanies.prvCompanyStatusBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;

  if (SourceDS = qryCompanyStatusesChanges) and
     (UpdateKind in [ukInsert, ukModify]) then
    with DeltaDS.FieldByName('STATUS_DATE') do
      if not VarIsNullOrEmpty(NewValue) then
        begin
          NewValue:= IncYear(NewValue, 2000);
          FCompanyCode:= GetFieldValue(DeltaDS.FieldByName('COMPANY_CODE'));
        end;
end;

procedure TdmCompanies.prvParRelAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmCompanies.prvParRelBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  ResetApplyRetryCounter;

  BeginPRPerCheckDeffer(OwnerData[0], OwnerData[1]);
  FDocsDelta:= OwnerData[2];
end;

// begin PRPerCheckDeffering routines

procedure TdmCompanies.BeginPRPerCheckDeffer(APartnerCode, ABorderRelTypeCode: Integer);
begin
  FPRPerCheckPartnerCode:= APartnerCode;
  FPRPerCheckBorderRelTypeCode:= ABorderRelTypeCode;
  SetSkipPRPerCheckPartnerCode(APartnerCode);
end;

procedure TdmCompanies.EndPRPerCheckDeffer(AMustPerformCheck: Boolean);
begin
  try
    Assert((FPRPerCheckPartnerCode <> 0) and (FPRPerCheckBorderRelTypeCode <> 0));

    SetSkipPRPerCheckPartnerCode(0);

    if AMustPerformCheck then
      CheckParRelPeriods(FPRPerCheckPartnerCode, FPRPerCheckBorderRelTypeCode);
  finally
    FPRPerCheckPartnerCode:= 0;
    FPRPerCheckBorderRelTypeCode:= 0;
  end;  { try }
end;

procedure TdmCompanies.CommitPRPerCheckDeffer;
begin
  EndPRPerCheckDeffer(True);
end;

procedure TdmCompanies.RollbackPRPerCheckDeffer;
begin
  EndPRPerCheckDeffer(False);
end;

// end PRPerCheckDeffering routines

procedure TdmCompanies.prvParRelBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
  NowDateTime: TDateTime;
begin
  inherited;
  NowDateTime:= ContextNow;

  if (SourceDS = qryParRel) then
    Applied:= True;

  if (SourceDS = qryParRelPeriods) then
    begin
      if (UpdateKind = ukInsert) then
        begin
          DeltaDS.FieldByName('PAR_REL_PERIOD_CODE').NewValue:= GetNewParRelPeriodCode;

          DeltaDS.FieldByName('CREATE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
          DeltaDS.FieldByName('CREATE_DATE').NewValue:= DateOf(NowDateTime);
          DeltaDS.FieldByName('CREATE_TIME').NewValue:= TimeOf(NowDateTime);
        end;

      if (UpdateKind in [ukInsert, ukModify]) then
        begin
          DeltaDS.FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
          DeltaDS.FieldByName('CHANGE_DATE').NewValue:= DateOf(NowDateTime);
          DeltaDS.FieldByName('CHANGE_TIME').NewValue:= TimeOf(NowDateTime);
        end;
    end;

  if (SourceDS = qrySpecFinModels) then
    begin
      if (UpdateKind = ukInsert) then
        begin
          DeltaDS.FieldByName('SPEC_FIN_MODEL_CODE').NewValue:= GetNewSpecFinModelCode;

          DeltaDS.FieldByName('PARTNER_CODE').NewValue:=
            GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('PARTNER_CODE'));
          DeltaDS.FieldByName('BORDER_REL_TYPE_CODE').NewValue:=
            GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('BORDER_REL_TYPE_CODE'));
          DeltaDS.FieldByName('PAR_REL_PERIOD_CODE').NewValue:=
            GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('PAR_REL_PERIOD_CODE'));

          DeltaDS.FieldByName('CREATE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
          DeltaDS.FieldByName('CREATE_DATE').NewValue:= DateOf(NowDateTime);
          DeltaDS.FieldByName('CREATE_TIME').NewValue:= TimeOf(NowDateTime);
        end;

      if (UpdateKind in [ukInsert, ukModify]) then
        begin
          DeltaDS.FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
          DeltaDS.FieldByName('CHANGE_DATE').NewValue:= DateOf(NowDateTime);
          DeltaDS.FieldByName('CHANGE_TIME').NewValue:= TimeOf(NowDateTime);

          if (VarToiNT(DeltaDS.FieldByName('IS_EST_MODEL').NewValue) = 1) then
            begin
              SetParams(qryClearEstModels.Params, DeltaDS);
              qryClearEstModels.ExecSQL;
            end;
        end;
    end;

  if (SourceDS = qrySpecFinModelLines) then
    begin
      if (UpdateKind = ukInsert) then
        begin
          DeltaDS.FieldByName('SPEC_FIN_MODEL_LINE_CODE').NewValue:= GetNewSpecFinModelLineCode;

          DeltaDS.FieldByName('SPEC_FIN_MODEL_CODE').NewValue:=
            GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('SPEC_FIN_MODEL_CODE'));
          DeltaDS.FieldByName('PARTNER_CODE').NewValue:=
            GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('PARTNER_CODE'));
        end;

      if (UpdateKind in [ukInsert, ukModify]) then
        begin
          with DeltaDS.FieldByName('FIN_MODEL_LINE_NO') do
            if not VarIsEmpty(NewValue) then
              NewValue:= -Abs(NewValue);
        end;
    end;

  if (SourceDS = qryPRPerPriceModifiers) and (UpdateKind = ukInsert) then
    begin
      DeltaDS.FieldByName('PARTNER_CODE').NewValue:=
        GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('PARTNER_CODE'));
      DeltaDS.FieldByName('BORDER_REL_TYPE_CODE').NewValue:=
        GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('BORDER_REL_TYPE_CODE'));
      DeltaDS.FieldByName('PAR_REL_PERIOD_CODE').NewValue:=
        GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('PAR_REL_PERIOD_CODE'));
    end;  { if }

  if (SourceDS = qryPRPerPriceModifiers) and
     (UpdateKind in [ukInsert, ukModify]) and
     (not VarIsNullOrEmpty(DeltaDS.FieldByName('PRPER_PRICE_MODIFIER_NO').NewValue)) then
    begin
      DeltaDS.FieldByName('PRPER_PRICE_MODIFIER_NO').NewValue:=
        -Abs(VarToInt(DeltaDS.FieldByName('PRPER_PRICE_MODIFIER_NO').NewValue));
    end;  { if }

  Applied:= not RecordChanged(DeltaDS);
end;

procedure TdmCompanies.prvParRelUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;

  ApplyRetry(E, Response);
end;

procedure TdmCompanies.prvCompanyContactsBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if (UpdateKind = ukInsert) then
    begin
      qryGetMaxContactCode.ParamByName('COMPANY_CODE').Value:= DeltaDS.FieldByName('COMPANY_CODE').Value;
      qryGetMaxContactCode.TempOpen/
        procedure begin
          DeltaDS.FieldByName('CONTACT_CODE').NewValue:= qryGetMaxContactCodeMAX_CONTACT_CODE.AsInteger + 1;
        end;
    end;  { if }
end;

procedure TdmCompanies.prvCompanyAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
var
  i: Integer;
  CompanyCode: Integer;
  CommonPartnerCode: Variant;
begin
  inherited;

  if (SourceDS = qryCompany) then
    begin
      CompanyCode:= GetFieldValue(DeltaDS.FieldByName('COMPANY_CODE'));

      if ( (DeltaDS.FieldByName('COMPANY_CLASS_CODE').OldValue = 0) or
           (UpdateKind = ukInsert)
         ) and
         not VarIsNullOrEmpty(DeltaDS.FieldByName('COMPANY_CLASS_CODE').NewValue) then
      begin
        case IntToCompanyClass(DeltaDS.FieldByName('COMPANY_CLASS_CODE').NewValue) of
          ccFirm:
            ExecUpdateQuery(ukInsert, DeltaDS, qryInsertFirm, nil, nil, True);

          ccPerson:
            ExecUpdateQuery(ukInsert, DeltaDS, qryInsertPerson, nil, nil, True);

          ccCumulative:
            ExecUpdateQuery(ukInsert, DeltaDS, qryInsertCumulativePartner, nil, nil, True);

          ccCommon: ;
            // in case of ccCommon do nothing - triggers will do the job
        else
          raise Exception.Create('Unknown Company Class');
        end;  { case }
      end;  { if }

      for i:= Low(CompanyKindsFields) to High(CompanyKindsFields) do
        with DeltaDS.FieldByName(CompanyKindsFields[i].KeyField) do
          begin
            if ( not VarIsNullOrEmpty(Value) and
                 not VarIsNullOrEmpty(OldValue) and
                 ((Value = 1) and (OldValue = 0))
               ) or
               ( (UpdateKind = ukInsert) and
                 GetFieldValue(DeltaDS.FieldByName(CompanyKindsFields[i].KeyField)) = 1
               ) then
              begin
                if (CompanyKindsFields[i].CommonPartnerCodeField <> '') then
                  CommonPartnerCode:= DeltaDS.FieldByName(CompanyKindsFields[i].CommonPartnerCodeField).Value
                else
                  CommonPartnerCode:= Unassigned;

                InsertRelatedCompanyKindRecord(
                  Integer(CompanyKindsFields[i].CompanyKind),
                  CompanyCode,
                  DeltaDS.FieldByName(CompanyKindsFields[i].PriorityCodeField).Value,
                  CommonPartnerCode);
              end;  { if }
          end;  { with, for }

      if (UpdateKind = ukInsert) then
        begin
          SetParams(qryInsertInitialCompanyStatus.Params, DeltaDS);
          qryInsertInitialCompanyStatus.ExecSQL;
          if (qryInsertInitialCompanyStatus.RowsAffected <> 1) then
            raise Exception.Create(SExecSQLErrorId);
        end;
    end;
end;

procedure TdmCompanies.GetCompanyInfo(CompanyCode: Integer;
  out CompanyFullName: string;
  out City: string;
  out Address: string;
  out TaxNo: string;
  out BulstatNo: string;
  out CountryAbbrev: string;
  out MediatorCompanyCode: string;
  out CompanyShortName: string;
  out Bulstat: string;
  out BulstatEx: string;
  out IsPerson: Boolean;
  out FirstName: string;
  out MiddleName: string;
  out LastName: string;
  out EGN: string;
  out CompanyNo: Integer;
  out VatRegistered: Boolean;
  out VatNo: string;
  out ICompanyFullName: string;
  out ICompanyShortName: string;
  out IFirstName: string;
  out IMiddleName: string;
  out ILastName: string;
  out ICity: string;
  out IAddress: string);
begin
  qryPartnerInfo.ParamByName('COMPANY_CODE').Value:= CompanyCode;
  qryPartnerInfo.Open;
  try
    CompanyFullName:= qryPartnerInfoPARTNER_NAME.AsString;
    City:= qryPartnerInfoCITY.AsString;
    Address:= qryPartnerInfoADDRESS.AsString;
    TaxNo:= qryPartnerInfoTAX_NO.AsString;
    BulstatNo:= qryPartnerInfoCUSTOM_ID.AsString;
    CountryAbbrev:= qryPartnerInfoCOUNTRY_ABBREV.AsString;
    MediatorCompanyCode:= '';
    CompanyShortName:= qryPartnerInfoCOMPANY_SHORT_NAME.AsString;
    Bulstat:= qryPartnerInfoBULSTAT.AsString;
    BulstatEx:= qryPartnerInfoBULSTAT_EX.AsString;
    IsPerson:= qryPartnerInfoIS_PERSON.AsBoolean;
    FirstName:= qryPartnerInfoFIRST_NAME.AsString;
    MiddleName:= qryPartnerInfoMIDDLE_NAME.AsString;
    LastName:= qryPartnerInfoLAST_NAME.AsString;
    EGN:= qryPartnerInfoEGN.AsString;
    CompanyNo:= qryPartnerInfoCOMPANY_NO.AsInteger;
    VatRegistered:= qryPartnerInfoVAT_REGISTERED.AsBoolean;
    VatNo:= qryPartnerInfoVAT_NO.AsString;
    ICompanyFullName:= qryPartnerInfoI_PARTNER_NAME.AsString;
    ICompanyShortName:= qryPartnerInfoI_COMPANY_SHORT_NAME.AsString;
    IFirstName:= qryPartnerInfoI_FIRST_NAME.AsString;
    IMiddleName:= qryPartnerInfoI_MIDDLE_NAME.AsString;
    ILastName:= qryPartnerInfoI_LAST_NAME.AsString;
    ICity:= qryPartnerInfoI_CITY.AsString;
    IAddress:= qryPartnerInfoI_ADDRESS.AsString;
  finally
    qryPartnerInfo.Close;
  end;   { try }
end;

procedure TdmCompanies.GetCompanyRolesInfo(
  CompanyCode: Integer;
  out IsClient: Boolean; out ClientPriorityCode: Integer;
  out IsMediator: Boolean; out MediatorPriorityCode: Integer;
  out IsVendor: Boolean; out VendorPriorityCode: Integer;
  out IsGovernmentOrganization: Boolean; out GovOrgPriorityCode: Integer;
  out IsBank: Boolean; out BankPriorityCode: Integer;
  out IsWorker: Boolean; out WorkerPriorityCode: Integer);
begin
  qryPartnerInfo.ParamByName('COMPANY_CODE').Value:= CompanyCode;
  qryPartnerInfo.Open;
  try
    IsClient:= qryPartnerInfoIS_CLIENT.AsBoolean;
    ClientPriorityCode:= qryPartnerInfoCLIENT_PRIORITY_CODE.AsInteger;
    IsMediator:= qryPartnerInfoIS_MEDIATOR.AsBoolean;
    MediatorPriorityCode:= qryPartnerInfoMEDIATOR_PRIORITY_CODE.AsInteger;
    IsVendor:= qryPartnerInfoIS_VENDOR.AsBoolean;
    VendorPriorityCode:= qryPartnerInfoVENDOR_PRIORITY_CODE.AsInteger;
    IsGovernmentOrganization:= qryPartnerInfoIS_GOVERNMENT_ORGANIZATION.AsBoolean;
    GovOrgPriorityCode:= qryPartnerInfoGOV_ORG_PRIORITY_CODE.AsInteger;
    IsBank:= qryPartnerInfoIS_BANK.AsBoolean;
    BankPriorityCode:= qryPartnerInfoBANK_PRIORITY_CODE.AsInteger;
    IsWorker:= qryPartnerInfoIS_WORKER.AsBoolean;
    WorkerPriorityCode:= qryPartnerInfoWORKER_PRIORITY_CODE.AsInteger;
  finally
    qryPartnerInfo.Close;
  end;   { try }
end;

function TdmCompanies.GetFinPartner(PartnerCode, BorderRelTypeCode: Integer;
  BeginDate, EndDate: TDateTime): OleVariant;
var
  R: Variant;
begin
  qryParRelPeriod.ParamByName('PARTNER_CODE').AsInteger:= PartnerCode;
  qryParRelPeriod.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:= BorderRelTypeCode;
  qryParRelPeriod.ParamByName('BEGIN_DATE').AsDateTime:= BeginDate;
  qryParRelPeriod.ParamByName('END_DATE').AsDateTime:= EndDate;

  qryParRelPeriod.TempOpen/
    procedure begin
      R:= qryParRelPeriodFIN_PARTNER_CODE.AsVariant;
    end;

  Result:= R;
end;

function TdmCompanies.GetNewAccountCode: Integer;
begin
  Result:= qryNewAccountCode.TempOpen/
    function: Integer begin
      Result:= qryNewAccountCodeNEW_ACCOUNT_CODE.AsInteger;
    end;
end;

function TdmCompanies.GetNewParRelPeriodCode: Integer;
begin
  Result:= qryNewParRelPeriodCode.TempOpen/
    function: Integer begin
      Result:= qryNewParRelPeriodCodeNEW_PAR_REL_PRIOD_CODE.AsInteger;
    end;
end;

function TdmCompanies.GetNewPRPerPriceModifierCode: Integer;
begin
  Result:= qryGetNewPRPerPriceModifierCode.TempOpen/
    function: Integer begin
      Result:= qryGetNewPRPerPriceModifierCodeNEW_PRPER_PRICE_MODIFIER_CODE.AsInteger;
    end;
end;

function TdmCompanies.GetNewSpecFinModelCode: Integer;
begin
  Result:= qryNewSpecFinModelCode.TempOpen/
    function: Integer begin
      Result:= qryNewSpecFinModelCodeNEW_SPEC_FIN_MODEL_CODE.AsInteger;
    end;
end;

function TdmCompanies.GetNewSpecFinModelLineCode: Integer;
begin
  Result:= qryNewSpecFinModelLineCode.TempOpen/
    function: Integer begin
      Result:= qryNewSpecFinModelLineCodeNEW_SPEC_FIN_MODEL_LINE_CODE.AsInteger;
    end;
end;

procedure TdmCompanies.GetParRelPartnerOfficeAddress(PartnerCode,
  BorderRelTypeCode: Integer; ToDate: TDateTime; out Address,
  IAddress: string);
var
  LAddress, LIAddress: string;
begin
  qryParRelPartnerOfficeAddress.ParamByName('PARTNER_CODE').AsInteger:= PartnerCode;
  qryParRelPartnerOfficeAddress.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:= BorderRelTypeCode;
  qryParRelPartnerOfficeAddress.ParamByName('TO_DATE').AsDateTime:= ToDate;

  qryParRelPartnerOfficeAddress.TempOpen/
    procedure begin
      LAddress:= qryParRelPartnerOfficeAddressADDRESS.AsString;
      LIAddress:= qryParRelPartnerOfficeAddressI_ADDRESS.AsString;
    end;

  Address:= LAddress;
  IAddress:= LIAddress;
end;

procedure TdmCompanies.qryCompanyAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmCompanies.qryCompanyStatusBeforeProviderEndTransaction(
  DataSet: TDataSet; Commit: Boolean);
begin
  inherited;
  if Commit and (FCompanyCode > 0) then
    begin
      qryFixCompanyStatusChanges.ParamByName('COMPANY_CODE').AsInteger:= FCompanyCode;
      qryFixCompanyStatusChanges.ExecSQL;
    end;
end;

procedure TdmCompanies.qryParRelAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmCompanies.qryParRelBeforeProviderEndTransaction(DataSet: TDataSet;
  Commit: Boolean);
begin
  inherited;
  if Commit then
    begin
      qryFixSpecFinModelLineNos.ExecSQL;
      qryFixPRPerPriceModifierNos.ExecSQL;

      CommitPRPerCheckDeffer;
    end
  else
    RollbackPRPerCheckDeffer;
end;

procedure TdmCompanies.CheckParRelPeriods(APartnerCode, AParRelPeriodCode: Integer);
begin
  qryCheckPerRelPeriods.ParamByName('PARTNER_CODE').AsInteger:= APartnerCode;
  qryCheckPerRelPeriods.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:= AParRelPeriodCode;
  qryCheckPerRelPeriods.ExecSQL;
end;

procedure TdmCompanies.prvCompanyBankAccountsBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('ACCOUNT_CODE').NewValue:= GetNewAccountCode;
end;

procedure TdmCompanies.prvCompanyBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmCompanies.prvCompanyAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmCompanies.prvCompaniesBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukDelete) then
    case IntToCompanyClass(GetFieldValue(DeltaDS.FieldByName('COMPANY_CLASS_CODE'))) of
      ccFirm: ExecUpdateQuery(UpdateKind, DeltaDS, nil, nil, qryDeleteFirm, True);
      ccPerson: ExecUpdateQuery(UpdateKind, DeltaDS, nil, nil, qryDeletePerson, True);
      ccCumulative: ExecUpdateQuery(UpdateKind, DeltaDS, nil, nil, qryDeleteCumulativePartner, True);
      ccCommon: ; // do nothing - triggers will do the job
    else
      raise Exception.Create('Unknown Company Class');
    end;  { case }
end;

function TdmCompanies.GetNewCompanyTypeCode: Integer;
begin
  qryGetNewCompanyTypeCode.Open;
  try
    Result:= qryGetNewCompanyTypeCodeNEW_COMPANY_TYPE_CODE.AsInteger;
  finally
    qryGetNewCompanyTypeCode.Close;
  end;  { try }
end;

procedure TdmCompanies.SetSkipPRPerCheckPartnerCode(APartnerCode: Integer);
begin
  qrySetSkipPRPerCheckPartnerCode.ParamByName('PARTNER_CODE').AsInteger:= APartnerCode;
  qrySetSkipPRPerCheckPartnerCode.ExecSQL;
end;

initialization
  TdmCompaniesProxy.FSingleton:= TdmCompaniesProxy.Create(TdmCompanies);

finalization
  FreeAndNil(TdmCompaniesProxy.FSingleton);
end.
