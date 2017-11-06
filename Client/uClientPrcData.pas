unit uClientPrcData;

interface

uses
  uPrcDeclarations, uPrcData, Db, Generics.Collections, Windows;

type
  TClientProcessLevelData = class;
  TClientProcessLevelDataArray = array of TClientProcessLevelData;

  TClientProcessOwnerData = class(TProcessOwnerData)
  private
    FSavedClipboardFormatName: string;
    function GetLevelsSet: TClientProcessLevelDataArray;
    function GetRootLevel: TClientProcessLevelData;
    function GetRootParentStrKeyValue: string;
    function GetRollupLevel: TClientProcessLevelData;
    function GetRelevantRollupLevel: TClientProcessLevelData;
    function GetClipboardFormatName: string;
  protected
    function CreateProcessLevel(AProcessLevel: TProcessLevel): TProcessLevel; override;
    procedure FreeProcessLevel(AProcessLevel: TProcessLevel); override;
  public
    function LevelChildren(ALevel: TProcessLevel): TClientProcessLevelDataArray;
    function FindLevel(const ALevelName: string): TClientProcessLevelData;
    function LevelByName(const ALevelName: string): TClientProcessLevelData;
    function LevelByDataSet(ADataSet: TDataSet): TClientProcessLevelData;
    function SecondaryChildLevel(ALevel: TClientProcessLevelData): TClientProcessLevelData;
    procedure DisableControls;
    procedure EnableControls;
    property LevelsSet: TClientProcessLevelDataArray read GetLevelsSet;
    property RootLevel: TClientProcessLevelData read GetRootLevel;
    property RootParentStrKeyValue: string read GetRootParentStrKeyValue;
    property RollupLevel: TClientProcessLevelData read GetRollupLevel;
    property RelevantRollupLevel: TClientProcessLevelData read GetRelevantRollupLevel;
    property ClipboardFormatName: string read GetClipboardFormatName;
  end;

  TClientProcessLevelData = class(TProcessLevelData)
  private
    FOnOverrideDateIntervalFieldChange: TFieldNotifyEvent;
    function GetOwner: TClientProcessOwnerData;
    function GetFullStrKeyValue: string;
    procedure SetFullStrKeyValue(const AValue: string);
    function GetStrKeyValue: string;
    function GetVisualParentFullStrKeyValue: string;
    function GetLogicalParent: TClientProcessLevelData;
    function GetVisualParent: TClientProcessLevelData;
    function ConcatLogicalStrKeyValue(ALevel: TClientProcessLevelData): string;
    function GetLogicalParentFullStrKeyValue: string;
    function FieldStrKeyValue(const AFieldName: string): string;
    function GetLocalSortPrcObjectFormattedNo: string;
    function GetVisualLevelNo: Integer;
    procedure SetFieldDisplayLabels;
    procedure SetFieldConstraints;
    procedure SetBooleanFieldValueTypes;
    procedure SetOverrideDateIntervalFieldReadOnly;
    procedure SetAllRecordsFullStrKeyValueFields;
    function GetRelevantRollupLevel: TClientProcessLevelData;
    procedure SetOverrideDateIntervalFieldOnChange;
    procedure DoDateIntervalFieldChange(Sender: TField);
  protected
    procedure DoAfterSetAsVariant; override;
  public
    function Locate(const AFullStrKeyValue: string): Boolean;
    procedure SetFullStrKeyValueFields;

    property Owner: TClientProcessOwnerData read GetOwner;
    property LogicalParent: TClientProcessLevelData read GetLogicalParent;
    property VisualParent: TClientProcessLevelData read GetVisualParent;
    property StrKeyValue: string read GetStrKeyValue;
    property FullStrKeyValue: string read GetFullStrKeyValue write SetFullStrKeyValue;
    property VisualParentFullStrKeyValue: string read GetVisualParentFullStrKeyValue;
    property LogicalParentFullStrKeyValue: string read GetLogicalParentFullStrKeyValue;
    property LocalSortPrcObjectFormattedNo: string read GetLocalSortPrcObjectFormattedNo;
    property VisualLevelNo: Integer read GetVisualLevelNo;
    property RelevantRollupLevel: TClientProcessLevelData read GetRelevantRollupLevel;
    property OnOverrideDateIntervalFieldChange: TFieldNotifyEvent read FOnOverrideDateIntervalFieldChange write FOnOverrideDateIntervalFieldChange;
  end;

