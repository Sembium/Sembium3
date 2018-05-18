unit fCompany;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  GridsEh, DBCtrls, ComCtrls, fCompanyOffices,
  fCompanyRepresentatives, fCompanyContacts, fCompanyBankAccounts,
  uCompanyKinds, JvToolEdit, AbmesClientDataSet, Mask, AbmesFields,
  AbmesDBCheckBox, Menus, JvButtons, fEditForm, dDocClient,
  fBaseFrame, fDBFrame, fFieldEditFrame, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameBald, JvExStdCtrls, JvDBCombobox, JvExControls,
  JvComponent, JvDBLookup, JvCaptionButton, fCompanyStatus,
  fPartnerFieldEditFrameLabeled, uCompanyClasses, DBGridEh, AbmesDBGrid,
  JvExExtCtrls, JvDBRadioPanel, fDateFieldEditFrame, JvComponentBase,
  uBorderRelTypes, fStatusAbstract, JvExtComponent, JvCombobox,
  fCompanyConcretePartners, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh, System.Actions;
 
type
  TfmCompany = class(TEditForm)
    pnlMain: TPanel;
    pcMain: TPageControl;
    tabMain: TTabSheet;
    dsCompanyTypes: TDataSource;
    cdsLanguages: TAbmesClientDataSet;
    dsLanguages: TDataSource;
    cdsLanguagesLANGUAGE_CODE: TAbmesFloatField;
    cdsLanguagesLANGUAGE_NAME: TAbmesWideStringField;
    dsCountries: TDataSource;
    cdsCountries: TAbmesClientDataSet;
    cdsCountriesCOUNTRY_CODE: TAbmesFloatField;
    cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField;
    cdsCountriesCOUNTRY_NAME: TAbmesWideStringField;
    cdsCustomhouses: TAbmesClientDataSet;
    dsCustomhouses: TDataSource;
    cdsCustomhousesCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsCustomhousesCUSTOMHOUSE_NAME: TAbmesWideStringField;
    cdsCompanyTypes: TAbmesClientDataSet;
    cdsCompanyTypesCOMPANY_TYPE_CODE: TAbmesFloatField;
    cdsCompanyTypesCOMPANY_TYPE_ABBREV: TAbmesWideStringField;
    cdsCompanyTypesABBREV_BEFORE: TAbmesFloatField;
    cdsCompanyTypesCOMPANY_TYPE_NAME: TAbmesWideStringField;
    cdsPriorities: TAbmesClientDataSet;
    dsPriorities: TDataSource;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    cdsDataCOMPANY_CODE: TAbmesFloatField;
    cdsDataCOMPANY_NAME: TAbmesWideStringField;
    cdsDataSHORT_NAME: TAbmesWideStringField;
    cdsDataCOMPANY_TYPE_CODE: TAbmesFloatField;
    cdsDataVAT_REGISTERED: TAbmesFloatField;
    cdsDataCOUNTRY_CODE: TAbmesFloatField;
    cdsDataSTATE: TAbmesWideStringField;
    cdsDataREGION: TAbmesWideStringField;
    cdsDataZIP: TAbmesWideStringField;
    cdsDataCITY: TAbmesWideStringField;
    cdsDataADDRESS: TAbmesWideStringField;
    cdsDataLANGUAGE_CODE: TAbmesFloatField;
    cdsDataTAX_NO: TAbmesFloatField;
    cdsData_COMPANY_FULL_NAME: TAbmesWideStringField;
    cdsData_IS_COMPANY_TYPE_ABBREV_FIRST: TAbmesFloatField;
    cdsData_COMPANY_TYPE_ABBREV: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    pnlTop: TPanel;
    gbInfo: TGroupBox;
    pnlCompanyOrPerson: TPanel;
    cdsDataEGN: TAbmesWideStringField;
    cdsDataFIRST_NAME: TAbmesWideStringField;
    cdsDataMIDDLE_NAME: TAbmesWideStringField;
    cdsDataLAST_NAME: TAbmesWideStringField;
    cdsDataABBREV: TAbmesWideStringField;
    cdsDataIS_MALE: TAbmesFloatField;
    cdsDataCOMPANY_NO: TAbmesFloatField;
    gbRoles: TGroupBox;
    pnlCompany: TGroupBox;
    lblCompanyType: TLabel;
    lblBulstat: TLabel;
    edtBulstat: TDBEdit;
    chbVAT: TAbmesDBCheckBox;
    cbCompanyType: TJvDBLookupCombo;
    gbAddress: TGroupBox;
    lblZIP: TLabel;
    lblAddress: TLabel;
    lblCountry: TLabel;
    edtZIP: TDBEdit;
    edtAddress: TDBEdit;
    cbCountry: TJvDBLookupCombo;
    cbLanguage: TJvDBLookupCombo;
    cdsDataCOMPANY_CLASS_CODE: TAbmesFloatField;
    cdsDataIS_CLIENT: TAbmesFloatField;
    cdsDataCLIENT_PRIORITY_CODE: TAbmesFloatField;
    cdsDataIS_MEDIATOR: TAbmesFloatField;
    cdsDataMEDIATOR_PRIORITY_CODE: TAbmesFloatField;
    cdsDataIS_VENDOR: TAbmesFloatField;
    cdsDataVENDOR_PRIORITY_CODE: TAbmesFloatField;
    cdsDataIS_GOV_ORGANIZATION: TAbmesFloatField;
    cdsDataGOV_ORGANIZATION_PRIORITY_CODE: TAbmesFloatField;
    cdsDataIS_BANK: TAbmesFloatField;
    cdsDataBANK_PRIORITY_CODE: TAbmesFloatField;
    pnlCompanyStatus: TPanel;
    frCompanyStatus: TfrCompanyStatus;
    pnlCompanyName: TPanel;
    pnlCompanyClass: TPanel;
    pnlPersonID: TPanel;
    lblFirstName: TLabel;
    lblMiddleName: TLabel;
    lblLastName: TLabel;
    lblAbbrev: TLabel;
    edtFirstName: TDBEdit;
    edtMiddleName: TDBEdit;
    edtLastName: TDBEdit;
    edtAbbrev: TDBEdit;
    pnlCompanyOrCumulativeID: TPanel;
    lblCompanyName: TLabel;
    lblCompanyShortName: TLabel;
    edtCompanyName: TDBEdit;
    edtCompanyShortName: TDBEdit;
    lblCode: TLabel;
    edtCode: TDBEdit;
    btnDocs: TSpeedButton;
    lblLanguage: TLabel;
    pnlPerson: TGroupBox;
    lblEGN: TLabel;
    edtEGN: TDBEdit;
    gbPersonCrafts: TGroupBox;
    grdPersonCrafts: TAbmesDBGrid;
    btnInsertRecord: TSpeedButton;
    btnDelRecord: TSpeedButton;
    btnEditRecord: TSpeedButton;
    lblEducation: TLabel;
    cdsEducations: TAbmesClientDataSet;
    cdsGridDataEDUCATION_CODE: TAbmesFloatField;
    cdsGridDataEDUCATION_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataEDUCATION_NAME: TAbmesWideStringField;
    dsEducations: TDataSource;
    cbEducation: TJvDBLookupCombo;
    cdsDataEDUCATION_CODE: TAbmesFloatField;
    cdsDataqryPersonCrafts: TDataSetField;
    cdsPersonCrafts: TAbmesClientDataSet;
    dsPersonCrafts: TDataSource;
    cdsPersonCraftsCOMPANY_CODE: TAbmesFloatField;
    cdsPersonCraftsCRAFT_CODE: TAbmesFloatField;
    cdsCraftTypes: TAbmesClientDataSet;
    cdsCraftTypesCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsCraftTypesCRAFT_TYPE_NAME: TAbmesWideStringField;
    cdsCrafts: TAbmesClientDataSet;
    cdsCraftsCRAFT_CODE: TAbmesFloatField;
    cdsCraftsCRAFT_NAME: TAbmesWideStringField;
    cdsCraftsCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsPersonCrafts_CRAFT_TYPE_NAME: TAbmesWideStringField;
    cdsPersonCrafts_CRAFT_NAME: TAbmesWideStringField;
    cdsPersonCraftsPRIORITY_CODE: TAbmesFloatField;
    cdsPersonCrafts_PRIORITY_NAME: TAbmesWideStringField;
    cdsPersonCraftsCRAFT_TYPE_CODE: TAbmesFloatField;
    actAddCraft: TAction;
    actEditCraft: TAction;
    actDeleteCraft: TAction;
    cdsDataIS_WORKER: TAbmesFloatField;
    cdsDataWORKER_PRIORITY_CODE: TAbmesFloatField;
    cdsDataEDUCATION_NAME: TAbmesWideStringField;
    cdsDataIS_EXTERNAL: TAbmesFloatField;
    pnlWorker: TPanel;
    chbIsWorker: TAbmesDBCheckBox;
    cbWorkerPriority: TJvDBLookupCombo;
    rpIsExternal: TJvDBRadioPanel;
    lblBirthDate: TLabel;
    frBirthDate: TfrDateFieldEditFrame;
    cdsDataBIRTH_DATE: TAbmesSQLTimeStampField;
    cbGender: TJvDBComboBox;
    lblGender: TLabel;
    lblCompanyClass: TLabel;
    edtCompanyClass: TDBEdit;
    cdsPrioritiesPRIORITY_NO: TAbmesFloatField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsDataBULSTAT: TAbmesWideStringField;
    cdsDataBULSTAT_EX: TAbmesWideStringField;
    edtBulstatEx: TDBEdit;
    actParRelClient: TAction;
    actParRelVendor: TAction;
    pnlParRelButtons: TPanel;
    btnParRelClient: TBitBtn;
    btnParRelVendor: TBitBtn;
    cdsDataBIC: TAbmesWideStringField;
    lblVatNo: TLabel;
    edtVatNo: TDBEdit;
    cdsDataVAT_NO: TAbmesWideStringField;
    pnlClient: TPanel;
    cbClientPriority: TJvDBLookupCombo;
    chbIsClient: TAbmesDBCheckBox;
    pnlRolesTop: TPanel;
    lblClientPriority: TLabel;
    pnlVendor: TPanel;
    cbVendorPriority: TJvDBLookupCombo;
    chbIsVendor: TAbmesDBCheckBox;
    pnlMediator: TPanel;
    cbMediatorPriority: TJvDBLookupCombo;
    chbIsMediator: TAbmesDBCheckBox;
    pnlGovernmentOrganisation: TPanel;
    cbGovernmentOrganizationPriority: TJvDBLookupCombo;
    chbIsGovernmentOrganisation: TAbmesDBCheckBox;
    pnlBank: TPanel;
    edtBIC: TDBEdit;
    lblBIC: TLabel;
    cbBankPriority: TJvDBLookupCombo;
    chbIsBank: TAbmesDBCheckBox;
    cdsDataCLIENT_COMMON_PARTNER_CODE: TAbmesFloatField;
    cdsDataVENDOR_COMMON_PARTNER_CODE: TAbmesFloatField;
    lblCommonPartner: TLabel;
    pnlClientCommonPartner: TPanel;
    pnlVendorCommonPartner: TPanel;
    frClientCommonPartner: TfrPartnerFieldEditFrameBald;
    frVendorCommonPartner: TfrPartnerFieldEditFrameBald;
    cdsCompanyClasses: TAbmesClientDataSet;
    cdsCompanyClassesCOMPANY_CLASS_CODE: TAbmesFloatField;
    cdsCompanyClassesCOMPANY_CLASS_ABBREV: TAbmesWideStringField;
    cdsCompanyClassesCOMPANY_CLASS_NAME: TAbmesWideStringField;
    cdsData_COMPANY_CLASS_ABBREV: TAbmesWideStringField;
    cdsOurCompanyCountry: TAbmesClientDataSet;
    cdsOurCompanyCountryCOMPANY_CODE: TAbmesFloatField;
    cdsOurCompanyCountryCOUNTRY_CODE: TAbmesFloatField;
    edtCity: TDBEdit;
    lblCity: TLabel;
    edtRegion: TDBEdit;
    lblRegion: TLabel;
    edtState: TDBEdit;
    lblState: TLabel;
    edtIAddress: TDBEdit;
    lblIAdress: TLabel;
    edtICity: TDBEdit;
    lblICity: TLabel;
    edtIRegion: TDBEdit;
    lblIRegion: TLabel;
    edtIState: TDBEdit;
    lblIState: TLabel;
    lblIFirstName: TLabel;
    edtIFirstName: TDBEdit;
    edtIMiddleName: TDBEdit;
    lblIMiddleName: TLabel;
    edtILastName: TDBEdit;
    lblILastName: TLabel;
    edtIAbbrev: TDBEdit;
    lblIAbbrev: TLabel;
    cdsDataI_FIRST_NAME: TAbmesWideStringField;
    cdsDataI_MIDDLE_NAME: TAbmesWideStringField;
    cdsDataI_LAST_NAME: TAbmesWideStringField;
    cdsDataI_ABBREV: TAbmesWideStringField;
    edtICompanyShortName: TDBEdit;
    edtICompanyName: TDBEdit;
    lblICompanyName: TLabel;
    lblICompanyShortName: TLabel;
    cdsDataI_SHORT_NAME: TAbmesWideStringField;
    cdsDataI_COMPANY_NAME: TAbmesWideStringField;
    cdsDataI_STATE: TAbmesWideStringField;
    cdsDataI_REGION: TAbmesWideStringField;
    cdsDataI_CITY: TAbmesWideStringField;
    cdsDataI_ADDRESS: TAbmesWideStringField;
    cdsDataI_COMPANY_TYPE_CODE: TAbmesFloatField;
    cbICompanyType: TJvDBLookupCombo;
    lblICompanyType: TLabel;
    actCopyCompanyName: TAction;
    actCopyPersonName: TAction;
    pnlCopyNameButtons: TPanel;
    btnCopyPersonName: TSpeedButton;
    btnCopyCompanyName: TSpeedButton;
    procedure actParRelVendorExecute(Sender: TObject);
    procedure actParRelVendorUpdate(Sender: TObject);
    procedure actParRelClientExecute(Sender: TObject);
    procedure actParRelClientUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IsBlahBlahRoleFieldsChange(Sender: TField);
    procedure cdsDataBeforeOpen(DataSet: TDataSet);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actFormUpdate(Sender: TObject);
    procedure pcMainChanging(Sender: TObject; var AllowChange: Boolean);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure btnDocsClick(Sender: TObject);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataIS_BANKChange(Sender: TField);
    procedure actAddCraftUpdate(Sender: TObject);
    procedure actEditCraftUpdate(Sender: TObject);
    procedure actDeleteCraftUpdate(Sender: TObject);
    procedure actAddCraftExecute(Sender: TObject);
    procedure actEditCraftExecute(Sender: TObject);
    procedure actDeleteCraftExecute(Sender: TObject);
    procedure cdsPersonCraftsCRAFT_TYPE_CODEChange(Sender: TField);
    procedure grdPersonCraftsDblClick(Sender: TObject);
    procedure actCopyPersonNameUpdate(Sender: TObject);
    procedure actCopyPersonNameExecute(Sender: TObject);
    procedure actCopyCompanyNameUpdate(Sender: TObject);
    procedure actCopyCompanyNameExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    FCompanyCode: Integer;
    FTabSheetCount: Integer; // kolko stranici ima v page controla
    FApplied: Boolean;       // samo za nov zapis: dali e applynat
    FTabChanged: Boolean;    // dali smenena stranicata na page controla
    FfmCompanyOffices: TfmCompanyOffices;
    FfmCompanyRepresentatives: TfmCompanyRepresentatives;
    FfmCompanyContacts: TfmCompanyContacts;
    FfmCompanyBankAccounts: TfmCompanyBankAccounts;
    FCompanyClass: TCompanyClasses;
    FfmCompanyConcretePartners: TfmCompanyConcretePartners;
    procedure DetermineDockedFormsEnabled;
    procedure FilterCrafts;
    procedure RefreshDockedForms;
    procedure ShowParRel(ABorderRelType: TBorderRelType);
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetApplyUpdatesEnabled: Boolean; override;
    class function CanUseDocs: Boolean; override;
  public
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      ACompanyCode: Integer = -1;
      AEditMode: TEditMode = emEdit;
      ACompanyClass: TCompanyClasses = ccFirm); reintroduce; virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      ACompanyCode: Integer = -1;
      AEditMode: TEditMode = emEdit;
      ACompanyClass: TCompanyClasses = ccFirm): Boolean;
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
  end;

