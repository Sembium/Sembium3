unit dModelChanges;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  DBXDevartOracle, uSmartLock;

type
  TdmModelChanges = class(TDBPooledDataModule)
    qryMaterialListLineChange: TAbmesSQLQuery;
    prvMaterialListLineChange: TDataSetProvider;
    qryMaterialListLineChangeMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMaterialListLineChangeMLL_OBJECT_CODE: TAbmesFloatField;
    qryMaterialListLineChangeMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField;
    qryMaterialListLineChangeN_DETAIL_CODE: TAbmesFloatField;
    qryMaterialListLineChangeN_PRODUCT_CODE: TAbmesFloatField;
    qryMaterialListLineChangeN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryMaterialListLineChangeN_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryMaterialListLineChangeN_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryMaterialListLineChangeN_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryMaterialListLineChangeN_STORE_CODE: TAbmesFloatField;
    qryMaterialListLineChangeN_PRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryMaterialListLineChangeN_PRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField;
    qryMaterialListLineChangeO_DETAIL_CODE: TAbmesFloatField;
    qryMaterialListLineChangeO_PRODUCT_CODE: TAbmesFloatField;
    qryMaterialListLineChangeO_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryMaterialListLineChangeO_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryMaterialListLineChangeO_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryMaterialListLineChangeO_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryMaterialListLineChangeO_STORE_CODE: TAbmesFloatField;
    qryMaterialListLineChangeO_PRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryMaterialListLineChangeO_PRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField;
    qryMaterialListLineChangeREQUEST_EMPLOYEE_CODE: TAbmesFloatField;
    qryMaterialListLineChangeREQUEST_DATE: TAbmesSQLTimeStampField;
    qryMaterialListLineChangeREQUEST_TIME: TAbmesSQLTimeStampField;
    qryMaterialListLineChangeMLL_CHANGE_REPLY_TYPE_CODE: TAbmesFloatField;
    qryMaterialListLineChangeREPLY_EMPLOYEE_CODE: TAbmesFloatField;
    qryMaterialListLineChangeREPLY_DATE: TAbmesSQLTimeStampField;
    qryMaterialListLineChangeREPLY_TIME: TAbmesSQLTimeStampField;
    qryMaterialListLineChangeREPLY_ACCEPT_EMPLOYEE_CODE: TAbmesFloatField;
    qryMaterialListLineChangeREPLY_ACCEPT_DATE: TAbmesSQLTimeStampField;
    qryMaterialListLineChangeREPLY_ACCEPT_TIME: TAbmesSQLTimeStampField;
    qryMaterialListLineChangeN_PRODUCT_NAME: TAbmesWideStringField;
    qryMaterialListLineChangeN_PRODUCT_NO: TAbmesFloatField;
    qryMaterialListLineChangeN_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    qryMaterialListLineChangeO_PRODUCT_NAME: TAbmesWideStringField;
    qryMaterialListLineChangeO_PRODUCT_NO: TAbmesFloatField;
    qryMaterialListLineChangeO_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    qryMaterialListLineChangeMLL_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryMaterialListLineChangeREPLY: TAbmesFloatField;
    qryMaterialListLineChangeREPLY_ACCEPT: TAbmesFloatField;
    qryGetMaxMllChangeNo: TAbmesSQLQuery;
    qryGetMaxMllChangeNoMAX_MLL_CHANGE_NO: TAbmesFloatField;
    qryMaterialListLine: TAbmesSQLQuery;
    prvMaterialListLine: TDataSetProvider;
    qryMaterialListLineMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMaterialListLineMLL_OBJECT_CODE: TAbmesFloatField;
    qryMaterialListLineML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMaterialListLineML_OBJECT_CODE: TAbmesFloatField;
    qryMaterialListLineDETAIL_CODE: TAbmesFloatField;
    qryMaterialListLineDETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryMaterialListLineLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryMaterialListLineTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryMaterialListLinePRODUCT_CODE: TAbmesFloatField;
    qryMaterialListLinePRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryMaterialListLineSTORE_CODE: TAbmesFloatField;
    qryMaterialListLinePRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryMaterialListLinePRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField;
    qryMaterialListLineChangeDETAIL_CODE: TAbmesFloatField;
    qryMaterialListLineChangeDETAIL_NAME: TAbmesWideStringField;
    qryMaterialListLineChangeDETAIL_NO: TAbmesFloatField;
    qryMaterialListLineChangeDETAIL_TECH_MEASURE_CODE: TAbmesFloatField;
    qryMaterialListLineFORK_0_DETAIL_CODE: TAbmesFloatField;
    qryMaterialListLineMLL_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryMaterialListLineChangeOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    qryMaterialListLineOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    qryInsMllChanges: TAbmesSQLQuery;
    qryPendingChangeCounts: TAbmesSQLQuery;
    qryPendingChangeCountsREQUESTED_CHANGE_COUNT: TAbmesFloatField;
    qryPendingChangeCountsREQUESTED_MY_CHANGE_COUNT: TAbmesFloatField;
    qryPendingChangeCountsMY_ML_REQUESTED_CHANGE_COUNT: TAbmesFloatField;
    qryPendingChangeCountsREJECTED_CHANGE_COUNT: TAbmesFloatField;
    qryPendingChangeCountsREJECTED_MY_CHANGE_COUNT: TAbmesFloatField;
    qryPendingChangeCountsMY_ML_REJECTED_CHANGE_COUNT: TAbmesFloatField;
    prvModelChanges: TDataSetProvider;
    qryModelChanges: TAbmesSQLQuery;
    qryModelChangesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryModelChangesMLL_OBJECT_CODE: TAbmesFloatField;
    qryModelChangesMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField;
    qryModelChangesNO_1: TAbmesFloatField;
    qryModelChangesNO_2: TAbmesFloatField;
    qryModelChangesNO_3: TAbmesFloatField;
    qryModelChangesNO_4: TAbmesFloatField;
    qryModelChangesNO_5: TAbmesFloatField;
    qryModelChangesNO_6: TAbmesFloatField;
    qryModelChangesNO_7: TAbmesFloatField;
    qryModelChangesNO_8: TAbmesFloatField;
    qryModelChangesFORK_NO: TAbmesFloatField;
    qryModelChangesDETAIL_CODE: TAbmesFloatField;
    qryModelChangesDETAIL_NAME: TAbmesWideStringField;
    qryModelChangesDETAIL_NO: TAbmesFloatField;
    qryModelChangesO_PRODUCT_CODE: TAbmesFloatField;
    qryModelChangesO_PRODUCT_NAME: TAbmesWideStringField;
    qryModelChangesO_PRODUCT_NO: TAbmesFloatField;
    qryModelChangesO_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryModelChangesN_PRODUCT_CODE: TAbmesFloatField;
    qryModelChangesN_PRODUCT_NAME: TAbmesWideStringField;
    qryModelChangesN_PRODUCT_NO: TAbmesFloatField;
    qryModelChangesN_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryModelChangesO_STORE_CODE: TAbmesFloatField;
    qryModelChangesO_STORE_IDENTIFIER: TAbmesWideStringField;
    qryModelChangesN_STORE_CODE: TAbmesFloatField;
    qryModelChangesN_STORE_IDENTIFIER: TAbmesWideStringField;
    qryModelChangesO_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryModelChangesN_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryModelChangesREQUEST_EMPLOYEE_CODE: TAbmesFloatField;
    qryModelChangesREQUEST_EMPLOYEE_NAME: TAbmesWideStringField;
    qryModelChangesREQUEST_DATE: TAbmesSQLTimeStampField;
    qryModelChangesREQUEST_TIME: TAbmesSQLTimeStampField;
    qryModelChangesREPLY_EMPLOYEE_CODE: TAbmesFloatField;
    qryModelChangesREPLY_EMPLOYEE_NAME: TAbmesWideStringField;
    qryModelChangesREPLY_DATE: TAbmesSQLTimeStampField;
    qryModelChangesREPLY_TIME: TAbmesSQLTimeStampField;
    qryModelChangesREPLY_ACCEPT_EMPLOYEE_CODE: TAbmesFloatField;
    qryModelChangesREPLY_ACCEPT_EMPLOYEE_NAME: TAbmesWideStringField;
    qryModelChangesREPLY_ACCEPT_DATE: TAbmesSQLTimeStampField;
    qryModelChangesREPLY_ACCEPT_TIME: TAbmesSQLTimeStampField;
    qryModelChangesMLL_CHANGE_REPLY_TYPE_CODE: TAbmesFloatField;
    qryGetLatestMllcTimestamp: TAbmesSQLQuery;
    qryGetLatestMllcTimestampLATEST_MLLC_TIMESTAMP: TAbmesSQLTimeStampField;
    qryModelChangesNO_9: TAbmesFloatField;
    qryModelChangesNO_10: TAbmesFloatField;
    qryModelChangesNO_11: TAbmesFloatField;
    qryModelChangesNO_12: TAbmesFloatField;
    qryModelChangesNO_13: TAbmesFloatField;
    qryModelChangesNO_14: TAbmesFloatField;
    qryModelChangesNO_15: TAbmesFloatField;
    qryModelChangesNO_16: TAbmesFloatField;
    qryModelChangesNO_17: TAbmesFloatField;
    qryModelChangesNO_18: TAbmesFloatField;
    qryModelChangesNO_19: TAbmesFloatField;
    qryModelChangesNO_20: TAbmesFloatField;
    qryModelChangesNO_21: TAbmesFloatField;
    qryModelChangesNO_22: TAbmesFloatField;
    qryModelChangesNO_23: TAbmesFloatField;
    qryModelChangesNO_24: TAbmesFloatField;
    qryModelChangesNO_25: TAbmesFloatField;
    qryModelChangesNO_AS_TEXT: TAbmesWideStringField;
    qryModelChangesNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    prvPendingChangeCounts: TDataSetProvider;
    qryModelChangesNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    qryUpdMllStores: TAbmesSQLQuery;
    qryModelChangesIS_DIRECT_CHANGE: TAbmesFloatField;
    qryPendingChangeCountsPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    procedure prvMaterialListLineChangeBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvPendingChangeCountsBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
  private
    function GetMaxMllChangeNo(MllObjBranchCode, MllObjCode: Integer): Integer;
    function GetMllSetSql(MaterialListLines: OleVariant): string;
    function GetMllCount(MaterialListLines: OleVariant): Integer;
  protected
    procedure RequestMultipleChanges(
      MaterialListLines: OleVariant;
      OldProductCode, NewProductCode, OldStoreCode, NewStoreCode: Integer);

    procedure DoStoreMultipleChange(
      MaterialListLines: OleVariant;
      OldStoreCode, NewStoreCode: Integer);

    function GetLatestMllcTimestamp: TDateTime;
  end;