procedure PrcDataCreateLike(AField: TField; AProcessOwner: TProcessOwner);

procedure PrcDataCopy(ASrcPrcData, ADestPrcData, ADestQuickAddPrcData: TClientProcessOwnerData);

procedure PrcDataSaveToClipboard(APrcData: TClientProcessOwnerData);
procedure PrcDataLoadFromClipboard(APrcData: TClientProcessOwnerData);
function ClipboardContainsPrcData(APrcData: TClientProcessOwnerData): Boolean;

implementation

uses
  StrUtils, JclStrings, SysUtils, Classes, Math, dMain, uPrcUtils, uUtils,
  uDataSetUtils, AbmesFields, Clipbrd, DSUtil;

type
  TFieldDisplayLabel = record
    FieldName: string;
    DisplayLabel: string;
  end;

resourcestring
  SBeginDateDisplayLabel = 'Начална дата';
  SEndDateDisplayLabel = 'Крайна дата';
  SRegimeDisplayLabel = 'Режим на Ефектиране';
  SConcreteOpDisplayLabel = 'Познавателен Оперант';
  SRingNoDisplayLabel = 'Ешелон No';
  SRingLocalNoDisplayLabel = 'No';

  SCannotCopyPrcDataBecausePrcIsNotPresentInQuickAddPrcData = 'Не може да копирате Процесен Обхват поради несъвместимост с по-високото ниво';

const
  FieldDisplayLabels: array[1..6] of TFieldDisplayLabel = (
    (FieldName: 'BEGIN_DATE'; DisplayLabel: SBeginDateDisplayLabel),
    (FieldName: 'END_DATE'; DisplayLabel: SEndDateDisplayLabel),
    (FieldName: 'PRC_OP_REGIME_CODE'; DisplayLabel: SRegimeDisplayLabel),
    (FieldName: 'PRC_CONCRETE_OP_CODE'; DisplayLabel: SConcreteOpDisplayLabel),
    (FieldName: 'PRC_RING_NO'; DisplayLabel: SRingNoDisplayLabel),
    (FieldName: 'PRC_RING_LOCAL_NO'; DisplayLabel: SRingLocalNoDisplayLabel)
  );

type
  TFieldConstraint = record
    FieldName: string;
    MinValue: Integer;
    MaxValue: Integer;
  end;

const
  FieldConstraints: array[1..2] of TFieldConstraint = (
    (FieldName: 'PRC_RING_NO'; MinValue: 0; MaxValue: 999999999),
    (FieldName: 'PRC_RING_LOCAL_NO'; MinValue: 0; MaxValue: 999999999)
  );

const
  BooleanFieldValueTypeFieldNames: array[1..1] of string = ('OVERRIDE_DATE_INTERVAL');

const
  PrcDataClipboardFormatNameTemplate = '%s_%s_%s_%s_%s_%d_%s';
  PrcDataClipboardFormatNamePrefix = 'PrcData';

type
  TClipboardFormats = TDictionary<string, UINT>;

var
  PrcDataClipboardFormats: TClipboardFormats;

{ TClientProcessOwnerData }

function TClientProcessOwnerData.CreateProcessLevel(AProcessLevel: TProcessLevel): TProcessLevel;
begin
  Result:= TClientProcessLevelData.Create(AProcessLevel, Self);
end;

procedure TClientProcessOwnerData.FreeProcessLevel(AProcessLevel: TProcessLevel);
begin
  FreeAndNil(AProcessLevel);
end;

function TClientProcessOwnerData.GetClipboardFormatName: string;
begin
  if (FSavedClipboardFormatName = '') then
    FSavedClipboardFormatName:=
      Format(
        PrcDataClipboardFormatNameTemplate,
        [ PrcDataClipboardFormatNamePrefix,
          GetExeVersion,
          dmMain.DBName,
          GetSysVolumeSerialNumber,
          GetWindowsUserName,
          GetWindowsSessionId,
          Name
        ]);

  Result:= FSavedClipboardFormatName;
