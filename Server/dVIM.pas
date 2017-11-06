unit dVIM;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  DBXDevartOracle, uSmartLock;

type
  TdmVIM = class(TDBPooledDataModule)
    qryGetPeriodFieldNames: TAbmesSQLQuery;
    qryGetPeriodFieldNamesTABLE_NAME: TAbmesWideStringField;
    qryGetPeriodFieldNamesKEY_FIELD_NAME: TAbmesWideStringField;
    qryGetPeriodFieldNamesYEAR_UNIT_NO_NAME: TAbmesWideStringField;
    prvVIM: TDataSetProvider;
    qryGetRounder: TAbmesSQLQuery;
    qryGetRounderROUNDER: TAbmesFloatField;
    qryGetRounderROUNDER_NAME: TAbmesWideStringField;
    qryGetRounderROUNDER_ABBREV: TAbmesWideStringField;
    qryCheckProductDescendants: TAbmesSQLQuery;
    qryCheckProductDescendantsPRODUCT_CODE: TAbmesFloatField;
    qryVIM: TAbmesSQLQuery;
    qryVIMTHE_DATE: TAbmesSQLTimeStampField;
    qryVIMTHE_YEAR_DATE: TAbmesSQLTimeStampField;
    qryVIMTHE_NO: TAbmesFloatField;
    qryVIMORDER_NO: TAbmesFloatField;
    qryVIMWORKDAYS: TAbmesFloatField;
    qryVIMIS_TODAY_SECOND_RECORD: TAbmesFloatField;
    qryVIMQUANTITY_OTCH: TAbmesFloatField;
    qryVIMQUANTITY_IN_OTCH: TAbmesFloatField;
    qryVIMQUANTITY_OUT_OTCH: TAbmesFloatField;
    qryVIMQUANTITY_OTCH_PRICE: TAbmesFloatField;
    qryVIMQUANTITY_IN_OTCH_PRICE: TAbmesFloatField;
    qryVIMQUANTITY_OUT_OTCH_PRICE: TAbmesFloatField;
    qryVIMQUANTITY_PLAN: TAbmesFloatField;
    qryVIMQUANTITY_IN_PLAN: TAbmesFloatField;
    qryVIMQUANTITY_OUT_PLAN: TAbmesFloatField;
    qryVIMQUANTITY_PLAN_PRICE: TAbmesFloatField;
    qryVIMQUANTITY_IN_PLAN_PRICE: TAbmesFloatField;
    qryVIMQUANTITY_OUT_PLAN_PRICE: TAbmesFloatField;
    qryVIMNEGATIVE_QUANTITY: TAbmesFloatField;
    qryVIMNEGATIVE_PRICE: TAbmesFloatField;
    qryVIMQUANTITY_DEFICIT: TAbmesFloatField;
    qryVIMQUANTITY_DEFICIT_PRICE: TAbmesFloatField;
    qryVIMCLEAR_QUANTITY: TAbmesFloatField;
    qryVIMCLEAR_PRICE: TAbmesFloatField;
    qryVIMQUANTITY_OTCH_RESERVE: TAbmesFloatField;
    qryVIMQUANTITY_OTCH_PRICE_RESERVE: TAbmesFloatField;
    qryVIMQUANTITY_PLAN_RESERVE: TAbmesFloatField;
    qryVIMQUANTITY_PLAN_PRICE_RESERVE: TAbmesFloatField;
    qryVIMNEGATIVE_QUANTITY_RESERVE: TAbmesFloatField;
    qryVIMNEGATIVE_PRICE_RESERVE: TAbmesFloatField;
    qryVIMQUANTITY_DEFICIT_RESERVE: TAbmesFloatField;
    qryVIMQUANTITY_DEFICIT_PRICE_RESERVE: TAbmesFloatField;
    qryVIMNEGATIVE_QTY_OTCH_RESERVE: TAbmesFloatField;
    qryVIMNEGATIVE_OTCH_PRICE_RESERVE: TAbmesFloatField;
    qryVIMMIN_QUANTITY: TAbmesFloatField;
    qryVIMMIN_PRICE: TAbmesFloatField;
    qryVIMPASSIVE_QUANTITY: TAbmesFloatField;
    qryVIMPASSIVE_QUANTITY_PRICE: TAbmesFloatField;
    qryGetFilteredProductsMeasureStuff: TAbmesSQLQuery;
    qryGetFilteredProductsMeasureStuffPRODUCTS_HAVE_SAME_MEASURE: TAbmesFloatField;
    qryGetFilteredProductsMeasureStuffPRODUCTS_HAVE_SAME_ACC_MEASURE: TAbmesFloatField;
    qryGetFilteredProductsMeasureStuffMEASURE_ABBREV: TAbmesWideStringField;
    qryGetFilteredProductsMeasureStuffACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryVIMACC_QUANTITY_OTCH: TAbmesFloatField;
    qryVIMACC_QUANTITY_IN_OTCH: TAbmesFloatField;
    qryVIMACC_QUANTITY_OUT_OTCH: TAbmesFloatField;
    qryVIMACC_QUANTITY_OTCH_RESERVE: TAbmesFloatField;
    qryVIMACC_NEGATIVE_QTY_OTCH_RESERVE: TAbmesFloatField;
    qryVIMACC_QUANTITY_PLAN: TAbmesFloatField;
    qryVIMACC_NEGATIVE_QUANTITY: TAbmesFloatField;
    qryVIMACC_QUANTITY_IN_PLAN: TAbmesFloatField;
    qryVIMACC_QUANTITY_OUT_PLAN: TAbmesFloatField;
    qryVIMACC_QUANTITY_PLAN_RESERVE: TAbmesFloatField;
    qryVIMACC_NEGATIVE_QUANTITY_RESERVE: TAbmesFloatField;
    qryVIMACC_PASSIVE_QUANTITY: TAbmesFloatField;
    qryVIMACC_QUANTITY_DEFICIT: TAbmesFloatField;
    qryVIMACC_QUANTITY_DEFICIT_RESERVE: TAbmesFloatField;
    qryVIMACC_MIN_QUANTITY: TAbmesFloatField;
    qryVIMACC_CLEAR_QUANTITY: TAbmesFloatField;
    qryPrepareProductHistory: TAbmesSQLQuery;
    qryUnprepareProductHistory: TAbmesSQLQuery;
    procedure prvVIMAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvVIMGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure qryVIMBeforeOpen(DataSet: TDataSet);
    procedure qryVIMAfterClose(DataSet: TDataSet);
  private
    FMinQuantity: Real;
    FMaxQuantity: Real;
    FMinAccQuantity: Real;
    FMaxAccQuantity: Real;
    FMinPrice: Real;
    FMaxPrice: Real;
    FFirstTodayOrderNo: Integer;
    FFilteredProductsHaveSameMeasure: Boolean;
    FFilteredProductsHaveSameAccountMeasure: Boolean;
    FMeasureAbbrev: string;
    FAccountMeasureAbbrev: string;
    procedure GetFilteredProductsHaveSameMeasures;
  protected
    procedure GetRounder(Value: Double; out Rounder: Double; out RounderName: string; out RounderAbbrev: string );
  end;