type
  IdmModelChangesProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmModelChangesProxy = class(TDBPooledDataModuleProxy, IdmModelChangesProxy)
  private
    class var FSingleton: TdmModelChangesProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmModelChanges>;
  strict protected
    property LockedInstance: ISmartLock<TdmModelChanges> read GetLockedInstance;
  public
    class property Singleton: TdmModelChangesProxy read FSingleton;

    procedure RequestMultipleChanges(
      MaterialListLines: OleVariant;
      OldProductCode, NewProductCode, OldStoreCode, NewStoreCode: Integer);

    procedure DoStoreMultipleChange(
      MaterialListLines: OleVariant;
      OldStoreCode, NewStoreCode: Integer);

    function GetLatestMllcTimestamp: TDateTime;
  end;

implementation

uses
  Variants, uUtils, uMaterialListLineChanges, uServerMessageIds,
  uSessionContext, uDBLoginContext;

{$R *.DFM}

{ TdmModelChangesProxy }

function TdmModelChangesProxy.GetLockedInstance: ISmartLock<TdmModelChanges>;
begin
  Result:= ISmartLock<TdmModelChanges>(inherited LockedInstance);
end;

function TdmModelChangesProxy.GetLatestMllcTimestamp: TDateTime;
begin
  Result:= LockedInstance.Value.GetLatestMllcTimestamp;