implementation

uses
  Variants, dMain, uClientUtils, fGridForm, uUtils, AbmesDialogs, uDocUtils,
  fPersonCraft, uUserActivityConsts, fParRel, uScalingUtils;

{$R *.DFM}

resourcestring
  SConfirmDeleteCraft = 'Изтриване на Професия?';
  SPrioritiesMustBeDifferent = 'Приоритетите за различните Пазарни Роли трябва да бъдат различни';
  SPerson = 'СИЧИ: ';
  SOurCompany = 'Индустриално Предприятие';
  SApplyUpdatesConfirm = 'За да въведете записи в тази таблица, трябва да запишете данните за компанията' + SLineBreak +
                         'Желаете ли запис?';
  SInvalidEGN = 'Въведения ЕГН/ЛНЧ е грешен или не е точен спрямо датата на раждане и пола';
  SInvalidBulstat = 'Невалиден ЕИК';
  SConfirmParRelApplyUpdates = 'За да продъжите, промените ще бъдат записани.';
  SInvalidBIC = 'Невалиден BIC!';
  SRoleRequired = 'Трябва да зададете поне една Пазарна Роля';
  SCommonPartnerCannotBeBothClientAndVendor = 'Обобщаващ Партньор не може да има повече от една Пазарна Роля';

const
  MainTabIndex = 0;
  CompanyOfficesTabIndex = 1;
  CompanyRepresentativesTabIndex = 2;
  CompanyContactsTabIndex = 3;
  CompanyBankAccountsTabIndex = 4;
  CompanyConcretePartnersTabIndex = 5;