type
  IdmVIMProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmVIMProxy = class(TDBPooledDataModuleProxy, IdmVIMProxy)
  private
    class var FSingleton: TdmVIMProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmVIM>;
  strict protected
    property LockedInstance: ISmartLock<TdmVIM> read GetLockedInstance;
  public
    class property Singleton: TdmVIMProxy read FSingleton;

    procedure GetRounder(
      Value: Double; out Rounder: Double; out RounderName: string; out RounderAbbrev: string);
  end;

implementation

uses
  Variants, Math, uUtils, uTreeNodes, uDealTypes,
  uSvrUtils, uDBPooledDataModuleHelper;

{$R *.DFM}

{ TdmVIMProxy }

function TdmVIMProxy.GetLockedInstance: ISmartLock<TdmVIM>;
begin
  Result:= ISmartLock<TdmVIM>(inherited LockedInstance);
end;

procedure TdmVIMProxy.GetRounder(Value: Double; out Rounder: Double; out RounderName: string; out RounderAbbrev: string);
begin
  LockedInstance.Value.GetRounder(Value, Rounder, RounderName, RounderAbbrev);
end;

{ TdmVIM }

procedure TdmVIM.GetRounder(Value: Double; out Rounder: Double; out RounderName: string; out RounderAbbrev: string);
begin
  with qryGetRounder do
    begin
      ParamByName('VALUE').AsFloat:= Value;
      Open;
      try
        Rounder:= FieldByName('ROUNDER').AsFloat;
        RounderName:= FieldByName('ROUNDER_NAME').AsString;
        RounderAbbrev:= FieldByName('ROUNDER_ABBREV').AsString;
      finally
        Close;
      end;
    end;
end;

procedure TdmVIM.GetFilteredProductsHaveSameMeasures;
begin
  qryGetFilteredProductsMeasureStuff.Open;
  try
    FFilteredProductsHaveSameMeasure:= qryGetFilteredProductsMeasureStuffPRODUCTS_HAVE_SAME_MEASURE.AsBoolean;
    FFilteredProductsHaveSameAccountMeasure:= qryGetFilteredProductsMeasureStuffPRODUCTS_HAVE_SAME_ACC_MEASURE.AsBoolean;
    FMeasureAbbrev:= qryGetFilteredProductsMeasureStuffMEASURE_ABBREV.AsString;
    FAccountMeasureAbbrev:= qryGetFilteredProductsMeasureStuffACCOUNT_MEASURE_ABBREV.AsString;
  finally
    qryGetFilteredProductsMeasureStuff.Close;
  end;  { try }
