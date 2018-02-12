unit uUtils;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, SysUtils, Classes, Db, Math, Forms, AbmesDBGrid, DbClient,
  uNestProc, Controls, StdCtrls, uEnumeratorUtils, Variants, AbmesFields,
  ComCtrls, Generics.Collections, uFuncUtils, IOUtils, Rtti, SyncObjs, Registry,
  JvDragDrop;

const
  MinDate = 35065; // EncodeDate(1996, 1, 1);
  MaxDate = 47118; // EncodeDate(2028, 12, 31);

const
  WeekFormat = 'ww\e\iiii';
  NullAsString = 'null';
  RunAsVerb = 'runas';
  ElevatedSwitchName = 'elevated';

const
  MediumMemoryBlocksCode = 9999998;
  LargeMemoryBlocksCode = 9999999;

type
  TIntegerArray = array of Integer;

type
  TStringArray = TArray<string>;

type
  TBoolMethod = function: Boolean of object;

type
  ENoRights = class(Exception);

type
  EInLoopControl = class(Exception)
  public
    constructor Create;
  end;

type
  EBreak = class(EInLoopControl);
  EContinue = class(EInLoopControl);

function TryFinally(const ABeginProc, AEndProc: TProc): TNestProcRec; overload;
function TryFinally(const AEndProc: TProc): TNestProcRec; overload;
function TryExcept(const ABeginProc, ARollbackProc: TProc): TNestProcRec; overload;
function TryExcept(const ARollbackProc: TProc): TNestProcRec; overload;
function TryCommit(const ABeginProc, ACommitProc, ARollbackProc: TProc): TNestProcRec;

function PrecedeWith(APredecessorProc: TProc): TNestProcRec;
function SuccedeWith(ASuccessorProc: TProc): TNestProcRec;

type
  TPathHelper = record helper for TPath
  public
    function Combine(const APath1, APath2, APath3: string): string; overload;
  end;

type
  TObjectClassParentsEnumerator = class(TSimpleLinkedListEnumerator<TClass>)
  protected
    function GetNextNode(const ANode: TClass): TClass; override;
  end;

type
  TObjectHelper = class helper for TObject
  public
    function GetAs<T: class>: T;

    function ToEnumerable<T: class>: TEnumerableRec<T>; overload;
    function ToEnumerable: TEnumerableRec<TObject>; overload;

    class function ClassParents: TEnumerableRec<TClass>;
    class function SelfAndClassParents: TEnumerableRec<TClass>;

    class function LocalAttributes: TEnumerableRec<TCustomAttribute>;
    class function AllAttributes: TEnumerableRec<TCustomAttribute>;

    class function FindLocalAttribute<AttributeType: TCustomAttribute>: AttributeType;
    class function HasLocalAttribute<AttributeType: TCustomAttribute>: Boolean;

    class function FindAttribute<AttributeType: TCustomAttribute>: AttributeType;
    class function HasAttribute<AttributeType: TCustomAttribute>: Boolean;
  end;

type
  TThreadHelper = class helper (TObjectHelper) for TThread
  protected
    function Synchronize: TNestProcRec; overload;
  public
    class function Synchronize(AThread: TThread): TNestProcRec; overload;
  end;

type
  TMultiReadExclusiveWriteSynchronizerHelper = class helper (TObjectHelper) for TMultiReadExclusiveWriteSynchronizer
  public
    function TempRead: TNestProcRec;
    function TempWrite: TNestProcRec;
  end;

type
  TCriticalSectionHelper = class helper (TObjectHelper) for TCriticalSection
  public
    function TempEnter: TNestProcRec;
  end;

type
  TCollectionHelper = class helper (TObjectHelper) for TCollection
  protected
    function  GetEnumeratorObject: TObject;
  public
    function All: TEnumerableRec<TCollectionItem>;
    function Filter(const AFilterPredicate: TConstPredicate<TCollectionItem>): TEnumerableRec<TCollectionItem>; overload;
    function Filter(const AFilterPredicate: TPredicate<TCollectionItem>): TEnumerableRec<TCollectionItem>; overload;
    function Map<ResultItemType>(const AMapFunc: TConstFunc<TCollectionItem, ResultItemType>): TEnumerableRec<ResultItemType>; overload;
    function Map<ResultItemType>(const AMapFunc: TFunc<TCollectionItem, ResultItemType>): TEnumerableRec<ResultItemType>; overload;
    function Map(const AMapFunc: TConstFunc<TCollectionItem, TCollectionItem>): TEnumerableRec<TCollectionItem>; overload;
    function Map(const AMapFunc: TFunc<TCollectionItem, TCollectionItem>): TEnumerableRec<TCollectionItem>; overload;
    function AsOf<ResultItemType: TCollectionItem>: TEnumerableRec<ResultItemType>;
    function OfType<ResultItemType: TCollectionItem>: TEnumerableRec<ResultItemType>;

    function TempUpdate: TNestProcRec;
  end;

type
  TParamsHelper = class helper (TCollectionHelper) for TParams
  public
    function GetEnumerator: TEnumerator<TParam>;
    function All: TEnumerableRec<TParam>;
    function Filter(const AFilterPredicate: TConstPredicate<TParam>): TEnumerableRec<TParam>; overload;
    function Filter(const AFilterPredicate: TPredicate<TParam>): TEnumerableRec<TParam>; overload;
    function Map<ResultItemType>(const AMapFunc: TConstFunc<TParam, ResultItemType>): TEnumerableRec<ResultItemType>; overload;
    function Map<ResultItemType>(const AMapFunc: TFunc<TParam, ResultItemType>): TEnumerableRec<ResultItemType>; overload;
    function Map(const AMapFunc: TConstFunc<TParam, TParam>): TEnumerableRec<TParam>; overload;
    function Map(const AMapFunc: TFunc<TParam, TParam>): TEnumerableRec<TParam>; overload;
    function AsOf<ResultItemType: TParam>: TEnumerableRec<ResultItemType>;
    function OfType<ResultItemType: TParam>: TEnumerableRec<ResultItemType>;
  end;

type
  TParamHelper = class helper (TObjectHelper) for TParam
    procedure SetAsVarInteger(AValue: Integer);
  public
    property AsVarInteger: Integer write SetAsVarInteger;
  end;

type
  TFieldsHelper = class helper (TObjectHelper) for TFields
  strict private
    function  GetEnumeratorObject: TObject;
  public
    function All: TEnumerableRec<TField>;
    function Filter(const AFilterPredicate: TConstPredicate<TField>): TEnumerableRec<TField>; overload;
    function Filter(const AFilterPredicate: TPredicate<TField>): TEnumerableRec<TField>; overload;
    function Map<ResultItemType>(const AMapFunc: TConstFunc<TField, ResultItemType>): TEnumerableRec<ResultItemType>; overload;
    function Map<ResultItemType>(const AMapFunc: TFunc<TField, ResultItemType>): TEnumerableRec<ResultItemType>; overload;
    function Map(const AMapFunc: TConstFunc<TField, TField>): TEnumerableRec<TField>; overload;
    function Map(const AMapFunc: TFunc<TField, TField>): TEnumerableRec<TField>; overload;
    function AsOf<ResultItemType: TField>: TEnumerableRec<ResultItemType>;
    function OfType<ResultItemType: TField>: TEnumerableRec<ResultItemType>;
  end;

type
  TStringListHelper = class helper (TObjectHelper) for TStringList
  public
    function TempDisableOnChange: TNestProcRec;
  end;

type
  TComponentsEnumerator = class(TIndexedEnumerator<TComponent, TComponent>)
  protected
    function GetItem(AIndex: Integer): TComponent; override;
    function ItemCount: Integer; override;
  end;

type
  TComponentHelper = class helper (TObjectHelper) for TComponent
  public
    function AllComponents: TEnumerableRec<TComponent>;
  end;

type
  TControlParentsEnumerator = class(TSimpleLinkedListEnumerator<TControl>)
  protected
    function GetNextNode(const ANode: TControl): TControl; override;
  end;

type
  TControlHelper = class helper (TComponentHelper) for TControl
  public
    function Parents: TEnumerableRec<TControl>;
    function SelfAndParents: TEnumerableRec<TControl>;
    function TempVisible(AValue: Boolean): TNestProcRec;
  end;

type
  TControlsEnumerator = class(TIndexedEnumerator<TControl, TWinControl>)
  protected
    function GetItem(AIndex: Integer): TControl; override;
    function ItemCount: Integer; override;
  end;

type
  TWinControlHelper = class helper (TControlHelper) for TWinControl
  public
    function AllControls: TEnumerableRec<TControl>;
    function TotalHeight: Integer;
  end;

type
  TDataSetHelper = class helper (TComponentHelper) for TDataSet
  public
    procedure AssignFields(Source: TDataSet; const FieldNames: string = ''; AssignNullsOnly: Boolean = False);
    function AssignFieldsProc(Source: TDataSet; const FieldNames: string = ''; AssignNullsOnly: Boolean = False): TProc;
    function GetFieldValuesAsVarArray(const AFieldNames: string): Variant;
    procedure Subtract(ADataSet: TDataSet; const AOwnKeyFieldNames: string; const AForeignKeyFieldNames: string = ''; ASkipForeignCurrentRec: Boolean = False);
    procedure Intersect(ADataSet: TDataSet; const AOwnKeyFieldNames: string; const AForeignKeyFieldNames: string = '');
    procedure RecalcFields;
    function TempUnfilter: TNestProcRec;
    function TempFilter: TNestProcRec;
    function TempDisableControls: TNestProcRec;
    function TempOpen: TNestProcRec;
    function SafeAppend: TNestProcRec;
    function SafeEdit: TNestProcRec;
    function PreserveBookmark: TNestProcRec;
    function TryPreserveBookmark: TNestProcRec;
    function PreserveRecNo: TNestProcRec;
    function PreserveCurrentRecord(const AKeyFieldNames: string): TNestProcRec;
    function ForEach: TNestProcRec;
    function ForEachSelected(AGrid: TAbmesDBGrid): TNestProcRec;
  end;

type
  TClientDataSetHelper = class helper (TDataSetHelper) for TClientDataSet
  strict private
    procedure HelperApplayUpdates;
  public
    function TempCreateDataSet: TNestProcRec;
    function TempIndex(const AIndexName: string): TNestProcRec;
    function TempIndexFields(const AIndexFieldNames: string): TNestProcRec;
    procedure CheckUniqueConstraint(const AUniqueIndexName, AErrorMessage: string);
    function TempReadOnly(AValue: Boolean): TNestProcRec;
    function TempAutoCalcFields(AValue: Boolean): TNestProcRec;
    function TempAggregatesActive(AValue: Boolean): TNestProcRec;
    function TempDisableCache: TNestProcRec;
    function SafeApplyUpdates: TNestProcRec;
  end;

type
  TFormsEnumerator = class(TIndexedEnumerator<TForm, TScreen>)
  protected
    function GetItem(AIndex: Integer): TForm; override;
    function ItemCount: Integer; override;
  end;

type
  TDataModulesEnumerator = class(TIndexedEnumerator<TDataModule, TScreen>)
  protected
    function GetItem(AIndex: Integer): TDataModule; override;
    function ItemCount: Integer; override;
  end;

type
  TScreenHelper = class helper (TComponentHelper) for TScreen
  public
    function TempCursor(ACursor: TCursor): TNestProcRec;

    function AllForms: TEnumerableRec<TForm>;
    function AllDataModules: TEnumerableRec<TDataModule>;
  end;

type
  TStringsHelper = class helper (TObjectHelper) for TStrings
  private
    function GetValueEx(const Name: string): string;
    procedure SetValueEx(const Name, Value: string);
    function GetLoadFromStreamProc: TConstProc<TStream>;
  public
    function ToArray: TStringArray;
    property ValuesEx[const Name: string]: string read GetValueEx write SetValueEx;
    property LoadFromStreamProc: TConstProc<TStream> read GetLoadFromStreamProc;
  end;

type
  TFieldHelper = class helper (TComponentHelper) for TField
  private
    function GetAsVarFloat: Real;
    procedure SetAsVarFloat(AValue: Real);
    function GetAsVarInteger: Integer;
    procedure SetAsVarInteger(AValue: Integer);
  public
    procedure IfIsNullAssign(AValue: TField);
    function TempReadOnly(AValue: Boolean): TNestProcRec;
    procedure AssignFromDataSet(ADataSet: TDataSet);
    procedure CheckIsGreaterThan(AValue: Integer);

    function AsIntegerFunc: TFunc<Integer>;
    function AsBooleanFunc: TFunc<Boolean>;
    function AsStringFunc: TFunc<string>;
    function AsDateTimeFunc: TFunc<TDateTime>;
    function AsFloatFunc: TFunc<Double>;
    function AsVariantFunc: TFunc<Variant>;

    function AssignProc(AField: TField): TProc;

    property AsVarFloat: Real read GetAsVarFloat write SetAsVarFloat;
    property AsVarInteger: Integer read GetAsVarInteger write SetAsVarInteger;
  end;

type
  TRegistryHelper = class helper for TRegistry
  public
    function ReadStringDef(const Name: string; const DefaultValue: string = ''): string;
  end;

type
  TParamDataType = record
    ParamName: string;
    DataType: TFieldType;
  end;

type
  IImmutableStack<T> = interface; // T must be immutable and (reference counted or owned outside)

  TImmutableStackEnumerator<T> = class(TIndexedEnumerator<T, IImmutableStack<T>>)
  protected
    function GetItem(AIndex: Integer): T; override;
    function ItemCount: Integer; override;
  end;

  IImmutableStack<T> = interface
    function Push(const AValue: T): IImmutableStack<T>;
    function Pop(var AValue: T): IImmutableStack<T>; overload;
    function Pop: IImmutableStack<T>; overload;
    function Peek: T;
    function IsEmpty: Boolean;
    function GetEnumerator: TImmutableStackEnumerator<T>;
  end;

  TImmutableStack<T> = class(TInterfacedObject, IImmutableStack<T>)
  private
    FArray: TArray<T>;
  protected
    function Push(const AValue: T): IImmutableStack<T>;
    function Pop(var AValue: T): IImmutableStack<T>; overload;
    function Pop: IImmutableStack<T>; overload;
    function Peek: T;
    function IsEmpty: Boolean;
  public
    constructor Create; virtual;
    class function CreateInstance: TImmutableStack<T>; overload;
    function GetEnumerator: TImmutableStackEnumerator<T>;
  end;

function TempMonitorEnter(AObject: TObject): TNestProcRec;

procedure DoBreak;
procedure DoContinue;

function GetExeDateTime: TDateTime;

function GetExeVersion: string;
function GetExeLocale: string;

function MakeFilePath(const AFirstPath, ASecondPath: string): string;
function MakeFileName(const APath, AFileName: string): string;

function TempPath: string;

function ConcatWords(const AString1, AString2: string; const ASkipEmptyWords: Boolean = True; const ADelimiter: string = ' '): string; overload;
function ConcatWords(const AString1, AString2, AString3: string; const ASkipEmptyWords: Boolean = True; const ADelimiter: string = ' '): string; overload;
function ConcatWords(const AString1, AString2, AString3, AString4: string; const ASkipEmptyWords: Boolean = True; const ADelimiter: string = ' '): string; overload;
function ConcatWords(const ATexts: array of string; const ASkipEmptyWords: Boolean = True; const ADelimiter: string = ' '): string; overload;

function ConcatLines(const AString1, AString2: string; const ASkipEmptyLines: Boolean = True): string; overload;
function ConcatLines(const AString1, AString2, AString3: string; const ASkipEmptyLines: Boolean = True): string; overload;
function ConcatLines(const AString1, AString2, AString3, AString4: string; const ASkipEmptyLines: Boolean = True): string; overload;
function ConcatLines(const AString1, AString2, AString3, AString4, AString5: string; const ASkipEmptyLines: Boolean = True): string; overload;
function ConcatLines(const ATexts: array of string; const ASkipEmptyLines: Boolean = True): string; overload;

procedure WriteUTF8StringToFile(const AValue: RawByteString; const AFileName: string; Append: Boolean = False);

function ReadStringFromBlobField(AField: TField): string;
procedure WriteStringToBlobField(const AValue: string; AField: TField);

