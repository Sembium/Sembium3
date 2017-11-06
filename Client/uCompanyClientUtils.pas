unit uCompanyClientUtils;

interface

uses
  Db;

resourcestring
  CompaniesSet = '< Множество от Партньори >';

procedure GetCompanyInfo(CompanyCodeField: TField;
  CompanyFullNameField: TField = nil;
  CityField: TField = nil;
  AddressField: TField = nil;
  TaxNoField: TField = nil;
  BulstatNoField: TField = nil;
  CountryAbbrevField: TField = nil;
  MediatorCompanyCodeField: TField = nil;
  CompanyShortNameField: TField = nil;
  BulstatField: TField = nil;
  BulstatExField: TField = nil;
  IsPersonField: TField = nil;
  FirstNameField: TField = nil;
  MiddleNameField: TField = nil;
  LastNameField: TField = nil;
  EGNField: TField = nil;
  CompanyNoField: TField = nil;
  VatRegisteredField: TField = nil;
  VatNoField: TField = nil;
  ICompanyFullNameField: TField = nil;
  ICompanyShortNameField: TField = nil;
  IFirstNameField: TField = nil;
  IMiddleNameField: TField = nil;
  ILastNameField: TField = nil;
  ICityField: TField = nil;
  IAddressField: TField = nil
);

procedure GetCompanyRolesInfo(
  CompanyCodeField: TField;
  IsClientField: TField = nil; ClientPriorityCodeField: TField = nil;
  IsMediatorField: TField = nil; MediatorPriorityCodeField: TField = nil;
  IsVendorField: TField = nil; VendorPriorityCodeField: TField = nil;
  IsGovernmentOrganizationField: TField = nil; GovOrgPriorityCodeField: TField = nil;
  IsBankField: TField = nil; BankPriorityCodeField: TField = nil;
  IsWorkerField: TField = nil; WorkerPriorityCodeField: TField = nil);

function IsSingleChosenCompany(const AXMLs: string): Boolean;
function SingleChosenCompanyCode(const AXMLs: string): Integer;
function ChosenCompanyCodeToXML(ACompanyCode: Integer): string;

procedure CompanyStatusFieldGetText(
  StatusCodeField: TField;
  StatusNameField: TField;
  BaseRoleCodeField: TField;
  var Text: string;
  DisplayText: Boolean);

implementation

uses
  dMain, Classes, uUtils, SysUtils, uCompanyKindClientUtils, uCompanyKinds,
  uCompanyUtils, uXMLUtils;

procedure GetCompanyInfo(CompanyCodeField: TField;
  CompanyFullNameField: TField = nil;
  CityField: TField = nil;
  AddressField: TField = nil;
  TaxNoField: TField = nil;
  BulstatNoField: TField = nil;
  CountryAbbrevField: TField = nil;
  MediatorCompanyCodeField: TField = nil;
  CompanyShortNameField: TField = nil;
  BulstatField: TField = nil;
  BulstatExField: TField = nil;
  IsPersonField: TField = nil;
  FirstNameField: TField = nil;
  MiddleNameField: TField = nil;
  LastNameField: TField = nil;
  EGNField: TField = nil;
  CompanyNoField: TField = nil;
  VatRegisteredField: TField = nil;
  VatNoField: TField = nil;
  ICompanyFullNameField: TField = nil;
  ICompanyShortNameField: TField = nil;
  IFirstNameField: TField = nil;
  IMiddleNameField: TField = nil;
  ILastNameField: TField = nil;
  ICityField: TField = nil;
  IAddressField: TField = nil);
var
  CompanyFullName: string;
  City: string;
  Address: string;
  TaxNo: string;
  BulstatNo: string;
  CountryAbbrev: string;
  MediatorCompanyCode: string;
  CompanyShortName: string;
  Bulstat: string;
  BulstatEx: string;
  IsPerson: Boolean;
  FirstName: string;
  MiddleName: string;
  LastName: string;
  EGN: string;
  CompanyNo: Integer;
  VatRegistered: Boolean;
  VatNo: string;
  ICompanyFullName: string;
  ICompanyShortName: string;
  IFirstName: string;
  IMiddleName: string;
  ILastName: string;
  ICity: string;
  IAddress: string;