end;

function TClientProcessOwnerData.GetLevelsSet: TClientProcessLevelDataArray;
begin
  Result:= TClientProcessLevelDataArray(inherited LevelsSet)
end;

function TClientProcessOwnerData.GetRollupLevel: TClientProcessLevelData;
begin
  Result:= inherited RollupLevel as TClientProcessLevelData;
end;

function TClientProcessOwnerData.GetRelevantRollupLevel: TClientProcessLevelData;
begin
  Result:= inherited RelevantRollupLevel as TClientProcessLevelData;
end;

function TClientProcessOwnerData.GetRootLevel: TClientProcessLevelData;
begin
  Result:= inherited RootLevel as TClientProcessLevelData;
end;

function TClientProcessOwnerData.GetRootParentStrKeyValue: string;
begin
  Result:= IfThen(ShowOwnerAsRoot, FakeRootLevelName + '=1');
end;

function TClientProcessOwnerData.LevelByName(const ALevelName: string): TClientProcessLevelData;
begin
  Result:= inherited LevelByName(ALevelName) as TClientProcessLevelData;
end;

function TClientProcessOwnerData.SecondaryChildLevel(ALevel: TClientProcessLevelData): TClientProcessLevelData;
begin
  Result:= inherited SecondaryChildLevel(ALevel) as TClientProcessLevelData;
end;

procedure TClientProcessOwnerData.DisableControls;
var
  lvl: TClientProcessLevelData;
begin
  for lvl in LevelsSet do
    lvl.cdsLevelData.DisableControls;
end;

procedure TClientProcessOwnerData.EnableControls;
var
  lvl: TClientProcessLevelData;
begin
  for lvl in LevelsSet do
    lvl.cdsLevelData.EnableControls;
end;

function TClientProcessOwnerData.FindLevel(const ALevelName: string): TClientProcessLevelData;
begin
  Result:= inherited FindLevel(ALevelName) as TClientProcessLevelData;
end;

function TClientProcessOwnerData.LevelChildren(ALevel: TProcessLevel): TClientProcessLevelDataArray;
begin
  Result:= TClientProcessLevelDataArray(inherited LevelChildren(ALevel));
end;

function TClientProcessOwnerData.LevelByDataSet(ADataSet: TDataSet): TClientProcessLevelData;
var
  Level: TClientProcessLevelData;
begin
  Result:= nil;
  for Level in LevelsSet do
    if (Level.cdsLevelData = ADataSet) then
      Result:= Level;

  Assert(Assigned(Result));
end;

{ TClientProcessLevelData }

function TClientProcessLevelData.GetOwner: TClientProcessOwnerData;
begin
  Result:= inherited Owner as TClientProcessOwnerData;
end;

function TClientProcessLevelData.GetRelevantRollupLevel: TClientProcessLevelData;
begin
  Result:= inherited RelevantRollupLevel as TClientProcessLevelData;
end;

function TClientProcessLevelData.GetLogicalParent: TClientProcessLevelData;
begin
  Result:= inherited LogicalParent as TClientProcessLevelData;
end;

function TClientProcessLevelData.GetVisualParent: TClientProcessLevelData;
begin
  Result:= inherited VisualParent as TClientProcessLevelData;
end;

function TClientProcessLevelData.FieldStrKeyValue(const AFieldName: string): string;
begin
  Result:= AFieldName + '=' + FormatFloat('0000000000.', cdsLevelData.FieldByName(AFieldName).AsFloat);
end;

function TClientProcessLevelData.ConcatLogicalStrKeyValue(ALevel: TClientProcessLevelData): string;
begin
  if Assigned(ALevel) then
    Result:=
      MakeFullStrKeyValue(
        ConcatLogicalStrKeyValue(ALevel.LogicalParent),
        FieldStrKeyValue(ALevel.KeyFieldName))
  else
    Result:= Owner.RootParentStrKeyValue;
end;