{ TfmCompany }

procedure TfmCompany.FormShow(Sender: TObject);
var
  CompanyClass: TCompanyClasses;
begin
  inherited;

  pcMain.ActivePage:= tabMain;

  // barame li nashata kompania?
  if (FCompanyCode = 0) then
    begin
      ActiveControl:= edtCompanyName;
      Caption:= SOurCompany;
    end;

  pnlCompanyStatus.Visible:= (FCompanyCode <> 0) and (EditMode <> emInsert);
  gbRoles.Visible:= (FCompanyCode <> 0);
  gbPersonCrafts.Visible:= (FCompanyCode <> 0);
  cdsDataCOMPANY_NO.ReadOnly:= (FCompanyCode = 0);

  FApplied:= (EditMode <> emInsert);  // na formcreate editmode ne e inicializirana
  if FApplied then
    begin
      FfmCompanyOffices.cdsGridData.Params.ParamByName('COMPANY_CODE').Value:= FCompanyCode;
      FfmCompanyOffices.cdsGridData.ReadOnly:= (EditMode = emReadOnly);

      FfmCompanyRepresentatives.cdsGridData.Params.ParamByName('COMPANY_CODE').Value:= FCompanyCode;
      FfmCompanyRepresentatives.cdsGridData.ReadOnly:= (EditMode = emReadOnly);

      FfmCompanyContacts.cdsGridData.Params.ParamByName('COMPANY_CODE').Value:= FCompanyCode;
      FfmCompanyContacts.cdsGridData.ReadOnly:= (EditMode = emReadOnly);

      FfmCompanyBankAccounts.cdsGridData.Params.ParamByName('COMPANY_CODE').Value:= FCompanyCode;
      FfmCompanyBankAccounts.cdsGridData.ReadOnly:= (EditMode = emReadOnly);

      FfmCompanyConcretePartners.cdsGridData.Params.ParamByName('COMPANY_CODE').Value:= FCompanyCode;
      FfmCompanyConcretePartners.cdsGridData.ReadOnly:= True;
    end;

  FfmCompanyContacts.CompanyClassCode:= cdsDataCOMPANY_CLASS_CODE.AsInteger;

  CompanyClass:= IntToCompanyClass(cdsDataCOMPANY_CLASS_CODE.AsInteger);

  pcMain.Pages[CompanyOfficesTabIndex].TabVisible:= (CompanyClass = ccFirm) and (FCompanyCode <> 0);
  pcMain.Pages[CompanyRepresentativesTabIndex].TabVisible:= (CompanyClass = ccFirm);
  pcMain.Pages[CompanyContactsTabIndex].TabVisible:= (CompanyClass in [ccFirm, ccPerson]) and (FCompanyCode <> 0);
  pcMain.Pages[CompanyBankAccountsTabIndex].TabVisible:= (CompanyClass in [ccFirm, ccPerson, ccCumulative]);
  pcMain.Pages[CompanyConcretePartnersTabIndex].TabVisible:= (CompanyClass = ccCommon);

  pcMain.TabIndex:= MainTabIndex;
  RefreshDockedForms;
