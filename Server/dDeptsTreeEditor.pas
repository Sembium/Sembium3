unit dDeptsTreeEditor;

interface

uses                                                     
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDeptsTree, AbmesClientDataSet, WideStrings, FMTBcd, SqlExpr,
  AbmesSQLConnection, JvStringHolder, DBXDevartOracle, uSmartLock;

type
  TUpdateBranch = (ubDont, ubAdd, ubDelete);

type
  TdmDeptsTreeEditor = class(TdmDeptsTree)
    qryNodeChildrenDEPT_CODE: TAbmesFloatField;
    qryNodeChildrenPARENT_CODE: TAbmesFloatField;
    qryNodeChildrenNAME: TAbmesWideStringField;
    qryNodeChildrenCUSTOM_CODE: TAbmesFloatField;
    qryNodeChildrenDEPT_TYPE_CODE: TAbmesFloatField;
    qryNodeChildrenSUFFIX_LETTER: TAbmesWideStringField;
    qryDeptTypes: TAbmesSQLQuery;
    qryDeptTypesDEPT_TYPE_CODE: TAbmesFloatField;
    qryDeptTypesDEPT_TYPE_ABBREV: TAbmesWideStringField;
    qryDeptTypesDEPT_TYPE_NAME: TAbmesWideStringField;
    prvDeptTypes: TDataSetProvider;
    qryNodeChildrenIS_BRANCH: TAbmesFloatField;
    qryMaxDeptCode: TAbmesSQLQuery;
    qryAddBranch: TAbmesSQLQuery;
    qryDelBranch: TAbmesSQLQuery;
    qryMaxDeptCodeMAX_DEPT_CODE: TAbmesFloatField;
    qryNodeChildrenIS_GROUP: TAbmesFloatField;
    qryNodeChildrenPRODUCT_NAME: TAbmesWideStringField;
    qryNodeChildrenPRODUCT_NO: TAbmesFloatField;
    qryNodeChildrenDOC_BRANCH_CODE: TAbmesFloatField;
    qryNodeChildrenDOC_CODE: TAbmesFloatField;
    qryShowNodeParamsOCCUPATION_CODE: TAbmesFloatField;
    qryShowNodeParamsIS_ACTIVE: TAbmesFloatField;
    qryShowNodeParamsIS_OCCUPIED: TAbmesFloatField;
    qryShowNodeParamsIS_DEFINED: TAbmesFloatField;
    qryInsStore: TAbmesSQLQuery;
    qryUpdStore: TAbmesSQLQuery;
    qryDelStore: TAbmesSQLQuery;
    prvDeptPeriods: TDataSetProvider;
    qryDeptPeriods: TAbmesSQLQuery;
    qryDeptPeriodsDEPT_PERIOD_CODE: TAbmesFloatField;
    qryDeptPeriodsDEPT_CODE: TAbmesFloatField;
    qryDeptPeriodsBEGIN_DATE: TAbmesSQLTimeStampField;
    qryDeptPeriodsEND_DATE: TAbmesSQLTimeStampField;
    qryDeptPeriodsHOUR_PRICE: TAbmesFloatField;
    qryDeptPeriodsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeptPeriodsCHANGE_DATE: TAbmesSQLTimeStampField;
    qryDeptPeriodsCHANGE_TIME: TAbmesSQLTimeStampField;
    qryNodeChildrenCHANGE_DATE_TIME: TAbmesSQLTimeStampField;
    qryNewDeptPeriodCode: TAbmesSQLQuery;
    qryNewDeptPeriodCodeNEW_DEPT_PERIOD_CODE: TAbmesFloatField;
    qryShowNodeParamsDOC_BRANCH_CODE: TAbmesFloatField;
    qryShowNodeParamsDOC_CODE: TAbmesFloatField;
    qryShowNodeParamsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryShowNodeParamsDOC_IS_COMPLETE: TAbmesFloatField;
    qryShowNodeParamsACTIVE_DI_COUNT: TAbmesFloatField;
    qryShowNodeParamsUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryShowNodeParamsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryNodeChildrenDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryNodeChildrenDOC_IS_COMPLETE: TAbmesFloatField;
    qryNodeChildrenACTIVE_DI_COUNT: TAbmesFloatField;
    qryNodeChildrenUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryNodeChildrenUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryDelDeptPeriods: TAbmesSQLQuery;
    qryDeleteOccupation: TAbmesSQLQuery;
    qryNodeChildrenBEGIN_DATE: TAbmesSQLTimeStampField;
    qryNodeChildrenEND_DATE: TAbmesSQLTimeStampField;
    qryNodeChildrenIS_EXTERNAL: TAbmesFloatField;
    qryNodeChildrenIS_RECURRENT: TAbmesFloatField;
    qryNodeChildrenPARENT_IS_RECURRENT: TAbmesFloatField;
    qryNodeChildrenPARENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryNodeChildrenPARENT_END_DATE: TAbmesSQLTimeStampField;
    qryShowNodeParamsIS_MAIN: TAbmesFloatField;
    qryShowNodeParamsOCCUPATION_PHASE_NAME: TAbmesWideStringField;
    qryDeptPeriodsEST_CAPACITY_DAY_LIMIT_HOURS: TAbmesFloatField;
    qryDeptPeriodsHeader: TAbmesSQLQuery;
    prvDeptPeriodsHeader: TDataSetProvider;
    qryDeptPeriodsHeaderDEPT_CODE: TAbmesFloatField;
    qryDeptPeriodsHeaderSHOW_NO: TAbmesWideStringField;
    qryDeptPeriodsHeaderNAME: TAbmesWideStringField;
    qryDeptPeriodsHeaderDOC_BRANCH_CODE: TAbmesFloatField;
    qryDeptPeriodsHeaderDOC_CODE: TAbmesFloatField;
    qryDeptPeriodsHeaderBEGIN_DATE: TAbmesSQLTimeStampField;
    qryDeptPeriodsHeaderEND_DATE: TAbmesSQLTimeStampField;
    qryDeptPeriodsHeaderHAS_DOCUMENTATION: TAbmesFloatField;
    qryDeptPeriodsHeaderIS_BRANCH: TAbmesFloatField;
    qryDeptPeriodsHeaderIS_STORE: TAbmesFloatField;
    qryDeptPeriodsHeaderIS_COMPUTERIZED_STORE: TAbmesFloatField;
    qryDeptPeriodsHeaderIS_EXTERNAL: TAbmesFloatField;
    qryDeptPeriodsHeaderIS_RECURRENT: TAbmesFloatField;
    qryShowNodeParamsIS_PAST: TAbmesFloatField;
    qryShowNodeParamsIS_FUTURE: TAbmesFloatField;
    qryDeptPeriodsPARALLEL_PROCESS_COUNT: TAbmesFloatField;
    qryDeptPeriodsPARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    prvStoreMinQuantities: TDataSetProvider;
    qryStoreMinQuantities: TAbmesSQLQuery;
    qryNewProductStoreCode: TAbmesSQLQuery;
    qryNewProductStoreCodeNEW_PRODUCT_STORE_CODE: TAbmesFloatField;
    qryStoreMinQuantitiesPRODUCT_STORE_CODE: TAbmesFloatField;
    qryStoreMinQuantitiesPRODUCT_CODE: TAbmesFloatField;
    qryStoreMinQuantitiesPRODUCT_NAME: TAbmesWideStringField;
    qryStoreMinQuantitiesPRODUCT_NO: TAbmesFloatField;
    qryStoreMinQuantitiesMEASURE_CODE: TAbmesFloatField;
    qryStoreMinQuantitiesACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryStoreMinQuantitiesACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryStoreMinQuantitiesSTORE_CODE: TAbmesFloatField;
    qryStoreMinQuantitiesBEGIN_DATE: TAbmesSQLTimeStampField;
    qryStoreMinQuantitiesEND_DATE: TAbmesSQLTimeStampField;
    qryStoreMinQuantitiesIS_PAST: TAbmesFloatField;
    qryStoreMinQuantitiesIS_PRESENT: TAbmesFloatField;
    qryStoreMinQuantitiesIS_FUTURE: TAbmesFloatField;
    qryStoreMinQuantitiesMIN_QUANTITY: TAbmesFloatField;
    qryStoreMinQuantitiesACCOUNT_MIN_QUANTITY: TAbmesFloatField;
    qryStoreMinQuantitiesDOC_BRANCH_CODE: TAbmesFloatField;
    qryStoreMinQuantitiesDOC_CODE: TAbmesFloatField;
    qryStoreMinQuantitiesHAS_DOC_ITEMS: TAbmesFloatField;
    qryDeptPeriodsMAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    qryDeptPeriodsDOC_BRANCH_CODE: TAbmesFloatField;
    qryDeptPeriodsDOC_CODE: TAbmesFloatField;
    qryDeptPeriodsHAS_DOC_ITEMS: TAbmesFloatField;
    qryInsFinStore: TAbmesSQLQuery;
    qryDelFinStore: TAbmesSQLQuery;
    qryDeptPeriodsIS_PAST: TAbmesFloatField;
    qryDeptPeriodsIS_PRESENT: TAbmesFloatField;
    qryDeptPeriodsIS_FUTURE: TAbmesFloatField;
    qryTreeNodeIS_BRANCH: TAbmesFloatField;
    qryTreeNodeIS_FIN_STORE: TAbmesFloatField;
    qryTreeNodeIS_EXTERNAL: TAbmesFloatField;
    qryTreeNodeIS_RECURRENT: TAbmesFloatField;
    qryTreeNodeINACTIVE_TYPE_CODE: TAbmesFloatField;
    qryTreeNodeChildrenIS_BRANCH: TAbmesFloatField;
    qryTreeNodeChildrenIS_EXTERNAL: TAbmesFloatField;
    qryTreeNodeChildrenIS_RECURRENT: TAbmesFloatField;
    qryTreeNodeChildrenINACTIVE_TYPE_CODE: TAbmesFloatField;
    qryTreeToNodeIS_BRANCH: TAbmesFloatField;
    qryTreeToNodeIS_EXTERNAL: TAbmesFloatField;
    qryTreeToNodeIS_RECURRENT: TAbmesFloatField;
    qryTreeToNodeINACTIVE_TYPE_CODE: TAbmesFloatField;
    qryNodeChildrenINACTIVE_TYPE_CODE: TAbmesFloatField;
    qryStoreMinQuantitiesPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    prvStoreTypes: TDataSetProvider;
    qryStoreTypes: TAbmesSQLQuery;
    qryStoreTypesSTORE_TYPE_CODE: TAbmesFloatField;
    qryStoreTypesSTORE_TYPE_NAME: TAbmesWideStringField;
    qryStoreTypesSTORE_TYPE_ABBREV: TAbmesWideStringField;
    qryNodeChildrenSTORE_TYPE_CODE: TAbmesFloatField;
    qryNodeChildrenPRC_DATA: TBlobField;
    qryDeptOWDPriorities: TAbmesSQLQuery;
    prvDeptOWDPriorities: TDataSetProvider;
    qryDeptOWDPrioritiesDEPT_CODE: TAbmesFloatField;
    qryDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    qryDeptNotOWDPriorities: TAbmesSQLQuery;
    prvDeptNotOWDPriorities: TDataSetProvider;
    qryDeptNotOWDPrioritiesDEPT_CODE: TAbmesFloatField;
    qryDeptNotOWDPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    qryDeptNotOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField;
    qryDeptNotOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField;
    qryDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField;
    qryDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField;
    qryDeptCapacityGeneratorOWDPrioritiesCount: TAbmesSQLQuery;
    qryDeptCapacityGeneratorOWDPrioritiesCountCAPACITY_GEN_COUNT: TAbmesFloatField;
    qryNodeChildrenIS_OWD_PRIORITIES_SET_COMPLETE: TAbmesFloatField;
    qryDeptOWDPrioritiesDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    qryDeptNotOWDPrioritiesHAS_NOT_COVERED_DESCENDANT: TAbmesFloatField;
    qryDeptOWDPrioritiesHAS_NOT_COVERED_DESCENDANT: TAbmesFloatField;
    qryNodeChildrenSKIP_OWDP_TYPE_CHECK: TAbmesFloatField;
    qryShowNodeParamsHAS_DOC_ITEMS: TAbmesFloatField;
    qryShowNodeParamsIS_INHERITED: TAbmesFloatField;
    qryPrintTreeChildrenINACTIVE_TYPE_CODE: TAbmesFloatField;
    qryPrintTreeINACTIVE_TYPE_CODE: TAbmesFloatField;
    qryPrintTreeChildrenIS_EXTERNAL: TAbmesFloatField;
    qryPrintTreeChildrenIS_RECURRENT: TAbmesFloatField;
    qryPrintTreeChildrenIS_BRANCH: TAbmesFloatField;
    qryPrintTreeChildrenIS_STORE: TAbmesFloatField;
    qryPrintTreeChildrenIS_FIN_STORE: TAbmesFloatField;
    qryPrintTreeIS_EXTERNAL: TAbmesFloatField;
    qryPrintTreeIS_RECURRENT: TAbmesFloatField;
    qryPrintTreeIS_BRANCH: TAbmesFloatField;
    qryPrintTreeIS_STORE: TAbmesFloatField;
    qryPrintTreeIS_FIN_STORE: TAbmesFloatField;
    cdsPrintTreeChildrenINACTIVE_TYPE_CODE: TAbmesFloatField;
    cdsPrintTreeChildrenIS_EXTERNAL: TAbmesFloatField;
    cdsPrintTreeChildrenIS_RECURRENT: TAbmesFloatField;
    cdsPrintTreeChildrenIS_BRANCH: TAbmesFloatField;
    cdsPrintTreeChildrenIS_STORE: TAbmesFloatField;
    cdsPrintTreeChildrenIS_FIN_STORE: TAbmesFloatField;
    qryDeptPeriodsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryDeptPeriodsDOC_IS_COMPLETE: TAbmesFloatField;
    qryDeptPeriodsACTIVE_DI_COUNT: TAbmesFloatField;
    qryDeptPeriodsUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryDeptPeriodsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    procedure prvNodeChildrenBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvNodeChildrenAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvNodeChildrenUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure prvNodeChildrenBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvNodeChildrenAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryNodeChildrenAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure prvShowNodeParamsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryNodeChildrenBeforeProviderEndTransaction(
      DataSet: TDataSet; Commit: Boolean);
    procedure prvDeptPeriodsUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure prvDeptPeriodsBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvDeptPeriodsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvStoreMinQuantitiesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvStoreMinQuantitiesUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure prvStoreMinQuantitiesBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvDeptPeriodsAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryDeptPeriodsAfterProviderStartTransaction(DataSet: TDataSet);
    procedure prvShowNodeParamsGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure cdsPrintTreeChildrenBeforeOpen(DataSet: TDataSet);
    procedure prvDeptOWDPrioritiesBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure prvDeptOWDPrioritiesUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure prvDeptOWDPrioritiesBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
  private
    FUpdateBranch: TUpdateBranch;
    FUpdateDS: TDataSet;
    FDocsDelta: Variant;
    FDeptPeriodsDocsDelta: Variant;
    FDeptPeriodsDelta: Variant;
    FDeptPeriodsErrorMessage: string;
    FInsertDeptCode: Integer;
    FStoreMinQuantitiesDelta: Variant;
    FStoreMinQuantitiesErrorMessage: string;
    FDeptOWDPrioritiesErrorMessage: string;
    FDeptOWDPrioritiesDelta: Variant;
    FSavedForCapacityGenCheckDeptCode: Integer;
    procedure SetDeptKey(AClientDataSet: TCustomClientDataSet);
    procedure CheckDeptHasCapacityGeneratorOWDPriority(ADeptCode: Integer);
  protected
    function SkipSQLTest(AQuery: TAbmesSQLQuery): Boolean; override;
  end;