function TClientProcessLevelData.GetLogicalParentFullStrKeyValue: string;
begin
  Result:= ConcatLogicalStrKeyValue(LogicalParent);
end;

function TClientProcessLevelData.GetVisualParentFullStrKeyValue: string;
begin
  Result:= ConcatLogicalStrKeyValue(VisualParent);
end;

function TClientProcessLevelData.GetFullStrKeyValue: string;
begin
  Result:= ConcatLogicalStrKeyValue(Self);
end;

procedure TClientProcessLevelData.DoAfterSetAsVariant;
begin
  inherited;
  SetFieldDisplayLabels;
  SetFieldConstraints;
  SetBooleanFieldValueTypes;
  SetOverrideDateIntervalFieldReadOnly;
  SetOverrideDateIntervalFieldOnChange;
  SetAllRecordsFullStrKeyValueFields;
end;

procedure TClientProcessLevelData.SetFieldDisplayLabels;
var
  f: TField;
  fdl: TFieldDisplayLabel;
begin
  for f in cdsLevelData.Fields do
    for fdl in FieldDisplayLabels do
      if (fdl.FieldName = f.FieldName) then
        f.DisplayLabel:= fdl.DisplayLabel;
end;

procedure TClientProcessLevelData.SetFieldConstraints;
var
  f: TAbmesFloatField;
  fc: TFieldConstraint;
begin
  for f in cdsLevelData.Fields.OfType<TAbmesFloatField> do
    for fc in FieldConstraints do
      if (fc.FieldName = f.FieldName) then
        begin
          f.MinValue:= fc.MinValue;
          f.MaxValue:= fc.MaxValue;
        end;
end;

procedure TClientProcessLevelData.SetBooleanFieldValueTypes;
var
  f: TAbmesFloatField;
  bfn: string;
begin
  for f in cdsLevelData.Fields.OfType<TAbmesFloatField> do
    for bfn in BooleanFieldValueTypeFieldNames do
      if (bfn = f.FieldName) then
        f.FieldValueType:= fvtBoolean;
end;

procedure TClientProcessLevelData.SetOverrideDateIntervalFieldReadOnly;
begin
  if Owner.HasDateIntervalFields and Self.CanHaveDateIntervalFields then
    cdsLevelData.FieldByName('OVERRIDE_DATE_INTERVAL').ReadOnly:= not Owner.CanOverrideDateInterval;
end;

procedure TClientProcessLevelData.SetOverrideDateIntervalFieldOnChange;
begin
  if Owner.HasDateIntervalFields and Self.CanHaveDateIntervalFields then
    cdsLevelData.FieldByName('OVERRIDE_DATE_INTERVAL').OnChange:= DoDateIntervalFieldChange;
end;

procedure TClientProcessLevelData.DoDateIntervalFieldChange(Sender: TField);
begin
  if Assigned(FOnOverrideDateIntervalFieldChange) then
    FOnOverrideDateIntervalFieldChange(Sender);
end;

procedure TClientProcessLevelData.SetFullStrKeyValue(const AValue: string);
var
  sl: TStringList;
  i: Integer;
  FieldName: string;
  FieldValue: Integer;
begin
  Assert(cdsLevelData.State in dsEditModes);
  sl:= TStringList.Create;
  try
    sl.Delimiter:= ';';
    sl.DelimitedText:= AValue;
    for i:= IfThen(Owner.ShowOwnerAsRoot, 1) to sl.Count - 1 do
      begin
        FieldName:= sl.Names[i];
        FieldValue:= StrToInt(sl.Values[FieldName]);
        cdsLevelData.FieldByName(FieldName).AsInteger:= FieldValue;
      end;  { for }
  finally
    FreeAndNil(sl);
  end;  { try }

  SetFullStrKeyValueFields;
end;

function TClientProcessLevelData.GetStrKeyValue: string;
begin
  Result:= FieldStrKeyValue(KeyFieldName);
end;

function TClientProcessLevelData.Locate(const AFullStrKeyValue: string): Boolean;
begin
  Result:= cdsLevelData.Locate('SELF_FSK_VALUE', AFullStrKeyValue, []);
end;

