unit dHumanResource;
 
interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  dDBPooledDataModule, dPooledDataModule, DB,
  AbmesFields, AbmesSQLQuery, Provider, DBClient,
  JvStringHolder, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  AbmesClientDataSet, DBXDevartOracle, uSmartLock;

type
  TdmHumanResource = class(TDBPooledDataModule)
    prvTeams: TDataSetProvider;
    qryTeams: TAbmesSQLQuery;
    qryTeamsTEAM_CODE: TAbmesFloatField;
    qryTeamsTEAM_NO: TAbmesFloatField;
    qryTeamsTEAM_NAME: TAbmesWideStringField;
    qryTeamsDEPT_CODE: TAbmesFloatField;
    qryTeamsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryTeamsDEPT_NAME: TAbmesWideStringField;
    qryTeamsIS_ACTIVE: TAbmesFloatField;
    qryTeamsDOC_BRANCH_CODE: TAbmesFloatField;
    qryTeamsDOC_CODE: TAbmesFloatField;
    qryTeamsHAS_DOC: TAbmesFloatField;
    qryTeamsEMPLOYEE_COUNT: TAbmesFloatField;
    qryTeamsTEAM_PROFESSIONS: TAbmesWideStringField;
    qryTeamMembers: TAbmesSQLQuery;
    qryTeamMembersTEAM_CODE: TAbmesFloatField;
    qryTeamMembersEMPLOYEE_CODE: TAbmesFloatField;
    qryTeamMembersEMPLOYEE_NAME: TAbmesWideStringField;
    qryTeamMembersDOC_BRANCH_CODE: TAbmesFloatField;
    qryTeamMembersDOC_CODE: TAbmesFloatField;
    qryTeamMembersHAS_DOCUMENTATION: TAbmesFloatField;
    qryTeamMembersOCCUPATION_NAME: TAbmesWideStringField;
    prvTeam: TDataSetProvider;
    qryTeam: TAbmesSQLQuery;
    prvTeamMembers: TDataSetProvider;
    qryTeamProfessions: TAbmesSQLQuery;
    qryTeamProfessionsTEAM_CODE: TAbmesFloatField;
    qryTeamProfessionsPROFESSION_CODE: TAbmesFloatField;
    qryTeamProfessionsPROFESSION_NAME: TAbmesWideStringField;
    qryTeamProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    qryTeamProfessionsDOC_CODE: TAbmesFloatField;
    qryTeamProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    prvTeamProfessions: TDataSetProvider;
    dsTeam: TDataSource;
    prvTeamNotMembers: TDataSetProvider;
    qryTeamNotMembers: TAbmesSQLQuery;
    qryTeamNotMembersTEAM_CODE: TAbmesFloatField;
    qryTeamNotMembersEMPLOYEE_CODE: TAbmesFloatField;
    qryTeamNotMembersEMPLOYEE_NAME: TAbmesWideStringField;
    qryTeamNotMembersDOC_BRANCH_CODE: TAbmesFloatField;
    qryTeamNotMembersDOC_CODE: TAbmesFloatField;
    qryTeamNotMembersHAS_DOCUMENTATION: TAbmesFloatField;
    prvTeamNotProfessions: TDataSetProvider;
    qryTeamNotProfessions: TAbmesSQLQuery;
    qryTeamNotProfessionsTEAM_CODE: TAbmesFloatField;
    qryTeamNotProfessionsPROFESSION_CODE: TAbmesFloatField;
    qryTeamNotProfessionsPROFESSION_NAME: TAbmesWideStringField;
    qryTeamNotProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    qryTeamNotProfessionsDOC_CODE: TAbmesFloatField;
    qryTeamNotProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    qryMonthTeam: TAbmesSQLQuery;
    qryMonthTeamTEAM_CODE: TAbmesFloatField;
    qryMonthTeamTHE_MONTH_DATE: TAbmesSQLTimeStampField;
    qryMonthTeamTEAM_NO: TAbmesFloatField;
    qryMonthTeamYEAR: TAbmesFloatField;
    qryMonthTeamMONTH: TAbmesFloatField;
    qryMonthTeamMONTH_TEAM_EARNINGS: TAbmesFloatField;
    prvMonthTeam: TDataSetProvider;
    qryMonthTeamEmployees: TAbmesSQLQuery;
    qryMonthTeamEmployeesTEAM_CODE: TAbmesFloatField;
    qryMonthTeamEmployeesTHE_MONTH_DATE: TAbmesSQLTimeStampField;
    qryMonthTeamEmployeesEMPLOYEE_CODE: TAbmesFloatField;
    qryMonthTeamEmployeesEMPLOYEE_NAME: TAbmesWideStringField;
    qryMonthTeamEmployeesDOC_BRANCH_CODE: TAbmesFloatField;
    qryMonthTeamEmployeesDOC_CODE: TAbmesFloatField;
    qryMonthTeamEmployeesHAS_DOCUMENTATION: TAbmesFloatField;
    qryMonthTeamEmployeesEFFICIENCY_COEF: TAbmesFloatField;
    prvMonthTeamNotEmployees: TDataSetProvider;
    qryMonthTeamNotEmployees: TAbmesSQLQuery;
    qryMonthTeamNotEmployeesTEAM_CODE: TAbmesFloatField;
    qryMonthTeamNotEmployeesEMPLOYEE_CODE: TAbmesFloatField;
    qryMonthTeamNotEmployeesEMPLOYEE_NAME: TAbmesWideStringField;
    qryMonthTeamNotEmployeesDOC_BRANCH_CODE: TAbmesFloatField;
    qryMonthTeamNotEmployeesDOC_CODE: TAbmesFloatField;
    qryMonthTeamNotEmployeesHAS_DOCUMENTATION: TAbmesFloatField;
    dsMonthTeam: TDataSource;
    prvMonthTeams: TDataSetProvider;
    qryMonthTeams: TAbmesSQLQuery;
    qryMonthTeamsTEAM_CODE: TAbmesFloatField;
    qryMonthTeamsTHE_MONTH_DATE: TAbmesSQLTimeStampField;
    qryMonthTeamsTEAM_NO: TAbmesFloatField;
    qryMonthTeamsTEAM_NAME: TAbmesWideStringField;
    qryMonthTeamsDEPT_CODE: TAbmesFloatField;
    qryMonthTeamsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryMonthTeamsDEPT_NAME: TAbmesWideStringField;
    qryMonthTeamsEMPLOYEE_COUNT: TAbmesFloatField;
    qryMonthTeamsHAS_EMPLOYEE_WORK_HOURS: TAbmesFloatField;
    qryMonthTeamsTEAM_EARNINGS: TAbmesFloatField;
    qryMonthTeamsTEAM_WASTE_HOURS: TAbmesFloatField;
    qryMonthTeamsWORKDAY_COUNT: TAbmesFloatField;
    qryMonthTeamsTEAM_TOTAL_WORK_HOURS: TAbmesFloatField;
    qryMonthTeamsTEAM_AVG_DAY_HOURS: TAbmesFloatField;
    qryMonthTeamsTEAM_WORK_HOUR_DENSITY: TAbmesFloatField;
    qryOccupation: TAbmesSQLQuery;
    qryOccupationOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationOCCUPATION_NAME: TAbmesWideStringField;
    qryOccupationOCCUPATION_LEVEL: TAbmesFloatField;
    qryOccupationDEPT_CODE: TAbmesFloatField;
    qryOccupationDEPT_NAME: TAbmesWideStringField;
    qryOccupationDEPT_IDENTIFIER: TAbmesWideStringField;
    qryOccupationOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOccupationOCCUPATION_END_DATE: TAbmesSQLTimeStampField;
    qryOccupationDOC_BRANCH_CODE: TAbmesFloatField;
    qryOccupationDOC_CODE: TAbmesFloatField;
    prvOccupation: TDataSetProvider;
    qryOccupationProfessions: TAbmesSQLQuery;
    qryOccupationProfessionsOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationProfessionsPROFESSION_CODE: TAbmesFloatField;
    qryOccupationProfessionsPROFESSION_NAME: TAbmesWideStringField;
    qryOccupationProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    qryOccupationNotProfessions: TAbmesSQLQuery;
    qryOccupationNotProfessionsOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationNotProfessionsPROFESSION_CODE: TAbmesFloatField;
    qryOccupationNotProfessionsPROFESSION_NAME: TAbmesWideStringField;
    qryOccupationNotProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    prvOccupationNotProfessions: TDataSetProvider;
    dsOccupation: TDataSource;
    qryOccupationDepts: TAbmesSQLQuery;
    qryOccupationDeptsOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationDeptsDEPT_CODE: TAbmesFloatField;
    qryOccupationDeptsDEPT_NAME: TAbmesWideStringField;
    qryOccupationDeptsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryGetNewOccupationCode: TAbmesSQLQuery;
    qryGetNewOccupationCodeNEW_OCCUPATION_CODE: TAbmesFloatField;
    qryGetNewTeamCode: TAbmesSQLQuery;
    qryGetNewTeamCodeNEW_TEAM_CODE: TAbmesFloatField;
    prvEmployees: TDataSetProvider;
    prvEmployee: TDataSetProvider;
    qryEmployeeProfessions: TAbmesSQLQuery;
    qryEmployeeProfessionsEMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeProfessionsPROFESSION_CODE: TAbmesFloatField;
    qryEmployeeProfessionsPROFESSION_NAME: TAbmesWideStringField;
    qryEmployeeNotProfessions: TAbmesSQLQuery;
    qryEmployeeNotProfessionsEMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeNotProfessionsPROFESSION_CODE: TAbmesFloatField;
    qryEmployeeNotProfessionsPROFESSION_NAME: TAbmesWideStringField;
    qryProfessions: TAbmesSQLQuery;
    qryProfessionsPROFESSION_CODE: TAbmesFloatField;
    qryProfessionsPROFESSION_NAME: TAbmesWideStringField;
    qryProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    qryProfessionsDOC_CODE: TAbmesFloatField;
    qryProfessionsHOUR_PRICE: TAbmesFloatField;
    qryProfessionsRECORD_CHANGED: TAbmesFloatField;
    prvProfessions: TDataSetProvider;
    prvWorkHours: TDataSetProvider;
    qryWorkHours: TAbmesSQLQuery;
    qryWorkHoursMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryWorkHoursMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryWorkHoursOM_BRANCH_CODE: TAbmesFloatField;
    qryWorkHoursOM_CODE: TAbmesFloatField;
    qryWorkHoursOPERATOR_IS_TEAM: TAbmesFloatField;
    qryWorkHoursOPERATOR_NO: TAbmesFloatField;
    qryWorkHoursOPERATOR_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryWorkHoursOPERATOR_NAME: TAbmesWideStringField;
    qryWorkHoursIS_SETUP: TAbmesFloatField;
    qryWorkHoursIS_NOT_SETUP: TAbmesFloatField;
    qryWorkHoursIS_WASTE: TAbmesFloatField;
    qryWorkHoursIS_NOT_WASTE: TAbmesFloatField;
    qryWorkHoursWORK_DATE: TAbmesSQLTimeStampField;
    qryWorkHoursDETAIL_NAME: TAbmesWideStringField;
    qryWorkHoursWORK_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryWorkHoursTECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryWorkHoursOPERATION_IDENTIFICATION: TAbmesWideStringField;
    qryWorkHoursWORK_HOURS: TAbmesFloatField;
    qryWorkHoursHOUR_PRICE: TAbmesFloatField;
    qryWorkHoursLATE_DAYS: TAbmesFloatField;
    qryWorkHoursOPERATOR_EARNING: TAbmesFloatField;
    qryWorkHoursNO_AS_TEXT: TAbmesWideStringField;
    qryWorkHoursFORK_NO: TAbmesFloatField;
    qryWorkHoursDEPT_NAME: TAbmesWideStringField;
    qryTeamEarnings: TAbmesSQLQuery;
    qryTeamEarningsTEAM_EARNINGS: TAbmesFloatField;
    prvEmployeeEarnings: TDataSetProvider;
    qryEmployeeEarnings: TAbmesSQLQuery;
    qryEmployeeEarningsEMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeEarningsEMPLOYEE_NAME: TAbmesWideStringField;
    qryEmployeeEarningsDEPT_CODE: TAbmesFloatField;
    qryEmployeeEarningsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryEmployeeEarningsEMPLOYEE_PERSONAL_EARNINGS: TAbmesFloatField;
    qryEmployeeEarningsEMPLOYEE_TEAM_EARNINGS: TAbmesFloatField;
    qryEmployeeEarningsEMPLOYEE_TOTAL_EARNINGS: TAbmesFloatField;
    qryEmployeeEarningsEMPLOYEE_WASTE_HOURS: TAbmesFloatField;
    qryEmployeeEarningsEMPLOYEE_TOTAL_WORK_HOURS: TAbmesFloatField;
    qryEmployeeEarningsEARNING_TYPE: TAbmesFloatField;
    qryEmployeeEarningsEMPLOYEE_AVG_DAY_HOURS: TAbmesFloatField;
    qryEmployeeEarningsEMPLOYEE_WORK_HOUR_DENSITY: TAbmesFloatField;
    prvEarningModifiers: TDataSetProvider;
    qryEarningModifiers: TAbmesSQLQuery;
    qryEarningModifiersEARNING_MODIFIER_CODE: TAbmesFloatField;
    qryEarningModifiersBEGIN_DATE: TAbmesSQLTimeStampField;
    qryEarningModifiersEND_DATE: TAbmesSQLTimeStampField;
    qryNewEarningModifierCode: TAbmesSQLQuery;
    qryNewEarningModifierCodeNEW_EARNING_MODIFIER_CODE: TAbmesFloatField;
    qryGetMaxProffesionCode: TAbmesSQLQuery;
    qryGetMaxProffesionCodeMAX_PROFESSION_CODE: TAbmesFloatField;
    qryEmployees: TAbmesSQLQuery;
    qryEmployee: TAbmesSQLQuery;
    qryEmployeeCURRENT_DEPT_CODE: TAbmesFloatField;
    qryEmployeeCURRENT_DEPT_NAME: TAbmesWideStringField;
    qryEmployeeCURRENT_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryEmployeeDOC_BRANCH_CODE: TAbmesFloatField;
    qryEmployeeDOC_CODE: TAbmesFloatField;
    qryEmployeeEDUCATION_CODE: TAbmesFloatField;
    qryOKIDUs: TAbmesSQLQuery;
    qryOKIDUsEMPLOYEE_CODE: TAbmesFloatField;
    qryOKIDUsFIRST_NAME: TAbmesWideStringField;
    qryOKIDUsLAST_NAME: TAbmesWideStringField;
    qryOKIDUsABBREV: TAbmesWideStringField;
    qryOKIDUsEMPLOYEE_NAME: TAbmesWideStringField;
    prvOKIDUs: TDataSetProvider;
    prvOccupationsAndEmployeesMaster: TDataSetProvider;
    qryOccupationsAndEmployeesMaster: TAbmesSQLQuery;
    qryEmployeeDisciplineEvents: TAbmesSQLQuery;
    qryEmployeeDisciplineEventsEMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventsDISCIPLINE_EVENT_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventsDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventsDISCIPLINE_EVENT_COMMENT: TAbmesWideStringField;
    qryEmployeeDisciplineEventsDISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField;
    dsEmployee: TDataSource;
    qryGetMaxEmployeeDisciplineEventCode: TAbmesSQLQuery;
    qryGetMaxEmployeeDisciplineEventCodeMAX_DISCIPLINE_EVENT_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterOCCUPATION_NAME: TAbmesWideStringField;
    qryOccupationsAndEmployeesMasterOCCUPATION_LEVEL: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterSHIFT_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterSHIFT_IDENTIFIER: TAbmesWideStringField;
    qryOccupationsAndEmployeesMasterIS_ACTIVE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterIS_OCCUPIED: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterEMPLOYEE_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterEMPLOYEE_NAME: TAbmesWideStringField;
    qryOccupationsAndEmployeesMasterEMPLOYEE_EGN: TAbmesWideStringField;
    qryOccupationsAndEmployeesMasterDEPT_IDENTIFIER: TAbmesWideStringField;
    qryOccupationsAndEmployeesMasterEMPLOYEE_OCCUPATION_PROF_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterOCCUPATION_PROFESSION_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterDAY_DIFF: TAbmesFloatField;
    prvOccupations: TDataSetProvider;
    qryOccupations: TAbmesSQLQuery;
    qryOccupationsOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationsOCCUPATION_NAME: TAbmesWideStringField;
    prvOccupationAndEmployee: TDataSetProvider;
    qryOccupationAndEmployee: TAbmesSQLQuery;
    qryOccupationAndEmployeeOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationAndEmployeeOCCUPATION_NAME: TAbmesWideStringField;
    qryOccupationAndEmployeeOCCUPATION_LEVEL: TAbmesFloatField;
    qryOccupationAndEmployeeIS_ACTIVE: TAbmesFloatField;
    qryOccupationAndEmployeeEMPLOYEE_CODE: TAbmesFloatField;
    qryOccupationAndEmployeeDEPT_CODE: TAbmesFloatField;
    qryOccupationAndEmployeeDEPT_NAME: TAbmesWideStringField;
    qryOccupationAndEmployeeDEPT_IDENTIFIER: TAbmesWideStringField;
    qryOccupationAndEmployeeSHIFT_CODE: TAbmesFloatField;
    dsOccupationAndEmployee: TDataSource;
    qryOAEProfessionsDepts: TAbmesSQLQuery;
    qryOAEProfessionsDeptsOCCUPATION_CODE: TAbmesFloatField;
    qryOAEProfessionsDeptsDEPT_CODE: TAbmesFloatField;
    qryOAEProfessionsDeptsDEPT_NAME: TAbmesWideStringField;
    qryOAEProfessionsDeptsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryOAEDisciplineEvents: TAbmesSQLQuery;
    qryOAEProfessions: TAbmesSQLQuery;
    qryOAEProfessionsPROFESSION_CODE: TAbmesFloatField;
    qryOAEProfessionsPROFESSION_NAME: TAbmesWideStringField;
    qryOAENeededProfessions: TAbmesSQLQuery;
    qryOAENeededProfessionsOCCUPATION_CODE: TAbmesFloatField;
    qryOAENeededProfessionsPROFESSION_CODE: TAbmesFloatField;
    qryOAENeededProfessionsPROFESSION_NAME: TAbmesWideStringField;
    qryOccupationAndEmployeeSHIFT_IDENTIFIER: TAbmesWideStringField;
    qryOAEProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    qryOAENeededProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    qryEmployeeEarningsOCCUPATION_NAME: TAbmesWideStringField;
    qryEmployeeEarningsSHIFT_IDENTIFIER: TAbmesWideStringField;
    qryWorkHoursOCCUPATION_NAME: TAbmesWideStringField;
    qryWorkHoursSHIFT_IDENTIFIER: TAbmesWideStringField;
    qryMonthTeamEmployeesSHIFT_IDENTIFIER: TAbmesWideStringField;
    qryMonthTeamNotEmployeesSHIFT_IDENTIFIER: TAbmesWideStringField;
    qryTeamMembersSHIFT_IDENTIFIER: TAbmesWideStringField;
    qryTeamNotMembersSHIFT_IDENTIFIER: TAbmesWideStringField;
    qryOccupationsAndEmployeesMasterEMP_NEGATIVE_DISCIPLINE_RATING: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterEMP_POSITIVE_DISCIPLINE_RATING: TAbmesFloatField;
    qryOccupationIS_ACTIVE: TAbmesFloatField;
    qryOccupationIS_OCCUPIED: TAbmesFloatField;
    qryEmployeeDisciplineEventsRATING: TAbmesFloatField;
    qryEmployeeDisciplineEventsIS_NEGATIVE: TAbmesFloatField;
    qryEmployeeDisciplineEventsIS_POSITIVE: TAbmesFloatField;
    qryEmployeeDisciplineEventsIS_ACTIVE: TAbmesFloatField;
    prvEmployeeProfessions: TDataSetProvider;
    prvEmployeeNotProfessions: TDataSetProvider;
    qryEmployeesEMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeesEMPLOYEE_NAME: TAbmesWideStringField;
    qryTeamTEAM_CODE: TAbmesFloatField;
    qryTeamTEAM_NO: TAbmesFloatField;
    qryTeamTEAM_NAME: TAbmesWideStringField;
    qryTeamDEPT_CODE: TAbmesFloatField;
    qryTeamDEPT_IDENTIFIER: TAbmesWideStringField;
    qryTeamDEPT_NAME: TAbmesWideStringField;
    qryTeamIS_ACTIVE: TAbmesFloatField;
    qryTeamDOC_BRANCH_CODE: TAbmesFloatField;
    qryTeamDOC_CODE: TAbmesFloatField;
    qryEmployeeEMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeFIRST_NAME: TAbmesWideStringField;
    qryEmployeeMIDDLE_NAME: TAbmesWideStringField;
    qryEmployeeLAST_NAME: TAbmesWideStringField;
    qryEmployeeABBREV: TAbmesWideStringField;
    qryEmployeeEGN: TAbmesWideStringField;
    qryEmployeeEMPLOYEE_NAME: TAbmesWideStringField;
    qryEmployeeProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    qryEmployeeNotProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    prvDeptProfessions: TDataSetProvider;
    qryDeptProfessions: TAbmesSQLQuery;
    qryDeptProfessionsPROFESSION_CODE: TAbmesFloatField;
    qryDeptProfessionsPROFESSION_NAME: TAbmesWideStringField;
    qryOccupationProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    qryOccupationProfessionsDOC_CODE: TAbmesFloatField;
    qryOccupationNotProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    qryOccupationNotProfessionsDOC_CODE: TAbmesFloatField;
    qryOccupationAndEmployeeOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOccupationAndEmployeeOCCUPATION_END_DATE: TAbmesSQLTimeStampField;
    qryOccupationAndEmployeeOCCUPATION_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOccupationAndEmployeeOCCUPATION_DOC_CODE: TAbmesFloatField;
    qryOAEProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    qryOAEProfessionsDOC_CODE: TAbmesFloatField;
    qryEmployeeProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    qryEmployeeProfessionsDOC_CODE: TAbmesFloatField;
    qryOAENeededProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    qryOAENeededProfessionsDOC_CODE: TAbmesFloatField;
    qryEmployeeNotProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    qryEmployeeNotProfessionsDOC_CODE: TAbmesFloatField;
    qryOAEProfessionsDeptsDOC_BRANCH_CODE: TAbmesFloatField;
    qryOAEProfessionsDeptsDOC_CODE: TAbmesFloatField;
    qryOAEProfessionsDeptsHAS_DOCUMENTATION: TAbmesFloatField;
    prvProfessionKinds: TDataSetProvider;
    qryProfessionKinds: TAbmesSQLQuery;
    qryDeptDayWorkHours: TAbmesSQLQuery;
    qryDeptDayWorkHoursDEPT_DAY_WORK_HOURS: TAbmesFloatField;
    qryOccupationWorkDeptPriorities: TAbmesSQLQuery;
    prvOccupationWorkDeptPriorities: TDataSetProvider;
    qryOccupationWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    qryOccupationWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField;
    qryOccupationWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField;
    qryOccupationDeptsOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    qryOccupationWorkDeptPrioritiesPRIORITY_FULL_NAME: TAbmesWideStringField;
    qryOAEProfessionsOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationEmployee: TAbmesSQLQuery;
    qryOccupationEmployeeOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationEmployeeEMPLOYEE_CODE: TAbmesFloatField;
    qryOccupationEmployeeASSIGNMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOccupationEmployeeASSIGNMENT_END_DATE: TAbmesSQLTimeStampField;
    qryOccupationEmployeeEMPLOYEE_EGN: TAbmesWideStringField;
    qryOccupationEmployeeEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOccupationEmployeeEMPLOYEE_DOC_CODE: TAbmesFloatField;
    dsOccupationEmployee: TDataSource;
    qryOccupationNOTES: TAbmesWideStringField;
    qryOccupationAndEmployeeNOTES: TAbmesWideStringField;
    qryOAEProfessionsDeptsOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    qryOAENeededProfessionsEMP_HAS_THE_PROFESSION: TAbmesFloatField;
    qryProfession: TAbmesSQLQuery;
    prvProfession: TDataSetProvider;
    qryWorkHoursOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryEmployeesNom: TAbmesSQLQuery;
    prvEmployeesNom: TDataSetProvider;
    qryWorkHoursDETAIL_NO: TAbmesFloatField;
    qryEarningModifiersLABOUR_COST_COEF: TAbmesFloatField;
    qryEmployeesEMPLOYEE_ABBREV: TAbmesWideStringField;
    qryManagerOKIDUs: TAbmesSQLQuery;
    prvManagerOKIDUs: TDataSetProvider;
    qryManagerOKIDUsEMPLOYEE_CODE: TAbmesFloatField;
    qryManagerOKIDUsEMPLOYEE_NAME: TAbmesWideStringField;
    qryOccupationsAndEmployeesMasterE_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterE_DOC_IS_COMPLETE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterE_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterE_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterE_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterO_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterO_DOC_IS_COMPLETE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterO_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterO_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterO_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryProfessionsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryProfessionsDOC_IS_COMPLETE: TAbmesFloatField;
    qryProfessionsACTIVE_DI_COUNT: TAbmesFloatField;
    qryProfessionsUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryProfessionsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    qryOccupationDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOccupationDEPT_END_DATE: TAbmesSQLTimeStampField;
    qryEmployeeCOMPANY_CODE: TAbmesFloatField;
    prvOccupationPhases: TDataSetProvider;
    qryOccupationPhases: TAbmesSQLQuery;
    qryOccupationPhasesOCCUPATION_PHASE_CODE: TAbmesFloatField;
    qryOccupationPhasesOCCUPATION_PHASE_NAME: TAbmesWideStringField;
    qryOccupationOCCUPATION_PHASE_CODE: TAbmesFloatField;
    qryOccupationPRODUCT_CODE: TAbmesFloatField;
    qryOccupationDeptsDEPT_IS_EXTERNAL: TAbmesFloatField;
    qryOccupationDeptsDEPT_IS_RECURRENT: TAbmesFloatField;
    qryOccupationIS_MAIN: TAbmesFloatField;
    qryOccupationDEPT_IS_EXTERNAL: TAbmesFloatField;
    qryOccupationDEPT_IS_RECURRENT: TAbmesFloatField;
    qryOccupationAndEmployeeIS_MAIN: TAbmesFloatField;
    qryOccupationAndEmployeePRODUCT_CODE: TAbmesFloatField;
    qryOccupationAndEmployeePRODUCT_NAME: TAbmesWideStringField;
    qryOccupationAndEmployeePRODUCT_NO: TAbmesFloatField;
    qryOAEProfessionsDeptsDEPT_IS_EXTERNAL: TAbmesFloatField;
    qryOAEProfessionsDeptsDEPT_IS_RECURRENT: TAbmesFloatField;
    qryOccupationAndEmployeeDEPT_IS_EXTERNAL: TAbmesFloatField;
    qryOccupationAndEmployeeDEPT_IS_RECURRENT: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterOCCUPATION_IS_MAIN: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterOCCUPATION_PHASE: TAbmesWideStringField;
    qryOccupationsAndEmployeesMasterASSIGNMENT_DAY_DIFF: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterOCCUPATION_PHASE_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterEMPLOYEE_COMPANY_CODE: TAbmesFloatField;
    qryOccupationPRODUCT_NAME: TAbmesWideStringField;
    qryOccupationPRODUCT_NO: TAbmesFloatField;
    qryOccupationAndEmployeeOCCUPATION_PHASE_NAME: TAbmesWideStringField;
    qryOAEProfessionsDeptsOCC_WORK_DEPT_PR_FULL_NAME: TAbmesWideStringField;
    qryEmployeeOccupations: TAbmesSQLQuery;
    qryEmployeeOccupationsIS_MAIN: TAbmesFloatField;
    qryEmployeeOccupationsOCCUPATION_NAME: TAbmesWideStringField;
    qryEmployeeOccupationsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryEmployeeOccupationsDEPT_NAME: TAbmesWideStringField;
    qryEmployeeOccupationsIS_EXTERNAL: TAbmesFloatField;
    qryEmployeeOccupationsIS_RECURRENT: TAbmesFloatField;
    qryEmployeeOccupationsASSIGNMENT_DAY_DIFF: TAbmesFloatField;
    qryEmployeeOccupationsPRODUCT_NAME: TAbmesWideStringField;
    qryEmployeeOccupationsPRODUCT_NO: TAbmesFloatField;
    qryEmployeeOccupationsPRODUCT_CODE: TAbmesFloatField;
    qryCraftTypes: TAbmesSQLQuery;
    prvCraftTypes: TDataSetProvider;
    qryCraftTypesCRAFT_TYPE_CODE: TAbmesFloatField;
    qryCraftTypesCRAFT_TYPE_NAME: TAbmesWideStringField;
    qryCrafts: TAbmesSQLQuery;
    prvCrafts: TDataSetProvider;
    qryCraftsCRAFT_CODE: TAbmesFloatField;
    qryCraftsCRAFT_NAME: TAbmesWideStringField;
    qryCraftsCRAFT_TYPE_CODE: TAbmesFloatField;
    qryOccupationCRAFT_CODE: TAbmesFloatField;
    qryOccupationCRAFT_TYPE_CODE: TAbmesFloatField;
    qryOccupationAndEmployeeCRAFT_CODE: TAbmesFloatField;
    qryOccupationAndEmployeeCRAFT_TYPE_CODE: TAbmesFloatField;
    qryOERegimes: TAbmesSQLQuery;
    prvOERegimes: TDataSetProvider;
    qryOERegimesOE_REGIME_CODE: TAbmesFloatField;
    qryOERegimesOE_REGIME_NAME: TAbmesWideStringField;
    qryOccupationEmployeeOE_REGIME_CODE: TAbmesFloatField;
    qryEmployeeIS_EXTERNAL: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterP_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterP_DOC_IS_COMPLETE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterP_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterP_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterP_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterOE_REGIME_NAME: TAbmesWideStringField;
    qryOccupationsAndEmployeesMasterOE_REGIME_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterPRODUCT_NAME: TAbmesWideStringField;
    qryOccupationsAndEmployeesMasterPRODUCT_NO: TAbmesFloatField;
    qryTeamMembersDEPT_IDENTIFIER: TAbmesWideStringField;
    qryTeamNotMembersOCCUPATION_NAME: TAbmesWideStringField;
    qryMonthTeamEmployeesOCCUPATION_NAME: TAbmesWideStringField;
    qryMonthTeamNotEmployeesOCCUPATION_NAME: TAbmesWideStringField;
    qryWorkHoursPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField;
    prvEmployeeFrame: TDataSetProvider;
    qryEmployeeFrame: TAbmesSQLQuery;
    qryEmployeeEDUCATION_NAME: TAbmesWideStringField;
    qryEmployeeFrameEMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeFrameEMPLOYEE_NAME: TAbmesWideStringField;
    qryEmployeeFrameEMPLOYEE_ABBREV: TAbmesWideStringField;
    qryEmployeeFrameDOC_BRANCH_CODE: TAbmesFloatField;
    qryEmployeeFrameDOC_CODE: TAbmesFloatField;
    qryEmployeeFrameHAS_DOCUMENTATION: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterOCCUPATION_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterOCCUPATION_DOC_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterEMPLOYEE_DOC_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterPRODUCT_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterPRODUCT_DOC_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterOCCUPATION_HAS_DOC: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterEMPLOYEE_HAS_DOC: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterPRODUCT_HAS_DOC: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterEMPLOYEE_AGE_YEARS: TAbmesFloatField;
    qryEmployeeOccupationsOCCUPATION_HAS_DOCS: TAbmesFloatField;
    qryEmployeeOccupationsOCCUPATION_DOC_BRANCH_CODE: TAbmesFloatField;
    qryEmployeeOccupationsOCCUPATION_DOC_CODE: TAbmesFloatField;
    qryEmployeeOccupationsPRODUCT_HAS_DOCS: TAbmesFloatField;
    qryEmployeeOccupationsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryEmployeeOccupationsPRODUCT_DOC_CODE: TAbmesFloatField;
    qryTeamMembersCOMPANY_DOC_BRANCH_CODE: TAbmesFloatField;
    qryTeamMembersCOMPANY_DOC_CODE: TAbmesFloatField;
    qryTeamMembersCOMPANY_HAS_DOCUMENTATION: TAbmesFloatField;
    qryEmployeeIS_MALE: TAbmesFloatField;
    qryOAEProfessionsDeptsOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField;
    prvOccupationsAndEmployeesDetail: TDataSetProvider;
    qryOccupationsAndEmployeesDetail: TAbmesSQLQuery;
    qryOccupationsAndEmployeesDetailOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailBEGIN_DATE: TAbmesSQLTimeStampField;
    qryOccupationsAndEmployeesDetailEND_DATE: TAbmesSQLTimeStampField;
    qryOccupationsAndEmployeesDetailIS_OCCUPIED: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailEMPLOYEE_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailEMPLOYEE_NAME: TAbmesWideStringField;
    qryOccupationsAndEmployeesDetailEMPLOYEE_COMPANY_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailEMPLOYEE_DOC_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailEMPLOYEE_HAS_DOC: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailE_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailE_DOC_IS_COMPLETE: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailE_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailE_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailE_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailEMP_NEGATIVE_DISCIPLINE_RATING: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailEMP_POSITIVE_DISCIPLINE_RATING: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailOE_REGIME_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailOE_REGIME_NAME: TAbmesWideStringField;
    qryOccupationsAndEmployeesDetailOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOccupationsAndEmployeesDetailOCCUPATION_END_DATE: TAbmesSQLTimeStampField;
    qryOccupationsAndEmployeesDetailEMPLOYEE_OCCUPATION_PROF_COUNT: TAbmesFloatField;
    qryOccupationShifts: TAbmesSQLQuery;
    qryOccupationShiftsOCCUPATION_SHIFT_CODE: TAbmesFloatField;
    qryOccupationShiftsOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationShiftsSHIFT_CODE: TAbmesFloatField;
    qryOccupationShiftsBEGIN_DATE: TAbmesSQLTimeStampField;
    qryOccupationShiftsEND_DATE: TAbmesSQLTimeStampField;
    qryNewOccupationShiftCode: TAbmesSQLQuery;
    qryNewOccupationShiftCodeNEW_OCCUPATION_SHIFT_CODE: TAbmesFloatField;
    qryOccupationShiftsCURRENT_SHIFT_IDENTIFIER: TAbmesWideStringField;
    qryOccupationsAndEmployeesDetailEMPLOYEE_BEGIN_AGE_YEARS: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailEMPLOYEE_END_AGE_YEARS: TAbmesFloatField;
    qryOccupationAndEmployeeOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    qryOccupationEmployeeOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    qryOAEProfessionsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeOccupationsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeOccupationsASSIGNMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryEmployeeOccupationsASSIGNMENT_END_DATE: TAbmesSQLTimeStampField;
    qryEmployeeOccupationsASSIGNMENT_PERIOD_STATUS_CODE: TAbmesFloatField;
    qryOccupationWorkDeptPrioritiesIS_CAPACITY_GENERATOR: TAbmesFloatField;
    qryOccupationShiftsAFFECTS_EMP_AVAILABILITY: TAbmesFloatField;
    qryUpdEmployeeDisciplineEvent: TAbmesSQLQuery;
    qryEmployeeDisciplineEventsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventsDOC_BRANCH_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventsDOC_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventsHAS_DOC_ITEMS: TAbmesFloatField;
    qryEmployeeDisciplineEventsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventsCREATE_DATE: TAbmesSQLTimeStampField;
    qryEmployeeDisciplineEventsCREATE_TIME: TAbmesSQLTimeStampField;
    qryEmployeeDisciplineEventsSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventsSTORNO_DATE: TAbmesSQLTimeStampField;
    qryEmployeeDisciplineEventsSTORNO_TIME: TAbmesSQLTimeStampField;
    qryEmployeeDisciplineEventsIS_NOT_STORNO: TAbmesFloatField;
    qryEmployeeDisciplineEventsOLD_DISCIPLINE_EVENT_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventsDIRECT_STORNO: TAbmesFloatField;
    qryOAEDisciplineEventsEMPLOYEE_CODE: TAbmesFloatField;
    qryOAEDisciplineEventsDISCIPLINE_EVENT_CODE: TAbmesFloatField;
    qryOAEDisciplineEventsDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    qryOAEDisciplineEventsDISCIPLINE_EVENT_COMMENT: TAbmesWideStringField;
    qryOAEDisciplineEventsDISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField;
    qryOAEDisciplineEventsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    qryOAEDisciplineEventsDOC_BRANCH_CODE: TAbmesFloatField;
    qryOAEDisciplineEventsDOC_CODE: TAbmesFloatField;
    qryOAEDisciplineEventsHAS_DOC_ITEMS: TAbmesFloatField;
    qryOAEDisciplineEventsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryOAEDisciplineEventsCREATE_DATE: TAbmesSQLTimeStampField;
    qryOAEDisciplineEventsCREATE_TIME: TAbmesSQLTimeStampField;
    qryOAEDisciplineEventsSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryOAEDisciplineEventsSTORNO_DATE: TAbmesSQLTimeStampField;
    qryOAEDisciplineEventsSTORNO_TIME: TAbmesSQLTimeStampField;
    qryOAEDisciplineEventsIS_NOT_STORNO: TAbmesFloatField;
    qryOAEDisciplineEventsOLD_DISCIPLINE_EVENT_CODE: TAbmesFloatField;
    qryOAEDisciplineEventsRATING: TAbmesFloatField;
    qryOAEDisciplineEventsIS_NEGATIVE: TAbmesFloatField;
    qryOAEDisciplineEventsIS_POSITIVE: TAbmesFloatField;
    qryOAEDisciplineEventsIS_ACTIVE: TAbmesFloatField;
    qryOAEDisciplineEventsDIRECT_STORNO: TAbmesFloatField;
    prvOAEDisciplineEvents: TDataSetProvider;
    dsProfession: TDataSource;
    qryProfessionPeriods: TAbmesSQLQuery;
    qryProfessionPeriodsPROFESSION_PERIOD_CODE: TAbmesFloatField;
    qryProfessionPeriodsPROFESSION_CODE: TAbmesFloatField;
    qryProfessionPeriodsBEGIN_DATE: TAbmesSQLTimeStampField;
    qryProfessionPeriodsEND_DATE: TAbmesSQLTimeStampField;
    qryProfessionPeriodsHOUR_PRICE: TAbmesFloatField;
    qryNewProfessionPeriodCode: TAbmesSQLQuery;
    qryNewProfessionPeriodCodeNEW_PROFESSION_PERIOD_CODE: TAbmesFloatField;
    qryProfessionPROFESSION_CODE: TAbmesFloatField;
    qryProfessionPROFESSION_NAME: TAbmesWideStringField;
    qryProfessionDOC_BRANCH_CODE: TAbmesFloatField;
    qryProfessionDOC_CODE: TAbmesFloatField;
    qryEmployeesNomCOMPANY_STATUS_CODE: TAbmesFloatField;
    qryEmployeesNomCOMPANY_STATUS_NAME: TAbmesWideStringField;
    qryEmployeesNomEXISTANCE_MONTHS: TAbmesFloatField;
    qryEmployeesNomCURRENT_STATUS_REACH_MONTHS: TAbmesFloatField;
    qryEmployeesNomEMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeesNomFIRST_NAME: TAbmesWideStringField;
    qryEmployeesNomMIDDLE_NAME: TAbmesWideStringField;
    qryEmployeesNomLAST_NAME: TAbmesWideStringField;
    qryEmployeesNomABBREV: TAbmesWideStringField;
    qryEmployeesNomIS_MALE: TAbmesFloatField;
    qryEmployeesNomEGN: TAbmesWideStringField;
    qryEmployeesNomCOMPANY_NO: TAbmesFloatField;
    qryEmployeesNomIS_MANAGER_OKIDU: TAbmesFloatField;
    qryEmployeesNomIS_OKIDU: TAbmesFloatField;
    qryEmployeesNomEMPLOYEE_NAME: TAbmesWideStringField;
    qryEmployeesNomEDUCATION_CODE: TAbmesFloatField;
    qryEmployeesNomEDUCATION_SHORT_NAME: TAbmesWideStringField;
    qryEmployeesNomNEGATIVE_DISCIPLINE_RATING: TAbmesFloatField;
    qryEmployeesNomPOSITIVE_DISCIPLINE_RATING: TAbmesFloatField;
    qryEmployeesNomCOMPANY_DOC_BRANCH_CODE: TAbmesFloatField;
    qryEmployeesNomCOMPANY_DOC_CODE: TAbmesFloatField;
    qryEmployeesNomCOMPANY_HAS_DOCUMENTATION: TAbmesFloatField;
    qryEmployeesNomDOC_BRANCH_CODE: TAbmesFloatField;
    qryEmployeesNomDOC_CODE: TAbmesFloatField;
    qryEmployeesNomHAS_DOCUMENTATION: TAbmesFloatField;
    qryEmployeesNomDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryEmployeesNomDOC_IS_COMPLETE: TAbmesFloatField;
    qryEmployeesNomACTIVE_DI_COUNT: TAbmesFloatField;
    qryEmployeesNomUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryEmployeesNomUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryEmployeesNomOCCUPATIONS_COUNT: TAbmesFloatField;
    qryEmployeesNomIS_EXTERNAL: TAbmesFloatField;
    qryEmployeeIS_INACTIVE: TAbmesFloatField;
    qryEmployeesNomIS_INACTIVE: TAbmesFloatField;
    qryEmployeeHAS_DOCUMENTATION: TAbmesFloatField;
    qryEmployeeFrameEMPLOYEE_NO: TAbmesFloatField;
    qryEmployeeEMPLOYEE_NO: TAbmesFloatField;
    qryEmployeesEMPLOYEE_NO: TAbmesFloatField;
    qryEmployeeEarningsEMPLOYEE_NO: TAbmesFloatField;
    qryTeamMembersEMPLOYEE_NO: TAbmesFloatField;
    qryTeamNotMembersEMPLOYEE_NO: TAbmesFloatField;
    qryMonthTeamEmployeesEMPLOYEE_NO: TAbmesFloatField;
    qryMonthTeamNotEmployeesEMPLOYEE_NO: TAbmesFloatField;
    qryEmployeeDisciplineEventsDISCIPLINE_EVENT_STATE_CODE: TAbmesFloatField;
    prvDisciplineEventStates: TDataSetProvider;
    qryEmployeeDisciplineStates: TAbmesSQLQuery;
    qryEmployeeDisciplineStatesDISCIPLINE_EVENT_STATE_CODE: TAbmesFloatField;
    qryEmployeeDisciplineStatesDISCIPLINE_EVENT_STATE_NAME: TAbmesWideStringField;
    qryEmployeeDisciplineEventsSTATUS_CODE: TAbmesFloatField;
    qryOAEDisciplineEventsDISCIPLINE_EVENT_STATE_CODE: TAbmesFloatField;
    qryOAEDisciplineEventsSTATUS_CODE: TAbmesFloatField;
    qryOAEDisciplineEventsIS_IN_NORMAL_STATE: TAbmesFloatField;
    qryEmployeeDisciplineEventsIS_IN_NORMAL_STATE: TAbmesFloatField;
    qryGetNewEmployeeCode: TAbmesSQLQuery;
    qryGetNewEmployeeCodeNEW_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeesNomMAIN_OCC_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryEmployeesNomMAIN_OCCUPATION_NAME: TAbmesWideStringField;
    qryOccupationsAndEmployeesMasterCOMPANY_NO: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailCOMPANY_NO: TAbmesFloatField;
    qryOccupationSalaries: TAbmesSQLQuery;
    qryOccupationSalariesOCCUPATION_SALARY_CODE: TAbmesFloatField;
    qryOccupationSalariesOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationSalariesBEGIN_DATE: TAbmesSQLTimeStampField;
    qryOccupationSalariesEND_DATE: TAbmesSQLTimeStampField;
    qryOccupationSalariesBASE_SALARY: TAbmesFloatField;
    qryOccupationSalariesDATE_UNIT_CODE: TAbmesFloatField;
    qryOccupationSalariesMIN_SALARY_RATIO_COEF: TAbmesFloatField;
    qryOccupationSalariesMAX_SALARY_RATIO_COEF: TAbmesFloatField;
    qryNewOccupationSalaryCode: TAbmesSQLQuery;
    qryNewOccupationSalaryCodeNEW_OCCUPATION_SALARY_CODE: TAbmesFloatField;
    qryOccupationSalariesCURRENT_BASE_SALARY: TAbmesFloatField;
    qryOccupationSalariesCURRENT_DATE_UNIT_NAME: TAbmesWideStringField;
    qryOccupationSalariesCURRENT_MIN_SALARY_RATIO_COEF: TAbmesFloatField;
    qryOccupationSalariesCURRENT_MAX_SALARY_RATIO_COEF: TAbmesFloatField;
    qryOccupationAndEmployeeBASE_SALARY: TAbmesFloatField;
    qryOccupationAndEmployeeMIN_SALARY_RATIO_COEF: TAbmesFloatField;
    qryOccupationAndEmployeeMAX_SALARY_RATIO_COEF: TAbmesFloatField;
    qryOccupationAndEmployeeBASE_SALARY_DATE_UNIT_NAME: TAbmesWideStringField;
    qryOccupationEmployeeSALARY: TAbmesFloatField;
    qryOccupationEmployeeSALARY_DATE_UNIT_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailSALARY: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailSALARY_DATE_UNIT_NAME: TAbmesWideStringField;
    qryOccupationsAndEmployeesMasterBASE_SALARY: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterBASE_SALARY_DATE_UNIT_NAME: TAbmesWideStringField;
    qryOccupationsAndEmployeesMasterMIN_SALARY_RATIO_COEF: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterMAX_SALARY_RATIO_COEF: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterSALARY: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterSALARY_DATE_UNIT_NAME: TAbmesWideStringField;
    qryGetEmployeeShiftCode: TAbmesSQLQuery;
    qryGetEmployeeShiftCodeSHIFT_CODE: TAbmesFloatField;
    qryOccupationEmployeeDOC_BRANCH_CODE: TAbmesFloatField;
    qryOccupationEmployeeDOC_CODE: TAbmesFloatField;
    qryOccupationEmployeeHAS_DOC_ITEMS: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailDOC_BRANCH_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailDOC_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailHAS_DOC_ITEMS: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailDOC_EMPTINESS_REQ_CODE: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailDOC_IS_COMPLETE: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailACTIVE_DI_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesDetailUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOccupationTHE_DATE: TAbmesSQLTimeStampField;
    qryOccupationAndEmployeeIS_OCCUPIED: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterSTATUS_DATE: TAbmesSQLTimeStampField;
    qryGetNewDiscEventTypeCode: TAbmesSQLQuery;
    qryGetNewDiscEventTypeLocalNo: TAbmesSQLQuery;
    qryGetNewDiscEventTypeCodeNEW_DISC_EVENT_TYPE_CODE: TAbmesFloatField;
    qryGetNewDiscEventTypeLocalNoNEW_DISC_EVENT_TYPE_LOCAL_NO: TAbmesFloatField;
    qryGetNewDiscEventTypePeriodCode: TAbmesSQLQuery;
    qryGetNewDiscEventTypePeriodCodeNEW_DISC_EVENT_TYPE_PER_CODE: TAbmesFloatField;
    prvDisciplineEvents: TDataSetProvider;
    qryDisciplineEvents: TAbmesSQLQuery;
    qryDisciplineEventsEMPLOYEE_CODE: TAbmesFloatField;
    qryDisciplineEventsDISCIPLINE_EVENT_CODE: TAbmesFloatField;
    qryDisciplineEventsDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    qryDisciplineEventsDET_NO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryDisciplineEventsDET_DOC_BRANCH_CODE: TAbmesFloatField;
    qryDisciplineEventsDET_DOC_CODE: TAbmesFloatField;
    qryDisciplineEventsDET_HAS_DOC_ITEMS: TAbmesFloatField;
    qryDisciplineEventsDISC_EVENT_STATUS_CODE: TAbmesFloatField;
    qryDisciplineEventsDISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField;
    qryDisciplineEventsEMPLOYEE_NO: TAbmesFloatField;
    qryDisciplineEventsEMPLOYEE_NAME: TAbmesWideStringField;
    qryDisciplineEventsEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField;
    qryDisciplineEventsEMPLOYEE_DOC_CODE: TAbmesFloatField;
    qryDisciplineEventsEMPLOYEE_HAS_DOC_ITEMS: TAbmesFloatField;
    qryDisciplineEventsMAIN_OCC_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryDisciplineEventsDISCIPLINE_EVENT_RATING: TAbmesFloatField;
    qryDisciplineEventsDISCIPLINE_EVENT_COMMENT: TAbmesWideStringField;
    qryDisciplineEventsAUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField;
    qryDisciplineEventsCREATE_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField;
    qryDisciplineEventsCREATE_DATE: TAbmesSQLTimeStampField;
    qryDisciplineEventsSTORNO_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField;
    qryDisciplineEventsSTORNO_DATE: TAbmesSQLTimeStampField;
    qryDisciplineEventsDOC_BRANCH_CODE: TAbmesFloatField;
    qryDisciplineEventsDOC_CODE: TAbmesFloatField;
    qryDisciplineEventsHAS_DOC_ITEMS: TAbmesFloatField;
    qryDiscEventTypes: TAbmesSQLQuery;
    qryDiscEventTypesDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    qryDiscEventTypesPARENT_DISC_EVENT_TYPE_CODE: TAbmesFloatField;
    qryDiscEventTypesDISC_EVENT_TYPE_LOCAL_NO: TAbmesFloatField;
    qryDiscEventTypesDISC_EVENT_TYPE_FULL_NO: TAbmesWideStringField;
    qryDiscEventTypesDISC_EVENT_TYPE_FMT_FULL_NO: TAbmesWideStringField;
    qryDiscEventTypesNAME: TAbmesWideStringField;
    qryDiscEventTypesSHORT_NAME: TAbmesWideStringField;
    qryDiscEventTypesIS_GROUP: TAbmesFloatField;
    qryDiscEventTypesDOC_BRANCH_CODE: TAbmesFloatField;
    qryDiscEventTypesDOC_CODE: TAbmesFloatField;
    qryDiscEventTypesHAS_DOC_ITEMS: TAbmesFloatField;
    qryDiscEventTypesDISC_EVENT_TYPE_SIGN: TAbmesFloatField;
    prvDiscEventTypes: TDataSetProvider;
    qryDiscEventTypeDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    qryDiscEventTypePARENT_DISC_EVENT_TYPE_CODE: TAbmesFloatField;
    qryDiscEventTypeDISC_EVENT_TYPE_LOCAL_NO: TAbmesFloatField;
    qryDiscEventTypeNAME: TAbmesWideStringField;
    qryDiscEventTypeSHORT_NAME: TAbmesWideStringField;
    qryDiscEventTypeIS_GROUP: TAbmesFloatField;
    qryDiscEventTypeDOC_BRANCH_CODE: TAbmesFloatField;
    qryDiscEventTypeDOC_CODE: TAbmesFloatField;
    qryDiscEventTypeHAS_DOC_ITEMS: TAbmesFloatField;
    qryDiscEventTypeDISC_EVENT_TYPE_SIGN: TAbmesFloatField;
    qryDiscEventTypeCOLOR: TAbmesFloatField;
    qryDiscEventTypeBACKGROUND_COLOR: TAbmesFloatField;
    qryDiscEventTypePARENT_FULL_NO: TAbmesWideStringField;
    qryDiscEventTypesPrintTree: TAbmesSQLQuery;
    prvDiscEventTypesPrintTree: TDataSetProvider;
    qryDiscEventTypesPrintTreeNODE_ID: TAbmesFloatField;
    qryDiscEventTypesPrintTreePARENT_NODE_ID: TAbmesFloatField;
    qryDiscEventTypesPrintTreeNODE_NAME: TAbmesWideStringField;
    qryDiscEventTypesPrintTreeFORMATED_NODE_NO: TAbmesWideStringField;
    qryDiscEventTypesPrintTreeNODE_LEVEL: TAbmesFloatField;
    qryDiscEventTypesPrintTreeNODE_CHILD_COUNT: TAbmesFloatField;
    qryDiscEventTypesPrintTreeNODE_TYPE: TAbmesFloatField;
    qryDiscEventTypesPrintTreeIS_LAST_CHILD: TAbmesFloatField;
    qryDiscEventTypesPrintTreeHAS_CHILDREN: TAbmesFloatField;
    qryGetDiscEventTypeIsInstance: TAbmesSQLQuery;
    qryGetDiscEventTypeCodeByFullNo: TAbmesSQLQuery;
    qryGetDiscEventTypeCodeByFullNoDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    qryGetDiscEventTypeIsInstanceIS_INSTANCE: TAbmesFloatField;
    qryDiscEventTypesIS_INACTIVE: TAbmesFloatField;
    qryGetDiscEventTypeIsInactive: TAbmesSQLQuery;
    mshLocalMacroLibrary: TJvMultiStringHolder;
    qryGetDiscEventTypeIsInactiveIS_INACTIVE: TAbmesFloatField;
    qryDiscEventTypeData: TAbmesSQLQuery;
    qryEmployeeDisciplineEventsDISC_EVENT_TYPE_NAME: TAbmesWideStringField;
    qryEmployeeDisciplineEventsACTIVE_DATE_UNIT_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventsACTIVE_DATE_UNIT_COUNT: TAbmesFloatField;
    qryEmployeeDisciplineEventsCOLOR: TAbmesFloatField;
    qryEmployeeDisciplineEventsBACKGROUND_COLOR: TAbmesFloatField;
    qryDiscEventTypeDataDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    qryDiscEventTypeDataPARENT_DISC_EVENT_TYPE_CODE: TAbmesFloatField;
    qryDiscEventTypeDataDISC_EVENT_TYPE_LOCAL_NO: TAbmesFloatField;
    qryDiscEventTypeDataDISC_EVENT_TYPE_FULL_NO: TAbmesWideStringField;
    qryDiscEventTypeDataDISC_EVENT_TYPE_FMT_FULL_NO: TAbmesWideStringField;
    qryDiscEventTypeDataNAME: TAbmesWideStringField;
    qryDiscEventTypeDataSHORT_NAME: TAbmesWideStringField;
    qryDiscEventTypeDataIS_GROUP: TAbmesFloatField;
    qryDiscEventTypeDataDOC_BRANCH_CODE: TAbmesFloatField;
    qryDiscEventTypeDataDOC_CODE: TAbmesFloatField;
    qryDiscEventTypeDataHAS_DOC_ITEMS: TAbmesFloatField;
    qryDiscEventTypeDataRATING: TAbmesFloatField;
    qryDiscEventTypeDataACTIVE_DATE_UNIT_COUNT: TAbmesFloatField;
    qryDiscEventTypeDataACTIVE_DATE_UNIT_CODE: TAbmesFloatField;
    qryDiscEventTypeDataCOLOR: TAbmesFloatField;
    qryDiscEventTypeDataBACKGROUND_COLOR: TAbmesFloatField;
    qryOAEDisciplineEventsACTIVE_DATE_UNIT_CODE: TAbmesFloatField;
    qryOAEDisciplineEventsACTIVE_DATE_UNIT_COUNT: TAbmesFloatField;
    qryOAEDisciplineEventsCOLOR: TAbmesFloatField;
    qryOAEDisciplineEventsBACKGROUND_COLOR: TAbmesFloatField;
    qryOAEDisciplineEventsDISC_EVENT_TYPE_NAME: TAbmesWideStringField;
    qryDisciplineEventsDISC_EVENT_TYPE_NAME: TAbmesWideStringField;
    qryDisciplineEventsDET_COLOR: TAbmesFloatField;
    qryDisciplineEventsDET_BACKGROUND_COLOR: TAbmesFloatField;
    qryEarningModifiersORGANIZATION_COST_COEF: TAbmesFloatField;
    qryMonthTeamOVERRIDING_TEAM_EARNING: TAbmesFloatField;
    qryMonthTeamsOVERRIDING_TEAM_EARNING: TAbmesFloatField;
    qryMonthTeamsEFFECTIVE_TEAM_EARNING: TAbmesFloatField;
    qryEmployeesNomBASE_ROLE_CODE: TAbmesFloatField;
    qryMonthTeamDEFINED_EMPLOYEE_COUNT: TAbmesFloatField;
    qryMonthTeamEMP_WORKDAY_DURATION_HOURS: TAbmesFloatField;
    qryMonthTeamEMP_WORKDAY_DENSITY_PERCENT: TAbmesFloatField;
    qryMonthTeamsDEFINED_EMPLOYEE_COUNT: TAbmesFloatField;
    qryMonthTeamsEMP_WORKDAY_DURATION_HOURS: TAbmesFloatField;
    qryMonthTeamsEMP_WORKDAY_DENSITY_PERCENT: TAbmesFloatField;
    qryTeamDEFINED_EMPLOYEE_COUNT: TAbmesFloatField;
    qryTeamEMP_WORKDAY_DURATION_HOURS: TAbmesFloatField;
    qryTeamEMP_WORKDAY_DENSITY_PERCENT: TAbmesFloatField;
    qryTeamsDEFINED_EMPLOYEE_COUNT: TAbmesFloatField;
    qryTeamsEMP_WORKDAY_DURATION_HOURS: TAbmesFloatField;
    qryTeamsEMP_WORKDAY_DENSITY_PERCENT: TAbmesFloatField;
    qryTeamsEMP_WORKDAY_EFFECTIVE_HOURS: TAbmesFloatField;
    qryMonthTeamsEMP_WORKDAY_EFFECTIVE_HOURS: TAbmesFloatField;
    qryMonthTeamsTEAM_WASTE_OPHOURS: TAbmesFloatField;
    qryMonthTeamsTEAM_TOTAL_WORK_OPHOURS: TAbmesFloatField;
    qryMonthTeamsTEAM_AVG_DAY_OPHOURS: TAbmesFloatField;
    qryWorkHoursDEFINED_EMPLOYEE_COUNT: TAbmesFloatField;
    qryWorkHoursWORK_OPHOURS: TAbmesFloatField;
    qryProfessionPeriodsUSED_BY_EMPLOYEES: TAbmesFloatField;
    qryProfessionPeriodsUSED_BY_TEAMS: TAbmesFloatField;
    qryProfessionPeriodsIS_PAST: TAbmesFloatField;
    qryProfessionPeriodsIS_PRESENT: TAbmesFloatField;
    qryProfessionPeriodsIS_FUTURE: TAbmesFloatField;
    qryMonthTeamsTEAM_SETUP_HOURS: TAbmesFloatField;
    qryMonthTeamsTEAM_NONWASTE_HOURS: TAbmesFloatField;
    qryMonthTeamsTEAM_SETUP_OPHOURS: TAbmesFloatField;
    qryMonthTeamsTEAM_NONWASTE_OPHOURS: TAbmesFloatField;
    qryEmployeeEarningsEMPLOYEE_SETUP_HOURS: TAbmesFloatField;
    qryEmployeeEarningsEMPLOYEE_NONWASTE_HOURS: TAbmesFloatField;
    qryEmployeeEarningsEMPLOYEE_TEAM_HOURS: TAbmesFloatField;
    qryMinAndMaxOccWorkDeptPriorityNoCodes: TAbmesSQLQuery;
    qryMinAndMaxOccWorkDeptPriorityNoCodesMIN_PRIORITY_NO_CODE: TAbmesFloatField;
    qryMinAndMaxOccWorkDeptPriorityNoCodesMAX_PRIORITY_NO_CODE: TAbmesFloatField;
    qryOccupationSysRoles: TAbmesSQLQuery;
    qryOccupationSysRolesOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    qryOccupationSysRolesSYS_ROLE_NO: TAbmesFloatField;
    qryOccupationSysRolesSYS_ROLE_NAME: TAbmesWideStringField;
    qryOccupationNotSysRoles: TAbmesSQLQuery;
    prvOccupationNotSysRoles: TDataSetProvider;
    qryOccupationNotSysRolesOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationNotSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    qryOccupationNotSysRolesSYS_ROLE_NO: TAbmesFloatField;
    qryOccupationNotSysRolesSYS_ROLE_NAME: TAbmesWideStringField;
    qryOccupationEffectiveActivities: TAbmesSQLQuery;
    prvOccupationEffectiveActivities: TDataSetProvider;
    qryOccupationNotEffectiveActivities: TAbmesSQLQuery;
    prvOccupationNotEffectiveActivities: TDataSetProvider;
    qryOccupationEffectiveActivitiesACTIVITY_CODE: TAbmesFloatField;
    qryOccupationEffectiveActivitiesACTIVITY_NO: TAbmesFloatField;
    qryOccupationEffectiveActivitiesACTIVITY_NAME: TAbmesWideStringField;
    qryOccupationEffectiveActivitiesOCC_ACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField;
    qryOccupationNotEffectiveActivitiesACTIVITY_CODE: TAbmesFloatField;
    qryOccupationNotEffectiveActivitiesACTIVITY_NO: TAbmesFloatField;
    qryOccupationNotEffectiveActivitiesACTIVITY_NAME: TAbmesWideStringField;
    qryOccupationNotEffectiveActivitiesOCC_ACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField;
    qryOAENeededProfessionsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    qryMonthTeamEmployeesWORKDAY_COUNT: TAbmesFloatField;
    qryEmployeeEarningsEMP_MAIN_SHIFT_WORKDAY_COUNT: TAbmesFloatField;
    qryEmployeeEarningsEMP_MAIN_SHIFT_EFF_WORKHOURS: TAbmesFloatField;
    qryWorkHoursTEAM_CODE: TAbmesFloatField;
    qryWorkHoursEMPLOYEE_CODE: TAbmesFloatField;
    qryWorkHoursWORKDAY_COUNT: TAbmesFloatField;
    qryWorkHoursEFFECTIVE_EMP_WORKHOURS: TAbmesFloatField;
    qryDelProfessionPeriods: TAbmesSQLQuery;
    qrySysRolesIsFilterAccepted: TAbmesSQLQuery;
    prvSysRolesIsFilterAccepted: TDataSetProvider;
    qrySysRolesIsFilterAcceptedSYS_ROLE_CODE: TAbmesFloatField;
    qryOccupationSysRolesIS_FILTER_ACCEPTED: TAbmesFloatField;
    qryOccupationNotSysRolesIS_FILTER_ACCEPTED: TAbmesFloatField;
    qrySysRolesIsFilterAcceptedIS_FILTER_ACCEPTED: TAbmesFloatField;
    qryOccupationNotSysRolesSYS_ROLE_TYPE_CODE: TAbmesFloatField;
    qryOccupationSysRolesSYS_ROLE_TYPE_CODE: TAbmesFloatField;
    qryOccupationPRC_DATA: TBlobField;
    qryOccupationEmployeePRC_DATA: TBlobField;
    qryOccupationsAndEmployeesDetailOE_MASTERED_PRC_ACTIONS_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterOE_MASTERED_PRC_ACTIONS_COUNT: TAbmesFloatField;
    qryOccupationsAndEmployeesMasterOCC_PRC_ACTIONS_COUNT: TAbmesFloatField;
    qryProfessionBaseOps: TAbmesSQLQuery;
    qryProfessionConcreteOps: TAbmesSQLQuery;
    qryProfessionBaseOpsPROFESSION_CODE: TAbmesFloatField;
    qryProfessionBaseOpsPRC_BASE_OP_CODE: TAbmesFloatField;
    qryProfessionConcreteOpsPROFESSION_CODE: TAbmesFloatField;
    qryProfessionConcreteOpsPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    qryProfessionTypes: TAbmesSQLQuery;
    qryProfessionTypesPROFESSION_TYPE_CODE: TAbmesFloatField;
    qryProfessionTypesPROFESSION_TYPE_NO: TAbmesFloatField;
    qryProfessionTypesPROFESSION_TYPE_NAME: TAbmesWideStringField;
    qryProfessionTypesPROFESSION_TYPE_ABBREV: TAbmesWideStringField;
    prvProfessionTypes: TDataSetProvider;
    qryProfessionConcreteOpsPRC_CONCR_OP_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryProfessionBaseOpsPRC_BASE_OP_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryProfessionsPROFESSION_TYPE_NAME: TAbmesWideStringField;
    qryProfessionKindsPROFESSION_KIND_CODE: TAbmesFloatField;
    qryProfessionKindsPROFESSION_KIND_NO: TAbmesFloatField;
    qryProfessionKindsPROFESSION_KIND_NAME: TAbmesWideStringField;
    qryProfessionKindsPROFESSION_TYPE_CODE: TAbmesFloatField;
    qryProfessionsPROFESSION_KIND_NAME: TAbmesWideStringField;
    qryProfessionPROFESSION_KIND_CODE: TAbmesFloatField;
    qryOccupationNotProfessionsPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField;
    qryOccupationProfessionsPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField;
    qryOAENeededProfessionsPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField;
    qryOAENeededProfessionsPROFESSION_KIND_NO: TAbmesFloatField;
    qryOccupationNotProfessionsPROFESSION_KIND_NO: TAbmesFloatField;
    qryOccupationProfessionsPROFESSION_KIND_NO: TAbmesFloatField;
    qryOAEProfessionsPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField;
    qryOAEProfessionsPROFESSION_KIND_NO: TAbmesFloatField;
    qryOccupationWorkDeptPrioritiesDOC_BRANCH_CODE: TAbmesFloatField;
    qryOccupationWorkDeptPrioritiesDOC_CODE: TAbmesFloatField;
    qryOccupationWorkDeptPrioritiesHAS_DOC_ITEMS: TAbmesFloatField;
    qryOrgWorkActivities: TAbmesSQLQuery;
    prvOrgWorkActivities: TDataSetProvider;
    qryOrgWorkModes: TAbmesSQLQuery;
    prvOrgWorkModes: TDataSetProvider;
    qryOrgWorkLevels: TAbmesSQLQuery;
    prvOrgWorkLevels: TDataSetProvider;
    qryDeptOWDPCoverTypes: TAbmesSQLQuery;
    prvDeptOWDPCoverTypes: TDataSetProvider;
    qryOrgWorkActivitiesORG_WORK_ACTIVITY_CODE: TAbmesFloatField;
    qryOrgWorkActivitiesORG_WORK_ACTIVITY_NO: TAbmesFloatField;
    qryOrgWorkActivitiesORG_WORK_ACTIVITY_NAME: TAbmesWideStringField;
    qryOrgWorkActivitiesORG_WORK_MODE_CODE: TAbmesFloatField;
    qryOrgWorkModesORG_WORK_MODE_CODE: TAbmesFloatField;
    qryOrgWorkModesORG_WORK_MODE_NO: TAbmesFloatField;
    qryOrgWorkModesORG_WORK_MODE_NAME: TAbmesWideStringField;
    qryOrgWorkModesORG_WORK_MODE_ABBREV: TAbmesWideStringField;
    qryOrgWorkLevelsORG_WORK_LEVEL_CODE: TAbmesFloatField;
    qryOrgWorkLevelsORG_WORK_LEVEL_NO: TAbmesFloatField;
    qryOrgWorkLevelsORG_WORK_LEVEL_NAME: TAbmesWideStringField;
    qryOrgWorkLevelsORG_WORK_LEVEL_ABBREV: TAbmesWideStringField;
    qryDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    qryDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_NO: TAbmesFloatField;
    qryDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_NAME: TAbmesWideStringField;
    qryDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_ABBREV: TAbmesWideStringField;
    qryOccupationWorkDeptPrioritiesORG_WORK_LEVEL_CODE: TAbmesFloatField;
    qryOccupationWorkDeptPrioritiesORG_WORK_ACTIVITY_CODE: TAbmesFloatField;
    qryDeptOccWorkDeptPriorities: TAbmesSQLQuery;
    prvDeptOccWorkDeptPriorities: TDataSetProvider;
    qryDeptOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    qryDeptOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField;
    qryDeptOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField;
    qryDeptOccWorkDeptPrioritiesOWD_PRIORITY_DISPLAY_NAME: TAbmesWideStringField;
    qryOrgWorkTypes: TAbmesSQLQuery;
    prvOrgWorkTypes: TDataSetProvider;
    qryOrgWorkTypesORG_WORK_LEVEL_CODE: TAbmesFloatField;
    qryOrgWorkTypesORG_WORK_MODE_CODE: TAbmesFloatField;
    qryOrgWorkTypesIS_PROCESS_GENERATOR: TAbmesFloatField;
    qryOccupationWorkDeptPrioritiesORG_WORK_MODE_CODE: TAbmesFloatField;
    qryOrgWorkTypesORG_WORK_TYPE_NAME: TAbmesWideStringField;
    qryDeleteOccupation: TAbmesSQLQuery;
    qryOccupationDeptsDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    qryDeptOccWorkDeptPrioritiesDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    qryOccupationDeptsIS_CAPACITY_GENERATOR: TAbmesFloatField;
    qryDeptOccWorkDeptPrioritiesIS_CAPACITY_GENERATOR: TAbmesFloatField;
    qryOAEProfessionsDeptsDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    qryOAEProfessionsDeptsOWDP_IS_CAPACITY_GENERATOR: TAbmesFloatField;
    qryOccupationEmployeeRegimes: TAbmesSQLQuery;
    prvOccupationEmployeeRegimes: TDataSetProvider;
    qryOccupationEmployeeRegimesOE_REGIME_CODE: TAbmesFloatField;
    qryOccupationEmployeeRegimesOE_REGIME_NAME: TAbmesWideStringField;
    qryProfessionsPROFESSION_LOCAL_NO: TAbmesFloatField;
    qryProfessionsIS_GROUP: TAbmesFloatField;
    qryProfessionsPROFESSION_FULL_NO: TAbmesWideStringField;
    qryProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryProfessionsPARENT_PROFESSION_CODE: TAbmesFloatField;
    qryProfessionPROFESSION_LOCAL_NO: TAbmesFloatField;
    qryProfessionPARENT_PROFESSION_CODE: TAbmesFloatField;
    qryProfessionPARENT_FULL_NO: TAbmesWideStringField;
    qryProfessionIS_GROUP: TAbmesFloatField;
    qryProfessionHAS_DOC_ITEMS: TAbmesFloatField;
    qryGetNewProfessionLocalNo: TAbmesSQLQuery;
    qryGetNewProfessionLocalNoNEW_PROFESSION_LOCAL_NO: TAbmesFloatField;
    qryProfessionsPrintTree: TAbmesSQLQuery;
    qryProfessionsPrintTreeNODE_ID: TAbmesFloatField;
    qryProfessionsPrintTreePARENT_NODE_ID: TAbmesFloatField;
    qryProfessionsPrintTreeNODE_NAME: TAbmesWideStringField;
    qryProfessionsPrintTreeFORMATED_NODE_NO: TAbmesWideStringField;
    qryProfessionsPrintTreeNODE_LEVEL: TAbmesFloatField;
    qryProfessionsPrintTreeNODE_CHILD_COUNT: TAbmesFloatField;
    qryProfessionsPrintTreeNODE_TYPE: TAbmesFloatField;
    qryProfessionsPrintTreeIS_LAST_CHILD: TAbmesFloatField;
    qryProfessionsPrintTreeHAS_CHILDREN: TAbmesFloatField;
    prvProfessionsPrintTree: TDataSetProvider;
    qryTeamProfessionsPROFESSION_FULL_NO: TAbmesWideStringField;
    qryTeamProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryTeamNotProfessionsPROFESSION_FULL_NO: TAbmesWideStringField;
    qryTeamNotProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryOccupationNotProfessionsPROFESSION_FULL_NO: TAbmesWideStringField;
    qryOccupationNotProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryOccupationProfessionsPROFESSION_FULL_NO: TAbmesWideStringField;
    qryOccupationProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryEmployeeProfessionsPROFESSION_FULL_NO: TAbmesWideStringField;
    qryEmployeeProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryEmployeeNotProfessionsPROFESSION_FULL_NO: TAbmesWideStringField;
    qryEmployeeNotProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryOAENeededProfessionsPROFESSION_FULL_NO: TAbmesWideStringField;
    qryOAENeededProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryOAEProfessionsPROFESSION_FULL_NO: TAbmesWideStringField;
    qryOAEProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryGetProfessionIsInstance: TAbmesSQLQuery;
    qryGetProfessionIsInstanceIS_INSTANCE: TAbmesFloatField;
    qryGetProfessionCodeByFullNo: TAbmesSQLQuery;
    qryGetProfessionCodeByFullNoPROFESSION_CODE: TAbmesFloatField;
    qryOccupationDeptsIS_DELEGATED: TAbmesFloatField;
    qryOAEProfessionsDeptsIS_DELEGATED: TAbmesFloatField;
    qryGetEmployeeName: TAbmesSQLQuery;
    qryGetEmployeeNameFIRST_NAME: TAbmesWideStringField;
    qryGetEmployeeNameMIDDLE_NAME: TAbmesWideStringField;
    qryGetEmployeeNameLAST_NAME: TAbmesWideStringField;
    procedure qryTeamsAfterClose(DataSet: TDataSet);
    procedure qryTeamsBeforeOpen(DataSet: TDataSet);
    procedure prvTeamBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvTeamAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvTeamBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryTeamAfterProviderStartTransaction(DataSet: TDataSet);
    procedure qryMonthTeamsBeforeOpen(DataSet: TDataSet);
    procedure qryMonthTeamsAfterClose(DataSet: TDataSet);
    procedure qryMonthTeamsCalcFields(DataSet: TDataSet);
    procedure prvMonthTeamBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvOccupationBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvOccupationAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvOccupationBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryOccupationAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure prvEmployeeBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvEmployeeAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryEmployeeAfterProviderStartTransaction(DataSet: TDataSet);
    procedure qryWorkHoursBeforeOpen(DataSet: TDataSet);
    procedure qryWorkHoursCalcFields(DataSet: TDataSet);
    procedure prvEarningModifiersBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryEmployeeEarningsBeforeOpen(DataSet: TDataSet);
    procedure qryEmployeeEarningsCalcFields(DataSet: TDataSet);
    procedure prvEmployeeBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryOccupationsAndEmployeesMasterBeforeOpen(DataSet: TDataSet);
    procedure qryOccupationsAndEmployeesMasterAfterClose(DataSet: TDataSet);
    procedure prvOccupationAndEmployeeBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryProfessionAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure prvProfessionAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvProfessionBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvProfessionBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryEmployeeEarningsAfterClose(DataSet: TDataSet);
    procedure qryEmployeesNomBeforeOpen(DataSet: TDataSet);
    procedure prvOccupationsAndEmployeesDetailGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvOccupationAndEmployeeBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvOccupationAndEmployeeAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryOccupationAndEmployeeAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure qryDiscEventTypeAfterProviderStartTransaction(DataSet: TDataSet);
    procedure prvDiscEventTypeAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvDiscEventTypeBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure prvProfessionsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvOccupationGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvOccupationAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvOccupationAndEmployeeAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvOccupationAndEmployeeGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvOccupationWorkDeptPrioritiesBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure prvOccupationWorkDeptPrioritiesAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure qryOccupationWorkDeptPrioritiesAfterProviderStartTransaction(DataSet: TDataSet);
  private
    FDocsDelta: Variant;
    function GetNewOccupationCode: Integer;
    function GetNewTeamCode: Integer;
    function GetNewProfessionCode: Integer;
    function GetNewProfessionLocalNo(AParentProfessionCode: Integer): Integer;
    function GetProfessionCodeByFullNo(const AProfessionFullNo: string): Integer;
    function GetProfessionIsInstance(AProfessionCode: Integer): Boolean;
    function GetNewProfessionPeriodCode: Integer;
    function GetNewEmployeeDisciplineEventCode(EmployeeCode: Integer): Integer;
    function GetNewOccupationShiftCode: Integer;
    function GetNewOccupationSalaryCode: Integer;

    function GetNewDiscEventTypeCode: Integer;
    function GetNewDiscEventTypeLocalNo(AParentDiscEventTypeCode: Integer): Integer;
    function GetNewDiscEventTypePeriodCode: Integer;
    function GetDiscEventTypeCodeByFullNo(const ADiscEventTypeFullNo: string): Integer;
    function GetDiscEventTypeIsInstance(ADiscEventTypeCode: Integer): Boolean;
    function GetDiscEventTypeIsInactive(ADiscEventTypeCode: Integer): Boolean;
    procedure GetEmployeeName(
      AEmployeeCode: Integer;
      out AFirstName: string;
      out AMiddleName: string;
      out ALastName: string);
  protected
    function TeamEarnings(TeamCode: Integer; BeginDate: TDateTime; EndDate: TDateTime): Double;
    function GetOccupationDeptCode(OccupationCode: Integer): Integer;
    function DeptDayWorkHours(DeptCode: Integer): Double;
    procedure GetEmployeeData(AEmployeeCode: Integer; out AEmployeeName: string;
                              out AHasDocumentation: Boolean; out ADocBranchCode: Integer;
                              out ADocCode: Integer; out AEmployeeNo: Integer);
    function GetNewEmployeeCode: Integer;
    function GetEmployeeShiftCode(AEmployeeCode: Integer; ADate: TDateTime): Integer;
    procedure GetDiscEventTypeData(
      DiscEventTypeCode: Integer;
      ToDate: TDateTime;
      out ParentDiscEventTypeCode: Integer;
      out LocalNo: Integer;
      out FullNo: string;
      out FormatedFullNo: string;
      out FullName: string;
      out ShortName: string;
      out IsGroup: Boolean;
      out DocBranchCode: Integer;
      out DocCode: Integer;
      out HasDocItems: Boolean;
      out Rating: Integer;
      out ActiveDateUnitCount: Integer;
      out ActiveDateUnitCode: Integer;
      out Color: Integer;
      out BackgroundColor: Integer);

    procedure GetMinAndMaxOccWorkDeptPriorityNoCodes(
      out MinOccWorkDeptPriorityNoCode: Integer;
      out MaxOccWorkDeptPriorityNoCode: Integer);

    procedure DeleteOccupation(AOccupationCode: Integer);
  end;