type
  IdmDeptsTreeEditorProxy = interface(IdmDeptsTreeProxy)
    procedure CheckDeptHasCapacityGeneratorOWDPriority(ADeptCode: Integer);
  end;

type
  TdmDeptsTreeEditorProxy = class(TdmDeptsTreeProxy, IdmDeptsTreeEditorProxy)
  private
    class var FSingleton: TdmDeptsTreeEditorProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmDeptsTreeEditor>;
  strict protected
    property LockedInstance: ISmartLock<TdmDeptsTreeEditor> read GetLockedInstance;
  protected
    procedure CheckDeptHasCapacityGeneratorOWDPriority(ADeptCode: Integer);
  public
    class property Singleton: TdmDeptsTreeEditorProxy read FSingleton;
  end;

implementation

uses
  Variants, uUtils, uSvrUtils, uTreeNodes, uDBPooledDataModuleHelper,
  uPrcDeclarations, uServerMessageIds;

{$R *.DFM}

{ TdmDeptsTreeEditorProxy }

procedure TdmDeptsTreeEditorProxy.CheckDeptHasCapacityGeneratorOWDPriority(ADeptCode: Integer);
begin
  LockedInstance.Value.CheckDeptHasCapacityGeneratorOWDPriority(ADeptCode);
end;