end;

procedure TdmModelChangesProxy.RequestMultipleChanges(
  MaterialListLines: OleVariant; OldProductCode, NewProductCode,
  OldStoreCode, NewStoreCode: Integer);
begin
  LockedInstance.Value.RequestMultipleChanges(
    MaterialListLines,
    OldProductCode,
    NewProductCode,
    OldStoreCode,
    NewStoreCode);
end;

procedure TdmModelChangesProxy.DoStoreMultipleChange(
  MaterialListLines: OleVariant;
  OldStoreCode, NewStoreCode: Integer);
begin
  LockedInstance.Value.DoStoreMultipleChange(
    MaterialListLines, OldStoreCode, NewStoreCode);
end;

{ TdmModelChanges }

function TdmModelChanges.GetMaxMllChangeNo(MllObjBranchCode,
  MllObjCode: Integer): Integer;
begin
  with qryGetMaxMllChangeNo do
    begin
      ParamByName('MLL_OBJECT_BRANCH_CODE').AsInteger:= MllObjBranchCode;
      ParamByName('MLL_OBJECT_CODE').AsInteger:= MllObjCode;
      Open;
      try
        Result:= qryGetMaxMllChangeNoMAX_MLL_CHANGE_NO.AsInteger;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmModelChanges.GetMllSetSql(MaterialListLines: OleVariant): string;
