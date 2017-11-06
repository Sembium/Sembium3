unit uParRelProducts;

interface

uses
  Classes, uLoginContext, uBorderRelTypeClientUtils, uBorderRelTypes,
  uProductionOrderTypes, uProducts;

type
  TObtainmentType = (otNone, otAcquire, otLease, otConsign);
  TParRelProductsOrientation = (prpoPartner, prpoProduct);
  TParRelProductsKind = (prpkQuantity, prpkEngineering);
  TParRelProductsStructurePartIncludeKind = (prpspikNone, prpspikDetail, prpspikMaterial);
  TParRelProductsDeptIncludeKind = (prpdikNone, prpdikStageDept, prpdikOpDept);

function ObtainmentTypeToInt(AValue: TObtainmentType): Integer;
function IntToObtainmentType(AValue: Integer): TObtainmentType;

function ParRelProductsOrientationToInt(AValue: TParRelProductsOrientation): Integer;
function IntToParRelProductsOrientation(AValue: Integer): TParRelProductsOrientation;

function CreateCommonMsgParams(
  ALoginContext: TLoginContext;
  AProductClass: TProductClass;
  ABorderRelType: TBorderRelType;
  ABorderProdOrderBaseType: TBorderProdOrderBaseType;
  AParRelProductsOrientation: TParRelProductsOrientation;
  AParRelProductsKind: TParRelProductsKind;
  AParRelProductsStructurePartIncludeKind: TParRelProductsStructurePartIncludeKind;
  AParRelProductsDeptIncludeKind: TParRelProductsDeptIncludeKind;
  AIsForCommonProduct: Boolean): TStrings;

function ObtainmentTypeToSaleDealType(AObtainmentType: TObtainmentType): Integer;
function SaleDealTypeToObtainmentType(ASaleDealType: Integer): TObtainmentType;
function ObtainmentAndBpobTypeToDeliveryDealType(
  AObtainmentType: TObtainmentType;
  ABorderProdOrderBaseType: TBorderProdOrderBaseType): Integer;

function ParRelProductAbbrev(AProductClass: TProductClass; ABorderRelType: TBorderRelType): string;
function ParRelProductName(AProductClass: TProductClass; ABorderRelType: TBorderRelType): string;
function ObtainmentTypeName(AObtainmentType: TObtainmentType): string;

resourcestring
  SProductCommonLevelStrategic = 'Стратегическо (ОСтр)';
  SProductCommonLevelCommon    = 'Потенциално Обобщено (ОПтц+Е)';
  SProductCommonLevelConcrete  = 'Потенциално Конкретизирано (П+Е)';

  SPartnerCommonLevelCommon = '  Обобщено (О+Е)';
  SPartnerCommonLevelConcrete = 'Конкретизирано (П+Е)';

  SDetail = 'КСЧ';
  SMaterial = 'НСЧ';

const
  epcgCompare = 0;
  epcgEstimations = 1;
  epcgPlanAndReal = 2;

  ProductCommonLevels: array[0..2] of string = (SProductCommonLevelStrategic, SProductCommonLevelCommon, SProductCommonLevelConcrete);
  PartnerCommonLevels: array[1..2] of string = (SPartnerCommonLevelCommon, SPartnerCommonLevelConcrete);

implementation

uses
  SysUtils, uModelUtils, uUtils, uSaleDealTypes, uDeliveryDealTypes, uProductClientUtils;