type
  IdmHumanResourceProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmHumanResourceProxy = class(TDBPooledDataModuleProxy, IdmHumanResourceProxy)
  private
    class var FSingleton: TdmHumanResourceProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmHumanResource>;
  strict protected
    property LockedInstance: ISmartLock<TdmHumanResource> read GetLockedInstance;
  public
    class property Singleton: TdmHumanResourceProxy read FSingleton;

    function TeamEarnings(TeamCode: Integer; BeginDate: TDateTime; EndDate: TDateTime): Double;
    function GetOccupationDeptCode(OccupationCode: Integer): Integer;
    function DeptDayWorkHours(DeptCode: Integer): Double;
    procedure GetEmployeeData(
      AEmployeeCode: Integer;
      out AEmployeeName: string;
      out AHasDocumentation: Boolean;
      out ADocBranchCode: Integer;
      out ADocCode: Integer;
      out AEmployeeNo: Integer);

    procedure GetEmployeeName(
      AEmployeeCode: Integer;
      out AFirstName: string;
      out AMiddleName: string;
      out ALastName: string);

    function GetNewProfessionLocalNo(AParentProfessionCode: Integer): Integer;
    function GetProfessionCodeByFullNo(const AProfessionFullNo: string): Integer;
    function GetProfessionIsInstance(AProfessionCode: Integer): Boolean;

    function GetNewEmployeeCode: Integer;
    function GetEmployeeShiftCode(AEmployeeCode: Integer; ADate: TDateTime): Integer;

    function GetNewDiscEventTypeCode: Integer;
    function GetNewDiscEventTypeLocalNo(AParentDiscEventTypeCode: Integer): Integer;
    function GetNewDiscEventTypePeriodCode: Integer;
    function GetDiscEventTypeCodeByFullNo(const ADiscEventTypeFullNo: string): Integer;
    function GetDiscEventTypeIsInstance(ADiscEventTypeCode: Integer): Boolean;
    function GetDiscEventTypeIsInactive(ADiscEventTypeCode: Integer): Boolean;
    procedure GetDiscEventTypeData(
      DiscEventTypeCode: Integer;
      ToDate: TDateTime;
      out ParentDiscEventTypeCode: Integer;
      out LocalNo: Integer;
      out FullNo: string;
      out FormatedFullNo: string;
      out FullName: string;
      out ShortName: string;
      out IsGroup: Boolean;
      out DocBranchCode: Integer;
      out DocCode: Integer;
      out HasDocItems: Boolean;
      out Rating: Integer;
      out ActiveDateUnitCount: Integer;
      out ActiveDateUnitCode: Integer;
      out Color: Integer;
      out BackgroundColor: Integer);

    procedure GetMinAndMaxOccWorkDeptPriorityNoCodes(
      out MinOccWorkDeptPriorityNoCode: Integer;
      out MaxOccWorkDeptPriorityNoCode: Integer);

    procedure DeleteOccupation(AOccupationCode: Integer);
  end;

