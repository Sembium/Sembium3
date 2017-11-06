unit uDBPrcData;

interface

uses
  uPrcData, uPrcDeclarations, AbmesSQLConnection, Db, dProcesses, Provider,
  AbmesSQLQuery, DBClient;

type
  TUpdateKinds = set of TUpdateKind;

type
  TDBProcessLevelData = class;
  TDBProcessLevelDataArray = array of TDBProcessLevelData;

  TDBProcessOwnerData = class(TProcessOwnerData)
  private
    FdmProcesses: TdmProcesses;
    FKeyFieldValue: Variant;
    function GetLevelsSet: TDBProcessLevelDataArray;
    function GetRootLevel: TDBProcessLevelData;
    procedure IntersectRelevantRollupLevels;
  protected
    function CreateProcessLevel(AProcessLevel: TProcessLevel): TProcessLevel; override;
    procedure FreeProcessLevel(AProcessLevel: TProcessLevel); override;
  public
    constructor Create(AProcessOwner: TProcessOwner; AdmProcesses: TdmProcesses; const AOwnerKeyFieldValue: Variant);
    procedure SaveToDatabase;
    procedure LoadFromDatabase;
    function LevelChildren(ALevel: TDBProcessLevelData): TDBProcessLevelDataArray;
    property LevelsSet: TDBProcessLevelDataArray read GetLevelsSet;
    property RootLevel: TDBProcessLevelData read GetRootLevel;
    property KeyFieldValue: Variant read FKeyFieldValue;
  end;

  TDBProcessLevelData = class(TProcessLevelData)
  private
    FdmProcesses: TdmProcesses;
    FprvLevelData: TDataSetProvider;
    FqryLevelData: TAbmesSQLQuery;
    FApplyingUpdateKinds: TUpdateKinds;
    FSavedErrorMessage: string;
    function GenerateSelectSQL: string;
    procedure ProviderBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure qryLevelDataAfterOpen(DataSet: TDataSet);
    procedure qryLevelDataBeforeOpen(DataSet: TDataSet);
    function GetOwner: TDBProcessOwnerData;
    procedure cdsLevelDataReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    function GetFormattedNoFieldSQL: string;
    function GetNoFieldSQL: string;
    procedure DoAfterUpdated;
  protected
    property dmProcesses: TdmProcesses read FdmProcesses;
  public
    constructor Create(
      AProcessLevel: TProcessLevel;
      AOwner: TProcessOwner;
      AdmProcesses: TdmProcesses);

    destructor Destroy; override;
    procedure LoadFromDatabase;
    procedure ApplyUpdates(AUpdateKinds: TUpdateKinds);
    property Owner: TDBProcessOwnerData read GetOwner;
  end;

implementation

uses
  SysUtils, uPrcUtils, uSvrUtils, StrUtils, Variants, uUtils, JclStrings;

{ TDBProcessOwnedData }

function TDBProcessOwnerData.GetLevelsSet: TDBProcessLevelDataArray;
begin
  Result:= TDBProcessLevelDataArray(inherited LevelsSet);
end;

function TDBProcessOwnerData.GetRootLevel: TDBProcessLevelData;
begin
  Result:= inherited RootLevel as TDBProcessLevelData;
end;

function TDBProcessOwnerData.LevelChildren(ALevel: TDBProcessLevelData): TDBProcessLevelDataArray;
begin
  Result:= TDBProcessLevelDataArray(inherited LevelChildren(ALevel));
end;

constructor TDBProcessOwnerData.Create(AProcessOwner: TProcessOwner;
  AdmProcesses: TdmProcesses; const AOwnerKeyFieldValue: Variant);
begin
  FdmProcesses:= AdmProcesses;
  FKeyFieldValue:= AOwnerKeyFieldValue;
  inherited Create(AProcessOwner);
end;

function TDBProcessOwnerData.CreateProcessLevel(AProcessLevel: TProcessLevel): TProcessLevel;
begin
  Result:= TDBProcessLevelData.Create(AProcessLevel, Self, FdmProcesses);
end;

procedure TDBProcessOwnerData.FreeProcessLevel(AProcessLevel: TProcessLevel);
begin
  FreeAndNil(AProcessLevel);
end;

procedure TDBProcessOwnerData.IntersectRelevantRollupLevels;
var
  Level: TDBProcessLevelData;
begin
  for Level in LevelsSet do
    if Assigned(Level.RelevantRollupLevel) then
      Level.cdsLevelData.Intersect(RelevantRollupLevel.cdsLevelData, Level.KeyFieldName);