procedure PrcDataCreateLike(AField: TField; AProcessOwner: TProcessOwner);
var
  SrcPrcData: TProcessOwnerData;
  DestPrcData: TProcessOwnerData;
  SrcLevel: TProcessLevelData;
  DestLevel: TProcessLevelData;
begin
  Assert(AField is TBlobField);
  SrcPrcData:= TProcessOwnerData.Create(AProcessOwner);
  try
    SrcPrcData.AsVariant:= ReadVariantFromBlobField(AField);
    DestPrcData:= TProcessOwnerData.Create(AProcessOwner);
    try
      DestPrcData.AsVariant:= dmMain.SvrProcesses.LoadPrcData(AProcessOwner.Name, 0);
      for SrcLevel in SrcPrcData.LevelsSet do
        begin
          DestLevel:= DestPrcData.LevelByName(SrcLevel.Name);
          SetDataSetData(DestLevel.cdsLevelData, GetDataSetData(SrcLevel.cdsLevelData, False), True);
        end;  { for }

      WriteVariantToBlobField(DestPrcData.AsVariant, AField);
    finally
      FreeAndNil(DestPrcData);
    end;  { try }
  finally
    FreeAndNil(SrcPrcData);
  end;  { try }
end;

procedure CheckPrcDataAgainstQuickAddPrcData(APrcData, AQuickAddPrcData: TClientProcessOwnerData);
var
  Level: TClientProcessLevelData;
  QuickAddLevel: TClientProcessLevelData;
begin
  Assert(APrcData.QuickAddOwner.Name = AQuickAddPrcData.Name);
  for Level in APrcData.LevelsSet do
    if not Level.IsDisconnected and Level.QuickAddEnabled then
      begin
        QuickAddLevel:= AQuickAddPrcData.LevelByName(Level.Name);
        Level.cdsLevelData.ForEach/
          procedure begin
            if not QuickAddLevel.Locate(Level.FullStrKeyValue) and not QuickAddLevel.Locate(Level.StrKeyValue) then
              raise Exception.Create(SCannotCopyPrcDataBecausePrcIsNotPresentInQuickAddPrcData);
          end;
      end;
end;

procedure PrcDataCopy(ASrcPrcData, ADestPrcData, ADestQuickAddPrcData: TClientProcessOwnerData);
var
  SrcLevel: TProcessLevelData;
  DestLevel: TProcessLevelData;
  SavedPrcDataVariant: Variant;
begin
  Assert(ASrcPrcData.Name = ADestPrcData.Name);

  CheckPrcDataAgainstQuickAddPrcData(ASrcPrcData, ADestQuickAddPrcData);

  SavedPrcDataVariant:= ADestPrcData.AsVariant;
  try
    for SrcLevel in ASrcPrcData.LevelsSet do
      begin
        DestLevel:= ADestPrcData.LevelByName(SrcLevel.Name);

        DestLevel.cdsLevelData.First;
        while not DestLevel.cdsLevelData.IsEmpty do
          DestLevel.cdsLevelData.Delete;

        SrcLevel.cdsLevelData.ForEach/
          DestLevel.cdsLevelData.SafeAppend/
            DestLevel.cdsLevelData.AssignFieldsProc(SrcLevel.cdsLevelData, '', True);
      end;
  except
    ADestPrcData.AsVariant:= SavedPrcDataVariant;
    raise;
  end;
end;

procedure PrcDataSaveToClipboard(APrcData: TClientProcessOwnerData);
var
  PrcDataStream: TMemoryStream;
  PrcDataMemoryHandle: THandle;
  ClipboardPrcDataPointer: Pointer;
  Clipboard: TClipboard;