end;

procedure TfmCompany.OpenDataSets;
begin
  inherited;
  cdsCompanyClasses.Open;
  cdsLanguages.Open;
  cdsCompanyTypes.Open;
  cdsCountries.Open;
  cdsCustomhouses.Open;
  cdsPriorities.Open;
  cdsEducations.Open;
  cdsCraftTypes.Open;
  cdsCrafts.Open;

  FilterCrafts;
end;

procedure TfmCompany.CloseDataSets;
begin
  cdsCrafts.Close;
  cdsCraftTypes.Close;
  cdsEducations.Close;
  cdsPriorities.Close;
  cdsCustomhouses.Close;
  cdsCountries.Close;
  cdsCompanyTypes.Close;
  cdsLanguages.Close;
  cdsCompanyClasses.Close;
  inherited;
end;

procedure TfmCompany.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Application.ProcessMessages;
end;

procedure TfmCompany.FormCreate(Sender: TObject);
begin
  inherited;

  frClientCommonPartner.FieldNames:= 'CLIENT_COMMON_PARTNER_CODE';
  frClientCommonPartner.FilterCompanyKind:= ckClient;
  frClientCommonPartner.ShownCompanyClasses:= [ccCommon];

  frVendorCommonPartner.FieldNames:= 'VENDOR_COMMON_PARTNER_CODE';
  frVendorCommonPartner.FilterCompanyKind:= ckVendor;
  frVendorCommonPartner.ShownCompanyClasses:= [ccCommon];

  FTabSheetCount:= pcMain.PageCount - 1;
  FTabChanged:= False;

  FfmCompanyOffices:=
    TfmCompanyOffices.CreateDockedTo(pcMain, nil, alClient);

  FfmCompanyRepresentatives:=
    TfmCompanyRepresentatives.CreateDockedTo(pcMain, nil, alClient);

  FfmCompanyContacts:=
    TfmCompanyContacts.CreateDockedTo(pcMain, nil, alClient);

  FfmCompanyBankAccounts:=
    TfmCompanyBankAccounts.CreateDockedTo(pcMain, nil, alClient);

  FfmCompanyConcretePartners:=
    TfmCompanyConcretePartners.CreateDockedTo(pcMain, nil, alClient);

  frBirthDate.FieldNames:= 'BIRTH_DATE';

  if IsAppThemed then
    begin
      FfmCompanyOffices.Color:= clWhite;
      FfmCompanyRepresentatives.Color:= clWhite;
      FfmCompanyContacts.Color:= clWhite;
      FfmCompanyBankAccounts.Color:= clWhite;
      FfmCompanyConcretePartners.Color:= clWhite;
    end;  { if }

  RegisterFieldTextVisibility(IsEGNVisible, cdsDataEGN);
end;