implementation

uses
  uDBPooledDataModuleHelper, uUtils, uSvrUtils, uEarningTypes,
  uOccupationUtils, uPrcUtils, uPrcDeclarations, uOWDPriorityTypes;

{$R *.dfm}

{ TdmHumanResourceProxy }

function TdmHumanResourceProxy.GetLockedInstance: ISmartLock<TdmHumanResource>;
begin
  Result:= ISmartLock<TdmHumanResource>(inherited LockedInstance);
end;

function TdmHumanResourceProxy.GetEmployeeShiftCode(AEmployeeCode: Integer;
  ADate: TDateTime): Integer;
begin
  Result:= LockedInstance.Value.GetEmployeeShiftCode(AEmployeeCode, ADate);
end;

procedure TdmHumanResourceProxy.GetEmployeeData(AEmployeeCode: Integer;
  out AEmployeeName: string; out AHasDocumentation: Boolean;
  out ADocBranchCode, ADocCode: Integer; out AEmployeeNo: Integer);
begin
  LockedInstance.Value.GetEmployeeData(
    AEmployeeCode, AEmployeeName, AHasDocumentation, ADocBranchCode, ADocCode, AEmployeeNo);
end;

procedure TdmHumanResourceProxy.GetEmployeeName(AEmployeeCode: Integer;
  out AFirstName, AMiddleName, ALastName: string);