function ReadVariantFromBlobField(AField: TField): OleVariant;
procedure WriteVariantToBlobField(const AValue: OleVariant; AField: TField);

function ReadFileToBytes(const AFileName: string): TBytes;
procedure WriteBytesToFile(const AValue: TBytes; const AFileName: string);
function SameBytes(const AValue1, AValue2: TBytes): Boolean;

function ReadFileToVarArray(const AFileName: string): Variant;
procedure WriteVarArrayToFile(const AVarArray: Variant; const AFileName: string);

function AllAssigned(const APointers: array of Pointer): Boolean; overload;
function AllUnassigned(const APointers: array of Pointer): Boolean; overload;

function GetFieldValue(AField: TField): Variant;

procedure SetParamDataTypes(AParams: TParams; const AParamDataTypes: array of TParamDataType; ASetUnknownOnly: Boolean = True);

procedure SetParams(Params: TParams; ADataSet: TDataSet; ChangeNullParamsOnly: Boolean = False);

procedure ClearParams(Params: TParams);

procedure AssignFields(Source, Dest: TDataSet; const FieldNames: string = ''; AssignNullsOnly: Boolean = False);

procedure DoFieldRequiredError(F: TField);

procedure CheckRequiredField(F: TField);
procedure CheckRequiredFields(const Fields: array of TField); overload;
procedure CheckRequiredFields(ADataSet: TDataSet; const FieldNames: string); overload;
procedure CheckRequiredFields(ADataSet: TDataSet); overload;

procedure CheckFieldGroup(const Fields: array of TField); overload;
procedure CheckFieldGroup(ADataSet: TDataSet; const FieldNames: string); overload;

procedure ClearParamValues(AParams: TParams);

procedure ClearFieldIfAssigned(F: TField);

procedure ClearFieldsIfAssigned(const F: array of TField);

procedure CheckEditMode(ADataSet: TDataSet);

// Ako SourceField e null ==> DestField stava null, inache Dest:= Source ako Dest e null
procedure SyncFields(SourceField, DestField: TField);

// v kraia na stringa zamenia vsichki ednakvi simvoli
function ReplaceLastChars(const s: string; FindChar, ReplaceChar: Char): string;

// разширен Boolean тип, включващ стойност "без стойност" (еквивалент на Null)
type
  TExBoolean = (exbNull, exbFalse, exbTrue);

function BoolToExBool(const Value: Boolean): TExBoolean;
function ExBoolToBool(const Value: TExBoolean): Boolean;

function NullIf0(const AValue: Variant): Variant;

function VarToInt(const V: Variant): Integer;
function VarToIntDef(const V: Variant; ADefault: Integer): Integer;

function VarToFloat(const V: Variant): Real;
function VarToFloatDef(const V: Variant; const ADefault: Real): Real;
function VarToFloatNaN(const V: Variant): Real;


// XXXToVariant vrushta NULL ako (Value = 0) inache vrushta Value
function IntToVar(Value: Integer): Variant;
function IntToVarDef(Value: Integer; ADefault: Integer): Variant;

function FloatToVar(Value: Real): Variant;
function FloatToVarDef(Value, ADefault: Real): Variant;
function FloatToVarNaN(Value: Real): Variant;

function StringToVar(const Value: string): Variant;

function SafeDiv(const ADividend, ADivisor: Variant): Variant; overload;
function SafeDiv(ADividendField, ADivisorField: TField): Variant; overload;
function SafeDiv(ADividendField: TField; const ADivisor: Variant): Variant; overload;
function SafeDiv(const ADividend: Variant; ADivisorField: TField): Variant; overload;

// postva ako e v edit or insert mode
procedure PostDataSet(DataSet: TDataSet);
// cancelva ako e v edit or insert mode
procedure CancelDataSet(DataSet: TDataSet);

function VarIsNullOrEmpty(const Value: Variant): Boolean;

// funkcii i proceduri za rabota s boolean poleta
function GetBoolValue(Param: TParam): Boolean; overload;
procedure SetBoolValue(Param: TParam; Value: Boolean); overload;

function ValidEGN(EGN: Int64; Male: Boolean; ValidateDate: TDateTime = 0): Boolean;

function ValidLNCh(LNCh: Int64): Boolean;

function ValidBulstat(const ABulstat: string; const ABulstatEx: string = ''): Boolean;

function ValidIBAN(const IBAN: string): Boolean;

function FormatIBAN(const IBAN: string): string;

function ValidBIC(const BIC: string): Boolean;

// taz funkcia nikude ia niama. sramota
function MinDateTimeValue(A, B: TDateTime): TDateTime;

procedure RefilterDataSet(ADataSet: TDataSet);

function StrToVarArray(const s: string): Variant;
function VarArrayToStr(const v: Variant): string;

function LoadVariantFromString(const s: string): Variant;
function SaveVariantToString(const v: Variant): string;

function BytesToVarArray(const b: TBytes): Variant;
function VarArrayToBytes(const v: Variant): TBytes;

function VarArrayLength(const AVarArray: Variant): Integer;
function VarArraysAreEqual(const A, B: Variant): Boolean;

function VarRecToVariant(const AVarRec: TVarRec): Variant;

function VarMult(const A, B: Variant): Variant;
function VarDivide(const A, B: Variant): Variant;
function VarSub(const A, B: Variant): Variant;

function LargeZero(ANumber: Real; AEps: Real = 0.0001): Real;

function RealRound(AValue: Extended): Int64;
function RealRoundTo(AValue: Extended; const ADigit: TRoundToRange): Real;

function FileInUse(const AFileName: string): Boolean;

function MinStr(const A, B: string): string;
function MaxStr(const A, B: string): string;

function MonthsInPeriod(BeginDate, EndDate: TDateTime): Real;

function IfThen(AValue, ATrue, AFalse: Boolean): Boolean; overload;

function IfThen(AValue: Boolean; AIfTrueValue: TObject; AIfFalseValue: TObject = nil): TObject; overload;

function IfThen(AValue: Boolean; const AIfTrueValue: TBytes; const AIfFalseValue: TBytes): TBytes; overload;

function IfThen(AValue: Boolean; const AIfTrueValue, AIfFalseValue: Variant): Variant; overload;

function IntArrayToVarArray(const AArray: TIntegerArray): Variant;
function VarArrayToIntArray(const AVarArray: Variant): TIntegerArray;

function IntegerArrayOf(const AValues: array of Integer): TIntegerArray;
function StringArrayOf(const AValues: array of string): TStringArray;
function ConcatStringArrays(const AFirstArray, ASecondArray: array of string): TStringArray;

type
  Utils = class
  private
    class function GetDoNothing: TProc; static;
  public
    class function IfThen<T>(AValue: Boolean; const AIfTrueValue, AIfFalseValue: T): T; overload;
    class function IfThen<T>(AValue: Boolean; const AIfTrueValue: T): T; overload;
    class function Coalesce<T>(AValue1, AValue2: T): T; overload;
    class function Coalesce<T>(AValue1, AValue2, AValue3: T): T; overload;
    class function Using<T: class>(AObject: T): TNestProcRec<T>;
    class function Nest<T>: TNestFuncRec<T>;
    class function EmptyEnumerable<T>: TEnumerableRec<T>;
    class function ToEnumerable<T>(const AValue: T): TEnumerableRec<T>;
    class function &If(const ACondition: TFunc<Boolean>): TNestProcRec;
    class function OnException(const AOnExceptionProc: TProc): TNestProcRec; overload;
    class function OnException(const AOnExceptionProc: TProc<Exception>): TNestProcRec; overload;
    class function OnException<ExceptionType: Exception>(const AOnExceptionProc: TProc<ExceptionType>): TNestProcRec; overload;
    class function CatchException(const ACatchExceptionProc: TProc): TNestProcRec; overload;
    class function CatchException(const ACatchExceptionProc: TProc<Exception>): TNestProcRec; overload;
    class function CatchException<ExceptionType: Exception>(const ACatchExceptionProc: TProc<ExceptionType>): TNestProcRec; overload;

    class property DoNothing: TProc read GetDoNothing;
  end;

procedure LocateDateInterval(ADate: TDateTime; ADataSet: TDataSet;
  const ABeginDateFieldName: string = 'BEGIN_DATE'; const AEndDateFieldName: string = 'END_DATE');

function IsDataModuleReleased(ADataModule: TDataModule): Boolean;
function IsFormReleased(AForm: TForm): Boolean;

function IsAdminElevation: Boolean;
procedure EnsureAdminElevation;
function IsAppThemed(): Boolean; stdcall; external 'Uxtheme';

type
  TComponentChecker = class
  protected
    class function GetComponentPartOfEventName(AComponent: TComponent): string; virtual;
    class procedure CheckForDisconnectedEventHandlers(AComponent: TComponent); virtual;
  public
    class procedure CheckComponentsNotConnected(AOwner: TComponent);
  end;

function GetSelectedIntegers(AGrid: TAbmesDBGrid; const AFieldName: string): OleVariant;
function IsInVarArray(AValue: Integer; const AVarArray: OleVariant): Boolean;

function IsValueInArray(AValue: Integer; const AArray: array of Integer): Boolean;

function ProcessIsRunning(const AExeFileName: string): Boolean;
function RunningProcessCount(const AExeFileName: string): Integer;

function GetLocalDateTimeFormat: string;

function IsBookmarkEmpty(const ABookmark: TBookmark): Boolean;

function SameVariants(const A, B: Variant): Boolean;

const
  EmptyBookmark = nil;

const
  SIntLocationNotSupported = 'Location %d not supported';
  SStrLocationNotSupported = 'Location "%s" not supported';

function TickCountDiff(ABeginTickCount, AEndTickCount: Cardinal): Cardinal;

type
  TSimpleProcedure = procedure;
  TSimpleMethod = procedure of object;

function ToProc(ASimpleProc: TSimpleProcedure): TProc; overload;
function ToProc(AMethod: TSimpleMethod): TProc; overload;
procedure MakeProcToSimpleMethod(const AProc; var AMethod);


procedure KillApplication(AExitCode: Integer);

function GetFastMMAllocatedMemory: Cardinal;
function GetFastMMReservedMemory: Cardinal;
function GetWinMMAllocatedMemory: Cardinal;
function OleVariantMemorySize(const V: OleVariant): Cardinal;

function SubString(const AValue: string; AStartPos, AEndPos: Integer): string;
function SplitString(const AValue: string; const ADelimiterChar: Char = ' '; const AQuoteChar: Char = '"'): TStringArray;

function IndentLines(const AValue: string; const ANumIndentChars: Integer; const AIndentChar: Char = ' '): string; overload;
function IndentLines(const AValue: string; const AIndentStr: string): string; overload;

function GetURIProtocol(const AURI: string): string;

procedure ShellExecuteAndWait(const Verb, FileName,
  Parameters, WorkingDirectory: string; ShowCommand: Integer);

function VistaRunAsVerb: string;

function ForceForegroundWindow(hwnd: THandle): Boolean;

function FormatByteSize(const bytes: Int64): string;

function ExtractURLDocumentExt(const AURL: string): string;
function IsURL(const AValue: string): Boolean;
function GetDomainName(const AHost: string): string;

function GenerateGUID: string;

type
  IObjectHolder<T: class> = interface
    function GetValue: T;
    property Value: T read GetValue;
  end;

type
  TObjectHolder<T: class> = class(TInterfacedObject, IObjectHolder<T>)
  private
    FValue: T;
  protected
    function GetValue: T;
  public
    constructor Create(const AValue: T);
    destructor Destroy; override;
  end;

type
  TJvDropTargetHelper = class helper (TComponentHelper) for TJvDropTarget
  private
    function GetIsSingleFile: Boolean;
    function GetSingleFileName: string;
  public
    property IsSingleFile: Boolean read GetIsSingleFile;
    property SingleFileName: string read GetSingleFileName;
  end;

const
  SIncompatibleExeVersions = 'Incompatible client app version';
  SServicePoolBusy = 'Service pool busy';
  SMutexAbandoned = 'Mutex abandoned';
  SAuthenticationTokenExpired = 'Authentication token expired';
  SNotAuthenticated = 'Not authenticated';

implementation

uses
  DbConsts, StrUtils, TypInfo, DateUtils,
  TlHelp32, JclContainerIntf, uServerMessageIds,
  DSUtil, JwaPsApi, ShellAPI, FMTBcd,
  AbmesClientDataSet, IdURI, Generics.Defaults, uRttiUtils, uSystemLocaleUtils,
  AbmesDSProviderConnection, JclSysInfo, System.Net.HttpClient.Win, Winapi.WinHTTP;

const
  StringsEmptyValueEx = 'ThisStringIsConsideredEmpty1234';

{ Routines }

function CountChars(const AString: string; const AChar: Char): Integer;
var
  c: Char;
begin
  Result:= 0;
  for c in AString do
    if (c = AChar) then
      Inc(Result);
end;

function NormalizeQuotes(const AString: string; const AQuoteChar: Char = '"'): string;
begin
  if Odd(CountChars(AString, AQuoteChar)) then
    begin
      if EndsStr(AQuoteChar, AString) then
        Result:= Copy(AString, 1, Length(AString)-1)
      else
        Result:= AString + AQuoteChar;
    end
  else
    Result:= AString;
end;

function IndentLines(const AValue: string; const ANumIndentChars: Integer; const AIndentChar: Char = ' '): string;
begin
  Result:= IndentLines(AValue, DupeString(AIndentChar, ANumIndentChars));
end;

function IndentLines(const AValue: string; const AIndentStr: string): string;
begin
  Result:= AIndentStr + StringReplace(AValue, SLineBreak, SLineBreak + AIndentStr, [rfReplaceAll]);
end;

function SplitString(const AValue: string; const ADelimiterChar: Char = ' '; const AQuoteChar: Char = '"'): TStringArray;
var
  SL: TStringList;
begin
  SL:= TStringList.Create;
  try
    SL.Delimiter:= ADelimiterChar;
    SL.QuoteChar:= AQuoteChar;
    SL.StrictDelimiter:= True;

    SL.DelimitedText:= NormalizeQuotes(AValue);
    Result:= SL.ToArray;
  finally
    FreeAndNil(SL);
  end;
end;

function ConcatWords(const AString1, AString2: string; const ASkipEmptyWords: Boolean = True; const ADelimiter: string = ' '): string;
begin
  Result:= ConcatWords([AString1, AString2], ASkipEmptyWords, ADelimiter);
end;

function ConcatWords(const AString1, AString2, AString3: string; const ASkipEmptyWords: Boolean = True; const ADelimiter: string = ' '): string;
begin
  Result:= ConcatWords([AString1, AString2, AString3], ASkipEmptyWords, ADelimiter);
end;

function ConcatWords(const AString1, AString2, AString3, AString4: string; const ASkipEmptyWords: Boolean = True; const ADelimiter: string = ' '): string;
begin
  Result:= ConcatWords([AString1, AString2, AString3, AString4], ASkipEmptyWords, ADelimiter);
end;

function ConcatWords(const ATexts: array of string; const ASkipEmptyWords: Boolean = True; const ADelimiter: string = ' '): string;
var
  i: Integer;
  s: string;
begin
  Result:= '';
  if ASkipEmptyWords then
    for s in ATexts do
      begin
        if (s = '') then
          Continue;

        if (Result = '') then
          Result:= s
        else
          Result:= Result + ADelimiter + s;
      end
  else
    begin
      if (Length(ATexts) = 0) then
        Result:= ''
      else
        Result:= ATexts[0];

      for i:= 1 to Length(ATexts)-1 do
        Result:= Result + ADelimiter + ATexts[i];
    end;
end;

function ConcatLines(const AString1, AString2: string; const ASkipEmptyLines: Boolean): string;
begin
  Result:= ConcatLines([AString1, AString2], ASkipEmptyLines);
end;

function ConcatLines(const AString1, AString2, AString3: string; const ASkipEmptyLines: Boolean = True): string;
begin
  Result:= ConcatLines([AString1, AString2, AString3], ASkipEmptyLines);
end;

function ConcatLines(const AString1, AString2, AString3, AString4: string; const ASkipEmptyLines: Boolean = True): string;
begin
  Result:= ConcatLines([AString1, AString2, AString3, AString4], ASkipEmptyLines);