procedure TfmCompany.FormDestroy(Sender: TObject);
begin
  FfmCompanyOffices.Parent:= nil;
  FfmCompanyOffices.ReleaseForm;

  FfmCompanyRepresentatives.Parent:= nil;
  FfmCompanyRepresentatives.ReleaseForm;

  FfmCompanyContacts.Parent:= nil;
  FfmCompanyContacts.ReleaseForm;

  FfmCompanyBankAccounts.Parent:= nil;
  FfmCompanyBankAccounts.ReleaseForm;

  FfmCompanyConcretePartners.Parent:= nil;
  FfmCompanyConcretePartners.ReleaseForm;

  inherited;
end;

procedure TfmCompany.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; ACompanyCode: Integer;
  AEditMode: TEditMode; ACompanyClass: TCompanyClasses);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);

  FCompanyCode:= ACompanyCode;
  FCompanyClass:= ACompanyClass;
end;

procedure TfmCompany.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frBirthDate) then
    begin
      AFrame.ReadOnly:= cdsData.ReadOnly;
      Exit;
    end;  { if }

  if (AFrame = frClientCommonPartner) then
    begin
      AFrame.ReadOnly:= not cdsDataIS_CLIENT.AsBoolean;
      Exit;
    end;  { if }

  if (AFrame = frVendorCommonPartner) then
    begin
      AFrame.ReadOnly:= not cdsDataIS_VENDOR.AsBoolean;
      Exit;
    end;  { if }

  inherited;
end;

class function TfmCompany.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; ACompanyCode: Integer;
  AEditMode: TEditMode; ACompanyClass: TCompanyClasses): Boolean;
var
  f: TfmCompany;
begin
  f:= TfmCompany.Create(Application);
  try
    f.SetDataParams(AdmDocClient, ADataSet, ACompanyCode, AEditMode, ACompanyClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    try  // workaround na AV pri nekolkokratno (otvariane na formata, strancia predstaviteli, dobaviane, Otkaz, Otkaz)
      f.ReleaseForm;
    except
    end;
  end;
end;

procedure TfmCompany.ShowParRel(ABorderRelType: TBorderRelType);
var
  em: TEditMode;
begin
  if GetApplyUpdatesEnabled and
     (MessageDlgEx(SConfirmParRelApplyUpdates, mtInformation, [mbOK, mbCancel], 0) <> mrOK) then
    Abort;

  actApplyUpdates.Execute;

  if (EditMode = emInsert) then
    em:= emEdit
  else
    em:= EditMode;

  TfmParRel.ShowForm(nil, nil, em, doNone, False, cdsDataCOMPANY_CODE.AsInteger, ABorderRelType);
end;

procedure TfmCompany.Initialize;
begin
  inherited;
  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotCompany, dsData.DataSet);
end;

procedure TfmCompany.IsBlahBlahRoleFieldsChange(Sender: TField);
begin
  inherited;

  cdsDataCLIENT_PRIORITY_CODE.Required:= cdsDataIS_CLIENT.AsBoolean;
  cdsDataMEDIATOR_PRIORITY_CODE.Required:= cdsDataIS_MEDIATOR.AsBoolean;
  cdsDataVENDOR_PRIORITY_CODE.Required:= cdsDataIS_VENDOR.AsBoolean;
  cdsDataGOV_ORGANIZATION_PRIORITY_CODE.Required:= cdsDataIS_GOV_ORGANIZATION.AsBoolean;
  cdsDataBANK_PRIORITY_CODE.Required:= cdsDataIS_BANK.AsBoolean;
  cdsDataWORKER_PRIORITY_CODE.Required:= cdsDataIS_WORKER.AsBoolean;

  if not cdsDataIS_CLIENT.AsBoolean then
    begin
      cdsDataCLIENT_PRIORITY_CODE.Clear;
      cdsDataCLIENT_COMMON_PARTNER_CODE.Clear;
    end;  { if }

  if not cdsDataIS_MEDIATOR.AsBoolean then
    cdsDataMEDIATOR_PRIORITY_CODE.Clear;

  if not cdsDataIS_VENDOR.AsBoolean then
    begin
      cdsDataVENDOR_PRIORITY_CODE.Clear;
      cdsDataVENDOR_COMMON_PARTNER_CODE.Clear;
    end;  { if }

  if not cdsDataIS_GOV_ORGANIZATION.AsBoolean then
    cdsDataGOV_ORGANIZATION_PRIORITY_CODE.Clear;

  if not cdsDataIS_BANK.AsBoolean then
    cdsDataBANK_PRIORITY_CODE.Clear;

  if not cdsDataIS_WORKER.AsBoolean then
    cdsDataWORKER_PRIORITY_CODE.Clear;
end;

class function TfmCompany.CanEditOuterDataset: Boolean;
begin
  Result:= False;
end;

procedure TfmCompany.cdsDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsData.Params.ParamByName('COMPANY_CODE').Value:= FCompanyCode;
end;

procedure TfmCompany.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataVAT_REGISTERED.AsBoolean:= False;
  cdsDataIS_MALE.AsBoolean:= True;
  cdsDataIS_CLIENT.AsBoolean:= False;
  cdsDataIS_MEDIATOR.AsBoolean:= False;
  cdsDataIS_VENDOR.AsBoolean:= False;
  cdsDataIS_GOV_ORGANIZATION.AsBoolean:= False;
  cdsDataIS_BANK.AsBoolean:= False;
  cdsDataIS_WORKER.AsBoolean:= False;
  cdsDataIS_EXTERNAL.AsBoolean:= False;
  cdsDataCOMPANY_CLASS_CODE.AsInteger:= CompanyClassToInt(FCompanyClass);
end;