end;

procedure TdmVIM.prvVIMAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
var
  Values: Variant;
  Measures: Variant;
begin
  inherited;
  Values:= VarArrayOf([FMinQuantity, FMaxQuantity, FMinAccQuantity, FMaxAccQuantity, FMinPrice, FMaxPrice, FFirstTodayOrderNo]);
  Measures:=
    VarArrayOf([
      FFilteredProductsHaveSameMeasure,
      FFilteredProductsHaveSameAccountMeasure,
      FMeasureAbbrev,
      FAccountMeasureAbbrev
    ]);

  OwnerData:= VarArrayOf([Values, Measures]);
end;

procedure TdmVIM.prvVIMGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  b: TBookmark;
  OrderNo: Integer;
begin
  inherited;

  FMinQuantity:= 0;
  FMaxQuantity:= 0;
  FMinAccQuantity:= 0;
  FMaxAccQuantity:= 0;
  FMinPrice:= 0;
  FMaxPrice:= 0;
  FFirstTodayOrderNo:= -1;
  OrderNo:= 1;

  b:= DataSet.Bookmark;
  DataSet.First;
  try
    with DataSet do
      while not Eof do
        begin
          CheckEditMode(DataSet);
          FieldByName('ORDER_NO').AsInteger:= OrderNo;
          Post;

          FMaxPrice:= Max(FMaxPrice, FieldByName('QUANTITY_OTCH_PRICE').AsFloat);
          FMaxPrice:= Max(FMaxPrice, FieldByName('QUANTITY_IN_OTCH_PRICE').AsFloat);
          FMaxPrice:= Max(FMaxPrice, FieldByName('QUANTITY_PLAN_PRICE').AsFloat);
          FMaxPrice:= Max(FMaxPrice, FieldByName('QUANTITY_IN_PLAN_PRICE').AsFloat);
          FMaxPrice:= Max(FMaxPrice, FieldByName('QUANTITY_OTCH_PRICE_RESERVE').AsFloat);
          FMaxPrice:= Max(FMaxPrice, FieldByName('QUANTITY_PLAN_PRICE_RESERVE').AsFloat);
          FMaxPrice:= Max(FMaxPrice, FieldByName('MIN_PRICE').AsFloat);

          FMaxQuantity:= Max(FMaxQuantity, FieldByName('QUANTITY_OTCH').AsFloat);
          FMaxQuantity:= Max(FMaxQuantity, FieldByName('QUANTITY_IN_OTCH').AsFloat);
          FMaxQuantity:= Max(FMaxQuantity, FieldByName('QUANTITY_PLAN').AsFloat);
          FMaxQuantity:= Max(FMaxQuantity, FieldByName('QUANTITY_IN_PLAN').AsFloat);
          FMaxQuantity:= Max(FMaxQuantity, FieldByName('QUANTITY_OTCH_RESERVE').AsFloat);
          FMaxQuantity:= Max(FMaxQuantity, FieldByName('QUANTITY_PLAN_RESERVE').AsFloat);
          FMaxQuantity:= Max(FMaxQuantity, FieldByName('MIN_QUANTITY').AsFloat);

          FMaxAccQuantity:= Max(FMaxAccQuantity, FieldByName('ACC_QUANTITY_OTCH').AsFloat);
          FMaxAccQuantity:= Max(FMaxAccQuantity, FieldByName('ACC_QUANTITY_IN_OTCH').AsFloat);
          FMaxAccQuantity:= Max(FMaxAccQuantity, FieldByName('ACC_QUANTITY_PLAN').AsFloat);
          FMaxAccQuantity:= Max(FMaxAccQuantity, FieldByName('ACC_QUANTITY_IN_PLAN').AsFloat);
          FMaxAccQuantity:= Max(FMaxAccQuantity, FieldByName('ACC_QUANTITY_OTCH_RESERVE').AsFloat);
          FMaxAccQuantity:= Max(FMaxAccQuantity, FieldByName('ACC_QUANTITY_PLAN_RESERVE').AsFloat);
          FMaxAccQuantity:= Max(FMaxAccQuantity, FieldByName('ACC_MIN_QUANTITY').AsFloat);

          FMinPrice:= Min(FMinPrice,  FieldByName('QUANTITY_DEFICIT_PRICE').AsFloat);
          FMinPrice:= Min(FMinPrice,  FieldByName('NEGATIVE_PRICE').AsFloat);
          FMinPrice:= Min(FMinPrice, -FieldByName('QUANTITY_OUT_OTCH_PRICE').AsFloat);
          FMinPrice:= Min(FMinPrice, -FieldByName('QUANTITY_OUT_PLAN_PRICE').AsFloat);
          FMinPrice:= Min(FMinPrice,  FieldByName('QUANTITY_DEFICIT_PRICE_RESERVE').AsFloat);
          FMinPrice:= Min(FMinPrice,  FieldByName('NEGATIVE_PRICE_RESERVE').AsFloat);
          FMinPrice:= Min(FMinPrice,  FieldByName('NEGATIVE_OTCH_PRICE_RESERVE').AsFloat);

          FMinQuantity:= Min(FMinQuantity, FieldByName('QUANTITY_DEFICIT').AsFloat);
          FMinQuantity:= Min(FMinQuantity,  FieldByName('NEGATIVE_QUANTITY').AsFloat);
          FMinQuantity:= Min(FMinQuantity, -FieldByName('QUANTITY_OUT_PLAN').AsFloat);
          FMinQuantity:= Min(FMinQuantity, -FieldByName('QUANTITY_OUT_OTCH').AsFloat);
          FMinQuantity:= Min(FMinQuantity, FieldByName('QUANTITY_DEFICIT_RESERVE').AsFloat);
          FMinQuantity:= Min(FMinQuantity,  FieldByName('NEGATIVE_QUANTITY_RESERVE').AsFloat);
          FMinQuantity:= Min(FMinQuantity,  FieldByName('NEGATIVE_QTY_OTCH_RESERVE').AsFloat);

          FMinAccQuantity:= Min(FMinAccQuantity, FieldByName('ACC_QUANTITY_DEFICIT').AsFloat);
          FMinAccQuantity:= Min(FMinAccQuantity,  FieldByName('ACC_NEGATIVE_QUANTITY').AsFloat);
          FMinAccQuantity:= Min(FMinAccQuantity, -FieldByName('ACC_QUANTITY_OUT_PLAN').AsFloat);
          FMinAccQuantity:= Min(FMinAccQuantity, -FieldByName('ACC_QUANTITY_OUT_OTCH').AsFloat);
          FMinAccQuantity:= Min(FMinAccQuantity, FieldByName('ACC_QUANTITY_DEFICIT_RESERVE').AsFloat);
          FMinAccQuantity:= Min(FMinAccQuantity,  FieldByName('ACC_NEGATIVE_QUANTITY_RESERVE').AsFloat);
          FMinAccQuantity:= Min(FMinAccQuantity,  FieldByName('ACC_NEGATIVE_QTY_OTCH_RESERVE').AsFloat);

          if (FieldByName('IS_TODAY_SECOND_RECORD').AsInteger = 1) then
            FFirstTodayOrderNo:= OrderNo - 1;

          Inc(OrderNo);

          Next;
        end;

  finally
    DataSet.Bookmark:= b;
  end;