begin
  Assert(Assigned(CompanyCodeField));

  dmMain.SvrCompanies.GetCompanyInfo(CompanyCodeField.AsInteger,
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

  if Assigned(CompanyFullNameField) then
    CompanyFullNameField.AsString:= CompanyFullName;

  if Assigned(CityField) then
    CityField.AsString:= City;

  if Assigned(AddressField) then
    AddressField.AsString:= Address;

  if Assigned(TaxNoField) then
    TaxNoField.AsString:= TaxNo;

  if Assigned(BulstatNoField) then
    BulstatNoField.AsString:= BulstatNo;

  if Assigned(CountryAbbrevField) then
    CountryAbbrevField.AsString:= CountryAbbrev;

  if Assigned(MediatorCompanyCodeField) then
    MediatorCompanyCodeField.AsString:= MediatorCompanyCode;

  if Assigned(CompanyShortNameField) then
    CompanyShortNameField.AsString:= CompanyShortName;

  if Assigned(BulstatField) then
    BulstatField.AsString:= Bulstat;

  if Assigned(BulstatExField) then
    BulstatExField.AsString:= BulstatEx;

  if Assigned(IsPersonField) then
    IsPersonField.AsBoolean:= IsPerson;

  if Assigned(FirstNameField) then
    FirstNameField.AsString:= FirstName;

  if Assigned(MiddleNameField) then
    MiddleNameField.AsString:= MiddleName;

  if Assigned(LastNameField) then
    LastNameField.AsString:= LastName;

  if Assigned(EGNField) then
    EGNField.AsString:= EGN;

  if Assigned(CompanyNoField) then
    CompanyNoField.AsInteger:= CompanyNo;

  if Assigned(VatRegisteredField) then
    VatRegisteredField.AsBoolean:= VatRegistered;

  if Assigned(VatNoField) then
    VatNoField.AsString:= VatNo;

  if Assigned(ICompanyFullNameField) then
    ICompanyFullNameField.AsString:= ICompanyFullName;

  if Assigned(ICompanyShortNameField) then
    ICompanyShortNameField.AsString:= ICompanyShortName;

  if Assigned(IFirstNameField) then
    IFirstNameField.AsString:= IFirstName;

  if Assigned(IMiddleNameField) then
    IMiddleNameField.AsString:= IMiddleName;

  if Assigned(ILastNameField) then
    ILastNameField.AsString:= ILastName;

  if Assigned(ICityField) then
    ICityField.AsString:= ICity;

  if Assigned(IAddressField) then
    IAddressField.AsString:= IAddress;
end;

procedure GetCompanyRolesInfo(
  CompanyCodeField: TField;
  IsClientField: TField = nil; ClientPriorityCodeField: TField = nil;
  IsMediatorField: TField = nil; MediatorPriorityCodeField: TField = nil;
  IsVendorField: TField = nil; VendorPriorityCodeField: TField = nil;
  IsGovernmentOrganizationField: TField = nil; GovOrgPriorityCodeField: TField = nil;
  IsBankField: TField = nil; BankPriorityCodeField: TField = nil;
  IsWorkerField: TField = nil; WorkerPriorityCodeField: TField = nil);
var
  IsClient: Boolean;
  IsMediator: Boolean;
  IsVendor: Boolean;
  IsGovernmentOrganization: Boolean;
  IsBank: Boolean;
  IsWorker: Boolean;
  ClientPriorityCode: Integer;
  MediatorPriorityCode: Integer;
  VendorPriorityCode: Integer;
  GovOrgPriorityCode: Integer;
  BankPriorityCode: Integer;
  WorkerPriorityCode: Integer;
begin
  Assert(Assigned(CompanyCodeField));

  dmMain.SvrCompanies.GetCompanyRolesInfo(CompanyCodeField.AsInteger,
    IsClient, ClientPriorityCode,
    IsMediator, MediatorPriorityCode,
    IsVendor, VendorPriorityCode,
    IsGovernmentOrganization, GovOrgPriorityCode,
    IsBank, BankPriorityCode,
    IsWorker, WorkerPriorityCode);

  if Assigned(IsClientField) then
    IsClientField.AsBoolean:= IsClient;

  if Assigned(ClientPriorityCodeField) then
    ClientPriorityCodeField.AsInteger:= ClientPriorityCode;

  if Assigned(IsMediatorField) then
    IsMediatorField.AsBoolean:= IsMediator;

  if Assigned(MediatorPriorityCodeField) then
    MediatorPriorityCodeField.AsInteger:= MediatorPriorityCode;

  if Assigned(IsVendorField) then
    IsVendorField.AsBoolean:= IsVendor;

  if Assigned(VendorPriorityCodeField) then
    VendorPriorityCodeField.AsInteger:= VendorPriorityCode;

  if Assigned(IsGovernmentOrganizationField) then
    IsGovernmentOrganizationField.AsBoolean:= IsGovernmentOrganization;

  if Assigned(GovOrgPriorityCodeField) then
    GovOrgPriorityCodeField.AsInteger:= GovOrgPriorityCode;

  if Assigned(IsBankField) then
    IsBankField.AsBoolean:= IsBank;

  if Assigned(BankPriorityCodeField) then
    BankPriorityCodeField.AsInteger:= BankPriorityCode;

  if Assigned(IsWorkerField) then
    IsWorkerField.AsBoolean:= IsWorker;

  if Assigned(WorkerPriorityCodeField) then
    WorkerPriorityCodeField.AsInteger:= WorkerPriorityCode;
end;

function IsSingleChosenCompany(const AXMLs: string): Boolean;
begin
  Result:= IsSingleChosenNodeWithoutParams(AXMLs);
end;

function SingleChosenCompanyCode(const AXMLs: string): Integer;
begin
  Result:= ChosenNodeXMLToNodeCode(AXMLs);
end;

function ChosenCompanyCodeToXML(ACompanyCode: Integer): string;
begin
  Result:= ChosenNodeCodeToXML(ACompanyCode);
end;

procedure CompanyStatusFieldGetText(
  StatusCodeField: TField;
  StatusNameField: TField;
  BaseRoleCodeField: TField;
  var Text: string;
  DisplayText: Boolean);
begin
  Text:= StatusNameField.AsString;

  if (not StatusCodeField.IsNull) and (StatusCodeField.AsInteger <> 5) then
    Text:= Text + ' - ' + CompanyKindAbbrev(IntToCompanyKind(BaseRoleCodeField.AsInteger));
end;

end.