procedure TfmCompany.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmCompany.DetermineDockedFormsEnabled;
begin
  FfmCompanyOffices.Enabled:= FApplied;
  FfmCompanyRepresentatives.Enabled:= FApplied;
  FfmCompanyContacts.Enabled:= FApplied;
  FfmCompanyBankAccounts.Enabled:= FApplied;
  FfmCompanyConcretePartners.Enabled:= FApplied;

  if not FApplied then
    begin
      if (MessageDlgEx(SApplyUpdatesConfirm, mtConfirmation, mbOkCancel, 0) = mrOk) then
        try
          actApplyUpdates.Execute;
        finally
          FfmCompanyOffices.Enabled:= FApplied;
          FfmCompanyRepresentatives.Enabled:= FApplied;
          FfmCompanyContacts.Enabled:= FApplied;
          FfmCompanyBankAccounts.Enabled:= FApplied;
          FfmCompanyConcretePartners.Enabled:= FApplied;
        end;

      FfmCompanyOffices.cdsGridData.Params.ParamByName('COMPANY_CODE').Value:=
        cdsDataCOMPANY_CODE.AsVariant;
      FfmCompanyOffices.cdsGridData.Close;
      FfmCompanyOffices.cdsGridData.Open;
      FfmCompanyOffices.Enabled:= FApplied;

      FfmCompanyRepresentatives.cdsGridData.Params.ParamByName('COMPANY_CODE').Value:=
        cdsDataCOMPANY_CODE.AsVariant;
      FfmCompanyRepresentatives.cdsGridData.Close;
      FfmCompanyRepresentatives.cdsGridData.Open;
      FfmCompanyRepresentatives.Enabled:= FApplied;

      FfmCompanyContacts.cdsGridData.Params.ParamByName('COMPANY_CODE').Value:=
        cdsDataCOMPANY_CODE.AsVariant;
      FfmCompanyContacts.cdsGridData.Close;
      FfmCompanyContacts.cdsGridData.Open;
      FfmCompanyContacts.Enabled:= FApplied;

      FfmCompanyBankAccounts.cdsGridData.Params.ParamByName('COMPANY_CODE').Value:=
        cdsDataCOMPANY_CODE.AsVariant;
      FfmCompanyBankAccounts.cdsGridData.Close;
      FfmCompanyBankAccounts.cdsGridData.Open;
      FfmCompanyBankAccounts.Enabled:= FApplied;

      FfmCompanyConcretePartners.cdsGridData.Params.ParamByName('COMPANY_CODE').Value:=
        cdsDataCOMPANY_CODE.AsVariant;
      FfmCompanyConcretePartners.cdsGridData.Close;
      FfmCompanyConcretePartners.cdsGridData.Open;
      FfmCompanyConcretePartners.Enabled:= FApplied;
    end;
end;

procedure TfmCompany.actFormUpdate(Sender: TObject);
var
  CompanyClass: TCompanyClasses;
begin
  inherited;

  cbClientPriority.Enabled:= cdsDataIS_CLIENT.AsBoolean;
  cbMediatorPriority.Enabled:= cdsDataIS_MEDIATOR.AsBoolean;
  cbVendorPriority.Enabled:= cdsDataIS_VENDOR.AsBoolean;
  cbGovernmentOrganizationPriority.Enabled:= cdsDataIS_GOV_ORGANIZATION.AsBoolean;
  cbBankPriority.Enabled:= cdsDataIS_BANK.AsBoolean;
  cbWorkerPriority.Enabled:= cdsDataIS_WORKER.AsBoolean;
  rpIsExternal.Enabled:= cdsDataIS_WORKER.AsBoolean;

  // nalaga se polling, shtoto shibanite formi i shibania pagecontrol
  // niamat 1 podhodiasht event, da mu se ne vidi
  if (pcMain.ActivePageIndex > FTabSheetCount) and FTabChanged then
    try
      DetermineDockedFormsEnabled;
    finally
      FTabChanged:= False;
    end;

  CompanyClass:= IntToCompanyClass(cdsDataCOMPANY_CLASS_CODE.AsInteger);
  pnlPerson.Visible:= (CompanyClass = ccPerson);
  pnlCompany.Visible:= (CompanyClass = ccFirm);
  pnlPersonID.Visible:= (CompanyClass = ccPerson);
  btnCopyPersonName.Visible:= (CompanyClass = ccPerson);
  pnlCompanyOrCumulativeID.Visible:= (CompanyClass in [ccFirm, ccCumulative, ccCommon]);
  btnCopyCompanyName.Visible:= (CompanyClass in [ccFirm, ccCumulative, ccCommon]);

  lblCommonPartner.Visible:= (CompanyClass in [ccFirm, ccCumulative, ccPerson]);
  pnlClientCommonPartner.Visible:= (CompanyClass in [ccFirm, ccCumulative, ccPerson]);
  pnlVendorCommonPartner.Visible:= (CompanyClass in [ccFirm, ccCumulative, ccPerson]);

  lblZIP.Visible:= (CompanyClass in [ccFirm, ccPerson]);
  edtZIP.Visible:= (CompanyClass in [ccFirm, ccPerson]);
  lblAddress.Visible:= (CompanyClass in [ccFirm, ccPerson]);
  edtAddress.Visible:= (CompanyClass in [ccFirm, ccPerson]);
  lblLanguage.Visible:= (CompanyClass in [ccFirm, ccPerson]) and (FCompanyCode <> 0);
  cbLanguage.Visible:= (CompanyClass in [ccFirm, ccPerson]) and (FCompanyCode <> 0);

  if (cdsDataCOMPANY_CLASS_CODE.AsInteger = 2) then
    gbRoles.Width:= gbPersonCrafts.Left - ScalePixels(8) - gbRoles.Left
  else
    gbRoles.Width:= gbAddress.Width;

  chbIsMediator.Visible:= (CompanyClass in [ccFirm, ccPerson]);
  cbMediatorPriority.Visible:= (CompanyClass in [ccFirm, ccPerson]);
  chbIsGovernmentOrganisation.Visible:= (CompanyClass = ccFirm);
  cbGovernmentOrganizationPriority.Visible:= (CompanyClass = ccFirm);
  chbIsBank.Visible:= (CompanyClass = ccFirm);
  cbBankPriority.Visible:= (CompanyClass = ccFirm);
  pnlWorker.Visible:= (CompanyClass = ccPerson);

  lblBIC.Visible:= cdsDataIS_BANK.AsBoolean;
  edtBIC.Visible:= cdsDataIS_BANK.AsBoolean;

  SetControlReadOnly(not IsEGNVisible or cdsData.ReadOnly, edtEGN);
  SetControlsReadOnly(cdsData.ReadOnly, [
    edtCode,
    edtCompanyName,
    edtCompanyShortName,
    cbCompanyType,
    edtBulstat,
    edtBulstatEx,
    cbLanguage,
    cbCountry,
    edtState,
    edtRegion,
    edtCity,
    edtZIP,
    edtAddress,
    cbClientPriority,
    cbMediatorPriority,
    cbVendorPriority,
    cbWorkerPriority,
    cbGovernmentOrganizationPriority,
    cbBankPriority,
    edtBIC,
    grdPersonCrafts,
    edtFirstName,
    edtMiddleName,
    edtLastName,
    edtAbbrev,
    cbEducation]);

  cbGender.Enabled:= not cdsData.ReadOnly;
  cbGender.Color:= ReadOnlyColors[not cbGender.Enabled];

  pnlParRelButtons.Visible:= (FCompanyCode <> 0);
