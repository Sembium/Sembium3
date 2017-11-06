unit dCapacity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  dDBPooledDataModule, dPooledDataModule,
  Provider, DB, AbmesSQLQuery, AbmesFields, DBClient, WideStrings,
  FMTBcd, SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmCapacity = class(TDBPooledDataModule)
    qryCapacityGraph: TAbmesSQLQuery;
    prvCapacityGraph: TDataSetProvider;
    qryCapacityTable: TAbmesSQLQuery;
    prvCapacityTable: TDataSetProvider;
    qryGetPeriodFieldNames: TAbmesSQLQuery;
    qryGetPeriodFieldNamesTABLE_NAME: TAbmesWideStringField;
    qryGetPeriodFieldNamesKEY_FIELD_NAME: TAbmesWideStringField;
    qryCapacityGraph_REAL_LIMIT_PERCENT: TAbmesFloatField;
    qryCapacityGraph_PLAN_LIMIT_PERCENT: TAbmesFloatField;
    qryCapacityGraphTHE_DATE: TAbmesSQLTimeStampField;
    qryCapacityGraphWORKDAYS: TAbmesFloatField;
    qryCapacityGraphLIMIT_HOURS: TAbmesFloatField;
    qryCapacityGraphREAL_LOGISTICS_HOURS: TAbmesFloatField;
    qryCapacityGraphREAL_EXPLOITATION_HOURS: TAbmesFloatField;
    qryCapacityGraphREAL_FREE_HOURS: TAbmesFloatField;
    qryCapacityGraphREAL_EXCESS_HOURS: TAbmesFloatField;
    qryCapacityGraphPLAN_LOGISTICS_HOURS: TAbmesFloatField;
    qryCapacityGraphPLAN_EXPLOITATION_HOURS: TAbmesFloatField;
    qryCapacityGraphPLAN_FREE_HOURS: TAbmesFloatField;
    qryCapacityGraphPLAN_EXCESS_HOURS: TAbmesFloatField;
    qryCapacityGraphOCC_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField;
    qryCapacityGraphOCC_ASS_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField;
    qryCapacityGraphEMP_AVAIL_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField;
    qryCapacityGraphDEPT_LVL_LIMIT_HOURS: TAbmesFloatField;
    qryCapacityGraphOCC_LVL_LIMIT_HOURS: TAbmesFloatField;
    qryCapacityGraphOCC_ASS_LVL_LIMIT_HOURS: TAbmesFloatField;
    qryCapacityGraphEMP_AVAIL_LVL_LIMIT_HOURS: TAbmesFloatField;
    qryPrepareCapacityTable: TAbmesSQLQuery;
    qryUnprepareCapacityTable: TAbmesSQLQuery;
    procedure qryCapacityGraphBeforeOpen(DataSet: TDataSet);
    procedure qryCapacityGraphAfterClose(DataSet: TDataSet);
    procedure qryCapacityTableBeforeOpen(DataSet: TDataSet);
    procedure qryCapacityTableAfterClose(DataSet: TDataSet);
    procedure qryCapacityTableAfterOpen(DataSet: TDataSet);
    procedure qryCapacityGraphCalcFields(DataSet: TDataSet);
    procedure prvCapacityTableGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
  private
    { Private declarations }
  end;

type
  IdmCapacityProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmCapacityProxy = class(TDBPooledDataModuleProxy, IdmCapacityProxy)
  private
    class var FSingleton: TdmCapacityProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmCapacity>;
  strict protected
    property LockedInstance: ISmartLock<TdmCapacity> read GetLockedInstance;
  public
    class property Singleton: TdmCapacityProxy read FSingleton;
  end;

implementation

uses
  uDBPooledDataModuleHelper, Math, StrUtils, uPeriods, uCapacity, uAspectTypes;

{$R *.DFM}

{ TdmCapacityProxy }