resourcestring
  SParRelProductsClientNormal = 'Източници на Индустриален Резултат';
  SParRelProductsClientFinancial = 'Източници на Индустриален Резултат Финансов';
  SParRelProductsVendorNormalCoveringSales = 'Източници на Доставки на УОб-ЕлП';
  SParRelProductsVendorNormalCoveringEnv = 'Източници на Доставки на УОб-ЕлС';
  SParRelProductsVendorFinancial = 'Източници на Доставки на ФОб';
  SParRelProductsVendorBudget = 'Източници на Доставки на Процеси';

  SParRelProductClientNormal = 'Източник на Индустриален Резултат';
  SParRelProductClientFinancial = 'Източник на Индустриален Резултат Финансов';
  SParRelProductVendorNormal = 'Източник на Доставки на УОб';
  SParRelProductVendorFinancial = 'Източник на Доставки на ФОб';
  SParRelProductVendorBudget = 'Източник на Доставки на Процеси';

  SForCommonProduct = ' за ТЙС';
  SForEngineering = ' за ПИР';

  SForDetail = ' включващи КСЧ';
  SForMaterial = ' включващи НСЧ';

  SForStageDept = ' включващи ЕтТП';
  SForOpDept = ' включващи ОпТП';

  SStageDept = 'ЕтТП';
  SOpDept = 'ОпТП';

  SOrientationProduct = 'Обектов Разрез';
  SOrientationPartner = 'Субектов Разрез';

  SParRelProductAbbrevClientNormal = 'ИИР';
  SParRelProductAbbrevClientFinancial = 'ИИР-Ф';
  SParRelProductAbbrevVendorNormal = 'ИД';
  SParRelProductAbbrevVendorFinancial = 'ИД-Ф';
  SParRelProductAbbrevVendorBudget = 'ИД-П';

  SParRelProductsAbbrevClientNormal = 'МИИР';
  SParRelProductsAbbrevClientFinancial = 'МИИР-Ф';
  SParRelProductsAbbrevVendorNormal = 'МИД';
  SParRelProductsAbbrevVendorFinancial = 'МИД-Ф';
  SParRelProductsAbbrevVendorBudget = 'МИД-П';

  SClientParRelProductsGroup = 'КГ ИИР';
  SVendorParRelProductsGroup = 'ДГ ИД';

  SClient = 'Клиент';
  SVendor = 'Доставчик';
  SClientAbbrev = 'Кл.';
  SVendorAbbrev = 'Дст.';

  SClientPriority = 'ПриорК';
  SVendorPriority = 'ПриорД';

  SSale = 'Продажба';
  SDelivery = 'Доставка';

  SSaleProcessOrderAbbrev = 'ОПП';
  SDeliveryProcessOrderAbbrev = 'ОПД';

  SCoveringSales = 'на УОб-ЕлП';
  SCoveringEnv = 'на УОб-ЕлС';

  SClientAcquireShortAbbrev = 'ПП';
  SClientLeaseShortAbbrev = 'НП';
  SClientConsignShortAbbrev = 'ИП';
  SVendorAcquireShortAbbrev = 'ПД';
  SVendorLeaseShortAbbrev = 'НД';
  SVendorConsignShortAbbrev = 'ВД';

  SClientAcquireAbbrev = 'Продажба';
  SVendorAcquireAbbrev = 'Придобив.';

  SClientLeaseName = 'Наемодаване';
  SVendorLeaseName = 'Наемане';

  SAcquireObtainmentTypeName = 'Придобиване';
  SLeaseObtainmentTypeName = 'Наем';
  SConsignObtainmentTypeName = 'Влагане';

