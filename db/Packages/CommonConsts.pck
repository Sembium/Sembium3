create or replace package CommonConsts is

  function Eps return Number deterministic;
  function MaxNumber return Number deterministic;
  
  function MinDate return Date deterministic;
  function MaxDate return Date deterministic;
  function MinTime return  Date deterministic;

  function TreeRootCode return number deterministic;

  -- Process Object Classes
  function pocStoreDeal return Number deterministic;
  function pocMaterialListLine return Number deterministic;
  function pocMaterialList return Number deterministic;
  function pocSale return Number deterministic;
  function pocDeficitCoverDecision return Number deterministic;
  function pocDeliveryContract return Number deterministic;
  function pocSaleGroup return Number deterministic;
  function pocSaleShipment return Number deterministic;
  function pocModelStage return Number deterministic;
  function pocModelOperation return Number deterministic;

  -- Border Rel Types
  function brtClient return Number deterministic;
  function brtVendor return Number deterministic;

  -- Obtainment Types
  function otAcquire return Number deterministic;
  function otLease return Number deterministic;
  function otConsign return Number deterministic;
  
  -- Production Order Base Types, not all
  function pobtSaleCover return Number deterministic;
  function pobtEnvCover return Number deterministic;
  function pobtDeliveryCover return Number deterministic;
  function pobtProject return Number deterministic;
  function pobtInputEmployees return Number deterministic;
  
  -- Stream Types
  function stStraight return Number deterministic;
  function stReverse return Number deterministic;
  
  -- Sale Deal Types
  function sdtSale return Number deterministic;
  function sdtLease return Number deterministic;
  function sdtExport return Number deterministic;
  
  -- Except Event Generator Types
  function eegtEnvironment return Number deterministic;
  function eegtSales return Number deterministic;
  function eegtProduction return Number deterministic;
  function eegtDeliveries return Number deterministic;
  function eegtFinancial return Number deterministic;

  -- Except Event Damage Process Types
  function eedptMaterialListLine return Number deterministic;
  function eedptDelivery return Number deterministic;
  function eedptSaleShipment return Number deterministic;

  -- Product Classes
  function pcNormal return Number deterministic;
  function pcFinancial return Number deterministic;
  function pcBudget return Number deterministic;
  
  -- System Role - Default
  function srDefault return Number deterministic;
  
  -- User Group All Users
  function ugAllUsers return Number deterministic;
  
  function eelInformative return Number deterministic;
  function eelMinimal return Number deterministic;
  function eelNormal return Number deterministic;
  
  -- Sys Role Types
  
  function srtActivities return Number deterministic;
  function srtFilterVariants return Number deterministic;
  function srtDocItems return Number deterministic;
  function srtInternal return Number deterministic;

  -- Company Classes
  function ccFirm return Number deterministic;
  function ccPerson return Number deterministic;
  function ccCumulative return Number deterministic;
  function ccCommon return Number deterministic;

  -- FinModelMovementOffsetTypes
  function fmmotBeginning return Number deterministic;
  function fmmotEnd return Number deterministic;

  -- ProfessionTypes
  function ptGlobal return Number deterministic;
  function ptPrcBaseOp return Number deterministic;
  function ptPrcConcreteOp return Number deterministic;

  -- OccWorkDeptPriorityDirections
  function owlExecuting return Number deterministic;
  function owlManaging return Number deterministic;

  -- OccWorkDeptPriorityModeTypes  
  function owmExploitation return Number deterministic;
  function owmService return Number deterministic;

  -- DeptOWDPResponsibilities
  function dowdpctLocal return Number deterministic;
  function dowdpctLocalAndDescendants return Number deterministic;
  function dowdpctAncestor return Number deterministic;
  
  -- OrgTaskPropsalResultTypes
  function otprtAccepted return Number deterministic;
  function otprtAttached return Number deterministic;
  function otprtReturned return Number deterministic;
  function otprtDenied return Number deterministic;

  -- DeficitCoverDecisionModes
  function dcdmObjective return Number deterministic;
  function dcdmSubjective return Number deterministic;
  
  -- ExceptEventTaskResolveTypes
  function eetrtNormal return Number deterministic;
  function eetrtSingleResolve return Number deterministic;
  
  -- BudgetOrderItemOrderTypes
  function boiotProduct return Number deterministic;
  function boiotCompany return Number deterministic;
  function boiotWaste return Number deterministic;
  function boiotMarking return Number deterministic;

  PRAGMA RESTRICT_REFERENCES (Eps, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (MaxNumber, WNDS, WNPS, RNDS, RNPS);
  
  PRAGMA RESTRICT_REFERENCES (MinDate, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (MaxDate, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (MinTime, WNDS, WNPS, RNDS, RNPS);
  
  PRAGMA RESTRICT_REFERENCES (TreeRootCode, WNDS, WNPS, RNDS, RNPS);
  
  PRAGMA RESTRICT_REFERENCES (pocStoreDeal, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (pocMaterialListLine, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (pocMaterialList, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (pocSale, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (pocDeficitCoverDecision, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (pocDeliveryContract, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (pocSaleGroup, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (pocSaleShipment, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (pocModelStage, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (pocModelOperation, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (brtClient, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (brtVendor, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (otAcquire, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (otLease, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (otConsign, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (pobtSaleCover, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (pobtEnvCover, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (pobtDeliveryCover, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (pobtProject, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (pobtInputEmployees, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (stStraight, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (stReverse, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (eegtEnvironment, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (eegtSales, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (eegtProduction, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (eegtDeliveries, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (eegtFinancial, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (eedptMaterialListLine, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (eedptDelivery, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (eedptSaleShipment, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (pcNormal, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (pcFinancial, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (pcBudget, WNDS, WNPS, RNDS, RNPS);
  
  PRAGMA RESTRICT_REFERENCES (srDefault, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (ugAllUsers, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (eelInformative, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (eelMinimal, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (eelNormal, WNDS, WNPS, RNDS, RNPS);
  
  PRAGMA RESTRICT_REFERENCES (srtActivities, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (srtFilterVariants, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (srtDocItems, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (srtInternal, WNDS, WNPS, RNDS, RNPS);    

  PRAGMA RESTRICT_REFERENCES (ccFirm, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (ccPerson, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (ccCumulative, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (ccCommon, WNDS, WNPS, RNDS, RNPS);    

  PRAGMA RESTRICT_REFERENCES (fmmotBeginning, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (fmmotEnd, WNDS, WNPS, RNDS, RNPS);    

  PRAGMA RESTRICT_REFERENCES (ptGlobal, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (ptPrcBaseOp, WNDS, WNPS, RNDS, RNPS);    
  PRAGMA RESTRICT_REFERENCES (ptPrcConcreteOp, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (owlExecuting, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (owlManaging, WNDS, WNPS, RNDS, RNPS);
  
  PRAGMA RESTRICT_REFERENCES (owmExploitation, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (owmService, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (dowdpctLocal, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (dowdpctLocalAndDescendants, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (dowdpctAncestor, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (otprtAccepted, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (otprtAttached, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (otprtReturned, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (otprtDenied, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (dcdmObjective, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (dcdmSubjective, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (eetrtNormal, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (eetrtSingleResolve, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (boiotProduct, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (boiotCompany, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (boiotWaste, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (boiotMarking, WNDS, WNPS, RNDS, RNPS);

end CommonConsts;
/
create or replace package body CommonConsts is

  ConstEps constant Number := 0.0001;
  ConstMaxNumber constant Number := 1000000000000;
  
  ConstTreeRootCode constant Number := 1;

  -- Process Object Classes
  ConstpocStoreDeal            constant Number :=  10;
  ConstpocMaterialListLine     constant Number :=  20;
  ConstpocMaterialList         constant Number :=  21;
  ConstpocSale                 constant Number :=  30;
  ConstpocDeficitCoverDecision constant Number :=  39;
  ConstpocDeliveryContract     constant Number :=  40;
  ConstpocSaleGroup            constant Number := 210;
  ConstpocSaleShipment         constant Number :=  50;
  ConstpocModelStage           constant Number :=  60;
  ConstpocModelOperation       constant Number :=  70;

  ConstMinDate constant Date := To_Date('01.01.1996', 'DD.MM.YYYY');
  ConstMaxDate constant Date := To_Date('31.12.2028', 'DD.MM.YYYY');
  ConstMinTime constant Date := To_Date('30.12.1899', 'DD.MM.YYYY');

  -- Border Rel Types
  ConstbrtClient               constant Number :=   1;
  ConstbrtVendor               constant Number :=   2;

  -- Obtainment Types
  ConstotAcquire               constant Number :=   1;
  ConstotLease                 constant Number :=   2;
  ConstotConsign               constant Number :=   3;

  -- Production Order Base Types
  ConstpobtSaleCover           constant Number :=   1;
  ConstpobtEnvCover            constant Number :=   2;
  ConstpobtDeliveryCover       constant Number :=   4;
  ConstpobtProject             constant Number :=   5;
  ConstpobtInputEmployees      constant Number :=   6;
  
  -- Stream Types
  ConststStraight              constant Number :=   1;
  ConststReverse               constant Number :=   2;
  
  -- Sale deal types
  ConstsdtSale                 constant Number :=   1;
  ConstsdtLease                constant Number :=   2;
  ConstsdtExport               constant Number :=   8;
  
  -- Except Event Generator Types
  ConsteegtEnvironment         constant Number :=   1;
  ConsteegtSales               constant Number :=   2;
  ConsteegtProduction          constant Number :=   3;
  ConsteegtDeliveries          constant Number :=   4;
  ConsteegtFinancial           constant Number :=   5;

  -- Except Event Damage Process Types
  ConsteedptMaterialListLine   constant Number :=   1;
  ConsteedptDelivery           constant Number :=   2;
  ConsteedptSaleShipment       constant Number :=   3;
  
  -- Product Classes
  ConstpcNormal                constant Number :=   1;
  ConstpcFinancial             constant Number :=   2;
  ConstpcBudget                constant Number :=   3;
  
  -- System Role - Default
  ConstsrDefault               constant Number :=   1;
  
  -- User Group All Users
  ConstugAllUsers              constant Number := 999999999;
  
  ConsteelInformative          constant Number := 1;
  ConsteelMinimal              constant Number := 2;
  ConsteelNormal               constant Number := 3;
  
  -- Sys Role Type
  ConstsrtActivities           constant Number := 1;
  ConstsrtFilterVariants       constant Number := 2;
  ConstsrtDocItems             constant Number := 3;
  ConstsrtInternal             constant Number := 4;

  -- Company Classes
  ConstccFirm                  constant Number := 1;
  ConstccPerson                constant Number := 2;
  ConstccCumulative            constant Number := 3;
  ConstccCommon                constant Number := 4;
  
  -- FinModelMovementOffsetTypes
  ConstfmmotBeginning          constant Number := 1;
  ConstfmmotEnd                constant Number := 2;

  -- ProfessiontTypes
  ConstptGlobal                constant Number := 1;
  ConstptPrcBaseOp             constant Number := 2;
  ConstptPrcConcreteOp         constant Number := 3;
  
  -- OccWorkDeptPriorityDirections
  ConstowlExecuting          constant Number := 1;
  ConstowlManaging           constant Number := 2;

  -- OccWorkDeptPriorityModeTypes  
  ConstowmExploitation      constant Number := 1;
  ConstowmService           constant Number := 2;

  -- DeptOWDPResponsibilities
  ConstdowdpctLocal               constant Number := 1;
  ConstdowdpctLocalAndDesc        constant Number := 2;
  ConstdowdpctAncestor            constant Number := 3;

  -- OrgTaskPropsalResultTypes
  ConstotprtAccepted              constant Number := 1;
  ConstotprtAttached              constant Number := 2;
  ConstotprtReturned              constant Number := 3;
  ConstotprtDenied                constant Number := 4;

  -- DeficitCoverDecisionModes
  ConstdcdmObjective              constant Number := 1;
  ConstdcdmSubjective             constant Number := 2;
  
  -- ExceptEventTaskResolveTypes
  ConsteetrtNormal                constant Number := 1;
  ConsteetrtSingleResolve         constant Number := 2;

  -- BudgetOrderItemOrderTypes
  ConstboiotProduct               constant Number := 1;
  ConstboiotCompany               constant Number := 2;
  ConstboiotWaste                 constant Number := 3;
  ConstboiotMarking               constant Number := 4;


  function Eps return Number deterministic is
  begin
    return ConstEps;
  end;
  
  function MaxNumber return Number deterministic is
  begin
    return ConstMaxNumber;
  end;
  
  function MinDate return Date deterministic is
  begin
    return(ConstMinDate);
  end MinDate;

  function MaxDate return Date deterministic is
  begin
    return(ConstMaxDate);
  end MaxDate;

  function MinTime return Date deterministic is
  begin
    return(ConstMinTime);
  end MinTime;

  function TreeRootCode return number deterministic is
  begin
    return ConstTreeRootCode;
  end TreeRootCode;

  function pocStoreDeal return Number deterministic is
  begin
    return ConstpocStoreDeal;
  end;

  function pocMaterialListLine return Number deterministic is
  begin
    return ConstpocMaterialListLine;
  end;
  
  function pocMaterialList return Number deterministic is
  begin
    return ConstpocMaterialList;
  end;
  
  function pocSale return Number deterministic is
  begin
    return ConstpocSale;
  end;
  
  function pocDeficitCoverDecision return Number deterministic is
  begin
    return ConstpocDeficitCoverDecision;
  end;
  
  function pocDeliveryContract return Number deterministic is
  begin
    return ConstpocDeliveryContract;
  end;
  
  function pocSaleGroup return Number deterministic is
  begin
    return ConstpocSaleGroup;
  end;
  
  function pocSaleShipment return Number deterministic is
  begin
    return ConstpocSaleShipment;
  end;
  
  function pocModelStage return Number deterministic is
  begin
    return ConstpocModelStage;
  end;
  
  function pocModelOperation return Number deterministic is
  begin
    return ConstpocModelOperation;
  end;
  
  function brtClient return Number deterministic is
  begin
    return ConstbrtClient;
  end;
  
  function brtVendor return Number deterministic is
  begin
    return ConstbrtVendor;
  end;
  
  function otAcquire return Number deterministic is
  begin
    return ConstotAcquire;
  end;
  
  function otLease return Number deterministic is
  begin
    return ConstotLease;
  end;
  
  function otConsign return Number deterministic is
  begin
    return ConstotConsign;
  end;
  
  function pobtSaleCover return Number deterministic is
  begin
    return ConstpobtSaleCover;
  end;
  
  function pobtEnvCover return Number deterministic is
  begin
    return ConstpobtEnvCover;
  end;
  
  function pobtDeliveryCover return Number deterministic is
  begin
    return ConstpobtDeliveryCover;
  end;
  
  function pobtProject return Number deterministic is
  begin
    return ConstpobtProject;
  end;
  
  function pobtInputEmployees return Number deterministic is
  begin
    return ConstpobtInputEmployees;
  end;
  
  function stStraight return Number deterministic is
  begin
    return ConststStraight;
  end;
  
  function stReverse return Number deterministic is
  begin
    return ConststReverse;
  end;
  
  function sdtSale return Number deterministic is
  begin
    return ConstsdtSale;
  end;
  
  function sdtLease return Number deterministic is
  begin
    return ConstsdtLease;
  end;
  
  function sdtExport return Number deterministic is
  begin
    return ConstsdtExport;
  end;

  function eegtEnvironment return Number deterministic is
  begin
    return ConsteegtEnvironment;
  end;

  function eegtSales return Number deterministic is
  begin
    return ConsteegtSales;
  end;

  function eegtProduction return Number deterministic is
  begin
    return ConsteegtProduction;
  end;

  function eegtDeliveries return Number deterministic is
  begin
    return ConsteegtDeliveries;
  end;

  function eegtFinancial return Number deterministic is
  begin
    return ConsteegtFinancial;
  end;

  function eedptMaterialListLine return Number deterministic is
  begin
    return ConsteedptMaterialListLine;
  end;

  function eedptDelivery return Number deterministic is
  begin
    return ConsteedptDelivery;
  end;

  function eedptSaleShipment return Number deterministic is
  begin
    return ConsteedptSaleShipment;
  end;

  function pcNormal return Number deterministic is
  begin
    return ConstpcNormal;
  end;

  function pcFinancial return Number deterministic is
  begin
    return ConstpcFinancial;
  end;

  function pcBudget return Number deterministic is
  begin
    return ConstpcBudget;
  end;

  function srDefault return Number deterministic is
  begin
    return ConstsrDefault;
  end;
  
  function ugAllUsers return Number deterministic is
  begin
    return ConstugAllUsers;
  end;
  
  function eelInformative return Number deterministic is
  begin
    return ConsteelInformative;
  end;
  
  function eelMinimal return Number deterministic is
  begin
    return ConsteelMinimal;
  end;
  
  function eelNormal return Number deterministic is
  begin
    return ConsteelNormal;
  end;
  
  function srtActivities return Number deterministic is
  begin
    return ConstsrtActivities;
  end;

  function srtFilterVariants return Number deterministic is
  begin
    return ConstsrtFilterVariants;
  end;

  function srtDocItems return Number deterministic is
  begin
    return ConstsrtDocItems;
  end;
  
  function srtInternal return Number deterministic is
  begin
    return ConstsrtInternal;
  end;      

  function ccFirm return Number deterministic is
  begin
    return ConstccFirm;
  end;      

  function ccPerson return Number deterministic is
  begin
    return ConstccPerson;
  end;      

  function ccCumulative return Number deterministic is
  begin
    return ConstccCumulative;
  end;      

  function ccCommon return Number deterministic is
  begin
    return ConstccCommon;
  end;      

  function fmmotBeginning return Number deterministic is
  begin
    return ConstfmmotBeginning;
  end;      

  function fmmotEnd return Number deterministic is
  begin
    return ConstfmmotEnd;
  end;

  function ptGlobal return Number deterministic is
  begin
    return ConstptGlobal;
  end;

  function ptPrcBaseOp return Number deterministic is
  begin
    return ConstptPrcBaseOp;
  end;

  function ptPrcConcreteOp return Number deterministic is
  begin
    return ConstptPrcConcreteOp;
  end;

  function owlExecuting return Number deterministic is
  begin
    return ConstowlExecuting;
  end;

  function owlManaging return Number deterministic is
  begin
    return ConstowlManaging;
  end;

  function owmExploitation return Number deterministic is
  begin
    return ConstowmExploitation;
  end;

  function owmService return Number deterministic is
  begin
    return ConstowmService;
  end;

  function dowdpctLocal return Number deterministic is
  begin
    return ConstdowdpctLocal;
  end;

  function dowdpctLocalAndDescendants return Number deterministic is
  begin
    return ConstdowdpctLocalAndDesc;
  end;

  function dowdpctAncestor return Number deterministic is
  begin
    return ConstdowdpctAncestor;
  end;
  
  function otprtAccepted return Number deterministic is
  begin
    return ConstotprtAccepted;
  end;

  function otprtAttached return Number deterministic is
  begin
    return ConstotprtAttached;
  end;

  function otprtReturned return Number deterministic is
  begin
    return ConstotprtReturned;
  end;

  function otprtDenied return Number deterministic is
  begin
    return ConstotprtDenied;
  end;

  function dcdmObjective return Number deterministic is
  begin
    return ConstdcdmObjective;
  end;
  
  function dcdmSubjective return Number deterministic is
  begin
    return ConstdcdmSubjective;
  end;
  
  function eetrtNormal return Number deterministic is
  begin
    return ConsteetrtNormal;
  end;

  function eetrtSingleResolve return Number deterministic is
  begin
    return ConsteetrtSingleResolve;
  end;
  
  function boiotProduct return Number deterministic is
  begin
    return ConstboiotProduct;
  end;

  function boiotCompany return Number deterministic is
  begin
    return ConstboiotCompany;
  end;

  function boiotWaste return Number deterministic is
  begin
    return ConstboiotWaste;
  end;

  function boiotMarking return Number deterministic is
  begin
    return ConstboiotMarking;
  end;

end;
/