function TdmCapacityProxy.GetLockedInstance: ISmartLock<TdmCapacity>;
begin
  Result:= ISmartLock<TdmCapacity>(inherited LockedInstance);
end;

{ TdmCapacity }

procedure TdmCapacity.qryCapacityGraphBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), 1);

  SvrParamProductTreeNodeFilter.PrepareFilteredDepts(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPT_PRODUCTS'), 2);

  qryGetPeriodFieldNames.ParamByName('THE_DATE_UNIT_CODE').AsInteger:=
    (DataSet as TAbmesSQLQuery).ParamByName('TIME_UNIT_CODE').AsInteger;
  qryGetPeriodFieldNames.Open;
  try
    Assert(not (qryGetPeriodFieldNames.Bof and qryGetPeriodFieldNames.Eof));

    (DataSet as TAbmesSQLQuery).Macros.ParamByName('THE_X_DATES').AsString:=
      qryGetPeriodFieldNamesTABLE_NAME.AsString;

    (DataSet as TAbmesSQLQuery).Macros.ParamByName('THE_X_DATE').AsString:=
      qryGetPeriodFieldNamesKEY_FIELD_NAME.AsString;
  finally
    qryGetPeriodFieldNames.Close;
  end;  { try }
end;

procedure TdmCapacity.prvCapacityTableGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);

  function CapacityTableFilterAccept(ADataSet: TDataSet): Boolean;

    function HasCapacityValue(ACapacityFieldType: TCapacityFieldType): Boolean;
    var
      DateNo: Integer;
      IsPlan: Boolean;
      f: TField;
    begin
      Result:= False;
      for DateNo:= 1 to qryCapacityTable.Params.ParamByName('TIME_UNIT_COUNT').AsInteger do
        for IsPlan:= Low(IsPlan) to High(IsPlan) do
          begin
            f:= ADataSet.FindField(GetCapacityDateFieldName(DateNo, IsPlan, ACapacityFieldType));
            if Assigned(f) and (f.AsFloat <> 0) then
              begin
                Result:= True;
                Exit;
              end;  { if }
          end;  { for }
    end;  { HasCapacityValue }

  var
    CapacityFieldType: TCapacityFieldType;
    CapacityStateParamValue: Integer;
  begin
    Result:= True;
    for CapacityFieldType:= High(TCapacityFieldType) downto cftLogisticsHours do
      begin  // 'downto' vmesto 'to' e za optimizacia - purvo da gleda excess
        CapacityStateParamValue:=
          qryCapacityTable.CustomParams.ParamByName(GetCapacityStateParamName(CapacityFieldType)).AsInteger;

        Result:=
          Result and
          ( (CapacityStateParamValue = 2) or
            ((CapacityStateParamValue = 1) = HasCapacityValue(CapacityFieldType)));
      end;  { for }
  end;     

begin
  inherited;

  DataSet.First;
  while not DataSet.Eof do
    if not CapacityTableFilterAccept(DataSet) then
      DataSet.Delete
    else
      DataSet.Next;
end;

procedure TdmCapacity.qryCapacityGraphAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(1);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredDepts(2);
end;

procedure TdmCapacity.qryCapacityGraphCalcFields(DataSet: TDataSet);
begin
  inherited;

  if qryCapacityGraphLIMIT_HOURS.IsNull or
     qryCapacityGraphREAL_FREE_HOURS.IsNull then
    qryCapacityGraph_REAL_LIMIT_PERCENT.Clear
  else
    qryCapacityGraph_REAL_LIMIT_PERCENT.AsFloat:=
      (qryCapacityGraphLIMIT_HOURS.AsFloat - qryCapacityGraphREAL_FREE_HOURS.AsFloat) / qryCapacityGraphLIMIT_HOURS.AsFloat;

  if qryCapacityGraphLIMIT_HOURS.IsNull or
     qryCapacityGraphPLAN_FREE_HOURS.IsNull then
    qryCapacityGraph_PLAN_LIMIT_PERCENT.Clear
  else
    qryCapacityGraph_PLAN_LIMIT_PERCENT.AsFloat:=
      (qryCapacityGraphLIMIT_HOURS.AsFloat - qryCapacityGraphPLAN_FREE_HOURS.AsFloat) / qryCapacityGraphLIMIT_HOURS.AsFloat;