end;

procedure TdmVIM.qryVIMBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  qryGetPeriodFieldNames.ParamByName('TIME_UNIT_CODE').Assign(qryVIM.ParamByName('TIME_UNIT_CODE'));
  qryGetPeriodFieldNames.Open;
  try
    with qryVIM.Macros do
      begin
        ParamByName('THE_X_DATES').AsString:= qryGetPeriodFieldNamesTABLE_NAME.AsString;
        ParamByName('THE_X_DATE').AsString:= qryGetPeriodFieldNamesKEY_FIELD_NAME.AsString;
        ParamByName('YEAR_UNIT_NO').AsString:= qryGetPeriodFieldNamesYEAR_UNIT_NO_NAME.AsString;
      end;

  finally
    qryGetPeriodFieldNames.Close;
  end;  { try }

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'));
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'));

  GetFilteredProductsHaveSameMeasures;

  with qryPrepareProductHistory do
    begin
      if qryVIM.CustomParams.ParamByName('INCLUDE_PLANNED_SECOND_LEVEL').AsBoolean then
        ParamByName('MAX_PLANNED_STORE_DEAL_TYPE_CODE').AsInteger:= psdtFake
      else
        ParamByName('MAX_PLANNED_STORE_DEAL_TYPE_CODE').AsInteger:= psdtNormal;

      ParamByName('BEGIN_DATE').Assign(qryVIM.ParamByName('BEGIN_DATE'));
      ParamByName('TIME_UNIT_CODE').Assign(qryVIM.ParamByName('TIME_UNIT_CODE'));
      ParamByName('TIME_UNIT_COUNT').Assign(qryVIM.ParamByName('TIME_UNIT_COUNT'));

      ExecSQL;
    end;
end;

procedure TdmVIM.qryVIMAfterClose(DataSet: TDataSet);
begin
  inherited;
  qryUnprepareProductHistory.ExecSQL;

  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes;
end;

initialization
  TdmVIMProxy.FSingleton:= TdmVIMProxy.Create(TdmVIM);

finalization
  FreeAndNil(TdmVIMProxy.FSingleton);
end.