begin
  LockedInstance.Value.GetEmployeeName(AEmployeeCode, AFirstName, AMiddleName, ALastName);
end;

function TdmHumanResourceProxy.GetNewEmployeeCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewEmployeeCode;
end;

function TdmHumanResourceProxy.GetNewProfessionLocalNo(
  AParentProfessionCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewProfessionLocalNo(AParentProfessionCode);
end;

function TdmHumanResourceProxy.GetProfessionCodeByFullNo(
  const AProfessionFullNo: string): Integer;
begin
  Result:= LockedInstance.Value.GetProfessionCodeByFullNo(AProfessionFullNo);
end;

function TdmHumanResourceProxy.GetProfessionIsInstance(
  AProfessionCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.GetProfessionIsInstance(AProfessionCode);
end;

function TdmHumanResourceProxy.TeamEarnings(TeamCode: Integer; BeginDate,
  EndDate: TDateTime): Double;
begin
  Result:= LockedInstance.Value.TeamEarnings(TeamCode, BeginDate, EndDate);
end;

function TdmHumanResourceProxy.GetOccupationDeptCode(
  OccupationCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetOccupationDeptCode(OccupationCode);
end;

procedure TdmHumanResourceProxy.DeleteOccupation(AOccupationCode: Integer);
begin
  LockedInstance.Value.DeleteOccupation(AOccupationCode);
end;

function TdmHumanResourceProxy.DeptDayWorkHours(DeptCode: Integer): Double;
begin
  Result:= LockedInstance.Value.DeptDayWorkHours(DeptCode);
end;

function TdmHumanResourceProxy.GetNewDiscEventTypeCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewDiscEventTypeCode;
end;

function TdmHumanResourceProxy.GetNewDiscEventTypeLocalNo(AParentDiscEventTypeCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewDiscEventTypeLocalNo(AParentDiscEventTypeCode);
end;

function TdmHumanResourceProxy.GetNewDiscEventTypePeriodCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewDiscEventTypePeriodCode;
end;

function TdmHumanResourceProxy.GetDiscEventTypeCodeByFullNo(
  const ADiscEventTypeFullNo: string): Integer;
begin
  Result:= LockedInstance.Value.GetDiscEventTypeCodeByFullNo(ADiscEventTypeFullNo);
end;

procedure TdmHumanResourceProxy.GetDiscEventTypeData(
  DiscEventTypeCode: Integer; ToDate: TDateTime;
  out ParentDiscEventTypeCode, LocalNo: Integer; out FullNo,
  FormatedFullNo, FullName, ShortName: string; out IsGroup: Boolean;
  out DocBranchCode, DocCode: Integer; out HasDocItems: Boolean;
  out Rating, ActiveDateUnitCount, ActiveDateUnitCode,
  Color, BackgroundColor: Integer);
begin
  LockedInstance.Value.GetDiscEventTypeData(
    DiscEventTypeCode,
    ToDate,
    ParentDiscEventTypeCode,
    LocalNo,
    FullNo,
    FormatedFullNo,
    FullName,
    ShortName,
    IsGroup,
    DocBranchCode,
    DocCode,
    HasDocItems,
    Rating,
    ActiveDateUnitCount,
    ActiveDateUnitCode,
    Color,
    BackgroundColor
  );
end;

function TdmHumanResourceProxy.GetDiscEventTypeIsInstance(ADiscEventTypeCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.GetDiscEventTypeIsInstance(ADiscEventTypeCode);
end;

function TdmHumanResourceProxy.GetDiscEventTypeIsInactive(ADiscEventTypeCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.GetDiscEventTypeIsInactive(ADiscEventTypeCode);
end;

procedure TdmHumanResourceProxy.GetMinAndMaxOccWorkDeptPriorityNoCodes(
  out MinOccWorkDeptPriorityNoCode, MaxOccWorkDeptPriorityNoCode: Integer);
begin
  LockedInstance.Value.GetMinAndMaxOccWorkDeptPriorityNoCodes(
    MinOccWorkDeptPriorityNoCode, MaxOccWorkDeptPriorityNoCode);
end;

{ TdmCompany }

procedure TdmHumanResource.qryTeamsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmHumanResource.qryTeamsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmHumanResource.prvTeamBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmHumanResource.prvTeamAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmHumanResource.prvTeamBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukInsert) then
    begin
      if (SourceDS = qryTeam) then
        DeltaDS.FieldByName('TEAM_CODE').NewValue:= GetNewTeamCode;

      if (SourceDS = qryTeamMembers) or (SourceDS = qryTeamProfessions) then
        DeltaDS.FieldByName('TEAM_CODE').NewValue:=
          DeltaDS.DataSetField.DataSet.FieldByName('TEAM_CODE').NewValue;
    end;  { if }
end;

procedure TdmHumanResource.qryTeamAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmHumanResource.qryMonthTeamsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmHumanResource.qryMonthTeamsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmHumanResource.qryMonthTeamsCalcFields(DataSet: TDataSet);
begin
  inherited;

  qryMonthTeamsTEAM_TOTAL_WORK_HOURS.AsFloat:=
    qryMonthTeamsTEAM_SETUP_HOURS.AsFloat +
    qryMonthTeamsTEAM_NONWASTE_HOURS.AsFloat +
    qryMonthTeamsTEAM_WASTE_HOURS.AsFloat;

  if (qryMonthTeamsWORKDAY_COUNT.AsFloat = 0) then
    qryMonthTeamsTEAM_AVG_DAY_HOURS.Clear
  else
    qryMonthTeamsTEAM_AVG_DAY_HOURS.AsFloat:=
      qryMonthTeamsTEAM_TOTAL_WORK_HOURS.AsFloat /
      qryMonthTeamsWORKDAY_COUNT.AsFloat;

  if qryMonthTeamsOVERRIDING_TEAM_EARNING.IsNull then
    qryMonthTeamsEFFECTIVE_TEAM_EARNING.AsVariant:= qryMonthTeamsTEAM_EARNINGS.AsVariant
  else
    qryMonthTeamsEFFECTIVE_TEAM_EARNING.AsVariant:= qryMonthTeamsOVERRIDING_TEAM_EARNING.AsVariant;

  qryMonthTeamsTEAM_SETUP_OPHOURS.AsVariant:=
    qryMonthTeamsTEAM_SETUP_HOURS.AsVariant /
    qryMonthTeamsDEFINED_EMPLOYEE_COUNT.AsVariant;

  qryMonthTeamsTEAM_NONWASTE_OPHOURS.AsVariant:=
    qryMonthTeamsTEAM_NONWASTE_HOURS.AsVariant /
    qryMonthTeamsDEFINED_EMPLOYEE_COUNT.AsVariant;

  qryMonthTeamsTEAM_WASTE_OPHOURS.AsVariant:=
    qryMonthTeamsTEAM_WASTE_HOURS.AsVariant /
    qryMonthTeamsDEFINED_EMPLOYEE_COUNT.AsVariant;

  qryMonthTeamsTEAM_TOTAL_WORK_OPHOURS.AsVariant:=
    qryMonthTeamsTEAM_TOTAL_WORK_HOURS.AsVariant /
    qryMonthTeamsDEFINED_EMPLOYEE_COUNT.AsVariant;

  qryMonthTeamsTEAM_AVG_DAY_OPHOURS.AsVariant:=
    qryMonthTeamsTEAM_AVG_DAY_HOURS.AsVariant /
    qryMonthTeamsDEFINED_EMPLOYEE_COUNT.AsVariant;

  qryMonthTeamsTEAM_WORK_HOUR_DENSITY.AsFloat:=
    qryMonthTeamsTEAM_AVG_DAY_OPHOURS.AsFloat /
    qryMonthTeamsEMP_WORKDAY_EFFECTIVE_HOURS.AsFloat;
end;

procedure TdmHumanResource.prvMonthTeamBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (SourceDS = qryMonthTeamEmployees) and (UpdateKind = ukInsert) then
    with DeltaDS do
      begin
        FieldByName('TEAM_CODE').NewValue:=
          DataSetField.DataSet.FieldByName('TEAM_CODE').Value;
        FieldByName('THE_MONTH_DATE').NewValue:=
          DataSetField.DataSet.FieldByName('THE_MONTH_DATE').Value;
      end;
end;

procedure TdmHumanResource.prvOccupationBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmHumanResource.prvOccupationAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmHumanResource.prvOccupationAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;
  if (SourceDS = qryOccupation) then
    SvrProcesses.ApplyPrcData(ProcessOwners.Occupation, DeltaDS);
end;

procedure TdmHumanResource.prvOccupationBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukInsert) then
    begin
      if (SourceDS = qryOccupation) then
        DeltaDS.FieldByName('OCCUPATION_CODE').NewValue:= GetNewOccupationCode;

      if (SourceDS = qryOccupationShifts) then
        DeltaDS.FieldByName('OCCUPATION_SHIFT_CODE').NewValue:= GetNewOccupationShiftCode;

      if (SourceDS = qryOccupationSalaries) then
        DeltaDS.FieldByName('OCCUPATION_SALARY_CODE').NewValue:= GetNewOccupationSalaryCode;

      if (SourceDS = qryOccupationProfessions) or
         (SourceDS = qryOccupationDepts) or
         (SourceDS = qryOccupationShifts) or
         (SourceDS = qryOccupationSalaries) or
         (SourceDS = qryOccupationSysRoles) then
        DeltaDS.FieldByName('OCCUPATION_CODE').NewValue:=
          DeltaDS.DataSetField.DataSet.FieldByName('OCCUPATION_CODE').NewValue;

      if (SourceDS = qryOccupationDepts) and
         (IntToDeptOWDPCoverType(VarToInt(GetFieldValue(DeltaDS.FieldByName('DEPT_OWDP_COVER_TYPE_CODE')))) = dowdpctAncestor) then
        begin
          Applied:= True;
        end;
    end;  { if }
end;

procedure TdmHumanResource.prvOccupationGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  inherited;
  SvrProcesses.AssignPrcData(ProcessOwners.Occupation, DataSet);
end;

procedure TdmHumanResource.qryOccupationAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmHumanResource.qryOccupationAndEmployeeAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

function TdmHumanResource.GetNewOccupationCode: Integer;
begin
  qryGetNewOccupationCode.Open;
  try
    Result:= qryGetNewOccupationCodeNEW_OCCUPATION_CODE.AsInteger;
  finally
    qryGetNewOccupationCode.Close;
  end;   { try }
end;

function TdmHumanResource.GetOccupationDeptCode(
  OccupationCode: Integer): Integer;
begin
  with qryOccupation do
    begin
      ParamByName('OCCUPATION_CODE').AsInteger:= OccupationCode;
      Open;
      try
        if Eof then
          Result:= 0
        else
          Result:= qryOccupationDEPT_CODE.AsInteger;
      finally
        Close;
      end;  { try }
    end;
end;

function TdmHumanResource.GetProfessionCodeByFullNo(
  const AProfessionFullNo: string): Integer;
begin
  qryGetProfessionCodeByFullNo.ParamByName('PROFESSION_FULL_NO').AsString:= AProfessionFullNo;
  Result:=
    qryGetProfessionCodeByFullNo.TempOpen/
      qryGetProfessionCodeByFullNoPROFESSION_CODE.AsIntegerFunc;
end;

function TdmHumanResource.GetProfessionIsInstance(
  AProfessionCode: Integer): Boolean;
begin
  qryGetProfessionIsInstance.ParamByName('PROFESSION_CODE').AsInteger:= AProfessionCode;
  Result:=
    qryGetProfessionIsInstance.TempOpen/
      qryGetProfessionIsInstanceIS_INSTANCE.AsBooleanFunc;
end;

function TdmHumanResource.GetNewEmployeeCode: Integer;
begin
  qryGetNewEmployeeCode.Open;
  try
    Result:= qryGetNewEmployeeCodeNEW_EMPLOYEE_CODE.AsInteger;
  finally
    qryGetNewEmployeeCode.Close;
  end;
end;

function TdmHumanResource.GetNewTeamCode: Integer;
begin
  qryGetNewTeamCode.Open;
  try
    Result:= qryGetNewTeamCodeNEW_TEAM_CODE.AsInteger;
  finally
    qryGetNewTeamCode.Close;
  end;   { try }
end;

procedure TdmHumanResource.prvEmployeeBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmHumanResource.prvEmployeeAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmHumanResource.qryDiscEventTypeAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmHumanResource.qryEmployeeAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmHumanResource.qryWorkHoursBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ProcessDeptParamBeforeQueryOpen(qryWorkHours.ParamByName('DEPT_CODE'), LoginContext);
end;

procedure TdmHumanResource.qryWorkHoursCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryWorkHoursIS_NOT_SETUP.AsBoolean:= not qryWorkHoursIS_SETUP.AsBoolean;
  qryWorkHoursIS_NOT_WASTE.AsBoolean:= not qryWorkHoursIS_WASTE.AsBoolean;

  qryWorkHoursOPERATOR_EARNING.AsFloat:=
    qryWorkHoursWORK_HOURS.AsFloat *
    qryWorkHoursHOUR_PRICE.AsFloat;

  qryWorkHoursWORK_OPHOURS.AsVariant:=
    qryWorkHoursWORK_HOURS.AsVariant /
    qryWorkHoursDEFINED_EMPLOYEE_COUNT.AsVariant;
end;

procedure TdmHumanResource.prvDiscEventTypeAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmHumanResource.prvDiscEventTypeBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmHumanResource.prvEarningModifiersBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukInsert) then
    with qryNewEarningModifierCode do
      begin
        Open;
        try
          DeltaDS.FieldByName('EARNING_MODIFIER_CODE').NewValue:=
            qryNewEarningModifierCodeNEW_EARNING_MODIFIER_CODE.AsInteger;
        finally
          Close;
        end;  { try }
      end;  { with }
end;

procedure TdmHumanResource.qryEmployeeEarningsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  ProcessDeptParamBeforeQueryOpen(qryEmployeeEarnings.ParamByName('DEPT_CODE'), LoginContext);
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_OCCUPATION_WORK_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmHumanResource.qryEmployeeEarningsCalcFields(
  DataSet: TDataSet);
var
  EarningType: TEarningType;
begin
  inherited;

  qryEmployeeEarningsEMPLOYEE_TOTAL_EARNINGS.AsFloat:=
    qryEmployeeEarningsEMPLOYEE_PERSONAL_EARNINGS.AsFloat +
    qryEmployeeEarningsEMPLOYEE_TEAM_EARNINGS.AsFloat;

  qryEmployeeEarningsEMPLOYEE_TOTAL_WORK_HOURS.AsFloat:=
    qryEmployeeEarningsEMPLOYEE_SETUP_HOURS.AsFloat +
    qryEmployeeEarningsEMPLOYEE_NONWASTE_HOURS.AsFloat +
    qryEmployeeEarningsEMPLOYEE_WASTE_HOURS.AsFloat +
    qryEmployeeEarningsEMPLOYEE_TEAM_HOURS.AsFloat;

  if (qryEmployeeEarningsEMP_MAIN_SHIFT_WORKDAY_COUNT.AsFloat = 0) then
    qryEmployeeEarningsEMPLOYEE_AVG_DAY_HOURS.Clear
  else
    qryEmployeeEarningsEMPLOYEE_AVG_DAY_HOURS.AsFloat:=
      qryEmployeeEarningsEMPLOYEE_TOTAL_WORK_HOURS.AsFloat /
      qryEmployeeEarningsEMP_MAIN_SHIFT_WORKDAY_COUNT.AsFloat;

  if (qryEmployeeEarningsEMP_MAIN_SHIFT_EFF_WORKHOURS.AsFloat = 0) then
    qryEmployeeEarningsEMPLOYEE_WORK_HOUR_DENSITY.Clear
  else
    qryEmployeeEarningsEMPLOYEE_WORK_HOUR_DENSITY.AsVariant:=
      qryEmployeeEarningsEMPLOYEE_TOTAL_WORK_HOURS.AsVariant /
      qryEmployeeEarningsEMP_MAIN_SHIFT_EFF_WORKHOURS.AsVariant;

  if (qryEmployeeEarningsEMPLOYEE_PERSONAL_EARNINGS.AsFloat = 0) or
     (qryEmployeeEarningsEMPLOYEE_TEAM_EARNINGS.AsFloat = 0) then
    begin
      if (qryEmployeeEarningsEMPLOYEE_PERSONAL_EARNINGS.AsFloat = 0) then
        EarningType:= etTeam
      else
        EarningType:= etPersonal;
    end
  else
    EarningType:= etMixed;

  qryEmployeeEarningsEARNING_TYPE.AsInteger:= EarningTypeToInt(EarningType);
end;

function TdmHumanResource.GetNewProfessionCode: Integer;
begin
  qryGetMaxProffesionCode.Open;
  try
    Result:= qryGetMaxProffesionCodeMAX_PROFESSION_CODE.AsInteger + 1;
  finally
    qryGetMaxProffesionCode.Close;
  end;   { try }
end;

function TdmHumanResource.GetNewProfessionLocalNo(
  AParentProfessionCode: Integer): Integer;
begin
  qryGetNewProfessionLocalNo.ParamByName('PARENT_PROFESSION_CODE').AsInteger:= AParentProfessionCode;
  Result:=
    qryGetNewProfessionLocalNo.TempOpen/
      qryGetNewProfessionLocalNoNEW_PROFESSION_LOCAL_NO.AsIntegerFunc;
end;

function TdmHumanResource.GetNewProfessionPeriodCode: Integer;
begin
  qryNewProfessionPeriodCode.Open;
  try
    Result:= qryNewProfessionPeriodCodeNEW_PROFESSION_PERIOD_CODE.AsInteger;
  finally
    qryNewProfessionPeriodCode.Close;
  end;   { try }
end;

function TdmHumanResource.TeamEarnings(TeamCode: Integer; BeginDate,
  EndDate: TDateTime): Double;
begin
  with qryTeamEarnings do
    begin
      ParamByName('TEAM_CODE').AsInteger:= TeamCode;
      ParamByName('BEGIN_DATE').AsDateTime:= BeginDate;
      ParamByName('END_DATE').AsDateTime:= EndDate;

      Open;
      try
        Result:= qryTeamEarningsTEAM_EARNINGS.AsFloat;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

procedure TdmHumanResource.prvEmployeeBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (SourceDS = qryEmployeeDisciplineEvents) then
    case UpdateKind of
      ukInsert:
        if VarIsNullOrEmpty(DeltaDS.FieldByName('OLD_DISCIPLINE_EVENT_CODE').NewValue) then
          begin
            DeltaDS.FieldByName('EMPLOYEE_CODE').NewValue:=
              GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('EMPLOYEE_CODE'));
            DeltaDS.FieldByName('DISCIPLINE_EVENT_CODE').NewValue:=
              GetNewEmployeeDisciplineEventCode(DeltaDS.FieldByName('EMPLOYEE_CODE').NewValue);
          end
        else  { if }
          begin  // stornirane S ostavane na ekran
            SetParams(qryUpdEmployeeDisciplineEvent.Params, DeltaDS);
            qryUpdEmployeeDisciplineEvent.ParamByName('DISCIPLINE_EVENT_CODE').AsInteger:=
              DeltaDS.FieldByName('OLD_DISCIPLINE_EVENT_CODE').NewValue;
            qryUpdEmployeeDisciplineEvent.ParamByName('STORNO_EMPLOYEE_CODE').Clear;
            qryUpdEmployeeDisciplineEvent.ExecSQL;

            Applied:= True;
          end;  { if }

      ukModify:
        Applied:= (GetFieldValue(DeltaDS.FieldByName('DIRECT_STORNO')) = 0);  // stornirane BEZ ostavane na ekran

      ukDelete:
        raise Exception.Create('Delete not allowed!');
    end;

  if (SourceDS = qryEmployeeProfessions) and
     (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('EMPLOYEE_CODE').NewValue:=
      GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('EMPLOYEE_CODE'));

   if (SourceDS = qryEmployeeNotProfessions) then
     Applied:= True;
end;

function TdmHumanResource.GetEmployeeShiftCode(AEmployeeCode: Integer;
  ADate: TDateTime): Integer;
begin
  qryGetEmployeeShiftCode.ParamByName('EMPLOYEE_CODE').AsInteger:= AEmployeeCode;
  qryGetEmployeeShiftCode.ParamByName('THE_DATE').AsDateTime:= ADate;

  qryGetEmployeeShiftCode.Open;
  try
    Result:= qryGetEmployeeShiftCodeSHIFT_CODE.AsInteger;    
  finally
    qryGetEmployeeShiftCode.Close;
  end;
end;

procedure TdmHumanResource.GetMinAndMaxOccWorkDeptPriorityNoCodes(
  out MinOccWorkDeptPriorityNoCode, MaxOccWorkDeptPriorityNoCode: Integer);
begin
  qryMinAndMaxOccWorkDeptPriorityNoCodes.Open;
  try
    MinOccWorkDeptPriorityNoCode:= qryMinAndMaxOccWorkDeptPriorityNoCodesMIN_PRIORITY_NO_CODE.AsInteger;
    MaxOccWorkDeptPriorityNoCode:= qryMinAndMaxOccWorkDeptPriorityNoCodesMAX_PRIORITY_NO_CODE.AsInteger;
  finally
    qryMinAndMaxOccWorkDeptPriorityNoCodes.Close;
  end;  { try }
end;

procedure TdmHumanResource.GetEmployeeData(AEmployeeCode: Integer;
  out AEmployeeName: string; out AHasDocumentation: Boolean;
  out ADocBranchCode, ADocCode, AEmployeeNo: Integer);
begin
  qryEmployee.ParamByName('EMPLOYEE_CODE').AsInteger:= AEmployeeCode;
  qryEmployee.Open;
  try
    AEmployeeName:= qryEmployeeEMPLOYEE_NAME.AsString;
    AHasDocumentation:= qryEmployeeHAS_DOCUMENTATION.AsBoolean;
    ADocBranchCode:= qryEmployeeDOC_BRANCH_CODE.AsInteger;
    ADocCode:= qryEmployeeDOC_CODE.AsInteger;
    AEmployeeNo:= qryEmployeeEMPLOYEE_NO.AsInteger;
  finally
    qryEmployee.Close;
  end;
end;

procedure TdmHumanResource.GetEmployeeName(AEmployeeCode: Integer;
  out AFirstName, AMiddleName, ALastName: string);
begin
  qryGetEmployeeName.ParamByName('EMPLOYEE_CODE').AsInteger:= AEmployeeCode;
  qryGetEmployeeName.Open;
  try
    AFirstName:= qryGetEmployeeNameFIRST_NAME.AsString;
    AMiddleName:= qryGetEmployeeNameMIDDLE_NAME.AsString;
    ALastName:= qryGetEmployeeNameLAST_NAME.AsString;
  finally
    qryGetEmployeeName.Close;
  end;
end;

function TdmHumanResource.GetNewEmployeeDisciplineEventCode(EmployeeCode: Integer): Integer;
begin
  qryGetMaxEmployeeDisciplineEventCode.ParamByName('EMPLOYEE_CODE').AsInteger:= EmployeeCode;
  qryGetMaxEmployeeDisciplineEventCode.Open;
  try
    Result:= qryGetMaxEmployeeDisciplineEventCodeMAX_DISCIPLINE_EVENT_CODE.AsInteger + 1;
  finally
    qryGetMaxEmployeeDisciplineEventCode.Close;
  end;  { try }
end;

procedure TdmHumanResource.qryOccupationsAndEmployeesMasterBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  ProcessUserParamBeforeQueryOpen(qryOccupationsAndEmployeesMaster.ParamByName('EMPLOYEE_CODE'), LoginContext);

  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [DataSet as TAbmesSQLQuery]);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [DataSet as TAbmesSQLQuery]);