var
  i: Integer;
begin
  Assert(VarIsArray(MaterialListLines));

  Result:= '';
  for i:= VarArrayLowBound(MaterialListLines, 1) to VarArrayHighBound(MaterialListLines, 1) do
    begin
      Assert(VarIsArray(MaterialListLines[i]));
      Assert(VarArrayLowBound(MaterialListLines[i], 1) = 0);
      Assert(VarArrayHighBound(MaterialListLines[i], 1) = 1);

      Result:= Result + '(' + VarToStr(MaterialListLines[i][0]) + ', ' + VarToStr(MaterialListLines[i][1]) + '), ';
    end;  { for }

  if (Result <> '') then
    SetLength(Result, Length(Result) - 2);
end;

function TdmModelChanges.GetMllCount(MaterialListLines: OleVariant): Integer;
begin
  Result:= VarArrayLength(MaterialListLines);
end;

function TdmModelChanges.GetLatestMllcTimestamp: TDateTime;
begin
  qryGetLatestMllcTimestamp.Open;
  try
    Result:= qryGetLatestMllcTimestampLATEST_MLLC_TIMESTAMP.AsDateTime;
  finally
    qryGetLatestMllcTimestamp.Close;
  end;  { try }

  SessionContext.PreserveLastActivityDateTime;
end;

