unit dDeficit;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields,
  dPooledDataModule, dDBPooledDataModule, uPeriods, WideStrings, FMTBcd,
  SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmDeficit = class(TDBPooledDataModule)
    qryUncoveredPSDSingle: TAbmesSQLQuery;
    prvUncoveredPSDSingle: TDataSetProvider;
    qryGetLastPSDDate: TAbmesSQLQuery;
    qryGetLastPSDDateMAX_PSD_DATE: TAbmesSQLTimeStampField;
    qryQuantityDeficit: TAbmesSQLQuery;
    prvQuantityDeficit: TDataSetProvider;
    qryUncoveredPSDSinglePLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    qryUncoveredPSDSinglePLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    qryUncoveredPSDSinglePSD_ID: TAbmesWideStringField;
    qryUncoveredPSDSingleCOMPLETED_QUANTITY: TAbmesFloatField;
    qryUncoveredPSDSingleCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryUncoveredPSDSingleINCOMPLETED_QUANTITY: TAbmesFloatField;
    qryUncoveredPSDSingleINCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryUncoveredPSDSinglePLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField;
    qryUncoveredPSDSinglePLANNED_STORE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qryUncoveredPSDSingleBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleBND_PROCESS_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleBND_PROCESS_OBJECT_CLASS_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleBND_PROCESS_ABBREV: TAbmesWideStringField;
    qryUncoveredPSDSinglePROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryUncoveredPSDSingleIN_OUT: TAbmesFloatField;
    qryUncoveredPSDSingleSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryUncoveredPSDSingleSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField;
    qryUncoveredPSDSingleSTORE_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleSTORE_NAME: TAbmesWideStringField;
    qryUncoveredPSDSinglePRODUCT_CODE: TAbmesFloatField;
    qryUncoveredPSDSinglePRODUCT_NAME: TAbmesWideStringField;
    qryUncoveredPSDSinglePRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryUncoveredPSDSinglePRODUCT_NO: TAbmesFloatField;
    qryUncoveredPSDSingleMEASURE_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleHAS_DOCUMENTATION: TAbmesFloatField;
    qryUncoveredPSDSingleDOC_BRANCH_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleDOC_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleMEASURE_ABBREV: TAbmesWideStringField;
    qryUncoveredPSDSingleACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryUncoveredPSDSingleTOTAL_PRICE_SC: TAbmesFloatField;
    qryUncoveredPSDSingleIS_DONE: TAbmesFloatField;
    qryUncoveredPSDSingleIS_ANNULED: TAbmesFloatField;
    qryUncoveredPSDSingleDETAIL_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleDETAIL_NAME: TAbmesWideStringField;
    qryUncoveredPSDSingleDETAIL_NO: TAbmesFloatField;
    qryUncoveredPSDSingleDETAIL_HAS_DOCUMENTATION: TAbmesFloatField;
    qryUncoveredPSDSingleDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleDETAIL_DOC_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleSALE_PRODUCT_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleSALE_PRODUCT_NAME: TAbmesWideStringField;
    qryUncoveredPSDSingleSALE_PRODUCT_NO: TAbmesFloatField;
    qryUncoveredPSDSingleSALE_PRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qryUncoveredPSDSingleSALE_PRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleSALE_PRODUCT_DOC_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryUncoveredPSDSingleENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField;
    qryUncoveredPSDSingleIS_MODEL_LIMITING: TAbmesFloatField;
    qryUncoveredPSDSingleMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleMLL_OBJECT_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField;
    qryUncoveredPSDSingleMLL_CHANGE_STATUS: TAbmesFloatField;
    qryUncoveredPSDSingleCREATE_DATE: TAbmesSQLTimeStampField;
    qryUncoveredPSDSingleCREATE_TIME: TAbmesSQLTimeStampField;
    qryUncoveredPSDSingleCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleCREATE_EMPLOYEE_NAME: TAbmesWideStringField;
    qryUncoveredPSDSingleCHANGE_DATE: TAbmesSQLTimeStampField;
    qryUncoveredPSDSingleCHANGE_TIME: TAbmesSQLTimeStampField;
    qryUncoveredPSDSingleCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleCHANGE_EMPLOYEE_NAME: TAbmesWideStringField;
    qryUncoveredPSDSingleCLOSE_DATE: TAbmesSQLTimeStampField;
    qryUncoveredPSDSingleCLOSE_TIME: TAbmesSQLTimeStampField;
    qryUncoveredPSDSingleCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleCLOSE_EMPLOYEE_NAME: TAbmesWideStringField;
    qryUncoveredPSDSingleANNUL_DATE: TAbmesSQLTimeStampField;
    qryUncoveredPSDSingleANNUL_TIME: TAbmesSQLTimeStampField;
    qryUncoveredPSDSingleANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryUncoveredPSDSingleANNUL_EMPLOYEE_NAME: TAbmesWideStringField;
    qryUncoveredPSDSingleMIN_QUANTITY: TAbmesFloatField;
    qryUncoveredPSDSingleMIN_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryUncoveredPSDSinglePRIORITY_CODE: TAbmesFloatField;
    qryUncoveredPSDSinglePRIORITY_FULL_NAME: TAbmesWideStringField;
    qryUncoveredPSDSinglePRIORITY_NO: TAbmesFloatField;
    qryPrepareUncoveredPSD: TAbmesSQLQuery;
    qryUnprepareUncoveredPSD: TAbmesSQLQuery;
    qryUncoveredPSDSingleRFML_BND_OBJECT_ID: TAbmesWideStringField;
    qryUncoveredPSDSingleRFML_PARTNER_SHORT_NAME: TAbmesWideStringField;
    qryUncoveredPSDSingleRFML_QUANTITY: TAbmesFloatField;
    qryUncoveredPSDSingleRFML_DOCUMENT_IDENTIFIER: TAbmesWideStringField;
    qryUncoveredPSDSingleRFML_DOCUMENT_DATE: TAbmesSQLTimeStampField;
    qryPrepareProductHistory: TAbmesSQLQuery;
    qryUnprepareProductHistory: TAbmesSQLQuery;
    qryUncoveredPSDSingleUNCOVERED_QUANTITY: TAbmesFloatField;
    qryUncoveredPSDSingleUNCOVERED_ACCOUNT_QUANTITY: TAbmesFloatField;
    procedure qryUncoveredPSDSingleBeforeOpen(DataSet: TDataSet);
    procedure qryUncoveredPSDSingleAfterClose(DataSet: TDataSet);
    procedure qryQuantityDeficitBeforeOpen(DataSet: TDataSet);
    procedure qryQuantityDeficitAfterClose(DataSet: TDataSet);
    procedure prvQuantityDeficitGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
  private
    function GetLastPSDDate: TDateTime;
  end;