function TdmDeptsTreeEditorProxy.GetLockedInstance: ISmartLock<TdmDeptsTreeEditor>;
begin
  Result:= ISmartLock<TdmDeptsTreeEditor>(inherited LockedInstance);
end;

{ TdmDeptsTreeEditor }

procedure TdmDeptsTreeEditor.SetDeptKey(AClientDataSet: TCustomClientDataSet);
begin
  with qryMaxDeptCode do
    begin
      Open;
      try
        AClientDataSet.FieldByName('DEPT_CODE').NewValue:=
          qryMaxDeptCodeMAX_DEPT_CODE.Value + 1;
      finally
        Close;
      end;
    end;
end;

function TdmDeptsTreeEditor.SkipSQLTest(AQuery: TAbmesSQLQuery): Boolean;
begin
  Result:=
    (AQuery = qryGraphObjectSet) or
    (AQuery = qryGraphObjects) or
    (AQuery = qryGraphObjectPoints) or
    (AQuery = qryGraphObjectTypes) or
    inherited SkipSQLTest(AQuery);
end;

procedure TdmDeptsTreeEditor.prvNodeChildrenBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
  UpdateBranchCode: Integer;
begin
  inherited;

  FUpdateDS:= SourceDS;

  FUpdateBranch:= ubDont;
  UpdateBranchCode:= 0;
  FInsertDeptCode:= 0;

  with DeltaDS do
    begin
      if (UpdateKind in [ukInsert, ukModify]) then
        begin
          FieldByName('NAME').NewValue:=
            GetFieldValue(FieldByName('NODE_NAME'));
          FieldByName('CUSTOM_CODE').NewValue:=
            GetFieldValue(FieldByName('NODE_NO'));
        end;

      case UpdateKind of
        ukInsert:
          begin
            SetDeptKey(DeltaDS);

            FInsertDeptCode:= FieldByName('DEPT_CODE').NewValue;

            FieldByName('NODE_ID').NewValue:=
              FieldByName('DEPT_CODE').NewValue;

            FieldByName('PARENT_CODE').NewValue:=
              FieldByName('PARENT_NODE_ID').NewValue;

            if FieldByName('IS_BRANCH').NewValue then
              begin
                FUpdateBranch:= ubAdd;
                UpdateBranchCode:=
                  FieldByName('DEPT_CODE').NewValue;
              end;
          end;   { ukInsert }

        ukModify:
          if not VarIsEmpty(FieldByName('IS_BRANCH').NewValue) then
            begin
              if GetBoolValue(FieldByName('IS_BRANCH')) then
                FUpdateBranch:= ubAdd
              else
                FUpdateBranch:= ubDelete;

                UpdateBranchCode:=
                  GetFieldValue(FieldByName('DEPT_CODE'));
            end;   { ukModify }

        ukDelete:
          begin
            FUpdateBranch:= ubDelete;
            UpdateBranchCode:=
              GetFieldValue(FieldByName('DEPT_CODE'));

            SetParams(qryDelDeptPeriods.Params, DeltaDS);
            qryDelDeptPeriods.ExecSQL;
          end;   { ukDelete }
      end;

      case FUpdateBranch of
        ubAdd:
          qryAddBranch.ParamByName('BRANCH_CODE').AsInteger:= UpdateBranchCode;
        ubDelete:
          begin
            qryDelBranch.ParamByName('BRANCH_CODE').AsInteger:= UpdateBranchCode;
            qryDelBranch.ExecSQL;
          end;
      end;
    end;   { with DeltaDS }

  if (UpdateKind = ukInsert) then
    begin
      DeltaDS.FieldByName('IS_GROUP').NewValue:=
        Ord(DeltaDS.FieldByName('NODE_TYPE').NewValue <> Ord(ntInstance));
    end;   { if }

  // save DeptCode for later check in BeforeProviderEndTransaction
  if (UpdateKind in [ukInsert, ukModify]) and not GetBoolValue(DeltaDS.FieldByName('IS_GROUP')) then
    FSavedForCapacityGenCheckDeptCode:= GetFieldValue(DeltaDS.FieldByName('DEPT_CODE'));

  if (UpdateKind = ukDelete) then
    ExecUpdateQuery(UpdateKind, DeltaDS, qryInsStore, qryUpdStore, qryDelStore, False);

  Applied:= not RecordChanged(DeltaDS);