const
  ParRelProductsNames: array[TProductClass, TBorderRelType, TBorderProdOrderBaseType] of string =
    ( (('', '', '', ''), ('', '', '', ''), ('', '', '', '')),
      (('', '', '', ''), ('', SParRelProductsClientNormal, SParRelProductsClientNormal, ''), ('', SParRelProductsVendorNormalCoveringSales, SParRelProductsVendorNormalCoveringEnv, '')),
      (('', '', '', ''), ('', SParRelProductsClientFinancial, SParRelProductsClientFinancial, ''), ('', SParRelProductsVendorFinancial, SParRelProductsVendorFinancial, '')),
      (('', '', '', ''), ('', '', '', ''), ('', SParRelProductsVendorBudget, SParRelProductsVendorBudget, ''))
    );

  ParRelProductNames: array[TProductClass, TBorderRelType] of string =
    ( ('', '', ''),
      ('', SParRelProductClientNormal, SParRelProductVendorNormal),
      ('', SParRelProductClientFinancial, SParRelProductVendorFinancial),
      ('', '', SParRelProductVendorBudget)
    );

  ParRelProductAbbrevs: array[TProductClass, TBorderRelType] of string =
    ( ('', '', ''),
      ('', SParRelProductAbbrevClientNormal, SParRelProductAbbrevVendorNormal),
      ('', SParRelProductAbbrevClientFinancial, SParRelProductAbbrevVendorFinancial),
      ('', '', SParRelProductAbbrevVendorBudget)
    );

  ParRelProductsAbbrevs: array[TProductClass, TBorderRelType] of string =
    ( ('', '', ''),
      ('', SParRelProductsAbbrevClientNormal, SParRelProductsAbbrevVendorNormal),
      ('', SParRelProductsAbbrevClientFinancial, SParRelProductsAbbrevVendorFinancial),
      ('', '', SParRelProductsAbbrevVendorBudget)
    );

  PartnerTypes: array[TBorderRelType] of string = ('', SClient, SVendor);
  PartnerTypeAbbrevs: array[TBorderRelType] of string = ('', SClientAbbrev, SVendorAbbrev);
  PartnerTypePriorities: array[TBorderRelType] of string = ('', SClientPriority, SVendorPriority);
  PartnerParRelProductsGroups: array[TBorderRelType] of string = ('', SClientParRelProductsGroup, SVendorParRelProductsGroup);
  ParRelProductsOrientations: array[TParRelProductsOrientation] of string = (SOrientationPartner, SOrientationProduct);
  ForCommonProductTexts: array[Boolean] of string = ('', SForCommonProduct);
  ParRelProductsKindTexts: array[TParRelProductsKind] of string = ('', SForEngineering);
  ParRelProductsStructurePartIncludeKindTexts: array[TParRelProductsStructurePartIncludeKind] of string = ('', SForDetail, SForMaterial);
  IncludedStructureParts: array[TParRelProductsStructurePartIncludeKind] of string = ('', SDetail, SMaterial);
  ParRelProductsDeptIncludeKindTexts: array[TParRelProductsDeptIncludeKind] of string = ('', SForStageDept, SForOpDept);
  IncludedDepts: array[TParRelProductsDeptIncludeKind] of string = ('', SStageDept, SOpDept);
  BorderProcessOrderAbbrevs: array[TBorderRelType] of string = ('', SSaleProcessOrderAbbrev, SDeliveryProcessOrderAbbrev);
  CoveringTexts: array[TBorderProdOrderBaseType] of string = ('', SCoveringSales, SCoveringEnv, '');
  AcquireShortAbbrevs: array[TBorderRelType] of string = ('', SClientAcquireShortAbbrev, SVendorAcquireShortAbbrev);
  LeaseShortAbbrevs: array[TBorderRelType] of string = ('', SClientLeaseShortAbbrev, SVendorLeaseShortAbbrev);
  ConsignShortAbbrevs: array[TBorderRelType] of string = ('', SClientConsignShortAbbrev, SVendorConsignShortAbbrev);
  ParRelProductAquireAbbrevs: array[TBorderRelType] of string = ('', SClientAcquireAbbrev, SVendorAcquireAbbrev);
  ParRelProductLeaseNames: array[TBorderRelType] of string = ('', SClientLeaseName, SVendorLeaseName);
  ObtainmentTypeNames: array[TObtainmentType] of string = ('', SAcquireObtainmentTypeName, SLeaseObtainmentTypeName, SConsignObtainmentTypeName);

{ Routines }

function CreateCommonMsgParams(
  ALoginContext: TLoginContext;
  AProductClass: TProductClass;
  ABorderRelType: TBorderRelType;
  ABorderProdOrderBaseType: TBorderProdOrderBaseType;
  AParRelProductsOrientation: TParRelProductsOrientation;
  AParRelProductsKind: TParRelProductsKind;
  AParRelProductsStructurePartIncludeKind: TParRelProductsStructurePartIncludeKind;
  AParRelProductsDeptIncludeKind: TParRelProductsDeptIncludeKind;
  AIsForCommonProduct: Boolean): TStrings;