end;

procedure TDBProcessOwnerData.LoadFromDatabase;
var
  Level: TDBProcessLevelData;
begin
  for Level in LevelsSet do
    Level.LoadFromDatabase;

  if Assigned(RelevantRollupLevel) then
    IntersectRelevantRollupLevels;
end;

procedure TDBProcessOwnerData.SaveToDatabase;

  procedure ApplyLevel(ALevel: TDBProcessLevelData; ABeforeUpdateKinds, AAfterUpdateKinds: TUpdateKinds);
  var
    Level: TDBProcessLevelData;
  begin
    ALevel.ApplyUpdates(ABeforeUpdateKinds);

    for Level in LevelChildren(ALevel) do
      ApplyLevel(Level, ABeforeUpdateKinds, AAfterUpdateKinds);

    ALevel.ApplyUpdates(AAfterUpdateKinds);
  end;

  procedure DoAfterLevelUpdated(ALevel: TDBProcessLevelData);
  var
    Level: TDBProcessLevelData;
  begin
    for Level in LevelChildren(ALevel) do
      DoAfterLevelUpdated(Level);

    ALevel.DoAfterUpdated;
  end;

begin
  ApplyLevel(RootLevel, [], [ukDelete]);
  ApplyLevel(RootLevel, [ukInsert, ukModify], []);
  DoAfterLevelUpdated(RootLevel);
end;

{ TDBProcessLevelData }

function TDBProcessLevelData.GetOwner: TDBProcessOwnerData;
begin
  Result:= inherited Owner as TDBProcessOwnerData;
end;

function TDBProcessLevelData.GetNoFieldSQL: string;
begin
  Result:= Format('%%%s_FULL_NO[t.%s]', [EntitySingularName, KeyFieldName]);
end;

function TDBProcessLevelData.GetFormattedNoFieldSQL: string;
begin
  Result:= Format('%%%s_FORMATTED_FULL_NO[t.%s]', [EntitySingularName, KeyFieldName]);
end;