procedure TdmModelChanges.prvMaterialListLineChangeBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukInsert) then
    begin
      DeltaDS.FieldByName('MATERIAL_LIST_LINE_CHANGE_NO').NewValue:=
        1 +
        GetMaxMllChangeNo(
          GetFieldValue(DeltaDS.FieldByName('MLL_OBJECT_BRANCH_CODE')),
          GetFieldValue(DeltaDS.FieldByName('MLL_OBJECT_CODE')));

      DeltaDS.FieldByName('REQUEST_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
      DeltaDS.FieldByName('REQUEST_DATE').NewValue:= ContextDate;
      DeltaDS.FieldByName('REQUEST_TIME').NewValue:= ContextTime;
    end;  { if }

  if (UpdateKind = ukModify) then
    begin
      if not VarIsNullOrEmpty(DeltaDS.FieldByName('REPLY').NewValue) and
         (DeltaDS.FieldByName('REPLY').NewValue <> 0) then
        begin
          DeltaDS.FieldByName('MLL_CHANGE_REPLY_TYPE_CODE').NewValue:= DeltaDS.FieldByName('REPLY').NewValue;

          DeltaDS.FieldByName('REPLY_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
          DeltaDS.FieldByName('REPLY_DATE').NewValue:= ContextDate;
          DeltaDS.FieldByName('REPLY_TIME').NewValue:= ContextTime;

          if (not VarIsNullOrEmpty(DeltaDS.FieldByName('REPLY').NewValue)) and
             (VarToInt(DeltaDS.FieldByName('REPLY').NewValue) = MllChangeReplyTypeToInt(crtChangeAccepted)) then
            begin
              DeltaDS.FieldByName('REPLY_ACCEPT_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
              DeltaDS.FieldByName('REPLY_ACCEPT_DATE').NewValue:= ContextDate;
              DeltaDS.FieldByName('REPLY_ACCEPT_TIME').NewValue:= ContextTime;
            end;  { if }
        end;  { if }

      if not VarIsNullOrEmpty(DeltaDS.FieldByName('REPLY_ACCEPT').NewValue) and
         (DeltaDS.FieldByName('REPLY_ACCEPT').NewValue <> 0) then
        begin
          DeltaDS.FieldByName('REPLY_ACCEPT_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
          DeltaDS.FieldByName('REPLY_ACCEPT_DATE').NewValue:= ContextDate;
          DeltaDS.FieldByName('REPLY_ACCEPT_TIME').NewValue:= ContextTime;
        end;  { if }
    end;  { if }
end;

procedure TdmModelChanges.prvPendingChangeCountsBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  SessionContext.PreserveLastActivityDateTime;
end;

procedure TdmModelChanges.RequestMultipleChanges(
  MaterialListLines: OleVariant; OldProductCode, NewProductCode,
  OldStoreCode, NewStoreCode: Integer);
begin
  DBDataModule.StartTransaction;
  try
    with qryInsMllChanges do
      begin
        MacroByName('MLL_SET').AsString:= GetMllSetSql(MaterialListLines);
        MacroByName('OLD_STORE_CODE').AsInteger:= OldStoreCode;
        MacroByName('NEW_STORE_CODE').AsInteger:= NewStoreCode;
        MacroByName('OLD_PRODUCT_CODE').AsInteger:= OldProductCode;
        MacroByName('NEW_PRODUCT_CODE').AsInteger:= NewProductCode;
        ExecSQL;

        if (RowsAffected <> GetMllCount(MaterialListLines)) then
          raise Exception.Create(SRowsChangedByOtherUserId);
      end;  { with }

    DBDataModule.Commit;
  except
    DBDataModule.Rollback;
    raise;
  end;  { try }
end;

procedure TdmModelChanges.DoStoreMultipleChange(MaterialListLines: OleVariant; OldStoreCode, NewStoreCode: Integer);
begin
  DBDataModule.StartTransaction;
  try
    with qryUpdMllStores do
      begin
        MacroByName('MLL_SET').AsString:= GetMllSetSql(MaterialListLines);
        MacroByName('OLD_STORE_CODE').AsInteger:= OldStoreCode;
        MacroByName('NEW_STORE_CODE').AsInteger:= NewStoreCode;
        ExecSQL;

        if (RowsAffected <> GetMllCount(MaterialListLines)) then
          raise Exception.Create(SRowsChangedByOtherUserId);
      end;  { with }

    DBDataModule.Commit;
  except
    DBDataModule.Rollback;
    raise;
  end;  { try }
end;

initialization
  TdmModelChangesProxy.FSingleton:= TdmModelChangesProxy.Create(TdmModelChanges);

finalization
  FreeAndNil(TdmModelChangesProxy.FSingleton);
end.