var
  i: Integer;
begin
  Result:= TStringList.Create;
  try
    Result.Clear;
    Result.ValuesEx['ParRelProducts']:= ParRelProductsNames[AProductClass, ABorderRelType, ABorderProdOrderBaseType];
    Result.ValuesEx['ParRelProductAbbrev']:= ParRelProductAbbrevs[AProductClass, ABorderRelType];
    Result.ValuesEx['ParRelProductsAbbrev']:= ParRelProductsAbbrevs[AProductClass, ABorderRelType];
    Result.ValuesEx['Partner']:= PartnerTypes[ABorderRelType];
    Result.ValuesEx['PartnerAbbrev']:= PartnerTypeAbbrevs[ABorderRelType];
    Result.ValuesEx['PartnerPriority']:= PartnerTypePriorities[ABorderRelType];
    Result.ValuesEx['PartnerParRelProductsGroup']:= PartnerParRelProductsGroups[ABorderRelType];
    Result.ValuesEx['BaseCurrencyAbbrev']:= ALoginContext.BaseCurrencyAbbrev;
    Result.ValuesEx['ParRelProductsOrientation']:= ParRelProductsOrientations[AParRelProductsOrientation];
    Result.ValuesEx['ForCommonProduct']:= ForCommonProductTexts[AIsForCommonProduct];
    Result.ValuesEx['ParRelProductsKind']:= ParRelProductsKindTexts[AParRelProductsKind];
    Result.ValuesEx['ParRelProductsStructurePartIncludeKind']:= ParRelProductsStructurePartIncludeKindTexts[AParRelProductsStructurePartIncludeKind];
    Result.ValuesEx['IncludedStructurePart']:= IncludedStructureParts[AParRelProductsStructurePartIncludeKind];
    Result.ValuesEx['ParRelProductsDeptIncludeKind']:= ParRelProductsDeptIncludeKindTexts[AParRelProductsDeptIncludeKind];
    Result.ValuesEx['IncludedDept']:= IncludedDepts[AParRelProductsDeptIncludeKind];
    Result.ValuesEx['ParRelProduct']:= ParRelProductNames[AProductClass, ABorderRelType];
    Result.ValuesEx['BorderRelTypeAction']:= BorderRelTypeActions[ABorderRelType];
    Result.ValuesEx['BorderRelTypeMultiAction']:= BorderRelTypeMultiActions[ABorderRelType];
    Result.ValuesEx['BorderRelTypeStoreAction']:= BorderRelTypeStoreActions[ABorderRelType];
    Result.ValuesEx['BorderRelTypeStoreActionAbbrev']:= BorderRelTypeStoreActionAbbrevs[ABorderRelType];
    Result.ValuesEx['BorderRelTypePartnerStoreAction']:= BorderRelTypePartnerStoreActions[ABorderRelType];
    Result.ValuesEx['BorderRelTypePartnerStoreActionAbbrev']:= BorderRelTypePartnerStoreActionAbbrevs[ABorderRelType];
    Result.ValuesEx['BorderProcessOrderAbbrev']:= BorderProcessOrderAbbrevs[ABorderRelType];
    Result.ValuesEx['ParRelPeriodAbbrev']:= ParRelPeriodAbbrevs[ABorderRelType];
    Result.ValuesEx['CoveringText']:= CoveringTexts[ABorderProdOrderBaseType];
    Result.ValuesEx['AcquireShortAbbrev']:= AcquireShortAbbrevs[ABorderRelType];
    Result.ValuesEx['LeaseShortAbbrev']:= LeaseShortAbbrevs[ABorderRelType];
    Result.ValuesEx['ConsignShortAbbrev']:= ConsignShortAbbrevs[ABorderRelType];
    Result.ValuesEx['ParRelProductAquireAbbrev']:= ParRelProductAquireAbbrevs[ABorderRelType];
    Result.ValuesEx['ParRelProductLeaseName']:= ParRelProductLeaseNames[ABorderRelType];

    case AParRelProductsOrientation of
      prpoPartner:
        Result.ValuesEx['Master']:= PartnerTypes[ABorderRelType];
      prpoProduct:
        Result.ValuesEx['Master']:= ProductClassAbbrevs[AProductClass];
      else
        Result.ValuesEx['Master']:= '';
    end;  { case }

    Result.ValuesEx['ProductClassCommonName']:= ProductClassCommonNames[AProductClass];
    Result.ValuesEx['ProductClassName']:= ProductClassNames[AProductClass];
    Result.ValuesEx['ProductsClassName']:= ProductsClassNames[AProductClass];
    Result.ValuesEx['ProductClassAbbrev']:= ProductClassAbbrevs[AProductClass];
    Result.ValuesEx['ProductPeriodAbbrev']:= ProductPeriodAbbrevs[AProductClass];

    for i:= Low(SpecNoQuantityStateAbbrevs) to High(SpecNoQuantityStateAbbrevs) do
      Result.Values[Format('SpecState%dAbbrev', [i])]:= SpecNoQuantityStateAbbrevs[i];
  except
    FreeAndNil(Result);
    raise;
  end;  { try }
