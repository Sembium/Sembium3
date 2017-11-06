unit uCompanyKindClientUtils;

interface

uses
  uCompanyKinds;

function CompanyKindName(Value: TCompanyKind): string;

function CompanyKindAbbrev(Value: TCompanyKind): string;

resourcestring
  SBank = 'Финансова Институция';
  SGovernmentOrganization = 'Държавна Институция';
  SVendor = 'Доставчик';
  SMediator = 'Посредник';
  SClient = 'Клиент';
  SWorker = 'Служител';

  SClientAbbrev = 'Кл';
  SMediatorAbbrev = 'Пс';
  SVendorAbbrev = 'Дс';
  SGovernmentOrganizationAbbrev = 'ДИ';
  SBankAbbrev = 'ФИ';
  SWorkerAbbrev = 'Сл';

implementation

function CompanyKindName(Value: TCompanyKind): string;
const
  CompanyKindNames: array [TCompanyKind] of string = (
    '',
    SClient,
    SMediator,
    SVendor,
    SGovernmentOrganization,
    SBank,
    SWorker
  );
begin
  Result:= CompanyKindNames[Value];
end;

function CompanyKindAbbrev(Value: TCompanyKind): string;
const
  CompanyKindAbbrevs: array [TCompanyKind] of string = (
    '',
    SClientAbbrev,
    SMediatorAbbrev,
    SVendorAbbrev,
    SGovernmentOrganizationAbbrev,
    SBankAbbrev,
    SWorker
  );
begin
  Result:= CompanyKindAbbrevs[Value];
end;

end.