end;

function ConcatLines(const AString1, AString2, AString3, AString4, AString5: string; const ASkipEmptyLines: Boolean = True): string;
begin
  Result:= ConcatLines([AString1, AString2, AString3, AString4, AString5], ASkipEmptyLines);
end;

function ConcatLines(const ATexts: array of string; const ASkipEmptyLines: Boolean): string;
begin
  Result:= ConcatWords(ATexts, ASkipEmptyLines, SLineBreak);
end;

function IsBookmarkEmpty(const ABookmark: TBookmark): Boolean;
begin
  Result:= (ABookmark = EmptyBookmark);
end;

function GetExeDateTime: TDateTime;
var
  Found: Boolean;
begin
  Found:= FileAge(Application.ExeName, Result);
  Assert(Found);
end;

function GetExeVersion: string;
var
  FileName: string;
  InfoSize, Wnd: DWORD;
  VerBuf: Pointer;
  FI: PVSFixedFileInfo;
  VerSize: DWORD;
begin
  FileName := Application.ExeName;
  UniqueString(FileName);
  InfoSize := GetFileVersionInfoSize(PChar(FileName), Wnd);
  if InfoSize <> 0 then
    begin
      GetMem(VerBuf, InfoSize);
      try
        if GetFileVersionInfo(PChar(FileName), Wnd, InfoSize, VerBuf) then
          if VerQueryValue(VerBuf, '\', Pointer(FI), VerSize) then
            Result:= IntToStr(HIWORD(FI.dwProductVersionMS)) + '.' +
              IntToStr(LOWORD(FI.dwProductVersionMS)) + '.' +
              IntToStr(HIWORD(FI.dwProductVersionLS));
      finally
        FreeMem(VerBuf);
      end;  { try }
    end;  { if }
end;

function GetExeLocale: string;
//var
//  ThreadLocaleId: LCID;
//  ThreadLocaleName: array[0 .. LOCALE_NAME_MAX_LENGTH] of Char;
begin
//  ThreadLocaleId:= GetThreadLocale;
//  LCIDToLocaleName(ThreadLocaleId, ThreadLocaleName, Length(ThreadLocaleName), 0);
//  Result:= ThreadLocaleName;
  Result:= SystemLocaleToStr(slBulgarian);
end;

function IncludeLeadingPathDelimiter(const APath: string): string;
begin
  Result:= APath;

  if (Length(Result) > 0) and (Result[1] <> PathDelim) then
    Result:= PathDelim + Result;
end;

function MakeFilePath(const AFirstPath, ASecondPath: string): string;
begin
  Result:= ExcludeTrailingPathDelimiter(AFirstPath) + IncludeLeadingPathDelimiter(ASecondPath);
end;

function MakeFileName(const APath, AFileName: string): string;
begin
  if (APath <> '') and (APath[Length(APath)] <> '\') then
    Result:= APath + '\'
  else
    Result:= APath;

  if (Result <> '') then
    Result:= Result + AFileName;
end;

function TempPath: string;
var
	i: Integer;
begin
  SetLength(Result, MAX_PATH);
	i:= GetTempPath(Length(Result), PChar(Result));
	SetLength(Result, i);
end;

procedure WriteUTF8StringToFile(const AValue: RawByteString; const AFileName: string; Append: Boolean);
var
  fs: TFileStream;
  Mode: Word;
begin
  if Append and FileExists(AFileName) then
    Mode:= fmOpenReadWrite
  else
    Mode:= fmCreate;

  fs:= TFileStream.Create(AFileName, Mode);
  try
    if (Mode = fmOpenReadWrite) and (fs.Size > 0) then
      begin
        fs.Seek(0, soFromEnd);
        fs.Write(SLineBreak[1], Length(SLineBreak));
      end;

    if (Length(AValue) > 0) then
      fs.Write(AValue[1], Length(AValue));
  finally
    FreeAndNil(fs);
  end;  { try }
end;

function ReadStringFromBlobField(AField: TField): string;
var
  v: Variant;
begin
  v:= ReadVariantFromBlobField(AField);
  Assert(VarIsArray(v));
  Assert(VarArrayLowBound(v, 1) = VarArrayHighBound(v, 1));
  Result:= v[0];
end;

procedure WriteStringToBlobField(const AValue: string; AField: TField);
var
  v: Variant;
begin
  v:= VarArrayCreate([0, 0], varVariant);
  v[0]:= AValue;
  WriteVariantToBlobField(v, AField);
end;

function ReadFileToBytes(const AFileName: string): TBytes;
var
  fs: TFileStream;
  bs: TBytesStream;
begin
  bs:= TBytesStream.Create;
  try
    fs:= TFileStream.Create(AFileName, fmOpenRead);
    try
      bs.CopyFrom(fs, 0);
      Result:= bs.Bytes;
      SetLength(Result, bs.Size);  // fix na TBytesStream
    finally
      FreeAndNil(fs);
    end;  { try }
  finally
    FreeAndNil(bs);
  end;  { try }
end;

procedure WriteBytesToFile(const AValue: TBytes; const AFileName: string);
var
  fs: TFileStream;
  bs: TBytesStream;
begin
  bs:= TBytesStream.Create(AValue);
  try
    fs:= TFileStream.Create(AFileName, fmCreate);
    try
      fs.CopyFrom(bs, 0);
    finally
      FreeAndNil(fs);
    end;  { try }
  finally
    FreeAndNil(bs);
  end;  { try }
end;

function ReadVariantFromBlobField(AField: TField): OleVariant;
var
  bs: TClientBlobStream;
begin
  Assert(Assigned(AField));
  Assert(AField is TBlobField);

  bs:= TClientBlobStream.Create(AField as TBlobField, bmRead);
  try
    StreamToVariant(bs, Result);
  finally
    FreeAndNil(bs);
  end;  { try }
end;

procedure WriteVariantToBlobField(const AValue: OleVariant; AField: TField);
var
  bs: TClientBlobStream;
begin
  Assert(Assigned(AField));
  Assert(AField is TBlobField);

  bs:= TClientBlobStream.Create(AField as TBlobField, bmWrite);
  try
    VariantToStream(AValue, bs);
  finally
    FreeAndNil(bs);
  end;  { try }
end;

function SameBytes(const AValue1, AValue2: TBytes): Boolean;
begin
  if ((AValue1 = nil) and (AValue2 <> nil)) or
     ((AValue1 <> nil) and (AValue2 = nil)) or
     ((AValue1 <> nil) and (AValue2 <> nil) and (Length(AValue1) <> Length(AValue2))) then
    Result:= False
  else
    Result:=
      (AValue1 = AValue2) or
      CompareMem(AValue1, AValue2, Length(AValue1));
end;

procedure WriteVarArrayToFile(const AVarArray: Variant; const AFileName: string);
var
  fs: TFileStream;
  VarArrayPointer: Pointer;
begin
  Assert(VarIsArray(AVarArray));

  VarArrayPointer:= VarArrayLock(AVarArray);
  try
    fs:= TFileStream.Create(AFileName, fmCreate);
    try
      fs.WriteBuffer(VarArrayPointer^, VarArrayLength(AVarArray));
    finally
      FreeAndNil(fs);
    end;  { try }
  finally
    VarArrayUnlock(AVarArray);
  end;  { try }
end;

function ReadFileToVarArray(const AFileName: string): Variant;
var
  fs: TFileStream;
  VarArrayPointer: Pointer;
begin
  fs:= TFileStream.Create(AFileName, fmOpenRead);
  try
    Result:= VarArrayCreate([1, fs.Size], varByte);
    VarArrayPointer:= VarArrayLock(Result);
    try
      fs.ReadBuffer(VarArrayPointer^, fs.Size);
    finally
      VarArrayUnlock(Result);
    end;  { try }
  finally
    FreeAndNil(fs);
  end;  { try }
end;

{ AllAssigned and AllUnassigned functions }

function AllAssigned(const APointers: array of Pointer): Boolean;
var
  i: Integer;
begin
  Result:= True;
  for i:= Low(APointers) to High(APointers) do
    if not Assigned(APointers[i]) then
      begin
        Result:= False;
        Break;
      end;
end;

function AllUnassigned(const APointers: array of Pointer): Boolean;
var
  i: Integer;
begin
  Result:= True;
  for i:= Low(APointers) to High(APointers) do
    if Assigned(APointers[i]) then
      begin
        Result:= False;
        Break;
      end;
end;

{ Other routines }

function IsComponentConnected(X: TComponent): Boolean;
begin
  Result:=
    ( (X is TDataSet) and TDataSet(X).Active)  or
    ( (X is TCustomConnection) and TCustomConnection(X).Connected);
end;

function GetFieldValue(AField: TField): Variant;
begin
  Assert(Assigned(AField));

  if VarIsEmpty(AField.NewValue) then
    Result:= AField.OldValue
  else
    Result:= AField.NewValue;
end;

procedure SetParamDataTypes(AParams: TParams; const AParamDataTypes: array of TParamDataType; ASetUnknownOnly: Boolean = True);
var
  Param: TParam;
  ParamDataType: TParamDataType;
begin
  Assert(Assigned(AParams));
  for ParamDataType in AParamDataTypes do
    begin
      Param:= AParams.FindParam(ParamDataType.ParamName);
      if Assigned(Param) and
         (not ASetUnknownOnly or (Param.DataType = ftUnknown)) then
        Param.DataType:= ParamDataType.DataType;
    end;  { for }
end;

procedure SetParams(Params: TParams; ADataSet: TDataSet; ChangeNullParamsOnly: Boolean = False);
var
  I: Integer;
  Old: Boolean;
  Param: TParam;
  PName: string;
  Field: TField;
  Value: Variant;
begin
  Assert(Assigned(Params));
  Assert(Assigned(ADataSet));
  Assert(ADataSet.Active);

  for I:= 0 to Params.Count - 1 do
    begin
      Param:= Params[I];

      if ChangeNullParamsOnly and not Param.IsNull then
        Continue;

      PName:= Param.Name;
      Old:= CompareText(Copy(PName, 1, 4), 'OLD_') = 0;
      if Old then
        System.Delete(PName, 1, 4);

      Field:= ADataSet.FindField(PName);
      if not Assigned(Field) then
        Continue;

      Param.DataType:= Field.DataType;

      if (Field.FieldKind = fkData) and
         (ADataSet is TCustomClientDataSet) and
         (not (ADataSet is TAbmesClientDataSet)) then
        begin
          if Old then
            Param.Value:= Field.OldValue
          else
            begin
              Value:= Field.NewValue;
              if VarIsEmpty(Value) then
                Value:= Field.OldValue;

              Param.Value:= Value;
            end;
        end
      else   { if }
        begin
          Param.Value:= Field.Value;
        end;
    end;
end;

procedure ClearParams(Params: TParams);
var
  i: Integer;
begin
  Assert(Assigned(Params));

  for i:= 0 to Params.Count - 1 do
    Params[i].Clear;
end;

procedure AssignFields(Source, Dest: TDataSet; const FieldNames: string = ''; AssignNullsOnly: Boolean = False);

  procedure AssignField(ADestField: TField);
  var
    SourceField: TField;
  begin
    if (not ADestField.Calculated) and
       ((not AssignNullsOnly) or ADestField.IsNull) then
      begin
        SourceField:= Source.FindField(ADestField.FieldName);
        if Assigned(SourceField) then
          ADestField.Value:= SourceField.Value;
      end;
  end;   { AssignField }

var
  i: Integer;
  FldNames: TStringList;
begin
  Assert(Assigned(Dest), 'Destination DataSet must be assigned');
  Assert(Assigned(Source), 'Source DataSet must be assigned');

  if (FieldNames = '') then
    begin
      for i:= 0 to Dest.FieldCount - 1 do
        AssignField(Dest.Fields[i]);
    end
  else   { if }
    begin
      FldNames:= TStringList.Create;
      try
        FldNames.Delimiter:= ';';
        FldNames.DelimitedText:= FieldNames;

        for i:= 0 to FldNames.Count - 1 do
          AssignField(Dest.FieldByName(FldNames[i]));
      finally
        FreeAndNil(FldNames);
      end;
    end;   { if }
end;

procedure DoFieldRequiredError(F: TField);
begin
  Assert(Assigned(F));

  try
    F.FocusControl;
  except
    // do nothing
  end;

  DatabaseErrorFmt(SFieldRequired, [F.DisplayName]);
end;

procedure InternalCheckRequiredField(F: TField);
begin
  Assert(Assigned(F));

  if F.IsNull then
    DoFieldRequiredError(F);
end;

procedure CheckRequiredField(F: TField);
begin
  with F.DataSet do
    if (State in dsEditModes) then
      UpdateRecord;

  InternalCheckRequiredField(F);
end;

procedure CheckRequiredFields(const Fields: array of TField);
var
  f: TField;
begin
  for f in Fields do
    CheckRequiredField(f);
end;

procedure CheckRequiredFields(ADataSet: TDataSet; const FieldNames: string);
var
  i: Integer;
  FldNames: TStringList;
begin
  Assert(Assigned(ADataSet), 'ADataSet must be assigned');
  Assert((FieldNames <> ''), 'FieldNames must not be empty');

  FldNames:= TStringList.Create;
  try
    FldNames.Delimiter:= ';';
    FldNames.DelimitedText:= FieldNames;

    if (ADataSet.State in dsEditModes) then
      ADataSet.UpdateRecord;

    for i:= 0 to FldNames.Count - 1 do
      InternalCheckRequiredField(ADataSet.FieldByName(FldNames[i]));
  finally
    FreeAndNil(FldNames);
  end;
end;

procedure CheckRequiredFields(ADataSet: TDataSet);
var
  I: Integer;
begin
  for I := 0 to ADataSet.FieldCount - 1 do
    with ADataSet.Fields[I] do
      if Required and not ReadOnly and (FieldKind = fkData) and IsNull then
        DoFieldRequiredError(ADataSet.Fields[I]);
end;

procedure CheckFieldGroup(const Fields: array of TField);
var
  fld: TField;
begin
  for fld in Fields do
    if not fld.IsNull then
      begin
        CheckRequiredFields(Fields);
        Exit;
      end;
end;

procedure CheckFieldGroup(ADataSet: TDataSet; const FieldNames: string); overload;
var
  Fields: array of TField;
  i: Integer;
  FldNames: TStringList;
begin
  FldNames:= TStringList.Create;
  try
    FldNames.Delimiter:= ';';
    FldNames.DelimitedText:= FieldNames;

    SetLength(Fields, FldNames.Count);

    for i:= 0 to FldNames.Count - 1 do
      Fields[i]:= ADataSet.FieldByName(FldNames[i]);
  finally
    FreeAndNil(FldNames);
  end;

  CheckFieldGroup(Fields);
end;

procedure ClearParamValues(AParams: TParams);
var
  i: Integer;
begin
  for i:= 0 to AParams.Count-1 do
    AParams[i].Clear;
end;

procedure ClearFieldIfAssigned(F: TField);
begin
  if Assigned(F) then
    F.Clear;
end;

procedure ClearFieldsIfAssigned(const F: array of TField);
var
  i: Integer;
begin
  for i:= Low(F) to High(F) do
    ClearFieldIfAssigned(F[i]);
end;

procedure CheckEditMode(ADataSet: TDataSet);
begin
  Assert(Assigned(ADataSet));

  with ADataSet do
    if not (State in dsEditModes) then
      Edit;
end;

procedure SyncFields(SourceField, DestField: TField);
begin
  Assert((SourceField.DataType = DestField.DataType) and
         (SourceField.DataSize = DestField.DataSize),
         'Fields not compatible to be synchronized');

  CheckEditMode(DestField.DataSet);

  if SourceField.IsNull then
    DestField.Clear
  else   { if }
    begin
      if DestField.IsNull then
        DestField.Assign(SourceField);
    end;   { if }
end;

function ReplaceLastChars(const s: string; FindChar, ReplaceChar: Char): string;
var
  i: Integer;
begin
  Result:= s;

  i:= Length(Result);
  while (i > 0) and (Result[i] = FindChar) do
    begin
      Result[i]:= ReplaceChar;
      Dec(i);
    end;
end;

{ TExBoolean routines }

function BoolToExBool(const Value: Boolean): TExBoolean;
begin
  if Value then
    Result:= exbTrue
  else
    Result:= exbFalse;
end;

function ExBoolToBool(const Value: TExBoolean): Boolean;
begin
  case Value of
    exbFalse:
      Result:= False;
    exbTrue:
      Result:= True;
  else
    raise Exception.Create('Cannot transform ExBool value to Boolean');
  end;
end;

function NullIf0(const AValue: Variant): Variant;
begin
  if not VarIsNullOrEmpty(AValue) and (AValue = 0) then
    Result:= Null
  else
    Result:= AValue;
end;

function VarToInt(const V: Variant): Integer;
begin
  Result:= VarToIntDef(V, 0);
end;

function VarToIntDef(const V: Variant; ADefault: Integer): Integer;
begin
  if VarIsEmpty(V) or VarIsNull(V) then
    Result:= ADefault
  else
    Result:= V;
end;

function VarToFloat(const V: Variant): Real;
begin
  Result:= VarToFloatDef(V, 0);
end;

function VarToFloatDef(const V: Variant; const ADefault: Real): Real;
begin
  if VarIsEmpty(V) or VarIsNull(V) then
    Result:= ADefault
  else
    Result:= V;
end;

function VarToFloatNaN(const V: Variant): Real;
begin
  Result:= VarToFloatDef(V, NaN);
end;

function IntToVar(Value: Integer): Variant;
begin
  Result:= IntToVarDef(Value, 0);
end;

function IntToVarDef(Value: Integer; ADefault: Integer): Variant;
begin
  if (Value = ADefault) then
    Result:= Null
  else
    Result:= Value;
end;

function FloatToVar(Value: Real): Variant;
begin
  Result:= FloatToVarDef(Value, 0);
end;

function FloatToVarDef(Value, ADefault: Real): Variant;
begin
  if (Value = ADefault) then
    Result:= Null
  else
    Result:= Value;
end;

function FloatToVarNaN(Value: Real): Variant;
begin
  if IsNaN(Value) then
    Result:= Null
  else
    Result:= Value;
end;

function StringToVar(const Value: string): Variant;
begin
  if (Value = '') then
    Result:= Null
  else
    Result:= Value;
end;

function SafeDiv(const ADividend, ADivisor: Variant): Variant;
begin
  if VarIsNullOrEmpty(ADividend) or VarIsNullOrEmpty(ADivisor) or (ADivisor = 0) then
    Result:= Null
  else
    Result:= ADividend / ADivisor;
end;

function SafeDiv(ADividendField, ADivisorField: TField): Variant;
begin
  Result:= SafeDiv(ADividendField.AsVariant, ADivisorField.AsVariant);
end;

function SafeDiv(ADividendField: TField; const ADivisor: Variant): Variant;
begin
  Result:= SafeDiv(ADividendField.AsVariant, ADivisor);
end;

function SafeDiv(const ADividend: Variant; ADivisorField: TField): Variant;
begin
  Result:= SafeDiv(ADividend, ADivisorField.AsVariant);
end;

procedure PostDataSet(DataSet: TDataSet);
begin
  if (DataSet.State in dsEditModes) then
    DataSet.Post;
end;

procedure CancelDataSet(DataSet: TDataSet);
begin
  if (DataSet.State in dsEditModes) then
    DataSet.Cancel;
end;

function VarIsNullOrEmpty(const Value: Variant): Boolean;
begin
  Result:= VarIsNull(Value) or VarIsEmpty(Value);
end;

function GetBoolValue(Param: TParam): Boolean;
begin
  Result:= (Param.AsInteger <> 0);
end;

procedure SetBoolValue(Param: TParam; Value: Boolean);
begin
  Param.AsInteger:= Ord(Value);
end;

function ValidEGN(EGN: Int64; Male: Boolean; ValidateDate: TDateTime = 0): Boolean;
var
  d, m, y, ID, CheckDigit: Integer;
  ADate: TDateTime;
begin
  // algorityma e opisan na http://grao.government.bg
  y:= EGN div 100000000;
  m:= (EGN div 1000000) mod 100;
  d:= (EGN div 10000) mod 100;
  ID:= (EGN div 10) mod 1000;
  CheckDigit:= EGN mod 10;

  if (m > 40) then
    begin
      Dec(m, 40);
      Inc(y, 2000);
    end
  else
  if (m > 20) then
    begin
      Dec(m, 20);
      Inc(y, 1800);
    end
  else
    Inc(y, 1900);

  if (ValidateDate = 0) then
    Result:= True
  else
    Result:= (y = YearOf(ValidateDate)) and (m = MonthOf(ValidateDate)) and (d = DayOf(ValidateDate));

  Result:=
    Result and

    TryEncodeDate(y, m, d, ADate) and

    (Male = ((ID mod 2) = 0)) and

    (
      (
        (
          (
            (EGN div 1000000000) * 2 +           // k1
            ((EGN div 100000000) mod 10) * 4 +   // k2
            ((EGN div 10000000) mod 10) * 8 +    // k3
            ((EGN div 1000000) mod 10) * 5 +     // k4
            ((EGN div 100000) mod 10) * 10 +     // k5
            ((EGN div 10000) mod 10) * 9 +       // k6
            ((EGN div 1000) mod 10) * 7 +        // k7
            ((EGN div 100) mod 10) * 3 +         // k8
            ((EGN div 10) mod 10) * 6            // k9
          ) mod 11
        ) mod 10
      ) = CheckDigit
    );
end;


function ValidLNCh(LNCh: Int64): Boolean;
var
  CheckDigit: Integer;
begin
  CheckDigit:= LNCh mod 10;

  Result:=
    (
      (
        (
          ((LNCh div 1000000000) mod 10) * 21 +  // k1
          ((LNCh div  100000000) mod 10) * 19 +  // k2
          ((LNCh div   10000000) mod 10) * 17 +  // k3
          ((LNCh div    1000000) mod 10) * 13 +  // k4
          ((LNCh div     100000) mod 10) * 11 +  // k5
          ((LNCh div      10000) mod 10) *  9 +  // k6
          ((LNCh div       1000) mod 10) *  7 +  // k7
          ((LNCh div        100) mod 10) *  3 +  // k8
          ((LNCh div         10) mod 10) *  1    // k9
        )
        mod 10
      ) = CheckDigit
    );
end;

function ValidBulstat(const ABulstat: string; const ABulstatEx: string = ''): Boolean;
{
Изчисление на контролната цифра:
числата с поредност
1, 2, 3, 4, 5, 6, 7, 8 се умножават съответно по
1, 2, 3, 4, 5, 6, 7, 8,
сумират се получените произведения, и резултата се
дели на 11. При остатък различен от 10 - контролното
число е равно на остатъка, иначе:

числата с поредност
1, 2, 3, 4, 5, 6, 7, 8 се умножават съответно по
3, 4, 5, 6, 7, 8, 9,10,
сумират се получените произведения, и резултата се
дели на 11. При остатък различен от 10 - контролното
число е равно на остатъка, иначе контролното число е
равно на 0.

За 13-цифрените булстат номера:
първите 8 се изчисляват по гореописания начин, и
се получава 9-тата цифра.
13-тата цифра е контролна.

Изчисление на контролната цифра:
числата с поредност
9, 10, 11, 12 се умножават съответно по
2, 7, 3, 5,
сумират се получените произведения, и резултата се
дели на 11. При остатък различен от 10 - контролното
число е равно на остатъка, иначе:

числата с поредност
9, 10, 11, 12 се умножават съответно по
4, 9, 5, 7,
сумират се получените произведения, и резултата се
дели на 11. При остатък различен от 10 - контролното
число е равно на остатъка, иначе контролното число е
равно на 0.

}
var
  Bulstat: Int64;
  BulstatEx: Integer;
  rem: Integer;
  CheckDigit: Integer;
begin
  Result:= ((Length(ABulstat) = 9) and (Length(ABulstatEx) = 0) or (Length(ABulstatEx) = 4));

  Bulstat:= 0;
  BulstatEx:= 0;

  try
    Bulstat:= StrToInt64(ABulstat);

    if (Length(ABulstatEx) = 0) then
      BulstatEx:= 0
    else
      BulstatEx:= StrToInt(ABulstatEx);
  except
    Result:= False;
  end;  { try }

  if not Result then
    Exit;

  CheckDigit:= Bulstat mod 10;

  rem:=
    (
      (((Bulstat div 100000000) mod 10) * 1) +
      (((Bulstat div 10000000) mod 10) * 2) +
      (((Bulstat div 1000000) mod 10) * 3) +
      (((Bulstat div 100000) mod 10) * 4) +
      (((Bulstat div 10000) mod 10) * 5) +
      (((Bulstat div 1000) mod 10) * 6) +
      (((Bulstat div 100) mod 10) * 7) +
      (((Bulstat div 10) mod 10) * 8)
    ) mod 11;

  if (rem <> 10) then
    Result:= (rem = CheckDigit)
  else
    begin
      rem:=
        (
          (((Bulstat div 100000000) mod 10) * 3) +
          (((Bulstat div 10000000) mod 10) * 4) +
          (((Bulstat div 1000000) mod 10) * 5) +
          (((Bulstat div 100000) mod 10) * 6) +
          (((Bulstat div 10000) mod 10) * 7) +
          (((Bulstat div 1000) mod 10) * 8) +
          (((Bulstat div 100) mod 10) * 9) +
          (((Bulstat div 10) mod 10) * 10)
        ) mod 11;

      if (rem <> 10) then
        Result:= (rem = CheckDigit)
      else
        Result:= (CheckDigit = 0);
    end;

  if (BulstatEx > 0) then
    begin
      CheckDigit:= BulstatEx mod 10;
      rem:=
        (
          ((Bulstat mod 10) * 2) +
          (((BulstatEx div 1000) mod 10) * 7) +
          (((BulstatEx div 100) mod 10) * 3) +
          (((BulstatEx div 10) mod 10) * 5)
        ) mod 11;

      if (rem <> 10) then
        Result:= Result and (rem = CheckDigit)
      else
        begin
          rem:=
            (
              ((Bulstat mod 10) * 4) +
              (((BulstatEx div 1000) mod 10) * 9) +
              (((BulstatEx div 100) mod 10) * 5) +
              (((BulstatEx div 10) mod 10) * 7)
            ) mod 11;

          if (rem <> 10) then
            Result:= Result and (rem = CheckDigit)
          else
            Result:= Result and (CheckDigit = 0);
        end;
    end;
end;

function ValidIBAN(const IBAN: string): Boolean;
{
IBAN validation algorithm:

1. The IBAN must have a minimum of 5 and a maximum of 34 characters.

2. It must only contain capital letters of the Latin alphabet from A to Z and digits from 0 to 9.
   Moreover, in positions 0 and 1 there must be only letters (a valid ISO state code),
   while in positions 2 and 3 only numbers.

3. The first four characters of the original string are swapped with the rest.

4. Every character is converted into a code from 0 to 35 according to the following rule.
   The digit is transformed into the corresponding number, for example 7 into 7.
   The letter A is converted into 10, B into 11, etc, Z is converted into 35.
   The result in a new string made of the numbers that have been obtained.

5. The new numerical string is interpreted now as a number.
   Dividing that number by 97, the remainder 1 must be obtained.
   In order to facilitate the division of the excessive long numbers,
   it is possible to break the numerical string into smaller parts,
   and calculate the remainder of the division of the first part by 97,
   then make the new numerical string of the remainder and of the second part and
   calculate the remainder of the division of this number by 97, etc
}
const
  Divider = 97;
  IntegerSafeDecimalPlaces = 8;
var
  Dictionary: string;

  procedure FillDictionary;
  var
    c: Char;
  begin
    for c:= '0' to '9' do
      Dictionary:= Dictionary + c;
    for c:= 'A' to 'Z' do
      Dictionary:= Dictionary + c;
  end;  { FillDictionary }

  function DictionaryToNumber(AChar: Char): Integer; // zerobased, returns -1 if not found
  begin
    Result:= Pos(AChar, Dictionary) - 1;
  end;  { DictionaryToNumber }

var
  i: Integer;
  SwappedIBAN: string;
  LargeNo: string;
  DividerDecimalPlaces: Integer;
  Remainder: Integer;
begin
  FillDictionary;

  Result:= False;

// 1.
  if not InRange(Length(IBAN), 5, 34) then
    Exit;

// 2.
  if (DictionaryToNumber(IBAN[1]) <= 9) or
     (DictionaryToNumber(IBAN[2]) <= 9) or
     (not InRange(DictionaryToNumber(IBAN[3]), 0, 9)) or
     (not InRange(DictionaryToNumber(IBAN[4]), 0, 9)) then
    Exit;

  for i:= 5 to Length(IBAN) do
    if (DictionaryToNumber(IBAN[i]) = -1) then
      Exit;

// 3.
  SwappedIBAN:= RightStr(IBAN, Length(IBAN)-4) + LeftStr(IBAN, 4);

// 4.
  LargeNo:= '';
  for i:= 1 to Length(SwappedIBAN) do
    LargeNo:= LargeNo + IntToStr(DictionaryToNumber(SwappedIBAN[i]));

// 5.
  DividerDecimalPlaces:= Length(IntToStr(Divider));
  while (Length(LargeNo) > DividerDecimalPlaces) or (StrToInt(LargeNo) >= Divider) do
    begin
      Remainder:= StrToInt(LeftStr(LargeNo, IntegerSafeDecimalPlaces)) mod Divider;
      LargeNo:= IntToStr(Remainder) + RightStr(LargeNo, Length(LargeNo)-IntegerSafeDecimalPlaces);
    end;  { while }

  Remainder:= StrToInt(LargeNo);

  Result:= (Remainder = 1);
end;  { ValidIBAN }

function FormatIBAN(const IBAN: string): string;
const
  GroupLength = 4;
const
  GroupSeparator = ' ';
var
  GroupSeparatorPos: Integer;
begin
  Result:= IBAN;
  GroupSeparatorPos:= GroupLength + 1;
  while (GroupSeparatorPos <= Length(Result)) do
    begin
      Insert(GroupSeparator, Result, GroupSeparatorPos);
      Inc(GroupSeparatorPos, GroupLength + 1);
    end;
end;  { FormatIBAN }

function ValidBIC(const BIC: string): Boolean;
var
  i: Integer;
begin
  Result:= False;

  if (Length(BIC) <> 8) and (Length(BIC) <> 11) then
    Exit;

  for i:= 1 to Length(BIC) do
    if not CharInSet(BIC[i], ['A'..'Z', '0'..'9']) then
      Exit;

  Result:= True;
end;  { ValidBIC }

function MinDateTimeValue(A, B: TDateTime): TDateTime;
begin
  if (A < B) then
    Result:= A
  else
    Result:= B;
end;

procedure RefilterDataSet(ADataSet: TDataSet);
var
  b: TBookmark;
  OldFiltered: Boolean;
begin
  with ADataSet do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          OldFiltered:= Filtered;
          Filtered:= False;
          Filtered:= OldFiltered;
        finally
          try
            Bookmark:= b;
          except
            First;
          end;  { try }
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

function StrToVarArray(const s: string): Variant;
begin
  Result:= BytesToVarArray(PlatformBytesOf(s));
end;

function VarArrayToStr(const v: Variant): string;
begin
  Result:= PlatformStringOf(VarArrayToBytes(v));
end;

function LoadVariantFromString(const s: string): Variant;
var
  StringStream: TStringStream;
  v: OleVariant;
begin
  StringStream:= TStringStream.Create(s);
  try
    StreamToVariant(StringStream, v);
    Result:= v;
  finally
    StringStream.Free;
  end;
end;

function SaveVariantToString(const v: Variant): string;
var
  StringStream: TStringStream;
begin
  StringStream:= TStringStream.Create();
  try
    VariantToStream(v, StringStream);
    Result:= StringStream.DataString;
  finally
    StringStream.Free;
  end;
end;

function BytesToVarArray(const b: TBytes): Variant;
var
  VarArrayPointer: Pointer;
  len: Integer;
begin
  len:= Length(b);
  Result:= VarArrayCreate([1, len], varByte);

  VarArrayPointer:= VarArrayLock(Result);
  try
    Move(Pointer(b)^, VarArrayPointer^, len);
  finally
    VarArrayUnlock(Result);
  end;  { try }
end;

function VarArrayToBytes(const v: Variant): TBytes;
var
  VarArrayPointer: Pointer;
  len: Integer;
begin
  if VarIsNullOrEmpty(v) then
    begin
      SetLength(Result, 0);
      Exit;
    end;

  Assert(VarIsArray(v));

  len:= VarArrayLength(v);
  SetLength(Result, VarArrayLength(v));

  VarArrayPointer:= VarArrayLock(v);
  try
    Move(VarArrayPointer^, Pointer(Result)^, len);
  finally
    VarArrayUnlock(v);
  end;  { try }
end;

function VarArrayLength(const AVarArray: Variant): Integer;
begin
  Assert(VarIsArray(AVarArray));

  Result:= VarArrayHighBound(AVarArray, 1) - VarArrayLowBound(AVarArray, 1) + 1;
end;

function VarArraysAreEqual(const A, B: Variant): Boolean;
var
  i: Integer;
begin
  Assert(VarIsArray(A));
  Assert(VarIsArray(B));

  Result:= VarArrayLength(A) = VarArrayLength(B);
  if not Result then
    Exit;

  for i:= VarArrayLowBound(A, 1) to VarArrayHighBound(A, 1) do
    if (VarType(A[i]) <> VarType(B[i])) or (A[i] <> B[i]) then
      Exit(False);
end;

function VarRecToVariant(const AVarRec: TVarRec): Variant;
var
  s: string;
begin
  with AVarRec do
    case VType of
      vtInteger:
        Result:= VInteger;
      vtBoolean:
        Result:= VBoolean;
      vtChar:
        Result:= VChar;
      vtExtended:
        Result:= VExtended^;
      vtString:
        Result:= VString^;
      vtPChar:
        begin
          s:= string(VPChar);
          Result:= s;
        end;
      vtAnsiString:
        Result:= string(VAnsiString);
      vtCurrency:
        Result:= VCurrency^;
      vtVariant:
        if not VarIsClear(VVariant^) then
          Result := VVariant^;
      vtWideString:
        Result:= WideString(VWideString);
      vtInt64:
        Result:= VInt64^;
    else
      Result:= Unassigned;
    end;
end;

function VarMult(const A, B: Variant): Variant;
begin
  if VarIsNull(A) or VarIsNull(B) then
    Result:= Null
  else
    Result:= A * B;
end;

function VarDivide(const A, B: Variant): Variant;
begin
  if VarIsNull(A) or VarIsNull(B) then
    Result:= Null
  else
    Result:= A / B;
end;

function VarSub(const A, B: Variant): Variant;
begin
  if VarIsNull(A) or VarIsNull(B) then
    Result:= Null
  else
    Result:= A - B;
end;

function LargeZero(ANumber: Real; AEps: Real): Real;
begin
  if (Abs(ANumber) < AEps) then
    Result:= 0
  else
    Result:= ANumber;
end;

function RealRound(AValue: Extended): Int64;
begin
  Result:= Trunc(RealRoundTo(AValue, 0));
end;

function CommercialRound(const X: Extended): Int64;
begin
  Result:= Trunc(X);
  if Frac(Abs(X)) >= 0.499999999 then
    Result := Result + Sign(X);
end;

function RealRoundTo(AValue: Extended; const ADigit: TRoundToRange): Real;
var
  d: Extended;
begin
  d:= Power(10, ADigit);
  Result:= CommercialRound(AValue / d) * d;
end;

{ TComponentChecker }

class procedure TComponentChecker.CheckComponentsNotConnected(AOwner: TComponent);
var
  i: Integer;
begin
  Assert(Assigned(AOwner));

  with AOwner do
    for i:= 0 to ComponentCount - 1 do
      if IsComponentConnected(Components[i]) then
        raise Exception.CreateFmt('Component %s.%s must not be active/connected at create time!',
          [Name, Components[i].Name]);
end;

class function TComponentChecker.GetComponentPartOfEventName(
  AComponent: TComponent): string;
begin
  if (AComponent is TForm) then
    Result:= 'Form'
  else if (AComponent is TDataModule) then
    Result:= 'DataModule'
  else
    Result:= AComponent.Name;
end;

class procedure TComponentChecker.CheckForDisconnectedEventHandlers(AComponent: TComponent);

  function CalcEventHandlerMethodName(cmp: TComponent; const AEventName: string): string;
  var
    ComponentName: string;
  begin
    ComponentName:= GetComponentPartOfEventName(cmp);

    if (Pos('On', AEventName) = 1) then
      Result:= ComponentName + RightStr(AEventName, Length(AEventName) - Length('On'))
    else
      Result:= ComponentName + AEventName;
  end;

  function EventHandler(const AObject: TObject; const AEventName: string): Pointer;
  begin
    Result:= GetMethodProp(AObject, AEventName).Code;
  end;

var
  PropList: PPropList;
  PropCount: Integer;
  i, j: Integer;
  ma: Pointer;
  oma: Pointer;
  eh: Pointer;
begin
  Assert(Assigned(AComponent));

  PropCount:= GetPropList(PTypeInfo(AComponent.ClassInfo), PropList);
  try
    for i:= 0 to PropCount - 1 do
      if (PropList[i].PropType^^.Kind = tkMethod) then
        begin
          eh:= EventHandler(AComponent, string(PropList[i].Name));
          ma:= AComponent.MethodAddress(CalcEventHandlerMethodName(AComponent, string(PropList[i].Name)));

          if Assigned(eh) then
            begin
              if Assigned(ma) and (ma <> eh) then
                raise Exception.Create('CheckForDisconnectedEventHandlers found ' + AComponent.Name + '.' + string(PropList[i].Name) + ' not connected to proper event handler');
            end
          else
            begin
              if (ma <> nil) then
                raise Exception.Create('CheckForDisconnectedEventHandlers found ' + AComponent.Name + '.' + string(PropList[i].Name) + ' disconnected');
            end;
        end;
  finally
    FreeMem(PropList);
  end;  { try }

  for j:= 0 to AComponent.ComponentCount - 1 do
    begin
      PropCount:= GetPropList(PTypeInfo(AComponent.Components[j].ClassInfo), PropList);
      try
        for i:= 0 to PropCount - 1 do
          if (PropList[i].PropType^^.Kind = tkMethod) then
            begin
              eh:= EventHandler(AComponent.Components[j], string(PropList[i].Name));
              ma:= AComponent.MethodAddress(CalcEventHandlerMethodName(AComponent.Components[j], string(PropList[i].Name)));
              if Assigned(AComponent.Owner) then
                oma:= AComponent.Owner.MethodAddress(AComponent.Name + CalcEventHandlerMethodName(AComponent.Components[j], string(PropList[i].Name)))
              else
                oma:= nil;

              if Assigned(eh) then
                begin
                  if not ( ((not Assigned(ma)) and (not Assigned(oma)) ) or
                           (Assigned(ma) and (ma = eh)) or
                           (Assigned(oma) and (oma = eh)) ) then
                  raise Exception.Create('CheckForDisconnectedEventHandlers found ' + AComponent.Name + '.' + AComponent.Components[j].Name + '.' + string(PropList[i].Name) + ' not connected to proper event handler');
                end
              else
                begin
                  if Assigned(ma) or Assigned(oma) then
                    raise Exception.Create('CheckForDisconnectedEventHandlers found ' + AComponent.Name + '.' + AComponent.Components[j].Name + '.' + string(PropList[i].Name) + ' disconnected');
                end;
            end;
      finally
        FreeMem(PropList);
      end;  { try }
    end;
end;

function FileInUse(const AFileName: string): Boolean;
var
  FS: TFileStream;
begin
  Result:= False;
  if FileExists(AFileName) then
    begin
      try
        FS:= TFileStream.Create(AFileName, fmOpenRead or fmShareExclusive);
        try
          // do nothing
        finally
          FreeAndNil(FS);
        end;  { try }
      except
        on E: EFOpenError do
          Result:= True;
      end;  { try }
    end;  { if }
end;

{ TDataSetHelper }

procedure TDataSetHelper.AssignFields(Source: TDataSet;
  const FieldNames: string; AssignNullsOnly: Boolean);
begin
  uUtils.AssignFields(Source, Self, FieldNames, AssignNullsOnly);
end;

function TDataSetHelper.GetFieldValuesAsVarArray(const AFieldNames: string): Variant;
var
  FieldNamesList: TStringList;
  i: Integer;
begin
  FieldNamesList:= TStringList.Create;
  try
    FieldNamesList.Delimiter:= ';';
    FieldNamesList.DelimitedText:= AFieldNames;

    Result:= VarArrayCreate([0, FieldNamesList.Count - 1], varInteger);

    for i:= 0 to FieldNamesList.Count - 1 do
      Result[i]:= Self.FieldByName(FieldNamesList[i]).AsInteger;
  finally
    FreeAndNil(FieldNamesList);
  end;  { try }
end;

function TDataSetHelper.AssignFieldsProc(Source: TDataSet; const FieldNames: string; AssignNullsOnly: Boolean): TProc;
begin
  Result:=
    procedure begin
      AssignFields(Source, FieldNames, AssignNullsOnly);
    end;
end;

procedure TDataSetHelper.RecalcFields;
var
  b: TBookmark;
begin
  DisableControls;
  try
    b:= Bookmark;
    try
      First;
      Last;
    finally
      Bookmark:= b;
    end;  { try }
  finally
    EnableControls;
  end;  { try }
end;

function TDataSetHelper.SafeAppend: TNestProcRec;
begin
  Result:= TryCommit(Append, Post, Cancel);
end;

function TDataSetHelper.TempDisableControls: TNestProcRec;
begin
  Result:= TryFinally(DisableControls, EnableControls);
end;

function TDataSetHelper.SafeEdit: TNestProcRec;
begin
  Result:= TryCommit(Edit, Post, Cancel);
end;

function TDataSetHelper.TempOpen: TNestProcRec;
begin
  Result:= TryFinally(Open, Close);
end;

function TDataSetHelper.PreserveBookmark: TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      b: TBookmark;
    begin
      b:= Bookmark;
      try
        AProc;
      finally
        Bookmark:= b;
      end;  { try }
    end);
end;

function TDataSetHelper.TryPreserveBookmark: TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      b: TBookmark;
    begin
      b:= Bookmark;
      try
        AProc;
      finally
        try
          Bookmark:= b;
        except
          First;
        end;
      end;  { try }
    end);