begin
  PrcDataStream:= TMemoryStream.Create;
  try
    VariantToStream(APrcData.AsVariant, PrcDataStream);

    PrcDataMemoryHandle:= GlobalAlloc(GMEM_MOVEABLE, PrcDataStream.Size);
    try
      ClipboardPrcDataPointer:= GlobalLock(PrcDataMemoryHandle);
      try
        Move(PrcDataStream.Memory^, ClipboardPrcDataPointer^, PrcDataStream.Size);

        PrcDataClipboardFormats.AddOrSetValue(APrcData.ClipboardFormatName, RegisterClipboardFormat(PChar(APrcData.ClipboardFormatName)));

        Clipboard:= TClipboard.Create;
        try
          Clipboard.SetAsHandle(PrcDataClipboardFormats[APrcData.ClipboardFormatName], PrcDataMemoryHandle);
        finally
          FreeAndNil(Clipboard);
        end;
      finally
        GlobalUnlock(PrcDataMemoryHandle);
      end;
    except
      GlobalFree(PrcDataMemoryHandle);
      raise;
    end;
  finally
    FreeAndNil(PrcDataStream);
  end;
end;

procedure PrcDataLoadFromClipboard(APrcData: TClientProcessOwnerData);
var
  PrcDataStream: TMemoryStream;
  PrcDataMemoryHandle: THandle;
  PrcDataPointer: Pointer;
  PrcDataVariant: OleVariant;
  Clipboard: TClipboard;
begin
  Assert(ClipboardContainsPrcData(APrcData));

  Clipboard:= TClipboard.Create;
  try
    PrcDataMemoryHandle:= Clipboard.GetAsHandle(PrcDataClipboardFormats[APrcData.ClipboardFormatName]);
    PrcDataPointer:= GlobalLock(PrcDataMemoryHandle);
    try
      PrcDataStream:= TMemoryStream.Create;
      try
        PrcDataStream.SetSize(GlobalSize(PrcDataMemoryHandle));
        Move(PrcDataPointer^, PrcDataStream.Memory^, PrcDataStream.Size);
        StreamToVariant(PrcDataStream, PrcDataVariant);
        APrcData.AsVariant:= PrcDataVariant;
      finally
        FreeAndNil(PrcDataStream);
      end;
    finally
      GlobalUnlock(PrcDataMemoryHandle);
    end;
  finally
    FreeAndNil(Clipboard);
  end;
end;

function ClipboardContainsPrcData(APrcData: TClientProcessOwnerData): Boolean;
var
  PrcDataMemoryHandle: THandle;
begin
  if not PrcDataClipboardFormats.ContainsKey(APrcData.ClipboardFormatName) then
    PrcDataClipboardFormats.Add(APrcData.ClipboardFormatName, RegisterClipboardFormat(PChar(APRcData.ClipboardFormatName)));

  PrcDataMemoryHandle:= Clipboard.GetAsHandle(PrcDataClipboardFormats[APrcData.ClipboardFormatName]);
  Result:= (PrcDataMemoryHandle <> 0);
end;

function TClientProcessLevelData.GetLocalSortPrcObjectFormattedNo: string;

  function RingNoFieldToString(ARingNoField: TField): string;
  begin
    if ARingNoField.IsNull then
      Result:= DupeString('A', 9)
    else
      Result:= Format('%.9d', [ARingNoField.AsInteger]);
  end;

begin
  Result:=
    Format(
      '%d:%s:%s:%s',
      [ LogicalChildNo,
        RingNoFieldToString(cdsLevelData.FieldByName('PRC_RING_NO')),
        RingNoFieldToString(cdsLevelData.FieldByName('PRC_RING_LOCAL_NO')),
        cdsLevelData.FieldByName('PRC_OBJECT_FORMATTED_NO').AsString
      ]
    );
end;

function TClientProcessLevelData.GetVisualLevelNo: Integer;
begin
  if not Assigned(VisualParent) then
    Result:= 0
  else
    Result:= VisualParent.VisualLevelNo + 1;
end;

procedure TClientProcessLevelData.SetFullStrKeyValueFields;
begin
  cdsLevelData.FieldByName('SELF_FSK_VALUE').AsString:= FullStrKeyValue;
end;

procedure TClientProcessLevelData.SetAllRecordsFullStrKeyValueFields;
begin
  cdsLevelData.ForEach/
    cdsLevelData.SafeEdit/
      procedure begin
        SetFullStrKeyValueFields;
      end;
end;

initialization
  PrcDataClipboardFormats:= TClipboardFormats.Create;

finalization
  FreeAndNil(PrcDataClipboardFormats);

end.