function TDBProcessLevelData.GenerateSelectSQL: string;

  function GenerateSelectPartKeyFieldsSQL(AProcessLevel: TProcessLevel): string;
  begin
    if not Assigned(AProcessLevel) then
      Result:= Format('  ot.%s,', [Owner.KeyFieldName]) + SLineBreak
    else
      Result:=
        GenerateSelectPartKeyFieldsSQL(AProcessLevel.LogicalParent) + SLineBreak +
        Format('  ot.%s,', [AProcessLevel.KeyFieldName]);
  end;

  function GenerateKeyFieldsSQL: string;
  begin
    Result:=
      IfThen(
        Self.IsDisconnected,
        'ot.' + Self.KeyFieldName + ',',
        GenerateSelectPartKeyFieldsSQL(Self));    
  end;

  function GenerateDocFields: string;
  begin
    case Self.DocSource of
      dsNone: Result:= SLineBreak;
      dsSelf: Result:= dmProcesses.mshSQLGenerationMacros.StringsByName['SELF_DOC_FIELDS'].Text;
      dsProduct: Result:= dmProcesses.mshSQLGenerationMacros.StringsByName['PRODUCT_DOC_FIELDS'].Text;
    else
      raise Exception.Create('Unknown DocSource');
    end;  { case }
  end;

  function GenerateProductCodeField: string;
  begin
    if (Self.DocSource = dsProduct) then
      Result:=
        '  ( select' + SLineBreak +
        '      s.SPEC_PRODUCT_CODE' + SLineBreak +
        '    from' + SLineBreak +
        '      SPECS s' + SLineBreak +
        '    where' + SLineBreak +
        '      (s.SPEC_PRODUCT_CODE = t.DOC_PRODUCT_CODE)' + SLineBreak +
        '  ) as DOC_SPEC_PRODUCT_CODE,' + SLineBreak
    else
      Result:= '  To_Number(null) as DOC_SPEC_PRODUCT_CODE,';
  end;

  function GenerateDateIntervalFields: string;
  begin
    Result:=
      IfThen(
        Owner.HasDateIntervalFields and Self.CanHaveDateIntervalFields,
        '  ot.BEGIN_DATE,' + SLineBreak +
        '  ot.END_DATE,'   + SLineBreak +
        IfThen(
          Owner.CanOverrideDateInterval,
          '  ot.OVERRIDE_DATE_INTERVAL,' + SLineBreak,
          '  1 as OVERRIDE_DATE_INTERVAL,' + SLineBreak));
  end;

  function GenerateRingFields: string;

    function GenerateJoinKeyFields(AProcessLevel: TProcessLevel): string;
    begin
      if not Assigned(AProcessLevel) then
        Result:= ''
      else
        Result:=
          GenerateJoinKeyFields(AProcessLevel.LogicalParent) + SLineBreak +
          Format('      (qaot.%s = ot.%s)', [AProcessLevel.KeyFieldName, AProcessLevel.KeyFieldName]) +
          IfThen(AProcessLevel <> Self, ' and');
    end;

    function GenerateExternalRingField(ARingFieldName: string): string;
    begin
      Result:=
        Format(
          '  ( select' + SLineBreak +
          '      qaot.%s' + SLineBreak +
          '    from' + SLineBreak +
          '      %s qaot' + SLineBreak +
          '    where' + SLineBreak +
                 GenerateJoinKeyFields(Self) + SLineBreak +
          '  ) as %s,',
          [ARingFieldName, OwnerLevelTableName(Owner.RingFieldsOwner, Self), ARingFieldName]);
    end;

  begin
    if Self.SupportsRings then
      begin
        if not Assigned(Owner.RingFieldsOwner) then
          Result:=
            '  To_Number(null) as PRC_RING_NO,' + SLineBreak +
            '  To_Number(null) as PRC_RING_LOCAL_NO,' + SLineBreak
        else
          if (Owner.RingFieldsOwner = Owner) then
            Result:=
              '  ot.PRC_RING_NO,' + SLineBreak +
              '  ot.PRC_RING_LOCAL_NO,' + SLineBreak
          else
            Result:=
              GenerateExternalRingField('PRC_RING_NO') + SLineBreak +
              GenerateExternalRingField('PRC_RING_LOCAL_NO') + SLineBreak;
      end
    else
      Result:=
        '  To_Number(null) as PRC_RING_NO,' + SLineBreak +
        '  To_Number(null) as PRC_RING_LOCAL_NO,' + SLineBreak;
  end;

  function GenerateRegimeFields: string;
  begin
    Result:=
      IfThen(
        Owner.HasRegimeFields and Self.CanHaveRegimeFields,
        '  ot.PRC_OP_REGIME_CODE,' + SLineBreak);
  end;

  function GenerateLearningStatusFields: string;
  begin
    Result:=
      IfThen(
        Self.HasLearningStatus,
        '  ot.PRC_LEARNING_STATUS_CODE' + SLineBreak);
  end;

  function GenerateFullStrKeyValueFields: string;
  begin
    Result:=
      '  Cast(null as VarChar2(200 char)) as SELF_FSK_VALUE,' + SLineBreak;
  end;

  function GeneratePrcOrgDistributionStatusFields: string;
  begin
    Result:= dmProcesses.GetPrcOrgDistributionStatusSQL(Owner, Self);
    if (Result <> '') then
      Result:= Result + ' as PRC_ORG_DISTRIB_STATUS_CODE,' + SLineBreak;
  end;

  function GeneratePrcOrgDistributionCountFields: string;
  begin
    Result:= dmProcesses.GetPrcOrgDistributionCountSQL(Owner, Self);
    if (Result <> '') then
      Result:= Result + ' as PRC_ORG_DISTRIBUTION_COUNT,' + SLineBreak;
  end;

  function GenerateSelectPartSQL: string;
  begin
    Result:=
      GenerateKeyFieldsSQL +
      GenerateDocFields +
      GenerateProductCodeField +
      GenerateDateIntervalFields +
      GenerateRingFields +
      GenerateRegimeFields +
      GenerateFullStrKeyValueFields +
      GenerateLearningStatusFields +
      GeneratePrcOrgDistributionStatusFields +
      GeneratePrcOrgDistributionCountFields +
      IfThen(not Self.SkipDataTableJoin,
        Format('  Cast(%s as VarChar2(100 char)) as PRC_OBJECT_NO,', [GetNoFieldSQL]) + SLineBreak +
        Format('  Cast(%s as VarChar2(100 char)) as PRC_OBJECT_FORMATTED_NO,', [GetFormattedNoFieldSQL]) + SLineBreak +
        Format('  t.%s as PRC_OBJECT_NAME,', [Self.NameFieldName]) + SLineBreak +
        Format('  t.%s as PRC_OBJECT_SHORT_NAME', [Self.ShortNameFieldName]) + SLineBreak);
  end;

  function GenerateFromPartSQL: string;
  begin
    Result:=
      Format(
        '  %s ot' +
        IfThen(not Self.SkipDataTableJoin, Format(',' + SLineBreak + '  %s t', [Self.DataTableName])),
        [OwnerLevelTableName(Owner, Self)]);
  end;

  function GenerateWherePartSQL: string;
  var
    HasSourceTableJoin: Boolean;
    SelectInstanceOwner: Boolean;
  begin
    HasSourceTableJoin:= not Self.SkipDataTableJoin;
    SelectInstanceOwner:= not Self.IsDisconnected and Owner.IsInstance;

    Result:=
      IfThen(HasSourceTableJoin, Format('  (ot.%s = t.%s)', [Self.KeyFieldName, Self.KeyFieldName])) +
      IfThen(HasSourceTableJoin and SelectInstanceOwner, ' and' + SLineBreak) +
      IfThen(SelectInstanceOwner, Format('  (ot.%s = :%s)', [Owner.KeyFieldName, Owner.KeyFieldName]));
  end;

  function GenerateOrderBySQL: string;
  begin
    Result:= StrTrimCharRight(GenerateKeyFieldsSQL, ',');
  end;