end;

procedure TdmHumanResource.qryOccupationWorkDeptPrioritiesAfterProviderStartTransaction(DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmHumanResource.qryOccupationsAndEmployeesMasterAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [DataSet as TAbmesSQLQuery]);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [DataSet as TAbmesSQLQuery]);
end;

procedure TdmHumanResource.prvOccupationAndEmployeeAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmHumanResource.prvOccupationAndEmployeeAfterUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
begin
  inherited;
  if (SourceDS = qryOccupationEmployee) then
    SvrProcesses.ApplyPrcData(ProcessOwners.OccupationEmployee, DeltaDS);
end;

procedure TdmHumanResource.prvOccupationAndEmployeeBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmHumanResource.prvOccupationAndEmployeeBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (SourceDS = qryOAEProfessions) and (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('OCCUPATION_EMPLOYEE_CODE').NewValue:=
      GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('OCCUPATION_EMPLOYEE_CODE'));

  if (SourceDS = qryOccupationAndEmployee) then
    Applied:= not RecordChanged(DeltaDS);

  if (SourceDS = qryOAENeededProfessions) then
    Applied:= True;
end;

procedure TdmHumanResource.prvOccupationAndEmployeeGetData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  inherited;
  SvrProcesses.AssignPrcData(
    ProcessOwners.OccupationEmployee,
    (DataSet.FieldByName('qryOccupationEmployee') as TDataSetField).NestedDataSet);