end;

function TDataSetHelper.PreserveRecNo: TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      rn: Integer;
    begin
      rn:= RecNo;
      try
        AProc;
      finally
        if (rn > 0) and (RecordCount > 0) then
          RecNo:= Min(rn, RecordCount);
      end;  { try }
    end);
end;

function TDataSetHelper.TempUnfilter: TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      f: Boolean;
    begin
      f:= Filtered;
      Filtered:= False;
      try
        AProc;
      finally
        Filtered:= f;
      end;  { try }
    end);
end;

function TDataSetHelper.TempFilter: TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      f: Boolean;
    begin
      f:= Filtered;
      Filtered:= True;
      try
        AProc;
      finally
        Filtered:= f;
      end;  { try }
    end);
end;

function TDataSetHelper.ForEach: TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    begin
      First;
      while not Eof do
        begin
          try
            AProc;
          except
            on EBreak do
              Break;

            on EContinue do
              begin
                // do nothing
              end;
          end;  { try }

          Next;
        end;  { while }
    end);
end;

function TDataSetHelper.ForEachSelected(AGrid: TAbmesDBGrid): TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      i: Integer;
    begin
      for i:= 0 to AGrid.SelectedRows.Count - 1 do
        begin
          Bookmark:= AGrid.SelectedRows[i];
          try
            AProc;
          except
            on EBreak do
              Break;

            on EContinue do
              begin
                // do nothing
              end;
          end;  { try }
        end;  { for }
    end);