end;

procedure TdmDeptsTreeEditor.prvNodeChildrenAfterUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
var
  fld: TField;
begin
  inherited;

  fld:= DeltaDS.FieldByName('IS_STORE');
  if ((UpdateKind = ukInsert) and (fld.NewValue = 1)) or
     (UpdateKind = ukModify) then
    begin
      if (UpdateKind = ukModify) and (not VarIsEmpty(fld.NewValue)) and (fld.OldValue <> fld.NewValue) then
        begin
          if (fld.NewValue = 1) then
            UpdateKind:= ukInsert
          else
            UpdateKind:= ukDelete;
        end;

      ExecUpdateQuery(UpdateKind, DeltaDS, qryInsStore, qryUpdStore, qryDelStore, False);
    end;

  fld:= DeltaDS.FieldByName('IS_FIN_STORE');

  if (not VarIsEmpty(fld.NewValue)) and
     ((UpdateKind = ukInsert) and (fld.NewValue = 1)) or
     ((UpdateKind = ukModify) and (fld.OldValue = 0) and (fld.NewValue = 1)) then
    begin
      SetParams(qryInsFinStore.Params, DeltaDS);
      qryInsFinStore.ExecSQL;
    end;

  if (UpdateKind = ukModify) and
     (not VarIsEmpty(fld.NewValue)) and
     (fld.OldValue = 1) and
     (fld.NewValue = 0) then
    begin
      SetParams(qryDelFinStore.Params, DeltaDS);
      qryDelFinStore.ExecSQL;
    end;

  if (FUpdateBranch = ubAdd) then
    qryAddBranch.ExecSQL;

  if GetFieldValue(DeltaDS.FieldByName('IS_GROUP')) then
    SvrProcesses.ApplyPrcData(ProcessOwners.GroupDept, DeltaDS)
  else
    SvrProcesses.ApplyPrcData(ProcessOwners.DefiniteDept, DeltaDS);

  ResetApplyRetryCounter;