end;

procedure TdmHumanResource.DataModuleCreate(Sender: TObject);
begin
  RegisterMacroLibrary(mshLocalMacroLibrary);
  inherited;
end;

procedure TdmHumanResource.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  UnregisterMacroLibrary(mshLocalMacroLibrary);
end;

procedure TdmHumanResource.DeleteOccupation(AOccupationCode: Integer);
begin
  qryDeleteOccupation.Params.ParamByName('OCCUPATION_CODE').AsInteger:= AOccupationCode;
  qryDeleteOccupation.ExecSQL;
end;

function TdmHumanResource.DeptDayWorkHours(DeptCode: Integer): Double;
begin
  with qryDeptDayWorkHours do
    begin
      ParamByName('DEPT_CODE').AsInteger:= DeptCode;

      Open;
      try
        Result:= qryDeptDayWorkHoursDEPT_DAY_WORK_HOURS.AsFloat;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

procedure TdmHumanResource.qryProfessionAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmHumanResource.prvProfessionAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmHumanResource.prvProfessionBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmHumanResource.prvProfessionBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (SourceDS = qryProfession) and (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('PROFESSION_CODE').NewValue:= GetNewProfessionCode;

  if (SourceDS = qryProfessionPeriods) and (UpdateKind = ukInsert) then
    begin
      DeltaDS.FieldByName('PROFESSION_CODE').NewValue:=
        GetFieldValue((DeltaDS as TCustomClientDataSet).DataSetField.DataSet.FieldByName('PROFESSION_CODE'));
      DeltaDS.FieldByName('PROFESSION_PERIOD_CODE').NewValue:= GetNewProfessionPeriodCode;
    end;  { if }

  if ( (SourceDS = qryProfessionBaseOps) or (SourceDS = qryProfessionConcreteOps)
     ) and (UpdateKind = ukInsert) then
    begin
      DeltaDS.FieldByName('PROFESSION_CODE').NewValue:=
        GetFieldValue((DeltaDS as TCustomClientDataSet).DataSetField.DataSet.FieldByName('PROFESSION_CODE'));
    end;  { if }

  Applied:= not RecordChanged(DeltaDS);
end;

procedure TdmHumanResource.prvProfessionsBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukDelete) then
    begin
      SetParams(qryDelProfessionPeriods.Params, DeltaDS);
      qryDelProfessionPeriods.ExecSQL;
    end;