end;

procedure TDataSetHelper.Subtract(ADataSet: TDataSet; const AOwnKeyFieldNames, AForeignKeyFieldNames: string; ASkipForeignCurrentRec: Boolean);
var
  ForeignKeyFieldNames: string;
  SavedForeignCurrentRecord: Variant;
begin
  if (AForeignKeyFieldNames = '') then
    ForeignKeyFieldNames:= AOwnKeyFieldNames
  else
    ForeignKeyFieldNames:= AForeignKeyFieldNames;

  SavedForeignCurrentRecord:= ADataSet.GetFieldValuesAsVarArray(ForeignKeyFieldNames);

  ADataSet.TempDisableControls/
    ADataSet.PreserveBookmark/
      ADataSet.TempUnfilter/
        TempDisableControls/
          TempUnfilter/
            procedure begin
              First;
              while not Eof do
                if ADataSet.Locate(ForeignKeyFieldNames, GetFieldValuesAsVarArray(AOwnKeyFieldNames), []) and
                  (not ASkipForeignCurrentRec or not VarArraysAreEqual(GetFieldValuesAsVarArray(AOwnKeyFieldNames), SavedForeignCurrentRecord)) then
                  Delete
                else
                  Next;

              First;
            end;
end;

procedure TDataSetHelper.Intersect(ADataSet: TDataSet; const AOwnKeyFieldNames, AForeignKeyFieldNames: string);
var
  ForeignKeyFieldNames: string;
begin
  if (AForeignKeyFieldNames = '') then
    ForeignKeyFieldNames:= AOwnKeyFieldNames
  else
    ForeignKeyFieldNames:= AForeignKeyFieldNames;

  ADataSet.TempDisableControls/
    ADataSet.PreserveBookmark/
      ADataSet.TempUnfilter/
        TempDisableControls/
          TempUnfilter/
            procedure begin
              First;
              while not Eof do
                if ADataSet.Locate(ForeignKeyFieldNames, GetFieldValuesAsVarArray(AOwnKeyFieldNames), []) then
                  Next
                else
                  Delete;

              First;
            end;
end;

function TDataSetHelper.PreserveCurrentRecord(const AKeyFieldNames: string): TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      KeyFieldValues: Variant;
    begin
      KeyFieldValues:= GetFieldValuesAsVarArray(AKeyFieldNames);
      try
        AProc;
      finally
        Locate(AKeyFieldNames, KeyFieldValues, []);
      end;
    end);
end;

{ TStringsHelper }

function TStringsHelper.GetValueEx(const Name: string): string;
begin
  Result:= Values[Name];
  if (Result = StringsEmptyValueEx) then
    Result:= '';
end;

procedure TStringsHelper.SetValueEx(const Name, Value: string);
begin
  if (Value = '') then
    Values[Name]:= StringsEmptyValueEx
  else
    Values[Name]:= Value;
end;

function TStringsHelper.ToArray: TStringArray;
var
  i: Integer;
begin
  SetLength(Result, Count);
  for i:= 0 to Count - 1 do
    Result[i] := Strings[i];
end;

function TStringsHelper.GetLoadFromStreamProc: TConstProc<TStream>;
begin
  Result:=
    procedure (const AStream: TStream) begin
      LoadFromStream(AStream);
    end;
end;

function MinStr(const A, B: string): string;
begin
  if (A < B) then
    Result:= A
  else
    Result:= B;
end;

function MaxStr(const A, B: string): string;
begin
  if (A > B) then
    Result:= A
  else
    Result:= B;
end;

function MonthsInPeriod(BeginDate, EndDate: TDateTime): Real;
var
  LDayOfTheMonth: Word;
  LDaysInMonth: Word;
  LastDaysInMonth: Integer;
  m1, m2: Integer;
begin
  Result:= 0;

  LDayOfTheMonth:= DayOfTheMonth(BeginDate);
  if (LDayOfTheMonth <> 1) then
    begin
      LDaysInMonth:= DaysInMonth(BeginDate);
      LastDaysInMonth:= (LDaysInMonth - LDayOfTheMonth + 1);

      Result:= Result + (LastDaysInMonth / LDaysInMonth);

      BeginDate:= BeginDate + LastDaysInMonth;
    end;  { if }

  if (DayOfTheMonth(EndDate + 1) <> 1) then
    begin
      LDayOfTheMonth:= DayOfTheMonth(EndDate);
      LDaysInMonth:= DaysInMonth(EndDate);
      Result:= Result + (LDayOfTheMonth / LDaysInMonth);

      EndDate:= EndDate - LDayOfTheMonth;
    end;  { if }

  m1:= (YearOf(BeginDate) * 12) + MonthOfTheYear(BeginDate);
  m2:= (YearOf(EndDate + 1) * 12) + MonthOfTheYear(EndDate + 1);

  Result:= Result + (m2 - m1);