end;

function ObtainmentTypeToInt(AValue: TObtainmentType): Integer;
const
  Values: array[TObtainmentType] of Integer = (0, 1, 2, 3);
begin
  Result:= Values[AValue];
end;

function IntToObtainmentType(AValue: Integer): TObtainmentType;
const
  Values: array[0..3] of TObtainmentType = (otNone, otAcquire, otLease, otConsign);
begin
  Assert(AValue >= Low(Values));
  Assert(AValue <= High(Values));

  Result:= Values[AValue];
end;

function ParRelProductsOrientationToInt(AValue: TParRelProductsOrientation): Integer;
const
  Values: array[TParRelProductsOrientation] of Integer = (0, 1);
begin
  Result:= Values[AValue];
end;

function IntToParRelProductsOrientation(AValue: Integer): TParRelProductsOrientation;
const
  Values: array[0..1] of TParRelProductsOrientation = (prpoPartner, prpoProduct);
begin
  Assert(AValue >= Low(Values));
  Assert(AValue <= High(Values));

  Result:= Values[AValue];
end;

function ObtainmentTypeToSaleDealType(AObtainmentType: TObtainmentType): Integer;
const
  SaleDealTypes: array[TObtainmentType] of Integer = (0, sdtSale, sdtLease, sdtExport);
begin
  Result:= SaleDealTypes[AObtainmentType];
end;

function SaleDealTypeToObtainmentType(ASaleDealType: Integer): TObtainmentType;
begin
  case ASaleDealType of
    sdtSale:
      Result:= otAcquire;
    sdtLease:
      Result:= otLease;
    sdtExport:
      Result:= otConsign;
  else
    Result:= otNone;
  end;  { case ASaleDealType }
end;

function ObtainmentAndBpobTypeToDeliveryDealType(
  AObtainmentType: TObtainmentType;
  ABorderProdOrderBaseType: TBorderProdOrderBaseType): Integer;
const
  DeliveryDealTypes: array[TObtainmentType, TBorderProdOrderBaseType] of Integer = (
    (0, 0, 0, 0),
    (0, ddtDeliveryForSales, ddtDeliveryForEnvironment, 0),
    (0, ddtLeaseForSales, ddtLeaseForEnvironment, 0),
    (0, ddtImport, 0, 0)
  );
begin
  Result:= DeliveryDealTypes[AObtainmentType, ABorderProdOrderBaseType];
end;

function ParRelProductAbbrev(AProductClass: TProductClass; ABorderRelType: TBorderRelType): string;
begin
  Result:= ParRelProductAbbrevs[AProductClass, ABorderRelType];
end;

function ParRelProductName(AProductClass: TProductClass; ABorderRelType: TBorderRelType): string;
begin
  Result:= ParRelProductNames[AProductClass, ABorderRelType];
end;

function ObtainmentTypeName(AObtainmentType: TObtainmentType): string;
begin
  Result:= ObtainmentTypeNames[AObtainmentType];
end;

end.