end;

procedure TdmHumanResource.qryEmployeeEarningsAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_OCCUPATION_WORK_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmHumanResource.qryEmployeesNomBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with qryEmployeesNom do
    if not ParamByName('EGN').IsNull then
      ProcessNoParamBeforeQueryOpen(ParamByName('EGN'));
end;

procedure TdmHumanResource.prvOccupationsAndEmployeesDetailGetData(
  Sender: TObject; DataSet: TCustomClientDataSet);

var
  FakeOccupationEmployeeCode: Integer;
  OccupationCode: Integer;
  OccupationBeginDate: TDateTime;
  OccupationEndDate: TDateTime;

  procedure InsertEmptyInterval(ABeginDate, AEndDate: TDateTime);
  begin
    DataSet.Insert;
    try
      DataSet.FieldByName('OCCUPATION_EMPLOYEE_CODE').AsInteger:= FakeOccupationEmployeeCode;
      Dec(FakeOccupationEmployeeCode);
      DataSet.FieldByName('OCCUPATION_CODE').AsInteger:= OccupationCode;
      DataSet.FieldByName('BEGIN_DATE').AsDateTime:= ABeginDate;
      DataSet.FieldByName('END_DATE').AsDateTime:= AEndDate;
      DataSet.FieldByName('OCCUPATION_BEGIN_DATE').AsDateTime:= OccupationBeginDate;
      DataSet.FieldByName('OCCUPATION_END_DATE').AsDateTime:= OccupationEndDate;
      DataSet.Post;
    except
      DataSet.Cancel;
      raise;
    end;  { try }
  end;