end;

procedure TfmCompany.actParRelClientUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and cdsDataIS_CLIENT.AsBoolean;
end;

procedure TfmCompany.actParRelClientExecute(Sender: TObject);
begin
  inherited;
  ShowParRel(brtClient);
end;

procedure TfmCompany.actParRelVendorUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and cdsDataIS_VENDOR.AsBoolean;
end;

procedure TfmCompany.actParRelVendorExecute(Sender: TObject);
begin
  inherited;
  ShowParRel(brtVendor);
end;

procedure TfmCompany.pcMainChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;

  if (pcMain.ActivePageIndex > FTabSheetCount) then
    RefreshDockedForms;

  FTabChanged:= True;
end;

procedure TfmCompany.actApplyUpdatesExecute(Sender: TObject);
begin
  inherited;
  FApplied:= True;
end;

procedure TfmCompany.actCopyCompanyNameExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  cdsData.UpdateRecord;
  cdsDataI_COMPANY_NAME.Assign(cdsDataCOMPANY_NAME);
  cdsDataI_SHORT_NAME.Assign(cdsDataSHORT_NAME);
end;

procedure TfmCompany.actCopyCompanyNameUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly);
end;

procedure TfmCompany.actCopyPersonNameExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  cdsData.UpdateRecord;
  cdsDataI_FIRST_NAME.Assign(cdsDataFIRST_NAME);
  cdsDataI_MIDDLE_NAME.Assign(cdsDataMIDDLE_NAME);
  cdsDataI_LAST_NAME.Assign(cdsDataLAST_NAME);
  cdsDataI_ABBREV.Assign(cdsDataABBREV);
end;

procedure TfmCompany.actCopyPersonNameUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly);
end;

procedure TfmCompany.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  case cdsDataCOMPANY_CLASS_CODE.AsInteger of
    1:
      begin
        cdsData_COMPANY_FULL_NAME.AsString:= '"' + cdsDataCOMPANY_NAME.AsString + '"';

        if cdsData_IS_COMPANY_TYPE_ABBREV_FIRST.AsBoolean then
          cdsData_COMPANY_FULL_NAME.AsString:= cdsData_COMPANY_TYPE_ABBREV.AsString + ' ' + cdsData_COMPANY_FULL_NAME.AsString
        else
          cdsData_COMPANY_FULL_NAME.AsString:= cdsData_COMPANY_FULL_NAME.AsString + ' ' + cdsData_COMPANY_TYPE_ABBREV.AsString;
      end;
    2:
      cdsData_COMPANY_FULL_NAME.AsString:=
        SPerson +
        cdsDataFIRST_NAME.AsString + ' ' + cdsDataMIDDLE_NAME.AsString + ' ' + cdsDataLAST_NAME.AsString;
  end;
end;

procedure TfmCompany.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, btnDocs, dotCompany, cdsData);
end;

class function TfmCompany.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmCompany.cdsDataBeforePost(DataSet: TDataSet);

  procedure CheckPrioritiesAreDifferent;
  var
    p: array [1..10] of Integer;
    n: Integer;

    procedure CheckSinglePriority(PriorityCode: Integer);
    var
      i: Integer;
    begin
      for i:= 1 to n do
        if (p[i] = PriorityCode) then
          raise Exception.Create(SPrioritiesMustBeDifferent);

      Inc(n);
      p[n]:= PriorityCode;
    end;

  begin
    n:= 0;

    if cdsDataIS_CLIENT.AsBoolean then
      CheckSinglePriority(cdsDataCLIENT_PRIORITY_CODE.AsInteger);

    if cdsDataIS_MEDIATOR.AsBoolean then
      CheckSinglePriority(cdsDataMEDIATOR_PRIORITY_CODE.AsInteger);

    if cdsDataIS_VENDOR.AsBoolean then
      CheckSinglePriority(cdsDataVENDOR_PRIORITY_CODE.AsInteger);

    if cdsDataIS_GOV_ORGANIZATION.AsBoolean then
      CheckSinglePriority(cdsDataGOV_ORGANIZATION_PRIORITY_CODE.AsInteger);

    if cdsDataIS_BANK.AsBoolean then
      CheckSinglePriority(cdsDataBANK_PRIORITY_CODE.AsInteger);

    if cdsDataIS_WORKER.AsBoolean then
      CheckSinglePriority(cdsDataWORKER_PRIORITY_CODE.AsInteger);
  end;

  function FieldIsChanged(AField: TField): Boolean;
  begin
    Result:= (AField.OldValue <> AField.NewValue);
  end;