end;

procedure TdmCapacity.qryCapacityTableBeforeOpen(DataSet: TDataSet);

  function GetDateCapacityFieldSql(ADateNo: Integer; AIsPlan: Boolean; ACapacityFieldType: TCapacityFieldType): string;
  const
    PlanFieldWords: array[Boolean] of string = ('R', 'P');
  begin
    Result:=
      Format(
        'Min(Decode(t.DATE_NO, %d, Decode(t.IS_%s, 1, NullIf(t.%s_%s, 0)))) as %s,' + SLineBreak,
        [ ADateNo,
          PlanFieldWords[AIsPlan],
          PlanFieldWords[AIsPlan],
          GetCapacityFieldTypeName(ACapacityFieldType),
          GetCapacityDateFieldName(ADateNo, AIsPlan, ACapacityFieldType)]);
  end;

  function GetDateCapacityFieldsSql(ADateNo: Integer; AIsPlan: Boolean): string;
  var
    CapacityFieldType: TCapacityFieldType;
  begin
    Result:= '';
    for CapacityFieldType:= Succ(Low(TCapacityFieldType)) to High(TCapacityFieldType) do
      Result:= Result + GetDateCapacityFieldSql(ADateNo, AIsPlan, CapacityFieldType);

    Result:= Result + SLineBreak;  // da se otdeliat grupite po dati
  end;

  function GetTotalCapacityFieldsSql: string;
  begin
    Result:=
      SLineBreak +
      Format(
        'Sum(Decode(t.IS_P, 1, NullIf(t.P_%s, 0))) as TOTAL_PLAN_EXCESS_HOURS',
        [GetCapacityFieldTypeName(cftExcessHours)]
      ) +
      SLineBreak;
  end;

  function GetCapacityFieldsSql(ABeginDate: TDateTime; ATimeUnit: TPeriod; ATimeUnitCount: Integer; AAspectType: TAspectType): string;
  var
    CurrentDateNo: Integer;
    i: Integer;
  begin
    Result:= '';

    case AAspectType of
      atEstimation:
        begin
          for i:= 1 to ATimeUnitCount do
            Result:= Result + GetDateCapacityFieldsSql(i, True);
        end;

      atRealization:
        begin
          CurrentDateNo:= GetTimeUnitCount(ABeginDate, ContextDate, ATimeUnit) + 1;

          for i:= 1 to Min(ATimeUnitCount, CurrentDateNo) do
            Result:= Result + GetDateCapacityFieldsSql(i, False);

          for i:= Max(1, CurrentDateNo) to ATimeUnitCount do
            Result:= Result + GetDateCapacityFieldsSql(i, True);
        end;

      else
        Assert(False, 'Wrong AspectType');
    end;  { case }

    Result:= Result + GetTotalCapacityFieldsSql;
  end;