var
  SliceBeginDate: TDateTime;
  SliceEndDate: TDateTime;
begin
  inherited;
  if not (DataSet.Bof and DataSet.Eof) then
    begin
      DataSet.First;
      FakeOccupationEmployeeCode:= -1;
      OccupationCode:= DataSet.FieldByName('OCCUPATION_CODE').AsInteger;
      OccupationBeginDate:= DataSet.FieldByName('OCCUPATION_BEGIN_DATE').AsDateTime;
      OccupationEndDate:= DataSet.FieldByName('OCCUPATION_END_DATE').AsDateTime;

      SliceBeginDate:= OccupationBeginDate;
      while not DataSet.Eof do
        begin
          SliceEndDate:= DataSet.FieldByName('BEGIN_DATE').AsDateTime - 1;

          if (SliceEndDate >= SliceBeginDate) then
            InsertEmptyInterval(SliceBeginDate, SliceEndDate);

          SliceBeginDate:= DataSet.FieldByName('END_DATE').AsDateTime + 1;

          DataSet.Next;
        end;  { while }

      SliceEndDate:= OccupationEndDate;
      if (SliceEndDate >= SliceBeginDate) then
        InsertEmptyInterval(SliceBeginDate, SliceEndDate);
    end;  { if }
end;

procedure TdmHumanResource.prvOccupationWorkDeptPrioritiesAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmHumanResource.prvOccupationWorkDeptPrioritiesBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

function TdmHumanResource.GetNewOccupationShiftCode: Integer;
begin
  qryNewOccupationShiftCode.Open;
  try
    Result:= qryNewOccupationShiftCodeNEW_OCCUPATION_SHIFT_CODE.AsInteger;
  finally
    qryNewOccupationShiftCode.Close;
  end;  { try }
end;

function TdmHumanResource.GetNewOccupationSalaryCode: Integer;
begin
  qryNewOccupationSalaryCode.Open;
  try
    Result:= qryNewOccupationSalaryCodeNEW_OCCUPATION_SALARY_CODE.AsInteger;
  finally
    qryNewOccupationSalaryCode.Close;
  end;  { try }
end;

function TdmHumanResource.GetNewDiscEventTypeCode: Integer;
begin
  qryGetNewDiscEventTypeCode.Open;
  try
    Result:= qryGetNewDiscEventTypeCodeNEW_DISC_EVENT_TYPE_CODE.AsInteger;
  finally
    qryGetNewDiscEventTypeCode.Close;
  end;  { try }
end;

function TdmHumanResource.GetNewDiscEventTypeLocalNo(AParentDiscEventTypeCode: Integer): Integer;
begin
  qryGetNewDiscEventTypeLocalNo.ParamByName('PARENT_DISC_EVENT_TYPE_CODE').AsInteger:= AParentDiscEventTypeCode;
  qryGetNewDiscEventTypeLocalNo.Open;
  try
    Result:= qryGetNewDiscEventTypeLocalNoNEW_DISC_EVENT_TYPE_LOCAL_NO.AsInteger;
  finally
    qryGetNewDiscEventTypeLocalNo.Close;
  end;  { try }
end;

function TdmHumanResource.GetNewDiscEventTypePeriodCode: Integer;
begin
  qryGetNewDiscEventTypePeriodCode.Open;
  try
    Result:= qryGetNewDiscEventTypePeriodCodeNEW_DISC_EVENT_TYPE_PER_CODE.AsInteger;
  finally
    qryGetNewDiscEventTypePeriodCode.Close;
  end;  { try }
end;

function TdmHumanResource.GetDiscEventTypeCodeByFullNo(
  const ADiscEventTypeFullNo: string): Integer;
begin
  qryGetDiscEventTypeCodeByFullNo.ParamByName('DISC_EVENT_TYPE_FULL_NO').AsString:= ADiscEventTypeFullNo;
  qryGetDiscEventTypeCodeByFullNo.Open;
  try
    Result:= qryGetDiscEventTypeCodeByFullNoDISC_EVENT_TYPE_CODE.AsInteger;
  finally
    qryGetDiscEventTypeCodeByFullNo.Close;
  end;  { try }
end;

procedure TdmHumanResource.GetDiscEventTypeData(DiscEventTypeCode: Integer;
  ToDate: TDateTime; out ParentDiscEventTypeCode, LocalNo: Integer;
  out FullNo, FormatedFullNo, FullName, ShortName: string;
  out IsGroup: Boolean; out DocBranchCode, DocCode: Integer;
  out HasDocItems: Boolean; out Rating, ActiveDateUnitCount,
  ActiveDateUnitCode, Color, BackgroundColor: Integer);
begin
  qryDiscEventTypeData.ParamByName('DISC_EVENT_TYPE_CODE').AsInteger:= DiscEventTypeCode;
  qryDiscEventTypeData.ParamByName('TO_DATE').AsDateTime:= ToDate;
  qryDiscEventTypeData.Open;
  try
    ParentDiscEventTypeCode:= qryDiscEventTypeDataPARENT_DISC_EVENT_TYPE_CODE.AsInteger;
    LocalNo:= qryDiscEventTypeDataDISC_EVENT_TYPE_LOCAL_NO.AsInteger;
    FullNo:= qryDiscEventTypeDataDISC_EVENT_TYPE_FULL_NO.AsString;
    FormatedFullNo:= qryDiscEventTypeDataDISC_EVENT_TYPE_FMT_FULL_NO.AsString;
    FullName:= qryDiscEventTypeDataNAME.AsString;
    ShortName:= qryDiscEventTypeDataSHORT_NAME.AsString;
    IsGroup:= qryDiscEventTypeDataIS_GROUP.AsBoolean;
    DocBranchCode:= qryDiscEventTypeDataDOC_BRANCH_CODE.AsInteger;
    DocCode:= qryDiscEventTypeDataDOC_CODE.AsInteger;
    HasDocItems:= qryDiscEventTypeDataHAS_DOC_ITEMS.AsBoolean;
    Rating:= qryDiscEventTypeDataRATING.AsInteger;
    ActiveDateUnitCount:= qryDiscEventTypeDataACTIVE_DATE_UNIT_COUNT.AsInteger;
    ActiveDateUnitCode:= qryDiscEventTypeDataACTIVE_DATE_UNIT_CODE.AsInteger;
    Color:= qryDiscEventTypeDataCOLOR.AsInteger;
    BackgroundColor:= qryDiscEventTypeDataBACKGROUND_COLOR.AsInteger;
  finally
    qryDiscEventTypeData.Close;
  end;  { try }
end;

function TdmHumanResource.GetDiscEventTypeIsInstance(ADiscEventTypeCode: Integer): Boolean;
begin
  qryGetDiscEventTypeIsInstance.ParamByName('DISC_EVENT_TYPE_CODE').AsInteger:= ADiscEventTypeCode;
  qryGetDiscEventTypeIsInstance.Open;
  try
    Result:= qryGetDiscEventTypeIsInstanceIS_INSTANCE.AsBoolean;
  finally
    qryGetDiscEventTypeIsInstance.Close;
  end;  { try }
end;

function TdmHumanResource.GetDiscEventTypeIsInactive(ADiscEventTypeCode: Integer): Boolean;
begin
  qryGetDiscEventTypeIsInactive.ParamByName('DISC_EVENT_TYPE_CODE').AsInteger:= ADiscEventTypeCode;
  qryGetDiscEventTypeIsInactive.Open;
  try
    Result:= qryGetDiscEventTypeIsInactiveIS_INACTIVE.AsBoolean;
  finally
    qryGetDiscEventTypeIsInactive.Close;
  end;  { try }
end;

initialization
  TdmHumanResourceProxy.FSingleton:= TdmHumanResourceProxy.Create(TdmHumanResource);

finalization
  FreeAndNil(TdmHumanResourceProxy.FSingleton);
end.