begin
  inherited;

  case IntToCompanyClass(cdsDataCOMPANY_CLASS_CODE.AsInteger) of
    ccFirm:
      begin
        CheckRequiredFields([cdsDataCOMPANY_NAME, cdsDataI_COMPANY_NAME, cdsDataSHORT_NAME, cdsDataI_SHORT_NAME]);

        if not cdsDataBULSTAT.IsNull or not cdsDataBULSTAT_EX.IsNull then
          begin
            cdsOurCompanyCountry.TempOpen/
              procedure begin
                if cdsOurCompanyCountryCOUNTRY_CODE.IsNull or
                   cdsDataCOUNTRY_CODE.IsNull or
                   (cdsOurCompanyCountryCOUNTRY_CODE.AsInteger = cdsDataCOUNTRY_CODE.AsInteger) then
                  begin
                    if not ValidBulstat(cdsDataBULSTAT.AsString, cdsDataBULSTAT_EX.AsString) then
                      raise Exception.Create(SInvalidBulstat);
                  end;  { if }
              end;  { lambda }
          end;  { if }

        if not (
           cdsDataIS_CLIENT.AsBoolean or
           cdsDataIS_MEDIATOR.AsBoolean or
           cdsDataIS_VENDOR.AsBoolean or
           cdsDataIS_GOV_ORGANIZATION.AsBoolean or
           cdsDataIS_BANK.AsBoolean
           ) then
          raise Exception.Create(SRoleRequired);
      end;

    ccPerson:
      begin
        CheckRequiredFields([
          cdsDataFIRST_NAME,
          cdsDataI_FIRST_NAME,
          cdsDataLAST_NAME,
          cdsDataI_LAST_NAME,
          cdsDataABBREV,
          cdsDataI_ABBREV,
          cdsDataIS_MALE]);

        if cdsDataIS_WORKER.AsBoolean and not cdsDataIS_EXTERNAL.AsBoolean then
          begin
            //CheckRequiredField(cdsDataEGN);
            if (not cdsDataEGN.IsNull) and
               ( (Length(cdsDataEGN.AsString) <> 10) or
                 ( not ValidEGN(StrToInt64(cdsDataEGN.AsString), cdsDataIS_MALE.AsBoolean, cdsDataBIRTH_DATE.AsDateTime) and
                   not ValidLNCh(StrToInt64(cdsDataEGN.AsString)) )
               )then
              raise Exception.Create(SInvalidEGN);
          end;  { if }
      end;

    ccCumulative:
      begin
        CheckRequiredFields([cdsDataCOMPANY_NAME, cdsDataI_COMPANY_NAME, cdsDataSHORT_NAME, cdsDataI_SHORT_NAME]);
      end;

    ccCommon:
      begin
        CheckRequiredFields([cdsDataCOMPANY_NAME, cdsDataI_COMPANY_NAME, cdsDataSHORT_NAME, cdsDataI_SHORT_NAME]);

        if not (cdsDataIS_CLIENT.AsBoolean or cdsDataIS_VENDOR.AsBoolean) then
          raise Exception.Create(SRoleRequired);

        if cdsDataIS_CLIENT.AsBoolean and cdsDataIS_VENDOR.AsBoolean then
          raise Exception.Create(SCommonPartnerCannotBeBothClientAndVendor);
      end;

  else
    raise Exception.Create('Unknown Company Class');
  end;  { case }

  if cdsDataIS_BANK.AsBoolean then
    begin
      if not cdsDataBIC.IsNull and not ValidBIC(cdsDataBIC.AsString) then
        begin
          cdsDataBIC.FocusControl;
          raise Exception.Create(SInvalidBIC);
        end;
    end
  else
    cdsDataBIC.Clear;

  CheckPrioritiesAreDifferent;
end;

procedure TfmCompany.cdsDataIS_BANKChange(Sender: TField);
begin
  inherited;
  cdsDataBIC.Clear;
  IsBlahBlahRoleFieldsChange(Sender);
end;

procedure TfmCompany.actAddCraftUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not (EditMode = emReadOnly) and
    not cdsPersonCrafts.ReadOnly;
end;

procedure TfmCompany.actEditCraftUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not (cdsPersonCrafts.Bof and cdsPersonCrafts.Eof);
end;

procedure TfmCompany.actDeleteCraftUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not (EditMode = emReadOnly) and
    not cdsPersonCrafts.ReadOnly and
    not (cdsPersonCrafts.Bof and cdsPersonCrafts.Eof);
end;

procedure TfmCompany.actAddCraftExecute(Sender: TObject);
begin
  inherited;
  TfmPersonCraft.ShowForm(nil, cdsPersonCrafts, emInsert);
end;

procedure TfmCompany.actEditCraftExecute(Sender: TObject);
begin
  inherited;
  if (EditMode = emReadOnly) then
    TfmPersonCraft.ShowForm(nil, cdsPersonCrafts, emReadOnly)
  else
    TfmPersonCraft.ShowForm(nil, cdsPersonCrafts, emEdit);
end;

procedure TfmCompany.actDeleteCraftExecute(Sender: TObject);
begin
  inherited;
  if (MessageDlgEx(SConfirmDeleteCraft, mtConfirmation, [mbOk, mbCancel], 0) = mrOk) then
    cdsPersonCrafts.Delete;
end;

procedure TfmCompany.cdsPersonCraftsCRAFT_TYPE_CODEChange(Sender: TField);
begin
  inherited;
  FilterCrafts;
end;

procedure TfmCompany.FilterCrafts;
begin
  cdsCrafts.Filter:= 'CRAFT_TYPE_CODE = ' + IntToStr(cdsPersonCraftsCRAFT_TYPE_CODE.AsInteger);
  cdsCrafts.Filtered:= True;
end;

procedure TfmCompany.grdPersonCraftsDblClick(Sender: TObject);
begin
  inherited;
  if cdsPersonCrafts.IsEmpty then
    actAddCraft.Execute
  else
    actEditCraft.Execute;
end;

procedure TfmCompany.RefreshDockedForms;
begin
  with FfmCompanyOffices do
    if cdsGridData.Active then
      RefreshDataSet(cdsGridData);

  with FfmCompanyRepresentatives do
    if cdsGridData.Active then
      RefreshDataSet(cdsGridData);

  with FfmCompanyContacts do
    if cdsGridData.Active then
      RefreshDataSet(cdsGridData);

  with FfmCompanyBankAccounts do
    if cdsGridData.Active then
      RefreshDataSet(cdsGridData);
end;

function TfmCompany.GetApplyUpdatesEnabled: Boolean;
begin
  Result:=
    inherited GetApplyUpdatesEnabled or
    (frCompanyStatus.cdsStatus.Active and (frCompanyStatus.cdsStatus.ChangeCount > 0));
end;

end.