end;

{ !!! TParamDataSet ne vijda promenite v parametrite na ClientDataSet na koito si kazal FetchParams toku shto. }

function IfThen(AValue, ATrue, AFalse: Boolean): Boolean;
begin
  if AValue then
    Result:= ATrue
  else
    Result:= AFalse;
end;

function IfThen(AValue: Boolean; AIfTrueValue, AIfFalseValue: TObject): TObject;
begin
  if AValue then
    Result:= AIfTrueValue
  else
    Result:= AIfFalseValue;
end;

function IfThen(AValue: Boolean; const AIfTrueValue, AIfFalseValue: TBytes): TBytes;
begin
  if AValue then
    Result:= AIfTrueValue
  else
    Result:= AIfFalseValue;
end;

function IfThen(AValue: Boolean; const AIfTrueValue, AIfFalseValue: Variant): Variant;
begin
  if AValue then
    Result:= AIfTrueValue
  else
    Result:= AIfFalseValue;
end;

procedure LocateDateInterval(ADate: TDateTime; ADataSet: TDataSet;
  const ABeginDateFieldName: string = 'BEGIN_DATE'; const AEndDateFieldName: string = 'END_DATE');
var
  BeginDateField: TField;
  EndDateField: TField;
  b: TBookmark;
begin
  Assert(Assigned(ADataSet));
  BeginDateField:= ADataSet.FieldByName(ABeginDateFieldName);
  EndDateField:= ADataSet.FieldByName(AEndDateFieldName);

  ADataSet.DisableControls;
  try
    b:= ADataSet.Bookmark;
    try
      ADataSet.First;
      while not ADataSet.Eof do
        begin
          if InRange(ADate, BeginDateField.AsDateTime, EndDateField.AsDateTime) then
            begin
              b:= ADataSet.Bookmark;
              Break;
            end;

          ADataSet.Next;
        end;  { while }
    finally
      ADataSet.Bookmark:= b;
    end;
  finally
    ADataSet.EnableControls;
  end;
end;

function IsAdminElevation: Boolean;
var
  hProcess: THandle;
  hToken: THandle;
  ElevationType: TTokenElevationType;
  ReturnSize: Cardinal;
begin
  Result:= False;
  hProcess:= OpenProcess(PROCESS_ALL_ACCESS, True, GetCurrentProcessId);
  if (hProcess <> 0) then
    try
      if OpenProcessToken(hProcess, TOKEN_QUERY, hToken) then
        try
          if GetTokenInformation(hToken, TokenElevationType, @ElevationType, SizeOf(ElevationType), ReturnSize) then
            Result:= (ElevationType = TokenElevationTypeFull);
        finally
          CloseHandle(hToken);
        end;
    finally
      CloseHandle(hProcess);
    end;
end;

procedure EnsureAdminElevation;
var
  i: Integer;
  Parameters: string;
begin
  if (GetWindowsVersion >= wvWinVista) and
     (not IsAdminElevation) and
     (not FindCmdLineSwitch(ElevatedSwitchName)) then
    begin
      Parameters:= '';
      for i:= 1 to ParamCount do
        Parameters:= Parameters + ' ' + ParamStr(i);

      Parameters:= Parameters + ' /' + ElevatedSwitchName;

      ShellExecute(0, RunAsVerb, PChar(ParamStr(0)), PChar(Parameters), nil, SW_SHOWNORMAL);
      Halt(0);
    end;
end;

function IsFormReleased(AForm: TForm): Boolean;
var
  i: Integer;
begin
  Result:= True;

  GlobalNameSpace.BeginRead;
  try
    for i:= 0 to Screen.FormCount - 1 do
      if (Screen.Forms[i] = AForm) then
        begin
          Result:= False;
          Break;
        end;  { if }
  finally
    GlobalNameSpace.EndRead;
  end;  { try }
end;

function IsDataModuleReleased(ADataModule: TDataModule): Boolean;
var
  i: Integer;
begin
  Result:= True;

  GlobalNameSpace.BeginRead;
  try
    for i:= 0 to Screen.DataModuleCount - 1 do
      if (Screen.DataModules[i] = ADataModule) then
        begin
          Result:= False;
          Break;
        end;  { if }
  finally
    GlobalNameSpace.EndRead;
  end;  { try }
end;

function GetSelectedIntegers(AGrid: TAbmesDBGrid; const AFieldName: string): OleVariant;
var
  b: TBookmark;
  i: Integer;
begin
  Assert(AGrid.SelectedRows.Count > 0);

  AGrid.DataSource.DataSet.DisableControls;
  try
    b:= AGrid.DataSource.DataSet.Bookmark;
    try
      Result:= VarArrayCreate([0, AGrid.SelectedRows.Count - 1], varInteger);
      for i:= 0 to AGrid.SelectedRows.Count - 1 do
        begin
          AGrid.DataSource.DataSet.Bookmark:= AGrid.SelectedRows[i];
          Result[i]:= AGrid.DataSource.DataSet.FieldByName(AFieldName).AsInteger;
        end;  { for }
    finally
      AGrid.DataSource.DataSet.Bookmark:= b;
    end;  { try }
  finally
    AGrid.DataSource.DataSet.EnableControls;
  end;  { try }
end;

function IsInVarArray(AValue: Integer; const AVarArray: OleVariant): Boolean;
var
  i: Integer;
begin
  Result:= False;
  for i:= VarArrayLowBound(AVarArray, 1) to VarArrayHighBound(AVarArray, 1) do
    begin
      Assert(VarIsType(AVarArray[i], varInteger));
      if (AVarArray[i] = AValue) then
        begin
          Result:= True;
          Break;
        end;  { if }
    end;  { for }
end;

function ProcessIsRunning(const AExeFileName: string): Boolean;
begin
  Result:= (RunningProcessCount(AExeFileName) > 0);
end;

function RunningProcessCount(const AExeFileName: string): Integer;
var
  SnapshotHandle: THandle;
  ProcessEntry: tagPROCESSENTRY32;
  ProcessFound: Boolean;
begin
  Result:= 0;

  SnapshotHandle:= CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  try
    ProcessEntry.dwSize:= SizeOf(ProcessEntry);

    ProcessFound:= Process32First(SnapshotHandle, ProcessEntry);
    while ProcessFound do
      begin
        if (AnsiCompareText(ProcessEntry.szExeFile, AExeFileName) = 0) then
          Inc(Result);

        ProcessFound:= Process32Next(SnapshotHandle, ProcessEntry);
      end;  { while }
  finally
    CloseHandle(SnapshotHandle);
  end;  { try }
end;

function GetLocalDateTimeFormat: string;
begin
  Result:= TFormatSettings.Create(LOCALE_USER_DEFAULT).ShortDateFormat;
end;

function IsValueInArray(AValue: Integer; const AArray: array of Integer): Boolean;
var
  i: Integer;
begin
  Result:= False;

  for i:= Low(AArray) to High(AArray) do
    if (AArray[i] = AValue) then
      begin
        Result:= True;
        Break;
      end;  { if }
end;

{ EBreak }

constructor EInLoopControl.Create;
begin
  inherited CreateFmt('Internal error: %s not catched by any loop', [ClassName]);
end;

procedure DoBreak;
begin
  raise EBreak.Create;
end;

procedure DoContinue;
begin
  raise EContinue.Create;
end;

{ TClientDataSetHelper }

procedure TClientDataSetHelper.CheckUniqueConstraint(const AUniqueIndexName, AErrorMessage: string);
const
  DBClientKeyViolationErrorCode = 9729;
begin
  try
    TempIndex(AUniqueIndexName)/
      procedure begin
        // do nothing - index will check uniqueness
      end;
  except
    on E: EDBClient do
      begin
        if (E.ErrorCode = DBClientKeyViolationErrorCode) then
          raise Exception.Create(AErrorMessage)
        else
          raise;
      end;
  end;  { try }
end;

function TClientDataSetHelper.TempCreateDataSet: TNestProcRec;
begin
  Result:= TryFinally(CreateDataSet, Close);
end;

function TClientDataSetHelper.TempDisableCache: TNestProcRec;
var
  AbmesDSProviderConnection: TAbmesDSProviderConnection;
begin
  AbmesDSProviderConnection:= nil;

  if Assigned(Self.ConnectionBroker) and
     Assigned(Self.ConnectionBroker.Connection) and
     (Self.ConnectionBroker.Connection is TAbmesDSProviderConnection) then
    AbmesDSProviderConnection:= (Self.ConnectionBroker.Connection as TAbmesDSProviderConnection);

  if Assigned(Self.RemoteServer) and
     (Self.RemoteServer is TAbmesDSProviderConnection) then
    AbmesDSProviderConnection:= (Self.RemoteServer as TAbmesDSProviderConnection);

  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      SavedCacheTimeout: Integer;
    begin
      if Assigned(AbmesDSProviderConnection) then
        begin
          SavedCacheTimeout:= AbmesDSProviderConnection.CacheTimeout;
          AbmesDSProviderConnection.CacheTimeout:= 0;
          try
            AProc;
          finally
            AbmesDSProviderConnection.CacheTimeout:= SavedCacheTimeout;
          end;  { try }
        end
      else
        AProc;
    end);
end;

function TClientDataSetHelper.TempIndex(const AIndexName: string): TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      SavedIndexName: string;
      SavedIndexFieldNames: string;
    begin
      SavedIndexFieldNames:= IndexFieldNames;
      SavedIndexName:= IndexName;
      IndexName:= AIndexName;
      try
        AProc;
      finally
        if (SavedIndexFieldNames <> '') then
          IndexFieldNames:= SavedIndexFieldNames
        else
          IndexName:= SavedIndexName;
      end;  { try }
    end);
end;

function TClientDataSetHelper.TempIndexFields(const AIndexFieldNames: string): TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      SavedIndexFieldNames: string;
      SavedIndexName: string;
    begin
      SavedIndexName:= IndexName;
      SavedIndexFieldNames:= IndexFieldNames;
      IndexFieldNames:= AIndexFieldNames;
      try
        AProc;
      finally
        if (SavedIndexName <> '') then
          IndexName:= SavedIndexName
        else
          IndexFieldNames:= SavedIndexFieldNames;
      end;  { try }
    end);
end;

function TClientDataSetHelper.TempReadOnly(AValue: Boolean): TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      SavedReadOnly: Boolean;
    begin
      SavedReadOnly:= ReadOnly;
      ReadOnly:= AValue;
      try
        AProc;
      finally
        ReadOnly:= SavedReadOnly;
      end;  { try }
    end);
end;

function TClientDataSetHelper.TempAutoCalcFields(AValue: Boolean): TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      SavedAutoCalcFields: Boolean;
    begin
      SavedAutoCalcFields:= AutoCalcFields;
      AutoCalcFields:= AValue;
      try
        AProc;
      finally
        AutoCalcFields:= SavedAutoCalcFields;
      end;  { try }
    end);
end;

function TClientDataSetHelper.TempAggregatesActive(AValue: Boolean): TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      SavedAggregatesActive: Boolean;
    begin
      SavedAggregatesActive:= AggregatesActive;
      AggregatesActive:= AValue;
      try
        AProc;
      finally
        AggregatesActive:= SavedAggregatesActive;
      end;  { try }
    end);
end;

procedure TClientDataSetHelper.HelperApplayUpdates;
begin
  ApplyUpdates(0);
end;

function TClientDataSetHelper.SafeApplyUpdates: TNestProcRec;
begin
  Result:= TryCommit(Utils.DoNothing, HelperApplayUpdates, CancelUpdates);
end;

{ TFormsEnumerator }

function TFormsEnumerator.GetItem(AIndex: Integer): TForm;
begin
  Result:= Container.Forms[AIndex];
end;

function TFormsEnumerator.ItemCount: Integer;
begin
  Result:= Container.FormCount;
end;

{ TDataModulesEnumerator }

function TDataModulesEnumerator.GetItem(AIndex: Integer): TDataModule;
begin
  Result:= Container.DataModules[AIndex];
end;

function TDataModulesEnumerator.ItemCount: Integer;
begin
  Result:= Container.DataModuleCount;
end;

{ TScreenHelper }

function TScreenHelper.AllForms: TEnumerableRec<TForm>;
begin
  Result:= TFormsEnumerator.CreateEnumerableRec(Self);
end;

function TScreenHelper.AllDataModules: TEnumerableRec<TDataModule>;
begin
  Result:= TDataModulesEnumerator.CreateEnumerableRec(Self);
end;

function TScreenHelper.TempCursor(ACursor: TCursor): TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      c: TCursor;
    begin
      c:= Screen.Cursor;
      Screen.Cursor:= ACursor;
      try
        AProc;
      finally
        Screen.Cursor:= c;
      end;  { try }
    end);
end;

{ TControlParentsEnumerator }

function TControlParentsEnumerator.GetNextNode(const ANode: TControl): TControl;
begin
  Result:= ANode.Parent;
end;

{ TControlHelper }

function TControlHelper.Parents: TEnumerableRec<TControl>;
begin
  Result:= TControlParentsEnumerator.CreateEnumerableRec(Parent);
end;

function TControlHelper.SelfAndParents: TEnumerableRec<TControl>;
begin
  Result:= TControlParentsEnumerator.CreateEnumerableRec(Self);
end;

function TControlHelper.TempVisible(AValue: Boolean): TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc)
      var
        SavedVisible: Boolean;
      begin
        SavedVisible:= Visible;
        Visible:= AValue;
        try
          AProc;
        finally
          Visible:= SavedVisible;
        end;
      end);
end;

{ TWinControlsEnumerator }

function TControlsEnumerator.GetItem(AIndex: Integer): TControl;
begin
  Result:= Container.Controls[AIndex];
end;

function TControlsEnumerator.ItemCount: Integer;
begin
  Result:= Container.ControlCount;
end;

{ TWinControlHelper }

function TWinControlHelper.AllControls: TEnumerableRec<TControl>;
begin
  Result:= TControlsEnumerator.CreateEnumerableRec(Self);
end;

function TWinControlHelper.TotalHeight: Integer;
var
  c: TControl;
begin
  Result:= 0;
  for c in AllControls do
    if c.Visible then
      Inc(Result, c.Height);
end;

{ TComponentsEnumerator }

function TComponentsEnumerator.GetItem(AIndex: Integer): TComponent;
begin
  Result:= Container.Components[AIndex];
end;

function TComponentsEnumerator.ItemCount: Integer;
begin
  Result:= Container.ComponentCount;
end;

{ TComponentHelper }

function TComponentHelper.AllComponents: TEnumerableRec<TComponent>;
begin
  Result:= TComponentsEnumerator.CreateEnumerableRec(Self);
end;

{ TFieldHelper }

procedure TFieldHelper.IfIsNullAssign(AValue: TField);
begin
  if IsNull then
    Assign(AValue);
end;

procedure TFieldHelper.AssignFromDataSet(ADataSet: TDataSet);
begin
  Assign(ADataSet.FindField(FieldName));
end;

function TFieldHelper.AssignProc(AField: TField): TProc;
begin
  Result:=
    procedure begin
      Assign(AField);
    end;
end;

function TFieldHelper.TempReadOnly(AValue: Boolean): TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      SavedReadOnly: Boolean;
    begin
      SavedReadOnly:= Self.ReadOnly;
      Self.ReadOnly:= AValue;
      try
        AProc;
      finally
        Self.ReadOnly:= SavedReadOnly;
      end;  { try }
    end);
end;

function TFieldHelper.GetAsVarFloat: Real;
begin
  Result:= VarToFloat(AsVariant);
end;

procedure TFieldHelper.SetAsVarFloat(AValue: Real);
begin
  AsVariant:= FloatToVar(AValue);
end;

function TFieldHelper.GetAsVarInteger: Integer;
begin
  Result:= VarToInt(AsVariant);
end;