end;

procedure TdmDeptsTreeEditor.prvNodeChildrenUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;

  ApplyRetry(E, Response);

// sledvashtoto znam che ne bachka, shtoto pri Retry na Insert
// ne stava. Napisal sum go belkim go opraviat
  if (UpdateKind = ukInsert) then
    begin
      if (FUpdateDS = qryNodeChildren) then
        SetDeptKey(DataSet);
    end;
end;

procedure TdmDeptsTreeEditor.prvNodeChildrenBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData[1];
  FDeptPeriodsDelta:= OwnerData[2];
  FStoreMinQuantitiesDelta:= OwnerData[3];
  FDeptOWDPrioritiesDelta:= OwnerData[4];

  FSavedForCapacityGenCheckDeptCode:= 0;
end;

procedure TdmDeptsTreeEditor.prvNodeChildrenAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FSavedForCapacityGenCheckDeptCode:= 0;

  FDocsDelta:= Unassigned;
  FDeptPeriodsDelta:= Unassigned;
  FStoreMinQuantitiesDelta:= Unassigned;
  FDeptOWDPrioritiesDelta:= Unassigned;
end;

procedure TdmDeptsTreeEditor.qryDeptPeriodsAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDeptPeriodsDocsDelta);
end;

procedure TdmDeptsTreeEditor.qryNodeChildrenAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmDeptsTreeEditor.prvShowNodeParamsBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukDelete) and (SourceDS = qryShowNodeParams) then
    begin
      SetParams(qryDeleteOccupation.Params, DeltaDS);
      qryDeleteOccupation.ExecSQL;
      Applied:= True;
    end;