type
  IdmDeficitProxy = interface(IDBPooledDataModuleProxy)
    function GetLastPSDDate: TDateTime;
  end;

type
  TdmDeficitProxy = class(TDBPooledDataModuleProxy, IdmDeficitProxy)
  private
    class var FSingleton: TdmDeficitProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmDeficit>;
  strict protected
    property LockedInstance: ISmartLock<TdmDeficit> read GetLockedInstance;
  public
    class property Singleton: TdmDeficitProxy read FSingleton;

    function GetLastPSDDate: TDateTime;
  end;

implementation

uses
  Variants, Math, uQuantityDeficitFieldNames, uTreeNodes,
  uSvrUtils, uDBPooledDataModuleHelper, uUtils;

{$R *.DFM}

const
  SFloatFieldDisplayFormat = ',0.0';
  StringFieldsSize = 100;
  MinColumnsCount = 2;
  MaxColumnsCount = 15;

{ TdmDeficitProxy }

function TdmDeficitProxy.GetLockedInstance: ISmartLock<TdmDeficit>;
begin
  Result:= ISmartLock<TdmDeficit>(inherited LockedInstance);
end;

function TdmDeficitProxy.GetLastPSDDate: TDateTime;
begin
  Result:= LockedInstance.Value.GetLastPSDDate;
end;

{ TdmDeficit }

function TdmDeficit.GetLastPSDDate: TDateTime;
begin
  with qryGetLastPSDDate do
    begin
      Open;
      try
        if eof then
          Result:= ContextDate
        else
          Result:= FieldByName('MAX_PSD_DATE').AsDateTime;
      finally
        Close;
      end;
    end;
end;