function TFieldHelper.AsBooleanFunc: TFunc<Boolean>;
begin
  Result:=
    function: Boolean begin
      Result:= AsBoolean;
    end;
end;

function TFieldHelper.AsStringFunc: TFunc<string>;
begin
  Result:=
    function: string begin
      Result:= AsString;
    end;
end;

function TFieldHelper.AsVariantFunc: TFunc<Variant>;
begin
  Result:=
    function: Variant begin
      Result:= AsVariant;
    end;
end;

function TFieldHelper.AsDateTimeFunc: TFunc<TDateTime>;
begin
  Result:=
    function: TDateTime begin
      Result:= AsDateTime;
    end;
end;

function TFieldHelper.AsFloatFunc: TFunc<Double>;
begin
  Result:=
    function: Double begin
      Result:= AsFloat;
    end;
end;

function TFieldHelper.AsIntegerFunc: TFunc<Integer>;
begin
  Result:=
    function: Integer begin
      Result:= AsInteger;
    end;
end;

procedure TFieldHelper.SetAsVarInteger(AValue: Integer);
begin
  AsVariant:= IntToVar(AValue);
end;

procedure TFieldHelper.CheckIsGreaterThan(AValue: Integer);
begin
  if (Self.AsFloat <= AValue) then
    raise Exception.CreateFmt(SFieldMustBeGreaterThanId + '(FieldName:s=%s,Value:i=%d)', [Self.DisplayLabel, AValue]);
end;

{ TRegistryHelper }

function TRegistryHelper.ReadStringDef(const Name,
  DefaultValue: string): string;
begin
  if ValueExists(Name) then
    Result:= ReadString(Name)
  else
    Result:= DefaultValue;
end;

function RemoveQuotedText(const Value: string; const AQuoteChar: Char): string; overload;
var
  i, j: Integer;
begin
  Result:= Value;
  i:= 1;
  while (i <= Length(Result)) do
    begin
      i:= PosEx(AQuoteChar, Result, i);
      if (i <= 0) then
        Break;

      j:= PosEx(AQuoteChar, Result, i+1);
      if (j <= 0) then
        j:= Length(Result);

      Result:= StuffString(Result, i, j-i+1, '');
    end;
end;