begin
  Result:=
    'select'                 + SLineBreak +
       GenerateSelectPartSQL + SLineBreak +
    'from'                   + SLineBreak +
       GenerateFromPartSQL   + SLineBreak +
    'where'                  + SLineBreak +
       GenerateWherePartSQL  + SLineBreak +
    'order by'               + SLineBreak +
       GenerateOrderBySQL    + SLineBreak;
end;

constructor TDBProcessLevelData.Create(
  AProcessLevel: TProcessLevel;
  AOwner: TProcessOwner;
  AdmProcesses: TdmProcesses);
begin
  inherited Create(AProcessLevel, AOwner);
  FdmProcesses:= AdmProcesses;

  FqryLevelData:= TAbmesSQLQuery.Create(nil);

  FqryLevelData.SQLConnection:= AdmProcesses.DBDataModule.SQLConn;
  FqryLevelData.TableName:= OwnerLevelTableName(Owner, Self);
  FqryLevelData.AfterOpen:= qryLevelDataAfterOpen;
  FqryLevelData.BeforeOpen:= qryLevelDataBeforeOpen;

  FprvLevelData:= TDataSetProvider.Create(nil);
  FprvLevelData.DataSet:= FqryLevelData;
  FprvLevelData.BeforeUpdateRecord:= ProviderBeforeUpdateRecord;
  FprvLevelData.UpdateMode:= upWhereKeyOnly;

  cdsLevelData.SetProvider(FprvLevelData);
  cdsLevelData.OnReconcileError:= cdsLevelDataReconcileError;
end;

destructor TDBProcessLevelData.Destroy;
begin
  FreeAndNil(FprvLevelData);
  FreeAndNil(FqryLevelData);
  inherited;
end;

procedure TDBProcessLevelData.qryLevelDataAfterOpen(DataSet: TDataSet);

  procedure SetKeyFieldsProviderFlags(ALevel: TProcessLevel);
  begin
    if not Assigned(ALevel) then
      FqryLevelData.FieldByName(Owner.KeyFieldName).ProviderFlags:= [pfInUpdate, pfInWhere, pfInKey]
    else
      begin
        FqryLevelData.FieldByName(ALevel.KeyFieldName).ProviderFlags:= [pfInUpdate, pfInWhere, pfInKey];
        SetKeyFieldsProviderFlags(ALevel.LogicalParent);
      end;
  end;

  procedure SetFieldProviderFlags(AFieldName: string; AProviderFlags: TProviderFlags);
  var
    f: TField;
  begin
    f:= FqryLevelData.FindField(AFieldName);
    if Assigned(f) then
      f.ProviderFlags:= AProviderFlags;
  end;

  procedure SetFieldsProviderFlags(AFieldNames: array of string; AProviderFlags: TProviderFlags);
  var
    FieldName: string;
  begin
    for FieldName in AFieldNames do
      SetFieldProviderFlags(FieldName, AProviderFlags);
  end;