procedure TdmDeficit.qryUncoveredPSDSingleBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrStore.SetStoreDealsQueryBndProcessMacros(
    (DataSet as TAbmesSQLQuery),
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('BND_PROCESS').AsString);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'));

  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'));

  with qryPrepareUncoveredPSD do
    begin
      ParamByName('MAX_PSD_TYPE_CODE').AsFloat:=
        qryUncoveredPSDSingle.CustomParams.ParamByName('INCLUDE_PL_SECOND_LEVEL').AsFloat + 1;

      ParamByName('START_PERIOD_DATE').AsDateTime:=
        qryUncoveredPSDSingle.CustomParams.ParamByName('BEGIN_DATE').AsDateTime;
      ParamByName('END_PERIOD_DATE').AsDateTime:=
        IncDate(
          qryUncoveredPSDSingle.CustomParams.ParamByName('BEGIN_DATE').AsDateTime,
          GetPeriodValue(qryUncoveredPSDSingle.CustomParams.ParamByName('TIME_UNIT_CODE').AsInteger),
          qryUncoveredPSDSingle.CustomParams.ParamByName('TIME_UNIT_COUNT').AsInteger
        );
      ParamByName('DATE_UNIT_CODE').AsFloat:=
        qryUncoveredPSDSingle.CustomParams.ParamByName('TIME_UNIT_CODE').AsFloat;
      ParamByName('IS_TOWARDS_RESERVE').AsFloat:=
        qryUncoveredPSDSingle.CustomParams.ParamByName('IS_TOWARDS_RESERVE').AsFloat;

      ExecSQL;
    end;
end;

procedure TdmDeficit.qryUncoveredPSDSingleAfterClose(DataSet: TDataSet);
begin
  inherited;
  qryUnprepareUncoveredPSD.ExecSQL;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes;

  SvrStore.SetStoreDealsQueryBndProcessMacros(
    (DataSet as TAbmesSQLQuery),
    '');
end;

procedure TdmDeficit.qryQuantityDeficitBeforeOpen(DataSet: TDataSet);

  function FieldsByDateUnitsAsString: string;
  var
    TimeUnitCount: Integer;
    i: Integer;
  begin
    TimeUnitCount:= qryQuantityDeficit.ParamByName('TIME_UNIT_COUNT').AsInteger;
    Result:= '';
    for i:= 1 to TimeUnitCount + 1 do
      begin
        Result:=
          Result +
          Format(
            '  Min(Decode(t.THE_NO, %d, t.QUANTITY_IN)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.QUANTITY_OUT)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.QUANTITY_IN * p.ACCOUNT_MEASURE_COEF)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.QUANTITY_OUT * p.ACCOUNT_MEASURE_COEF)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.QUANTITY)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.QUANTITY_RSV)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.QUANTITY * p.ACCOUNT_MEASURE_COEF)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.QUANTITY_RSV * p.ACCOUNT_MEASURE_COEF)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.PRICE)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.PRICE_RSV)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.DEFICIT_QUANTITY)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.DEFICIT_QUANTITY_RSV)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.DEFICIT_QUANTITY * p.ACCOUNT_MEASURE_COEF)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.DEFICIT_QUANTITY_RSV * p.ACCOUNT_MEASURE_COEF)) as %s_%d,' +
            '  Cast(null as Number) as AGGR_%s_%d,' +
            '  Cast(null as Number) as AGGR_%s_%d,' +
            '  Cast(null as Number) as AGGR_%s_%d,' +
            '  Cast(null as Number) as AGGR_%s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.DEFICIT_PRICE)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.DEFICIT_PRICE_RSV)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.MIN_QUANTITY)) as %s_%d,' +
            '  Min(Decode(t.THE_NO, %d, t.MIN_QUANTITY * p.ACCOUNT_MEASURE_COEF)) as %s_%d',
            [ i, dQuantityInFieldName, i,
              i, dQuantityOutFieldName, i,
              i, dAccountQuantityInFieldName, i,
              i, dAccountQuantityOutFieldName, i,
              i, dQuantityFieldName, i,
              i, dQuantityTowardsReserveFieldName, i,
              i, dAccountQuantityFieldName, i,
              i, dAccountQuantityTowardsReserveFieldName, i,
              i, dQuantityPriceFieldName, i,
              i, dQuantityPriceTowardsReserveFieldName, i,
              i, dDeficitFieldName, i,
              i, dDeficitTowardsReserveFieldName, i,
              i, dAccountDeficitFieldName, i,
              i, dAccountDeficitTowardsReserveFieldName, i,
              dDeficitFieldName, i,
              dDeficitTowardsReserveFieldName, i,
              dAccountDeficitFieldName, i,
              dAccountDeficitTowardsReserveFieldName, i,

              i, dDeficitPriceFieldName, i,
              i, dDeficitPriceTowardsReserveFieldName, i,
              i, dProductReserveFieldName, i,
              i, dAccountProductReserveFieldName, i
            ]
          );

        if (i < TimeUnitCount + 1) then
          Result:= Result + ',';
      end;
  end;
  