function RemoveQuotedText(const Value: string): string; overload;
begin
  Result:= Value;
  Result:= RemoveQuotedText(Result, '"');
  Result:= RemoveQuotedText(Result, '''');
end;

function TickCountDiff(ABeginTickCount, AEndTickCount: Cardinal): Cardinal;
begin
  if (AEndTickCount >= ABeginTickCount) then
    Result:= AEndTickCount - ABeginTickCount
  else
    Result:= High(Cardinal) - ABeginTickCount + AEndTickCount;
end;

function ToProc(ASimpleProc: TSimpleProcedure): TProc; overload;
begin
  Result:= ASimpleProc;
end;

function ToProc(AMethod: TSimpleMethod): TProc; overload;
begin
  Result:= AMethod;
end;

procedure MakeProcToSimpleMethod(const AProc; var AMethod);
type
  TVtable = array[0..3] of Pointer;
  PVtable = ^TVtable;
  PPVtable = ^PVtable;
begin
  // 3 is offset of Invoke, after QI, AddRef, Release
  TMethod(AMethod).Code:= PPVtable(AProc)^^[3];
  TMethod(AMethod).Data:= Pointer(AProc);
end;

function IntArrayToVarArray(const AArray: TIntegerArray): Variant;
var
  i: Integer;
begin
  Result:= VarArrayCreate([0, Length(AArray)-1], varInteger);
  for i:= 0 to Length(AArray)-1 do
    Result[i]:= AArray[i];
end;

function VarArrayToIntArray(const AVarArray: Variant): TIntegerArray;
var
  i: Integer;
begin
  SetLength(Result, VarArrayLength(AVarArray));
  Assert(VarArrayLowBound(AVarArray, 1) = 0);
  Assert(VarArrayHighBound(AVarArray, 1) = Length(Result)-1);
  for i:= 0 to Length(Result)-1 do
    Result[i]:= AVarArray[i];
end;

function IntegerArrayOf(const AValues: array of Integer): TIntegerArray;
var
  i: Integer;
begin
  SetLength(Result, High(AValues) - Low(AValues) + 1);
  for i:= Low(AValues) to High(AValues) do
    Result[i - Low(AValues)]:= AValues[i];
end;

function StringArrayOf(const AValues: array of string): TStringArray;
begin
  Result:= ArrayUtils.ArrayOf<string>(AValues);
end;

function ConcatStringArrays(const AFirstArray, ASecondArray: array of string): TStringArray;
begin
  Result:= ArrayUtils.Concat<string>(AFirstArray, ASecondArray);
end;

function TryFinallyNestProc(const ABeginProc, AEndProc: TProc): TNestProc;
begin
  Result:=
    procedure (AProc: TProc)
    begin
      ABeginProc;
      try
        AProc;
      finally
        AEndProc;
      end;
    end;
end;

function TryFinally(const AEndProc: TProc): TNestProcRec;
begin
  Result:= TryFinally(Utils.DoNothing, AEndProc);
end;

function TryFinally(const ABeginProc, AEndProc: TProc): TNestProcRec;
begin
  Result:= TNestProcRec.Create(TryFinallyNestProc(ABeginProc, AEndProc));
end;

function TryExceptNestProc(const ABeginProc, ARollbackProc: TProc): TNestProc;
begin
  Result:=
    procedure (AProc: TProc)
    begin
      ABeginProc;
      try
        AProc;
      except
        ARollbackProc;
        raise;
      end;
    end;
end;

function TryExcept(const ABeginProc, ARollbackProc: TProc): TNestProcRec;
begin
  Result:= TNestProcRec.Create(TryExceptNestProc(ABeginProc, ARollbackProc));
end;

function TryExcept(const ARollbackProc: TProc): TNestProcRec;
begin
  Result:= TryExcept(Utils.DoNothing, ARollbackProc);
end;

function PrecedeWithProc(APredecessorProc: TProc): TNestProc;
begin
  Result:=
    procedure (AProc: TProc)
    begin
      APredecessorProc;
      AProc;
    end;
end;

function PrecedeWith(APredecessorProc: TProc): TNestProcRec;
begin
  Result:= TNestProcRec.Create(PrecedeWithProc(APredecessorProc));
end;

function SuccedeWithProc(ASuccessorProc: TProc): TNestProc;
begin
  Result:=
    procedure (AProc: TProc)
    begin
      AProc;
      ASuccessorProc;
    end;
end;

function SuccedeWith(ASuccessorProc: TProc): TNestProcRec;
begin
  Result:= TNestProcRec.Create(SuccedeWithProc(ASuccessorProc));
end;

function TryCommit(const ABeginProc, ACommitProc, ARollbackProc: TProc): TNestProcRec;
begin
  Result:=
    TryExcept(ABeginProc, ARollbackProc)/
      SuccedeWith(ACommitProc);
end;

function GetURIProtocol(const AURI: string): string;
var
  u: TIdURI;
begin
  u:= TIdURI.Create;
  try
    u.URI:= AURI;
    Result:= u.Protocol;
  finally
    FreeAndNil(u);
  end;
end;

{ Utils }

class function Utils.Coalesce<T>(AValue1, AValue2: T): T;
begin
  if (TComparer<T>.Default.Compare(AValue1, Default(T)) = 0) then
    Result:= AValue2
  else
    Result:= AValue1;
end;

class function Utils.Coalesce<T>(AValue1, AValue2, AValue3: T): T;
begin
  if (TComparer<T>.Default.Compare(AValue1, Default(T)) = 0) then
    Result:= Coalesce(AValue2, AValue3)
  else
    Result:= AValue1;
end;

class function Utils.GetDoNothing: TProc;
begin
  Result:=
    procedure begin
      // do nothing
    end;
end;

class function Utils.IfThen<T>(AValue: Boolean; const AIfTrueValue, AIfFalseValue: T): T;
begin
  if AValue then
    Result:= AIfTrueValue
  else
    Result:= AIfFalseValue;
end;

class function Utils.IfThen<T>(AValue: Boolean; const AIfTrueValue: T): T;
begin
  Result:= IfThen<T>(AValue, AIfTrueValue, Default(T));
end;

class function Utils.Using<T>(AObject: T): TNestProcRec<T>;
var
  ObjectHolder: IObjectHolder<T>;
begin
  ObjectHolder:= TObjectHolder<T>.Create(AObject);
  Result:= TNestProcRec<T>.Create(
    procedure (AProc: TConstProc<T>) begin
      try
        AProc(ObjectHolder.Value);
      finally
        ObjectHolder:= nil;
      end;
    end);
end;

class function Utils.Nest<T>: TNestFuncRec<T>;
begin
  Result:= TNestFuncRec<T>.Create(NestUtils.IdentityNestFunc<T>());
end;

class function Utils.EmptyEnumerable<T>: TEnumerableRec<T>;
begin
  Result:= TEmptyEnumerator<T>.CreateEnumerableRec;
end;

class function Utils.ToEnumerable<T>(const AValue: T): TEnumerableRec<T>;
begin
  Result:= TSingleItemEnumerator<T>.CreateEnumerableRec(AValue);
end;

class function Utils.&If(const ACondition: TFunc<Boolean>): TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc)
      begin
        if ACondition then
          AProc;
      end);
end;

class function Utils.OnException(const AOnExceptionProc: TProc): TNestProcRec;
begin
  Result:=
    OnException<Exception>(
      procedure (AException: Exception) begin
        AOnExceptionProc;
      end);
end;

class function Utils.OnException(const AOnExceptionProc: TProc<Exception>): TNestProcRec;
begin
  Result:= OnException<Exception>(AOnExceptionProc);
end;

class function Utils.OnException<ExceptionType>(const AOnExceptionProc: TProc<ExceptionType>): TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc) begin
        try
          AProc;
        except
          on E: Exception do
            begin
              if (E is ExceptionType) then
                AOnExceptionProc(E);

              raise;
            end;
        end;
      end);
end;

class function Utils.CatchException(const ACatchExceptionProc: TProc): TNestProcRec;
begin
  Result:=
    CatchException(
      procedure (AException: Exception) begin
        ACatchExceptionProc;
      end);
end;

class function Utils.CatchException(const ACatchExceptionProc: TProc<Exception>): TNestProcRec;
begin
  Result:= CatchException<Exception>(ACatchExceptionProc);
end;

class function Utils.CatchException<ExceptionType>(const ACatchExceptionProc: TProc<ExceptionType>): TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc) begin
        try
          AProc;
        except
          on E: Exception do
            begin
              if (E is ExceptionType) then
                ACatchExceptionProc(E)
              else
                raise;
            end;
        end;
      end);
end;

procedure KillApplication(AExitCode: Integer);
begin
  TerminateProcess(GetCurrentProcess, AExitCode);
end;

{ TCollectionHelper }

function TCollectionHelper.All: TEnumerableRec<TCollectionItem>;
begin
  Result:= TProxyEnumerator<TCollectionItem>.CreateEnumerableRec(GetEnumeratorObject);
end;

function TCollectionHelper.GetEnumeratorObject: TObject;
begin
  Result:= GetEnumerator;
end;

function TCollectionHelper.Filter(const AFilterPredicate: TConstPredicate<TCollectionItem>): TEnumerableRec<TCollectionItem>;
begin
  Result:= All.Filter(AFilterPredicate);
end;

function TCollectionHelper.Filter(const AFilterPredicate: TPredicate<TCollectionItem>): TEnumerableRec<TCollectionItem>;
begin
  Result:= All.Filter(AFilterPredicate);
end;

function TCollectionHelper.Map<ResultItemType>(const AMapFunc: TConstFunc<TCollectionItem, ResultItemType>): TEnumerableRec<ResultItemType>;
begin
  Result:= All.Map<ResultItemType>(AMapFunc);
end;

function TCollectionHelper.Map<ResultItemType>(const AMapFunc: TFunc<TCollectionItem, ResultItemType>): TEnumerableRec<ResultItemType>;
begin
  Result:= All.Map<ResultItemType>(AMapFunc);
end;

function TCollectionHelper.Map(const AMapFunc: TConstFunc<TCollectionItem, TCollectionItem>): TEnumerableRec<TCollectionItem>;
begin
  Result:= All.Map(AMapFunc);
end;

function TCollectionHelper.Map(const AMapFunc: TFunc<TCollectionItem, TCollectionItem>): TEnumerableRec<TCollectionItem>;
begin
  Result:= All.Map(AMapFunc);
end;

function TCollectionHelper.AsOf<ResultItemType>: TEnumerableRec<ResultItemType>;
begin
  Result:= All._AsOf<ResultItemType>;
end;

function TCollectionHelper.OfType<ResultItemType>: TEnumerableRec<ResultItemType>;
begin
  Result:= All._OfType<ResultItemType>;
end;

function TCollectionHelper.TempUpdate: TNestProcRec;
begin
  Result:= TryFinally(BeginUpdate, EndUpdate);
end;

{ TParamsHelper }

function TParamsHelper.GetEnumerator: TEnumerator<TParam>;
begin
  Result:= TProxyEnumerator<TParam>.Create(GetEnumeratorObject);
end;

function TParamsHelper.All: TEnumerableRec<TParam>;
begin
  Result:= TProxyEnumerator<TParam>.CreateEnumerableRec(GetEnumeratorObject);
end;

function TParamsHelper.Filter(const AFilterPredicate: TConstPredicate<TParam>): TEnumerableRec<TParam>;
begin
  Result:= All.Filter(AFilterPredicate);
end;

function TParamsHelper.Filter(const AFilterPredicate: TPredicate<TParam>): TEnumerableRec<TParam>;
begin
  Result:= All.Filter(AFilterPredicate);
end;

function TParamsHelper.Map<ResultItemType>(const AMapFunc: TConstFunc<TParam, ResultItemType>): TEnumerableRec<ResultItemType>;
begin
  Result:= All.Map<ResultItemType>(AMapFunc);
end;

function TParamsHelper.Map<ResultItemType>(const AMapFunc: TFunc<TParam, ResultItemType>): TEnumerableRec<ResultItemType>;
begin
  Result:= All.Map<ResultItemType>(AMapFunc);
end;

function TParamsHelper.Map(const AMapFunc: TConstFunc<TParam, TParam>): TEnumerableRec<TParam>;
begin
  Result:= All.Map(AMapFunc);
end;

function TParamsHelper.Map(const AMapFunc: TFunc<TParam, TParam>): TEnumerableRec<TParam>;
begin
  Result:= All.Map(AMapFunc);
end;

function TParamsHelper.AsOf<ResultItemType>: TEnumerableRec<ResultItemType>;
begin
  Result:= All._AsOf<ResultItemType>;
end;

function TParamsHelper.OfType<ResultItemType>: TEnumerableRec<ResultItemType>;
begin
  Result:= All._OfType<ResultItemType>;
end;

{ TFieldsHelper }

function TFieldsHelper.All: TEnumerableRec<TField>;
begin
  Result:= TProxyEnumerator<TField>.CreateEnumerableRec(GetEnumeratorObject);
end;

function TFieldsHelper.GetEnumeratorObject: TObject;
begin
  Result:= GetEnumerator;
end;

function TFieldsHelper.Filter(const AFilterPredicate: TConstPredicate<TField>): TEnumerableRec<TField>;
begin
  Result:= All.Filter(AFilterPredicate);
end;

function TFieldsHelper.Filter(const AFilterPredicate: TPredicate<TField>): TEnumerableRec<TField>;
begin
  Result:= All.Filter(AFilterPredicate);
end;

function TFieldsHelper.Map<ResultItemType>(const AMapFunc: TConstFunc<TField, ResultItemType>): TEnumerableRec<ResultItemType>;
begin
  Result:= All.Map<ResultItemType>(AMapFunc);
end;

function TFieldsHelper.Map<ResultItemType>(const AMapFunc: TFunc<TField, ResultItemType>): TEnumerableRec<ResultItemType>;
begin
  Result:= All.Map<ResultItemType>(AMapFunc);
end;

function TFieldsHelper.Map(const AMapFunc: TConstFunc<TField, TField>): TEnumerableRec<TField>;
begin
  Result:= All.Map(AMapFunc);
end;

function TFieldsHelper.Map(const AMapFunc: TFunc<TField, TField>): TEnumerableRec<TField>;
begin
  Result:= All.Map(AMapFunc);
end;

function TFieldsHelper.AsOf<ResultItemType>: TEnumerableRec<ResultItemType>;
begin
  Result:= All._AsOf<ResultItemType>;
end;

function TFieldsHelper.OfType<ResultItemType>: TEnumerableRec<ResultItemType>;
begin
  Result:= All._OfType<ResultItemType>;
end;

{ Routines }

function GetFastMMAllocatedMemory: Cardinal;
var
  MemoryManagerState: TMemoryManagerState;
  SmallBlockState: TSmallBlockTypeState;
begin
  GetMemoryManagerState(MemoryManagerState);

  Result:= 0;
  for SmallBlockState in MemoryManagerState.SmallBlockTypeStates do
    Inc(Result, SmallBlockState.UseableBlockSize * SmallBlockState.AllocatedBlockCount);

  Result:=
    Result +
    MemoryManagerState.TotalAllocatedMediumBlockSize +
    MemoryManagerState.TotalAllocatedLargeBlockSize;
end;

function GetFastMMReservedMemory: Cardinal;
var
  MemoryManagerState: TMemoryManagerState;
  SmallBlockState: TSmallBlockTypeState;
begin
  GetMemoryManagerState(MemoryManagerState);

  Result:= 0;
  for SmallBlockState in MemoryManagerState.SmallBlockTypeStates do
    Inc(Result, SmallBlockState.ReservedAddressSpace);

  Result:=
    Result +
    MemoryManagerState.ReservedMediumBlockAddressSpace +
    MemoryManagerState.ReservedLargeBlockAddressSpace;
end;

function GetWinMMAllocatedMemory: Cardinal;
var
  pmc: TProcessMemoryCounters;
begin
  GetProcessMemoryInfo(GetCurrentProcess, pmc, SizeOf(pmc));
  Result:= pmc.WorkingSetSize;
end;

function OleVariantMemorySize(const V: OleVariant): Cardinal;
var
  MS: TMemoryStream;
begin
  if VarIsNullOrEmpty(V) or (VarType(V) = varVariant) then
    Exit(0);

  MS:= TMemoryStream.Create;
  try
    VariantToStream(V, MS);
    Result:= MS.Size;
  finally
    FreeAndNil(MS);
  end;
end;

{ TParamHelper }

procedure TParamHelper.SetAsVarInteger(AValue: Integer);
begin
  Value:= IntToVar(AValue);
end;

{ TStringListHelper }

function TStringListHelper.TempDisableOnChange: TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      SavedOnChange: TNotifyEvent;
    begin
      SavedOnChange:= OnChange;
      OnChange:= nil;
      try
        AProc;
      finally
        OnChange:= SavedOnChange;
      end;
    end);
end;

function SubString(const AValue: string; AStartPos, AEndPos: Integer): string;
begin
  Result:= Copy(AValue, AStartPos, AEndPos - AStartPos + 1);
end;

function TempMonitorEnter(AObject: TObject): TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    begin
      MonitorEnter(AObject);
      try
        AProc;
      finally
        MonitorExit(AObject);
      end;  { try }
    end);
end;

function SameVariants(const A, B: Variant): Boolean;
var
  StreamA, StreamB: TMemoryStream;
begin
  if (VarIsNull(A) and VarIsNull(B)) or
     (VarIsEmpty(A) and VarIsEmpty(B)) then
    Result:= True
  else
    begin
      StreamA:= TMemoryStream.Create;
      try
        StreamB:= TMemoryStream.Create;
        try
          VariantToStream(A, StreamA);
          VariantToStream(B, StreamB);

          Result:=
            (StreamA.Size = StreamB.Size) and
            CompareMem(StreamA.Memory, StreamB.Memory, StreamA.Size);
        finally
          FreeAndNil(StreamB);
        end;
      finally
        FreeAndNil(StreamA);
      end;
    end;
end;  { SameVariants }

{ TThreadHelper }

function TThreadHelper.Synchronize: TNestProcRec;
begin
  Result:= Synchronize(Self);
end;

class function TThreadHelper.Synchronize(AThread: TThread): TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    begin
      Synchronize(AThread, TThreadProcedure(AProc));
    end);
end;

{ TTMultiReadExclusiveWriteSynchronizerHelper }

function TMultiReadExclusiveWriteSynchronizerHelper.TempRead: TNestProcRec;
begin
  Result:= TryFinally(BeginRead, EndRead);
end;

function TMultiReadExclusiveWriteSynchronizerHelper.TempWrite: TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    begin
      BeginWrite;
      try
        AProc;
      finally
        EndWrite;
      end;
    end);
end;

{ TCriticalSectionHelper }

function TCriticalSectionHelper.TempEnter: TNestProcRec;
begin
  Result:= TryFinally(Enter, Leave);
end;

{ TImmutableStack<T> }

constructor TImmutableStack<T>.Create;
begin
  inherited Create;
end;

class function TImmutableStack<T>.CreateInstance: TImmutableStack<T>;
begin
  Result:= Create;
end;

function TImmutableStack<T>.GetEnumerator: TImmutableStackEnumerator<T>;
begin
  Result:= TImmutableStackEnumerator<T>.Create(Self);
end;

function TImmutableStack<T>.IsEmpty: Boolean;
begin
  Result:= (Length(FArray) = 0);
end;

function TImmutableStack<T>.Peek: T;
begin
  Result:= FArray[Length(FArray)-1];
end;

function TImmutableStack<T>.Pop: IImmutableStack<T>;
var
  NewStack: TImmutableStack<T>;
begin
  Assert(not IsEmpty);

  NewStack:= CreateInstance;
  Result:= NewStack;

  NewStack.FArray:= ArrayUtils.Slice<T>(FArray, Length(FArray)-1);
end;

function TImmutableStack<T>.Pop(var AValue: T): IImmutableStack<T>;
begin
  Result:= Pop;
  AValue:= FArray[Length(FArray)-1];
end;

function TImmutableStack<T>.Push(const AValue: T): IImmutableStack<T>;
var
  NewStack: TImmutableStack<T>;
begin
  NewStack:= CreateInstance;
  Result:= NewStack;

  NewStack.FArray:= ArrayUtils.Concat<T>(FArray, AValue);
end;

{ TImmutableStackEnumerator<T> }

function TImmutableStackEnumerator<T>.GetItem(AIndex: Integer): T;
begin
  Result:= (Container as TImmutableStack<T>).FArray[AIndex];
end;

function TImmutableStackEnumerator<T>.ItemCount: Integer;
begin
  Result:= Length((Container as TImmutableStack<T>).FArray);
end;

procedure ShellExecuteAndWait(const Verb, FileName,
  Parameters, WorkingDirectory: string; ShowCommand: Integer);

  function StringToPChar(const S: string): PChar;
  begin
    if (S = '') then
      Result:= nil
    else
      Result:= PChar(S);
  end;

var
  ShellExecuteInfo: TShellExecuteInfo;
  LExitCode: Cardinal;
begin
  FillChar(ShellExecuteInfo, SizeOf(ShellExecuteInfo), 0);
  ShellExecuteInfo.cbSize:= SizeOf(ShellExecuteInfo);

  ShellExecuteInfo.lpVerb:= StringToPChar(Verb);
  ShellExecuteInfo.lpFile:= StringToPChar(FileName);
  ShellExecuteInfo.lpParameters:= StringToPChar(Parameters);
  ShellExecuteInfo.lpDirectory:= StringToPChar(WorkingDirectory);
  ShellExecuteInfo.nShow:= ShowCommand;

  ShellExecuteInfo.fMask:= SEE_MASK_NOCLOSEPROCESS;

  if ShellExecuteEx(@ShellExecuteInfo) then
    repeat
      Application.ProcessMessages;
      GetExitCodeProcess(ShellExecuteInfo.hProcess, LExitCode);
    until (LExitCode <> STILL_ACTIVE) or Application.Terminated;
end;

function VistaRunAsVerb: string;
begin
  if (GetWindowsVersion >= wvWinVista) then
    Result:= RunAsVerb
  else
    Result:= '';
end;

function ForceForegroundWindow(hwnd: THandle): Boolean;
const
  SPI_GETFOREGROUNDLOCKTIMEOUT = $2000;
  SPI_SETFOREGROUNDLOCKTIMEOUT = $2001;
var
  ForegroundThreadID: DWORD;
  ThisThreadID: DWORD;
  timeout: DWORD;
begin
// bachka samo v Delphi XE2
{$IFNDEF VER230}
  Exit(False);
{$ENDIF}

  if IsIconic(hwnd) then ShowWindow(hwnd, SW_RESTORE);

  if GetForegroundWindow = hwnd then Result := True
  else
  begin
    // Windows 98/2000 doesn't want to foreground a window when some other
    // window has keyboard focus

    if ((Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion > 4)) or
      ((Win32Platform = VER_PLATFORM_WIN32_WINDOWS) and
      ((Win32MajorVersion > 4) or ((Win32MajorVersion = 4) and
      (Win32MinorVersion > 0)))) then
    begin
      // Code from Karl E. Peterson, www.mvps.org/vb/sample.htm
      // Converted to Delphi by Ray Lischner
      // Published in The Delphi Magazine 55, page 16

      Result := False;
      ForegroundThreadID := GetWindowThreadProcessID(GetForegroundWindow, nil);
      ThisThreadID := GetWindowThreadPRocessId(hwnd, nil);
      if AttachThreadInput(ThisThreadID, ForegroundThreadID, True) then
      begin
        BringWindowToTop(hwnd); // IE 5.5 related hack
        SetForegroundWindow(hwnd);
        AttachThreadInput(ThisThreadID, ForegroundThreadID, False);
        Result := (GetForegroundWindow = hwnd);
      end;
      if not Result then
      begin
        // Code by Daniel P. Stasinski
        SystemParametersInfo(SPI_GETFOREGROUNDLOCKTIMEOUT, 0, @timeout, 0);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(0),
          SPIF_SENDCHANGE);
        BringWindowToTop(hwnd); // IE 5.5 related hack
        SetForegroundWindow(hWnd);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(timeout), SPIF_SENDCHANGE);
      end;
    end
    else
    begin
      BringWindowToTop(hwnd); // IE 5.5 related hack
      SetForegroundWindow(hwnd);
    end;

    Result := (GetForegroundWindow = hwnd);
  end;
end; { ForceForegroundWindow }

{ TPathHelper }

function TPathHelper.Combine(const APath1, APath2, APath3: string): string;
begin
  Result:= Combine(Combine(APath1, APath2), APath3);
end;

function GetClassLocalAttributes(const AClass: TClass): TEnumerableRec<TCustomAttribute>;
begin
  Result:= AClass.LocalAttributes;
end;

{ TObjectClassParentsEnumerator }

function TObjectClassParentsEnumerator.GetNextNode(const ANode: TClass): TClass;
begin
  Result:= ANode.ClassParent;
end;

{ TObjectHelper }

function TObjectHelper.GetAs<T>: T;
begin
  if Assigned(Self) and (Self is T) then
    Result:= T(Self)
  else
    Result:= nil;
end;

function TObjectHelper.ToEnumerable<T>: TEnumerableRec<T>;
begin
  Result:= TSingleItemEnumerator<T>.CreateEnumerableRec(Self);
end;

function TObjectHelper.ToEnumerable: TEnumerableRec<TObject>;
begin
  Result:= ToEnumerable<TObject>();
end;

class function TObjectHelper.ClassParents: TEnumerableRec<TClass>;
begin
  Result:= TObjectClassParentsEnumerator.CreateEnumerableRec(ClassParent);
end;

class function TObjectHelper.SelfAndClassParents: TEnumerableRec<TClass>;
begin
  Result:= TObjectClassParentsEnumerator.CreateEnumerableRec(Self);
end;

class function TObjectHelper.LocalAttributes: TEnumerableRec<TCustomAttribute>;
var
  RttiContext: TRttiContext;
begin
  RttiContext:= TRttiContext.Create;
  try
    Result:= ArrayUtils.All<TCustomAttribute>(RttiContext.GetType(Self).GetAttributes);
  finally
    RttiContext.Free;
  end;
end;

class function TObjectHelper.AllAttributes: TEnumerableRec<TCustomAttribute>;
begin
  Result:=
    TRttiContext.Using<TEnumerableRec<TCustomAttribute>>/  // workaround na av
      function: TEnumerableRec<TCustomAttribute> begin
        Result:=
          SelfAndClassParents.
            Map<TEnumerableRec<TCustomAttribute>>(GetClassLocalAttributes).
            Flatten<TCustomAttribute>;
      end;
end;

class function TObjectHelper.FindLocalAttribute<AttributeType>: AttributeType;
begin
  Result:= LocalAttributes._OfType<AttributeType>.FirstOrDefault;
end;

class function TObjectHelper.HasLocalAttribute<AttributeType>: Boolean;
begin
  Result:= Assigned(FindLocalAttribute<AttributeType>());
end;

class function TObjectHelper.FindAttribute<AttributeType>: AttributeType;
begin
  Result:= AllAttributes._OfType<AttributeType>.FirstOrDefault;
end;

class function TObjectHelper.HasAttribute<AttributeType>: Boolean;
begin
  Result:= Assigned(FindAttribute<AttributeType>());
end;

{ TObjectHolder<T> }

constructor TObjectHolder<T>.Create(const AValue: T);
begin
  inherited Create;
  FValue:= AValue;
end;

destructor TObjectHolder<T>.Destroy;
begin
  FreeAndNil(FValue);
  inherited Destroy;
end;

function TObjectHolder<T>.GetValue: T;
begin
  Result:= FValue;
end;

{ TJvDropTargetHelper }

function TJvDropTargetHelper.GetIsSingleFile: Boolean;
begin
  Result:= (GetFileNames(nil) = 1);
end;

function TJvDropTargetHelper.GetSingleFileName: string;
begin
  Assert(IsSingleFile);
  Result:=
    Utils.Using(TStringList.Create)/
      function (FileNames: TStringList): string begin
        GetFilenames(FileNames);
        Result:= FileNames[0];
      end;
end;

function FormatByteSize(const bytes: Int64): string;
const
  B = 1; //byte
  KB = 1024 * B; //kilobyte
  MB = 1024 * KB; //megabyte
  GB = 1024 * MB; //gigabyte
begin
  if (bytes > GB) then
    Result:= FormatFloat('0.# GB', bytes / GB)
  else
    if (bytes > MB) then
      Result:= FormatFloat('0.# MB', bytes / MB)
    else
      if (bytes > KB) then
        Result:= FormatFloat('0.# KB', bytes / KB)
      else
        Result:= FormatFloat('0.# B', bytes) ;
end;

function ExtractURLDocumentExt(const AURL: string): string;
var
  uri: TIdURI;
begin
  uri:= TIdURI.Create(AURL);
  try
    Result:= ExtractFileExt(uri.Document);
    if (Copy(Result, 1, 1) = '.') then
      Result:= Copy(Result, 2);
  finally
    FreeAndNil(uri);
  end;
end;

function IsURL(const AValue: string): Boolean;
begin
  Result:= StartsText('http://', AValue) or StartsText('https://', AValue);
end;

function GetDomainName(const AHost: string): string;
var
  HostWithoutPort: string;
  parts: TArray<string>;
  len: Integer;
begin
  if (AHost = '') then
    Exit('');

  HostWithoutPort:= AHost.Split([':'])[0];

  parts:= HostWithoutPort.Split(['.']);
  len:= Length(parts);

  if (len < 2) then
    Exit('');

  Result:= parts[len-2] + '.' + parts[len-1];
end;

function GenerateGUID: string;
var
  guid: TGUID;
begin
  if (CreateGUID(guid) <> 0) then
    raise Exception.Create('Can''t create guid');

  Result:= GUIDToString(guid);
end;

{ EServerSessionNotFound }

initialization
  FormatSettings.ShortDateFormat:= Trim(RemoveQuotedText(FormatSettings.ShortDateFormat));

  if (GetWindowsVersion < wvWin10) then
    WinHttpFlagSecureProtocols:= WINHTTP_FLAG_SECURE_PROTOCOL_TLS1_2;
end.