begin
  if not Self.IsDisconnected then
    SetKeyFieldsProviderFlags(Self)
  else
    SetFieldProviderFlags(Self.KeyFieldName, []);

  SetFieldsProviderFlags([
    'PRC_OBJECT_NO',
    'PRC_OBJECT_FORMATTED_NO',
    'PRC_OBJECT_NAME',
    'PRC_OBJECT_SHORT_NAME',
    'DOC_BRANCH_CODE',
    'DOC_CODE',
    'HAS_DOC_ITEMS',
    'DOC_SPEC_PRODUCT_CODE',
    'SELF_FSK_VALUE',
    'PRC_ORG_DISTRIB_STATUS_CODE',
    'PRC_ORG_DISTRIBUTION_COUNT'],
    []);

  if (Owner.RingFieldsOwner <> Owner) or not Self.SupportsRings then
    SetFieldsProviderFlags(['PRC_RING_NO', 'PRC_RING_LOCAL_NO'], []);

  if Self.CanHaveDateIntervalFields and not Owner.CanOverrideDateInterval then
    SetFieldProviderFlags('OVERRIDE_DATE_INTERVAL', []);
end;

procedure TDBProcessLevelData.qryLevelDataBeforeOpen(DataSet: TDataSet);
begin
  FqryLevelData.SQL.Text:= GenerateSelectSQL;

  dmProcesses.ApplyMacroLibraries(FqryLevelData);

  if not Self.IsDisconnected and Owner.IsInstance then
    begin
      FqryLevelData.ParamByName(Owner.KeyFieldName).DataType:= ftFloat;
      FqryLevelData.ParamByName(Owner.KeyFieldName).Value:= Owner.KeyFieldValue;
    end;  { if }
end;

procedure TDBProcessLevelData.LoadFromDatabase;
begin
  cdsLevelData.Open;
end;

procedure TDBProcessLevelData.cdsLevelDataReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  FSavedErrorMessage:= E.Message;
  Action:= raAbort;
end;

procedure TDBProcessLevelData.ProviderBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  Applied:= not (UpdateKind in FApplyingUpdateKinds);

  if not Applied and (UpdateKind = ukInsert) then
    DeltaDS.FieldByName(Owner.KeyFieldName).NewValue:= Owner.KeyFieldValue;

  if not Applied and (UpdateKind = ukModify) and (Owner.RingFieldsOwner = Owner) and Self.SupportsRings then
    begin
      if not VarIsNullOrEmpty(DeltaDS.FieldByName('PRC_RING_NO').NewValue) then
        DeltaDS.FieldByName('PRC_RING_NO').NewValue:= -Abs(DeltaDS.FieldByName('PRC_RING_NO').NewValue);

      if not VarIsNullOrEmpty(DeltaDS.FieldByName('PRC_RING_LOCAL_NO').NewValue) then
        DeltaDS.FieldByName('PRC_RING_LOCAL_NO').NewValue:= -Abs(DeltaDS.FieldByName('PRC_RING_LOCAL_NO').NewValue);
    end;  { if }
end;

procedure TDBProcessLevelData.DoAfterUpdated;
var
  qry: TAbmesSQLQuery;
begin
  if (Owner.RingFieldsOwner = Owner) and Self.SupportsRings then
    begin
      qry:= TAbmesSQLQuery.Create(nil);
      try
        qry.SQLConnection:= dmProcesses.DBDataModule.SQLConn;
        qry.SQL.Text:=
          Format(
            'update'                                                 + SLineBreak +
            '  %s po'                                                + SLineBreak +
            'set'                                                    + SLineBreak +
            '  po.PRC_RING_NO = Abs(po.PRC_RING_NO),'                + SLineBreak +
            '  po.PRC_RING_LOCAL_NO = Abs(po.PRC_RING_LOCAL_NO)'     + SLineBreak +
            'where'                                                  + SLineBreak +
            '  ( (po.PRC_RING_NO < 0) or'                            + SLineBreak +
            '    (po.PRC_RING_LOCAL_NO < 0)'                         + SLineBreak +
            '  )',
            [OwnerLevelTableName(Owner, Self)]);

        qry.ExecSQL;
      finally
        FreeAndNil(qry);
      end;  { try }
    end;  { if }
end;

procedure TDBProcessLevelData.ApplyUpdates(AUpdateKinds: TUpdateKinds);
var
  SavedData: Variant;
begin
  SavedData:= cdsLevelData.Data;
  try
    FApplyingUpdateKinds:= AUpdateKinds;
    cdsLevelData.SetProvider(FprvLevelData);

    if (cdsLevelData.ApplyUpdates(0) > 0) then
      raise Exception.Create(FSavedErrorMessage);
  finally
    cdsLevelData.Data:= SavedData;
  end;  { try }
end;

end.