begin
  inherited;

  qryQuantityDeficit.MacroByName('FIELDS_BY_DATE_UNITS_SQL').AsString:= FieldsByDateUnitsAsString;

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'));
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'));

  with qryPrepareProductHistory do
    begin
      ParamByName('BEGIN_DATE').Assign(qryQuantityDeficit.CustomParams.ParamByName('BEGIN_DATE'));
      ParamByName('TIME_UNIT_CODE').Assign(qryQuantityDeficit.CustomParams.ParamByName('TIME_UNIT_CODE'));
      ParamByName('TIME_UNIT_COUNT').Assign(qryQuantityDeficit.ParamByName('TIME_UNIT_COUNT'));
      ParamByName('MAX_PSD_TYPE_CODE').Assign(qryQuantityDeficit.CustomParams.ParamByName('MAX_PSD_TYPE_CODE'));

      ExecSQL;
    end;  { with }
end;

procedure TdmDeficit.prvQuantityDeficitGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  TimeUnitCount: Integer;
  AggrDeficit: Real;
  AggrDeficitRsv: Real;
  AggrAccountDeficit: Real;
  AggrAccountDeficitRsv: Real;
begin
  inherited;

  TimeUnitCount:= qryQuantityDeficit.ParamByName('TIME_UNIT_COUNT').AsInteger;

  DataSet.PreserveRecNo/
    DataSet.ForEach/
      procedure
      var
        i: Integer;
      begin
        AggrDeficit:= 0;
        AggrDeficitRsv:= 0;
        AggrAccountDeficit:= 0;
        AggrAccountDeficitRsv:= 0;

        for i:= 1 to TimeUnitCount + 1 do
          begin
            AggrDeficit:= AggrDeficit + DataSet.FieldByName(dDeficitFieldName + '_' + i.ToString()).AsFloat;
            AggrDeficitRsv:= AggrDeficitRsv + DataSet.FieldByName(dDeficitTowardsReserveFieldName + '_' + i.ToString()).AsFloat;
            AggrAccountDeficit:= AggrAccountDeficit + DataSet.FieldByName(dAccountDeficitFieldName + '_' + i.ToString()).AsFloat;
            AggrAccountDeficitRsv:= AggrAccountDeficitRsv + DataSet.FieldByName(dAccountDeficitTowardsReserveFieldName + '_' + i.ToString()).AsFloat;

            if (AggrDeficit < 0) or (AggrDeficitRsv < 0) or (AggrAccountDeficit < 0) or (AggrAccountDeficitRsv < 0) then
              DataSet.SafeEdit/
                procedure begin
                  DataSet.FieldByName(dAggrPrefix + dDeficitFieldName + '_' + i.ToString()).AsVarFloat:= AggrDeficit;
                  DataSet.FieldByName(dAggrPrefix + dDeficitTowardsReserveFieldName + '_' + i.ToString()).AsVarFloat:= AggrDeficitRsv;
                  DataSet.FieldByName(dAggrPrefix + dAccountDeficitFieldName + '_' + i.ToString()).AsVarFloat:= AggrAccountDeficit;
                  DataSet.FieldByName(dAggrPrefix + dAccountDeficitTowardsReserveFieldName + '_' + i.ToString()).AsVarFloat:= AggrAccountDeficitRsv;
                end;
          end;
      end;
end;

procedure TdmDeficit.qryQuantityDeficitAfterClose(DataSet: TDataSet);
begin
  inherited;
  qryUnprepareProductHistory.ExecSQL;

  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes;
end;

initialization
  TdmDeficitProxy.FSingleton:= TdmDeficitProxy.Create(TdmDeficit);

finalization
  FreeAndNil(TdmDeficitProxy.FSingleton);
end.