begin
  inherited;
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), 1);

  SvrParamProductTreeNodeFilter.PrepareFilteredDepts(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPT_PRODUCTS'), 2);

  qryGetPeriodFieldNames.ParamByName('THE_DATE_UNIT_CODE').AsInteger:=
    (DataSet as TAbmesSQLQuery).ParamByName('TIME_UNIT_CODE').AsInteger;
  qryGetPeriodFieldNames.Open;
  try
    Assert(not (qryGetPeriodFieldNames.Bof and qryGetPeriodFieldNames.Eof));

    (DataSet as TAbmesSQLQuery).Macros.ParamByName('THE_X_DATES').AsString:=
      qryGetPeriodFieldNamesTABLE_NAME.AsString;

    (DataSet as TAbmesSQLQuery).Macros.ParamByName('THE_X_DATE').AsString:=
      qryGetPeriodFieldNamesKEY_FIELD_NAME.AsString;
  finally
    qryGetPeriodFieldNames.Close;
  end;  { try }

  (DataSet as TAbmesSQLQuery).Macros.ParamByName('CAPACITY_FIELDS_SQL').AsString:=
    GetCapacityFieldsSql(
      (DataSet as TAbmesSQLQuery).ParamByName('BEGIN_DATE').AsDateTime,
      GetPeriodValue((DataSet as TAbmesSQLQuery).ParamByName('TIME_UNIT_CODE').AsInteger),
      (DataSet as TAbmesSQLQuery).ParamByName('TIME_UNIT_COUNT').AsInteger,
      IntToAspectType((DataSet as TAbmesSQLQuery).ParamByName('ASPECT_TYPE').AsInteger)
    );

  with DataSet as TAbmesSQLQuery do
    ParamByName('END_DATE').AsDateTime:=
      IncDate(
        ParamByName('BEGIN_DATE').AsDateTime,
        GetPeriodValue(ParamByName('TIME_UNIT_CODE').AsInteger),
        ParamByName('TIME_UNIT_COUNT').AsInteger
      );

  with qryPrepareCapacityTable do
    begin
      MacroByName('THE_X_DATES').AsString:= qryCapacityTable.MacroByName('THE_X_DATES').AsString;
      MacroByName('THE_X_DATE').AsString:= qryCapacityTable.MacroByName('THE_X_DATE').AsString;
      ParamByName('BEGIN_DATE').Assign(qryCapacityTable.ParamByName('BEGIN_DATE'));
      ParamByName('TIME_UNIT_CODE').Assign(qryCapacityTable.ParamByName('TIME_UNIT_CODE'));
      ParamByName('TIME_UNIT_COUNT').Assign(qryCapacityTable.ParamByName('TIME_UNIT_COUNT'));
      ParamByName('CAPACITY_LIMIT_LEVEL').Assign(qryCapacityTable.CustomParams.ParamByName('CAPACITY_LIMIT_LEVEL'));
      ParamByName('CALC_ALL_LIMIT_LEVELS').Assign(qryCapacityTable.CustomParams.ParamByName('CALC_ALL_LIMIT_LEVELS'));
      ParamByName('ASPECT_TYPE').Assign(qryCapacityTable.CustomParams.ParamByName('ASPECT_TYPE'));
      ParamByName('PRODUCT_COMMON_LEVEL').Assign(qryCapacityTable.CustomParams.ParamByName('PRODUCT_COMMON_LEVEL'));
      ParamByName('PARTNER_COMMON_LEVEL').Assign(qryCapacityTable.CustomParams.ParamByName('PARTNER_COMMON_LEVEL'));
      ParamByName('MIN_PRP_STATUS_CODE').Assign(qryCapacityTable.CustomParams.ParamByName('MIN_PRP_STATUS_CODE'));
      ParamByName('MAX_PRP_STATUS_CODE').Assign(qryCapacityTable.CustomParams.ParamByName('MAX_PRP_STATUS_CODE'));

      ExecSQL;
    end;  { with }
end;

procedure TdmCapacity.qryCapacityTableAfterClose(DataSet: TDataSet);
begin
  inherited;
  qryUnprepareCapacityTable.ExecSQL;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(1);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredDepts(2);
end;

procedure TdmCapacity.qryCapacityTableAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DEPT_CODE').ProviderFlags:= [pfInUpdate, pfInWhere, pfInKey];
end;

initialization
  TdmCapacityProxy.FSingleton:= TdmCapacityProxy.Create(TdmCapacity);

finalization
  FreeAndNil(TdmCapacityProxy.FSingleton);
end.