end;

procedure TdmDeptsTreeEditor.prvShowNodeParamsGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  inherited;

  DataSet.ForEach /
    DataSet.SafeEdit /
      procedure begin
        DataSet.FieldByName('PARAM_VALUE').AsString:=
          IntToStr(DataSet.FieldByName('IS_ACTIVE').AsInteger) +
          IntToStr(DataSet.FieldByName('IS_OCCUPIED').AsInteger);
      end;
end;

procedure TdmDeptsTreeEditor.prvStoreMinQuantitiesBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FStoreMinQuantitiesErrorMessage:= '';
end;

procedure TdmDeptsTreeEditor.prvStoreMinQuantitiesBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukInsert) then
    begin
      if (FInsertDeptCode > 0) then
        DeltaDS.FieldByName('STORE_CODE').NewValue:= FInsertDeptCode;

      qryNewProductStoreCode.Open;
      try
        DeltaDS.FieldByName('PRODUCT_STORE_CODE').NewValue:=
          qryNewProductStoreCodeNEW_PRODUCT_STORE_CODE.AsInteger;
      finally
        qryNewProductStoreCode.Close;
      end;  { try }
    end;
end;

procedure TdmDeptsTreeEditor.prvStoreMinQuantitiesUpdateError(
  Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
  UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  inherited;

  if (FStoreMinQuantitiesErrorMessage = '') then
    FStoreMinQuantitiesErrorMessage:= E.Message;
end;

procedure TdmDeptsTreeEditor.CheckDeptHasCapacityGeneratorOWDPriority(ADeptCode: Integer);
begin
  qryDeptCapacityGeneratorOWDPrioritiesCount.ParamByName('DEPT_CODE').AsInteger:= ADeptCode;
  qryDeptCapacityGeneratorOWDPrioritiesCount.TempOpen/
    procedure begin
      if (qryDeptCapacityGeneratorOWDPrioritiesCountCAPACITY_GEN_COUNT.AsInteger < 1) then
        raise Exception.Create(SDeptMustHaveCapacityGeneratorId);
    end;
end;

procedure TdmDeptsTreeEditor.qryNodeChildrenBeforeProviderEndTransaction(DataSet: TDataSet; Commit: Boolean);
begin
  inherited;

  if Commit then
    begin
      ApplyProviderDelta(FDeptPeriodsDelta, prvDeptPeriods, FDeptPeriodsErrorMessage);
      ApplyProviderDelta(FStoreMinQuantitiesDelta, prvStoreMinQuantities, FStoreMinQuantitiesErrorMessage);
      ApplyProviderDelta(FDeptOWDPrioritiesDelta, prvDeptOWDPriorities, FDeptOWDPrioritiesErrorMessage);

      if (FSavedForCapacityGenCheckDeptCode > 0) then
        CheckDeptHasCapacityGeneratorOWDPriority(FSavedForCapacityGenCheckDeptCode);
    end;
end;

procedure TdmDeptsTreeEditor.prvDeptPeriodsUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;

  if (FDeptPeriodsErrorMessage = '') then
    FDeptPeriodsErrorMessage:= E.Message;

  ApplyRetry(E, Response);
end;

procedure TdmDeptsTreeEditor.cdsPrintTreeChildrenBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsPrintTreeChildren.Params.ParamByName('SHOW_FIN_STORES').Assign(
    qryPrintTree.CustomParams.ParamByName('SHOW_FIN_STORES'));
  cdsPrintTreeChildren.Params.ParamByName('SHOW_OWD_FIN_STORES').Assign(
    qryPrintTree.CustomParams.ParamByName('SHOW_OWD_FIN_STORES'));
end;

procedure TdmDeptsTreeEditor.prvDeptOWDPrioritiesBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDeptOWDPrioritiesErrorMessage:= '';
end;

procedure TdmDeptsTreeEditor.prvDeptOWDPrioritiesBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
  DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if (UpdateKind = ukInsert) and (FInsertDeptCode > 0) then
    DeltaDS.FieldByName('DEPT_CODE').NewValue:= FInsertDeptCode;
end;

procedure TdmDeptsTreeEditor.prvDeptOWDPrioritiesUpdateError(Sender: TObject; DataSet: TCustomClientDataSet;
  E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  inherited;
  if (FDeptOWDPrioritiesErrorMessage = '') then
    FDeptOWDPrioritiesErrorMessage:= E.Message;
end;

procedure TdmDeptsTreeEditor.prvDeptPeriodsAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDeptPeriodsDocsDelta:= Unassigned;
end;

procedure TdmDeptsTreeEditor.prvDeptPeriodsBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  ResetApplyRetryCounter;
  FDeptPeriodsErrorMessage:= '';
  FDeptPeriodsDocsDelta:= OwnerData;
end;

procedure TdmDeptsTreeEditor.prvDeptPeriodsBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukInsert) then
    begin
      if (FInsertDeptCode > 0) then
        DeltaDS.FieldByName('DEPT_CODE').NewValue:= FInsertDeptCode;

      qryNewDeptPeriodCode.Open;
      try
        DeltaDS.FieldByName('DEPT_PERIOD_CODE').NewValue:=
          qryNewDeptPeriodCodeNEW_DEPT_PERIOD_CODE.AsInteger;
      finally
        qryNewDeptPeriodCode.Close;
      end;  { try }
    end;

  if (UpdateKind <> ukDelete) then
    begin
      DeltaDS.FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
      DeltaDS.FieldByName('CHANGE_DATE').NewValue:= ContextDate;
      DeltaDS.FieldByName('CHANGE_TIME').NewValue:= ContextTime;
    end;

  Applied:= not RecordChanged(DeltaDS);
end;

initialization
  TdmDeptsTreeEditorProxy.FSingleton:= TdmDeptsTreeEditorProxy.Create(TdmDeptsTreeEditor);

finalization
  FreeAndNil(TdmDeptsTreeEditorProxy.FSingleton);
end.

