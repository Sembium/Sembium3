unit uClientUtils;

interface

uses
  Windows, Db, DbClient, Classes, ExtCtrls, Controls, Menus, ActnList, uDefaultPrinters, Printers,
  Graphics, GridsEh, DBGridEh, AbmesDBGrid, Dialogs, JvDBCombobox, uUtils,
  DBCtrls, JvDBControls, ComCtrls, JvDBLookup, AbmesFields,
  uNestProc, uEnumeratorUtils, Generics.Collections,
  Forms, DbChart, TeEngine, SysUtils, uFuncUtils, AbmesClientDataSet,
  Winapi.Messages, ToolCtrlsEh, PrnDbgeh;

type
  TMenuItemClass = class of TMenuItem;

type
  TPriorityType = (ptMain, ptOccWorkDept);

procedure DeleteMenuItemsOfType(AParentMenuItem: TMenuItem; AMenuItemClass: TMenuItemClass);
procedure FreeComponentsOfType(AOwner: TComponent; AComponentClass: TComponentClass);

procedure CheckAutoCreateForms;

procedure CheckLocaleSettings;

procedure SetVisible(const AComponents: array of TComponent; AVisible: Boolean = True);

{ slednite proceduri veche ne se izpolzvat

procedure DoAddPrimaryIndex(ADataSet: TCustomClientDataSet);
procedure DoRefreshRecord(ADataSet: TCustomClientDataSet);
procedure DoFetchDetails(ADataSet: TCustomClientDataSet);
}

procedure ConfirmAction(const AConfirmMessage: string);

{ pita za refresh, i ako ne se potvurdi pravi Abort }
procedure ConfirmRefresh;

{ RefreshDataSet refreshva ADataSet i vsichkite mu detaili kaskadno
  chrez Close/Open i s Bookmark vazstanoviava poziciite navsiakade }
procedure RefreshDataSet(ADataSet: TDataSet);


// RepeatAction startira AAction posledovatelno sus zaptvane sled vsiako startirane
// za novo, ako v nachaloto e natisnat Shift

procedure RepeatAction(AAction: TAction; const PromptMsg: string);

// CloneOrOpen otvaria Dest, kato ako e vuzmojno go klonira ot Source

procedure CloneOrOpen(Dest, Source: TCustomClientDataSet);

procedure InitializeAbmesDBGrid(AGrid: TAbmesDBGrid;
  ATitleButtons: Boolean = True);

procedure InitializeAllAbmesDBGridsOf(AComponent: TComponent);

// sortira dannite na DataSet-a na grida. DataSet-a triabva da e TCustomClientDataSet
procedure SortGrid(AGrid: TAbmesDBGrid; const ASortIndexName: string; DetailsSort: Boolean = False);

// resizva ukazanite kolonite po ravno
procedure ResizeGridColumns(AGrid: TAbmesDBGrid; const AResizebleColumnFieldNames: string);

// skriva koloni po index i ako e posochena kolona, dobavia shirinata na skritite kum neia
procedure HideGridColumns(AGrid: TAbmesDBGrid;
  ColumnIndexes: array of Integer; ExpandColumnIndex: Integer = -1);

type
  TPrinterPage = record
    PaperSize: Smallint;
    Orientation: TPrinterOrientation;
  end;

function GetDefaultPrinterName: string;

// zadava nov razmer na stranicata na printera i vrushta staria
function SetUpPrinter(NewPaperSize: Smallint; NewOrientation: TPrinterOrientation;
  APrinter: TPrinter = nil): TPrinterPage;

function GetEditActionCaption(AEnabled: Boolean): string;

procedure GridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);

function MergeColors(Color1, Color2: TColor): TColor;

procedure AllWhenNullGetText(Sender: TField; var Text: String; DisplayText: Boolean; ShortText: Boolean = False);

function TerminateString(const S: string; TerminatorChar: Char = '.'): string;

procedure ShowExceptionMessage(const Msg: string; const ExceptionClassName: string);

procedure ReconcileError(E: EReconcileError);

function ShiftIsPressed: Boolean;
function ControlIsPressed: Boolean;
function AltIsPressed: Boolean;

function GetWorkArea: TRect;

// sledvashtata procedure kopira ASource.Items v ADest.Items i rekursivno navutre
// !!! VNIMANIE ne kopira vsichki property-ta !!!  shtoto niama Assign
procedure CopyMenuItemsIntoMenuItem(ASource, ADest: TMenuItem);

procedure PopupMenuFromButton(AButton: TControl; APopupMenu: TPopupMenu);

// vika se na OnGetText na pole za cena, koiato moje da e bez kurs
procedure SetPriceFieldText(var AText: string; APriceField, AMinNoRateDateField: TField);

// kopira mnojestvo failove v ADirName, imenata na koito sa razdeleni s ;. niama znachenie dali AFileNames zavyrshva s ;
procedure CopyFiles(const ADirName, AFileNames: string);

// vryshta prazno vmesto 0
procedure NumericFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);

// vryshta vreme v ShortTimeFormat
procedure TimeFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);

// translira intervala 0..1 v 0%..100%
procedure PercentFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean; EmptyIfZero: Boolean = True);

// (0..100)% --> (0..1)
procedure PercentFieldSetText(Sender: TField; const Text: string);

// translira intervala 1..0 v 0%..100%
procedure DiscountModifierFieldGetText(Sender: TField; var Text: String; DisplayText: Boolean);

// (0..100)% --> (1..0)
procedure DiscountModifierFieldSetText(Sender: TField; const Text: String);

function ConfirmRecordDelete: Boolean;

procedure CheckNoAsTextField(AField: TField; Exact: Boolean);
function ValidNoAsText(ANoAsText: string; Exact: Boolean): Boolean;
function TrimNoAsText(const ANoAsText: string): string;

procedure CheckFileExists(const FileName: string);

procedure CheckDatePeriod(ABeginDateField, AEndDateField: TField; FocusEndDateField: Boolean = False; const AMessage: string = '');

procedure CheckDatesAreInOrder(AFirstDateField, ASecondDateField: TField);

function IsDateSubPeriod(ASubBeginDateField, ASubEndDateField,
  ABeginDateField, AEndDateField: TField): Boolean;

procedure CheckFloatInterval(ABeginField, AEndField: TField; FocusEndField: Boolean = False);

// convertira razmer ot baitove v megabaitove
procedure MByteFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);

procedure MByteFieldSetText(Sender: TField; const Text: string);

procedure GridSplitterCanResize(var NewSize: Integer; var Accept: Boolean;
  SplitterLowerBound: Integer);

procedure SynchronizeGridsSelection(ASrcGrid: TAbmesDBGrid; const ADestGrids: array of TAbmesDBGrid);

// rekursivno obhojda gui komponenti i im formatira paramtrite %ParamNameHere% v captionite s niakakva stoinost. budgeta e primer
procedure RecursivelyFormatCaptions(ARoot: TPersistent; MsgParams: TStrings);

// zadava pokazva stoinostta ot poleto, che neshto se burka i ne moje samo
procedure InitializeDBComboBox(AComboBox: TJvDBComboBox);

// populva Values na comboto ot DisplayBoolValues na poleto
procedure InitializeBooleanComboBox(ADBComboBox: TJvDBComboBox);

// refreshva DataSet-a na grida i zapazva LeftColumn & selected cell
procedure RefreshDBGrid(ADBGrid: TAbmesDBGrid);

// kolichestvo chasove kato text
function HoursToStr(AHours: Real): string;

procedure HoursFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);

// workaround na delphi-to, ako niakoi drug promeni stoinostta na poleto
// i edita poniakoga ne se prerisuva, moje bi ako poleto ima OnGetText
procedure RefreshDBEdit(ADBEdit: TDBEdit);
procedure RefreshDBComboEdit(ADBComboEdit: TJvDBComboEdit);

procedure InitializePriorityInterval(ABeginPriorityCodeField, AEndPriorityCodeField: TField; APriorityType: TPriorityType = ptMain);

procedure DoEmployeeFieldChanged(
  AEmployeeCodeField: TField;
  AEmployeeNoField: TField = nil;
  AEmployeeNameField: TField = nil;
  AHasDocField: TField = nil;
  ADocBranchCodeField: TField = nil;
  ADocCodeField: TField = nil);

procedure AutoSizeColumn(AGrid: TAbmesDBGrid; AColumnIndex: Integer);

// skriwat/pokazwat kolonki, koito sa oznacheni s tagowe ( > 1 ). cheten tag oznachawa visible,
// kogato butona sys syshtiq tag ne e natisnat, a necheten, kogato butana s tag s 1 po-malyk e natisnat.
// primer: dwe sysedni kolonki s tagowe 4 i 5 se smenqt kogato prewkliuchwame butona s tag 4
//
// podobrenie: weche moje da gleda nqkolko butona - w kolonkata se zapiswa tag (...xxyyzz),
// nechetno oznachawa natisnat, chetno oznachawa nenatisnat. primer w kolonka zapiswame 5021308
// towa oznachawa che kolonkata shte e visible samo kogato butona s tag 8 ( 08 ) e NEnatisnat,
// butona s tag 12 e natisnat, butona s tag 2 ( 02 ) e NEnatisnat i butona s tag 4 e natisnat
procedure UpdateColumnsVisibility(AGrid: TAbmesDBGrid; const AControls: array of TWinControl); overload;
procedure UpdateColumnsVisibility(AGrid: TAbmesDBGrid; AControl: TWinControl); overload;

procedure SetControlReadOnly(AReadOnly: Boolean; AControl: TWinControl);
procedure SetControlsReadOnly(AReadOnly: Boolean; const AControls: array of TWinControl);

procedure SetControlsVisible(AVisible: Boolean; const AControls: array of TControl);

procedure SetDataSetsGetFieldValueAsStringEvent(AOwner: TComponent);

type
  TClientComponentChecker = class(TComponentChecker)
  protected
    class function GetComponentPartOfEventName(AComponent: TComponent): string; override;
  public
    class procedure CheckForDisconnectedEventHandlers(AComponent: TComponent); override;
  end;

type
  TMenuItemHelper = class helper (TComponentHelper) for TMenuItem
  public
    procedure AssignMenuItem(Source: TMenuItem);
  end;

const
  ReadOnlyColors: array[Boolean] of TColor = (clWindow, clBtnFace);
  ReadOnlyIColors: array[Boolean] of TColor = (clInfoBk, clBtnFace);

const
  GridIndicatorWidth = 14;
  GridVerticalScrollBarWidth = 18;

type
  TStatusTextType = (sttName, sttAbbrev, sttAbbrevName, sttCodeAbbrevName);

function GetStatusText(AStatusCode: Integer; AStatusTextType: TStatusTextType;
  const AStatusNames: array of string; const AStatusAbbrevs: array of string;
  AFirstFieldWidthInPixels: Integer = 50; AStatusOffset: Integer = 1): string;

procedure CalcWorkdaysDiff(APlanDateField, ARealDateField: TAbmesSQLTimeStampField; AResultField: TAbmesFloatField);

procedure DoEmployeeDateTimeAction(AEmployeeField, ADateField, ATimeField: TField; const AConfirmMessage: string);

function ShowExecutionTime(const AOperationName: string): TNestProcRec;

function GetColumnOnMouse(AGrid: TDBGridEh): TColumnEh;

type
  TDBChartSeriesEnumerator = class(TIndexedEnumerator<TChartSeries, TDBChart>)
    function GetItem(AIndex: Integer): TChartSeries; override;
    function ItemCount: Integer; override;
  end;

type
  TDBChartHelper = class helper (TWinControlHelper) for TDBChart
  public
    function AllSeries: TEnumerableRec<TChartSeries>;
  end;

type
  TPrintDBGridEhHelper = class helper for TPrintDBGridEh
  public
    procedure PreviewModal;
  end;

procedure DoControlValueError(AControl: TWinControl; const AMessage: string);
procedure DoControlValueErrorFmt(AControl: TWinControl; const AMessage: string; const Args: array of const);

procedure PreventGridColumnSelection(AGrid: TAbmesDBGrid; AMessage: tagMSG; var Handled: Boolean);

function FormatByteSize(const Bytes: Extended): string;
function FormatTimeLength(ATimeLength: Double): string;

function CleanFormCaption(const ACaption: string): string;

// fix na bug w EhGrid-a - horiz scroller-a ostawashe w dqsno bez wyzmojnost za premestwane
procedure FixDBGridHorizontalScroller(ADBGrid: TAbmesDBGrid);

procedure PersistDBTextMessages(ADataSet: TAbmesClientDataSet);

function MsgToMessage(const Msg: TMsg): TMessage;

function WordWrapString(const AValue: string; ACanvas: TCanvas; const AMaxWidth: Integer): string;

procedure FixDBGridEhColumnWidths(const ADBGridEh: TDBGridEh);

function FixCaption(const ACaption: string; const ASearchText, AReplaceWithText: string): string; overload;
function FixCaption(const ACaption: string;  AParamsDictionary: TDictionary<string, string>): string; overload;

procedure FixCaptions(AComponent: TComponent; const AFixCaptionFunc: TConstFunc<string, string>); overload;
procedure FixCaptions(AComponent: TComponent; const ASearchText, AReplaceWithText: string); overload;
procedure FixCaptions(AComponent: TComponent; AParamsDictionary: TDictionary<string, string>); overload;

resourcestring
  SAllInBrackets = '< всички >';
  SAllInBracketsShort = '< вс >';

  SMatrixPrint = 'Печат на матричен принтер?';

  SFileExists = 'Файлът %s съществува. Да бъде ли презаписан?';
  SFileCannotBeWritten = 'Грешка при запис на Файла %s';

  SNotAvailable = '***';

  SStatusDoneAbbrev = 'Пк';
  SStatusAnnuledAbbrev = 'Ан';

  SConfirmRefresh = 'Потвърдете обновяването!';

  SOpenFile = 'Отваряне на файл';
  SOpenFolder = 'Отваряне на папка';
  SExportCompleted = 'Експортът завърши успешно за %d секунди.';

implementation

uses
  QuickRpt, StrUtils, dMain, fBaseForm, fEditForm, AbmesDialogs,
  uUserActivityConsts, uMessageDecodingUtils, Variants,
  uServerMessageIds, DBConsts, uMessageUtils, StdCtrls,
  QRCtrls, Math, TypInfo, SqlTimSt, uScalingUtils,
  Buttons, uDataSetUtils, JvDBRadioPanel, AbmesReport,
  uClientDateTime, AbmesDBCheckBox, JclStrings, fMain, DateUtils,
  Diagnostics, DBCtrlsEh, fButtonForm, uToolbarUtils, uClientApp,
  fBevelEditForm, fBevelFilterForm, AbmesDBDateEdit, uAbmesDBGridHelpers,
  uClientConsts, Types, UITypes, PrViewEh, DBAxisGridsEh, PrvFrmEh;

resourcestring
  SCantApplyRecord = 'Записът не е извършен!' + SLineBreak + '%s';
  SNoRateFor = 'н.к.%s';

  SInvalidLocaleDateTimeFormat = 'Невалиден формат на дата в регионалните настройки';
  SWrongDatesOrderErrorMessage = '%s трябва да е по-късна или равна на %s';

  SBytes = 'байта';
  SKilobytes = 'KB';
  SMegabytes = 'MB';
  SGigabytes = 'GB';
  STerabytes = 'TB';

  SSeconds = 'секунди';
  SMinutes = 'минути';
  SHours   = 'часа';
  SDays    = 'дни';

procedure CheckAutoCreateForms;
var
  i: Integer;
begin
  for i:= 0 to Screen.FormCount - 1 do
    if (Screen.Forms[i] is TBaseForm) then
      raise Exception.CreateFmt('Form %s must not be auto-create', [Screen.Forms[i].Name]);

  for i:= 0 to Application.ComponentCount - 1 do
    if (Application.Components[i] is TQuickRep) then
      raise Exception.CreateFmt('Report %s must not be auto-create', [Application.Components[i].Name]);
end;

procedure InvalidDateFormatError;
begin
  raise Exception.Create(SInvalidLocaleDateTimeFormat);
end;

procedure CheckLocaleSettings;
var
  OldDate, NewDate: TDateTime;
  OldSQLTimeStamp, NewSQLTimeStamp: TSQLTimeStamp;
  s: string;
  v: Variant;
begin
  OldDate:= Date;  // tuk ne triabva da se polzva ContextDate
  OldSQLTimeStamp:= DateTimeToSQLTimeStamp(OldDate);

  s:= SQLTimeStampToStr('', OldSQLTimeStamp);
  if not TryStrToSqlTimeStamp(s, NewSQLTimeStamp) then
    InvalidDateFormatError;

  if (OldSQLTimeStamp.Year <> NewSQLTimeStamp.Year) or
     (OldSQLTimeStamp.Month <> NewSQLTimeStamp.Month) or
     (OldSQLTimeStamp.Day <> NewSQLTimeStamp.Day) or
     (OldSQLTimeStamp.Hour <> NewSQLTimeStamp.Hour) or
     (OldSQLTimeStamp.Minute <> NewSQLTimeStamp.Minute) or
     (OldSQLTimeStamp.Second <> NewSQLTimeStamp.Second) or
     (OldSQLTimeStamp.Fractions <> NewSQLTimeStamp.Fractions) then
    InvalidDateFormatError;

  NewDate:= OldDate;
  v:= DateTimeToStr(OldDate);
  try
    NewDate:= VarToDateTime(v);
  except
    InvalidDateFormatError;
  end;

  if (OldDate <> NewDate) then
    InvalidDateFormatError;
end;

procedure SetVisible(const AComponents: array of TComponent; AVisible: Boolean);
var
  i: Integer;
begin
  for i:= Low(AComponents) to High(AComponents) do
    begin
      Assert(Assigned(AComponents[i]));

      if (AComponents[i] is TControl) then
        TControl(AComponents[i]).Visible:= AVisible
      else
        if (AComponents[i] is TMenuItem) then
          TMenuItem(AComponents[i]).Visible:= AVisible
        else
          raise Exception.CreateFmt('uClientUtils.SetVisible() does not support class %s', [AComponents[i].ClassName]);
    end;
end;

procedure ConfirmAction(const AConfirmMessage: string);
begin
  if (MessageDlgEx(AConfirmMessage, mtConfirmation, [mbOK, mbCancel], 0) <> mrOk) then
    Abort;
end;

{  procedure DoAddPrimaryIndex(ADataSet: TCustomClientDataSet);
var
  i: Integer;
  s: string;
begin
  s:= '';
  with ADataSet do
    begin
      for i:= 0 to FieldCount - 1 do
        with Fields[i] do
          if (pfInKey in Fields[i].ProviderFlags) then
            begin
              if (s <> '') then
                s:= s + ';';

              s:= s + FieldName;
            end;

      if (s <> '') then
        AddIndex('PrimaryKey', s, [ixPrimary, ixUnique]);
    end;
end;

procedure DoRefreshRecord(ADataSet: TAbmesClientDataSet);
var
  SaveIndexName: string;
begin
  with ADataSet do
    begin
      DisableControls;
      try
        SaveIndexName:= IndexName;
        IndexName:= 'PrimaryKey';
        try
          RefreshRecord;
        finally
          IndexName:= SaveIndexName;
        end;
      finally
        EnableControls;
      end;
    end;
end;

procedure DoFetchDetails(ADataSet: TAbmesClientDataSet);
var
  SaveIndexName: string;
begin
  with ADataSet do
    begin
      DisableControls;
      try
        SaveIndexName:= IndexName;
        IndexName:= 'PrimaryKey';
        try
          FetchDetails;
        finally
          IndexName:= SaveIndexName;
        end;
      finally
        EnableControls;
      end;
    end;
end;  }

{ RefreshDataSet routine stuff }

procedure ConfirmRefresh;
begin
  ConfirmAction(SConfirmRefresh);
end;

procedure RefreshDataSet(ADataSet: TDataSet);
var
  SaveCursor: TCursor;
  List: TDataSetList;
begin
  Assert(Assigned(ADataSet), 'Cannot refresh a nil dataset');
  Assert(ADataSet.Active, 'Cannot refresh a closed dataset. Dataset: ' + ADataSet.Name);

  Application.ProcessMessages;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    List:= TDataSetList.Create;
    try
      List.AddDataSet(ADataSet, True);

      List.DisableControls;
      try
        List.GetBookmarks;
        List.CloseDataSets;
        List.OpenDataSets;
        // no need to call GotoBookmarks. OpenDataSets does the job
      finally
        List.EnableControls;
      end;
    finally
      FreeAndNil(List);
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

procedure RepeatAction(AAction: TAction; const PromptMsg: string);
var
  Prompt: Boolean;
begin
  Prompt:= ShiftIsPressed;
  repeat
    AAction.Execute;

    if Prompt then
      Prompt:= (MessageDlgEx(PromptMsg, mtConfirmation, mbOkCancel, 0) = mrOk);
  until not Prompt;
end;

procedure CloneOrOpen(Dest, Source: TCustomClientDataSet);
begin
  if Assigned(Source) and Source.Active then
    Dest.CloneCursor(Source, False)
  else
    Dest.Open;
end;

procedure InitializeAbmesDBGrid(AGrid: TAbmesDBGrid;
  ATitleButtons: Boolean);
begin
  AGrid.ShowHint:= True;

  AGrid.OptionsEh:=
    AGrid.OptionsEh +
    [dghExtendVertLines] -
    [dghColumnResize, dghColumnMove];

  AGrid.SelectionDrawParams.DrawFocusFrame:= True;
  AGrid.SelectionDrawParams.SelectionStyle:= gsdsClassicEh;

  AGrid.Columns.TempUpdate/
    procedure
    var
      c: TColumnEh;
    begin
      for c in AGrid.Columns do
        begin
          c.ToolTips:= True;
          c.Footer.ToolTips:= True;

          if Assigned(c.Field) and (c.Field.FieldKind in [fkData, fkInternalCalc]) then
            c.Title.TitleButton:= ATitleButtons;
        end;
    end;
end;

procedure InitializeAllAbmesDBGridsOf(AComponent: TComponent);
var
  AbmesDBGrid: TAbmesDBGrid;
  TitleButtons: Boolean;
  dsf: TDataSetField;
begin
  for AbmesDBGrid in AComponent.AllComponents.OfType<TAbmesDBGrid> do
    begin
      TitleButtons:= Assigned(AbmesDBGrid.OnSortMarkingChanged) or AbmesDBGrid.SortLocal;

      if Assigned(AbmesDBGrid.DataSource) and
         Assigned(AbmesDBGrid.DataSource.DataSet) and
         (AbmesDBGrid.DataSource.DataSet is TCustomClientDataSet) then
        begin
          dsf:= (AbmesDBGrid.DataSource.DataSet as TCustomClientDataSet).DataSetField;

          TitleButtons:=
            TitleButtons and
            ( (not Assigned(dsf)) or
              (dsf.DataSet.RecordCount = 1) );
        end;

      InitializeAbmesDBGrid(AbmesDBGrid, TitleButtons);
    end;
end;

procedure SortGrid(AGrid: TAbmesDBGrid; const ASortIndexName: string; DetailsSort: Boolean);
var
  i: Integer;
  TheFields, DescFields: string;
  cdsGridData: TAbmesClientDataSet;
  cdsGridDataFiltered: Boolean;
begin
  Assert(Assigned(AGrid.DataSource));
  Assert(Assigned(AGrid.DataSource.DataSet));

  if not (AGrid.DataSource.DataSet is TCustomClientDataSet) then
    Exit;

  cdsGridData:= AGrid.DataSource.DataSet as TAbmesClientDataSet;

  if Assigned(cdsGridData.DataSetField) and
     cdsGridData.DataSetField.DataSet.Active and
     (cdsGridData.DataSetField.DataSet.RecordCount > 1) and
     (not DetailsSort) then
    Exit;

  TheFields:= '';
  DescFields:= '';
  with AGrid do
    for i:= 0 to SortMarkedColumns.Count - 1 do
      begin
        TheFields:= TheFields + SortMarkedColumns[i].FieldName + '; ';

        if (SortMarkedColumns[i].Title.SortMarker = smUpEh) then
          DescFields:= DescFields + SortMarkedColumns[i].FieldName + '; ';
      end;  { for }

  if (TheFields <> '') then
    SetLength(TheFields, Length(TheFields) - 2);

  if (DescFields <> '') then
    SetLength(DescFields, Length(DescFields) - 2);

  if (TheFields <> '') then
    begin
      cdsGridData.IndexFieldNames:= '';
      cdsGridData.IndexName:= '';

      try
        cdsGridData.DeleteIndex(ASortIndexName);
      except
      end;

      cdsGridDataFiltered:= cdsGridData.Filtered;
      cdsGridData.Filtered:= False;
      try
        cdsGridData.AddIndex(ASortIndexName, TheFields, [], DescFields);
        cdsGridData.IndexName:= ASortIndexName;
      finally
        cdsGridData.Filtered:= cdsGridDataFiltered;
      end;  { try }
    end;   { if }
end;

procedure ResizeGridColumns(AGrid: TAbmesDBGrid; const AResizebleColumnFieldNames: string);
var
  ResizebleColumnFieldNamesList: TStringList;

  function IsResizebleColumn(AColumn: TColumnEh): Boolean;
  begin
    Result:= (ResizebleColumnFieldNamesList.IndexOf(AColumn.FieldName) >= 0);
  end;

var
  w, d, i: Integer;
  First: Boolean;
begin
  ResizebleColumnFieldNamesList:= TStringList.Create;
  try
    ResizebleColumnFieldNamesList:= TStringList.Create;
    ResizebleColumnFieldNamesList.Sorted:= True;
    ResizebleColumnFieldNamesList.Delimiter:= ';';
    ResizebleColumnFieldNamesList.DelimitedText:= AResizebleColumnFieldNames;

    with AGrid do
      begin
        w:= 32;
        d:= 0;
        for i:= 0 to Columns.Count - 1 do
          if Columns[i].Visible then
            begin
              Inc(w); // za border
              if IsResizebleColumn(Columns[i]) then
                Inc(d)
              else
                Inc(w, Columns[i].Width);
            end;

        w:= Width - w;
        First:= True;
        for i:= 0 to Columns.Count - 1 do
          if Columns[i].Visible and IsResizebleColumn(Columns[i]) then
            begin
              if First then
                Columns[i].Width:= (w div d) + (w mod d)
              else
                Columns[i].Width:= w div d;

              First:= False;
            end;
      end;
  finally
    FreeAndNil(ResizebleColumnFieldNamesList);
  end;  { try }
end;

procedure HideGridColumns(AGrid: TAbmesDBGrid;
  ColumnIndexes: array of Integer; ExpandColumnIndex: Integer = -1);
var
  i: Integer;
  HiddenWidth: Integer;
begin
  if (Length(ColumnIndexes) > 0) then
    begin
      AGrid.Columns.BeginUpdate;
      try
        HiddenWidth:= 0;
        for i:= Low(ColumnIndexes) to High(ColumnIndexes) do
          begin
            AGrid.Columns[ColumnIndexes[i]].Visible:= False;
            Inc(HiddenWidth, AGrid.Columns[ColumnIndexes[i]].Width + 1);
          end;

        if (ExpandColumnIndex >= 0) then
          AGrid.Columns[ExpandColumnIndex].Width:=
            AGrid.Columns[ExpandColumnIndex].Width + HiddenWidth;
      finally
        AGrid.Columns.EndUpdate;
      end;
    end;
end;

function GetDefaultPrinterName: string;
var
  ResStr: array[0..255] of Char;
begin
  GetProfileString('Windows', 'device', '', ResStr, 255);
  Result:= StrPas(ResStr);
end;

function SetUpPrinter(NewPaperSize: Smallint; NewOrientation: TPrinterOrientation;
  APrinter: TPrinter): TPrinterPage;
const
  Orientations: array[TPrinterOrientation] of Integer =
    (DMORIENT_PORTRAIT, DMORIENT_LANDSCAPE);
var
  Device: array[0..255] of char;
  Driver: array[0..255] of char;
  Port: array[0..255] of char;
  hDMode: THandle;
  PDMode: PDEVMODE;
begin
  Result.PaperSize:= 0;
  Result.Orientation:= poPortrait;

  if not Assigned(APrinter) and (GetDefaultPrinterName = '') then
    Exit;

  if Assigned(APrinter) and (APrinter = PrinterPreview.Printer) then
    SetDefaultPrinter(APrinter, WinPaperSizeToPaperSize(NewPaperSize));

  if not Assigned(APrinter) then
    begin
      Printer.PrinterIndex:= -1;
      APrinter:= Printer;
    end;

  try
    Result.Orientation:= APrinter.Orientation;
  except
    Result.Orientation:= Printers.Printer.Orientation;
  end;

  APrinter.PrinterIndex:= APrinter.PrinterIndex;
  APrinter.GetPrinter(Device, Driver, Port, hDMode);
  if (hDMode <> 0) then
    begin
      pDMode:= GlobalLock(hDMode);

      if (pDMode <> nil) then
        begin
          Result.PaperSize:= pDMode^.dmPaperSize;

         {Set to legal}
          pDMode^.dmFields:= pDMode^.dmFields or DM_PAPERSIZE or DM_ORIENTATION;
          pDMode^.dmPaperSize:= DMPAPER_LEGAL;
          pDMode^.dmOrientation:= Orientations[NewOrientation];

         {Set to custom size and oriantation}
          pDMode^.dmFields:= pDMode^.dmFields or DM_ORIENTATION;
          if (NewPaperSize > 0) then
            pDMode^.dmFields:= pDMode^.dmFields or DM_PAPERSIZE;

          pDMode^.dmPaperSize:= NewPaperSize;
          pDMode^.dmOrientation:= Orientations[NewOrientation];

         {Set the bin to use}
//          pDMode^.dmFields:= pDMode^.dmFields or DMBIN_MANUAL;
//          pDMode^.dmDefaultSource:= DMBIN_MANUAL;

          GlobalUnlock(hDMode);
        end;
    end;

  APrinter.PrinterIndex:= APrinter.PrinterIndex;
end;   { SetUpPrinter }

function GetEditActionCaption(AEnabled: Boolean): string;
begin
  if AEnabled then
    Result:= SEditCaption
  else
    Result:= SReadOnlyCaption;

  Result:= Result + cDialogSuffix;
end;

procedure GridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  g: TAbmesDBGrid;
begin
  g:= Sender as TAbmesDBGrid;

  if (Abs(Rect.Top - g.CellRect(g.Col, g.Row).Top) <= 1) and
     (not (gdFocused in State) or not g.Focused) and
     ( (g.Canvas.Brush.Color = Column.Color) or
       (g.Canvas.Brush.Color = g.OddRowColor) or
       (g.Canvas.Brush.Color = g.EvenRowColor) ) then
    begin
      if (g.Color <> Column.Color) then
        g.Canvas.Brush.Color:= MergeColors(g.Color, Column.Color)
      else
        g.Canvas.Brush.Color:= $00FED1B4;
    end;

  g.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

function MergeColors(Color1, Color2: TColor): TColor;
var
  Colors: array[1..2] of Integer;
  i: Integer;
begin
  Colors[1]:= ColorToRGB(Color1);
  Colors[2]:= ColorToRGB(Color1);

  Result:= Hi(Color1);
  for i:= 1 to 3 do
    Result:= (Result shl 8) +
             ((Lo(Colors[1] shr 8*(3-i)) + Lo(Colors[2] shr 8*(3-i))) div 2);
end;

type
  THackField = class(TField)
  public
    procedure GetText(var Text: string; DisplayText: Boolean); override;
  end;

procedure THackField.GetText(var Text: string; DisplayText: Boolean);
begin
  inherited GetText(Text, DisplayText);
end;

procedure AllWhenNullGetText(Sender: TField; var Text: String; DisplayText: Boolean; ShortText: Boolean);
begin
  if (Sender.AsString = '') then
    begin
      if ShortText then
        Text:= SAllInBracketsShort
      else
        Text:= SAllInBrackets;
    end
  else
    THackField(Sender).GetText(Text, DisplayText);
end;

function TerminateString(const S: string; TerminatorChar: Char = '.'): string;
const
  StandardTerminatorChars = ['.', '!', '?'];
begin
  if (s <> '') and CharInSet(s[Length(s)], (StandardTerminatorChars + [TerminatorChar])) then
    Result:= s
  else
    Result:= s + TerminatorChar;
end;

function GetFullExceptionMessage(const Msg: string): string;
var
  DecodedMessage: string;
begin
  Result:= TerminateString(Msg);

  DecodedMessage:= DecodeMessage(Msg);
  if (DecodedMessage <> '') then
    Result:= TerminateString(DecodedMessage) + SNewMessage + Result;
end;

procedure ShowExceptionMessage(const Msg: string; const ExceptionClassName: string);
begin
  MessageBeep(MB_ICONSTOP);
  MessageDlgEx(
    GetFullExceptionMessage(Msg) + SNewMessage + ExceptionClassName,
    mtCustom,
    [mbOk],
    0);
end;

procedure ReconcileError(E: EReconcileError);
begin
  ShowExceptionMessage(Format(SCantApplyRecord, [E.Message]), E.ClassName);
end;

function ShiftIsPressed: Boolean;
begin
  Result:= GetKeyState(VK_SHIFT) and (1 shl 15) <> 0;
end;

function ControlIsPressed: Boolean;
begin
  Result:= GetKeyState(VK_CONTROL) and (1 shl 15) <> 0;
end;

function AltIsPressed: Boolean;
begin
  Result:= GetKeyState(VK_MENU) and (1 shl 15) <> 0;
end;

function GetWorkArea: TRect;
begin
  SystemParametersInfo(SPI_GETWORKAREA, 0, @Result, 0);
end;

procedure CopyMenuItemsIntoMenuItem(ASource, ADest: TMenuItem);
var
  i: Integer;
  mi: TMenuItem;
begin
  Assert(Assigned(ASource));
  Assert(Assigned(ADest));

  ADest.Clear;
  for i:= 0 to ASource.Count - 1 do
    begin
      mi:= TMenuItemClass(ASource[i].ClassType).Create(ADest.Owner);
      try
        mi.AssignMenuItem(ASource[i]);
        ADest.Add(mi);
        CopyMenuItemsIntoMenuItem(ASource[i], mi);
      except
        FreeAndNil(mi);
        raise;
      end;  { try }
    end;  { for }
end;

procedure PopupMenuFromButton(AButton: TControl; APopupMenu: TPopupMenu);
var
  p: TPoint;
begin
  with AButton do
    p:= Parent.ClientToScreen(Point(Left-1, Top + Height));
  APopupMenu.Popup(p.x, p.y);
end;  { PopupMenuFromButton }

procedure SetPriceFieldText(var AText: string; APriceField, AMinNoRateDateField: TField);
var
  DisplayFormat: string;
begin
  if (APriceField is TAbmesFloatField) then
    DisplayFormat:= (APriceField as TAbmesFloatField).DisplayFormat
  else
    begin
      if (APriceField is TAggregateField) then
        DisplayFormat:= (APriceField as TAggregateField).DisplayFormat
      else
        DisplayFormat:= '';
    end;

  if not VarIsNull(AMinNoRateDateField.AsVariant) then
    AText:= Format(SNoRateFor, [AMinNoRateDateField.AsString])
  else
    begin
      if VarIsNull(APriceField.AsVariant) then
        AText:= ''
      else
        AText:= FormatFloat(DisplayFormat, VarToFloat(APriceField.AsVariant));
    end;
end;

procedure CopyFiles(const ADirName, AFileNames: string);
type
  GlobalAnswerState = (stUndefined, stYesToAll, stNoToAll);

var
  Dest: string;
  GlobalAnswer: GlobalAnswerState;
  FileNamesPos: Integer;
  NewFileNamesPos: Integer;
  FileName: string;

procedure GetNextFileName;
begin
  NewFileNamesPos:= PosEx(';', AFileNames, FileNamesPos);

  if (NewFileNamesPos = 0) then
    NewFileNamesPos:= Length(AFileNames);

  FileName:= Copy(AFileNames, FileNamesPos, NewFileNamesPos - FileNamesPos);
end;

begin
  ChDir(ADirName);

  GlobalAnswer:= stUndefined;
  FileName:= 'dummy';
  NewFileNamesPos:= 0;

  while (FileName <> '') do
    begin
      FileNamesPos:= NewFileNamesPos + 1;
      GetNextFileName;

      if (FileName <> '') then
        begin
          Dest:= ExpandUNCFileName(ExtractFileName(FileName));

          if FileExists(Dest) then
            case GlobalAnswer of
              stUndefined:
                case MessageDlgFmtEx(
                       SFileExists,
                       [Dest],
                       mtWarning,
                       mbYesAllNoAllCancel,
                       0) of

                  mrCancel:
                    Abort;

                  mrNo:
                    Continue;

                  mrYes:
                    if not DeleteFile(Dest) then
                      raise Exception.Create(Format(SFileCannotBeWritten, [Dest]));

                  mrYesToAll:
                    begin
                      GlobalAnswer:= stYesToAll;
                      if not DeleteFile(Dest) then
                        raise Exception.Create(Format(SFileCannotBeWritten, [Dest]));
                    end;

                  mrNoToAll:
                    begin
                      GlobalAnswer:= stNoToAll;
                      Continue;
                    end;
                end;   { case }

              stYesToAll:
                if not DeleteFile(Dest) then
                  raise Exception.Create(Format(SFileCannotBeWritten, [Dest]));

              stNoToAll:
                Continue;
            end;   { case }

          if not CopyFile(PChar(FileName), PChar(Dest), True) then
            raise Exception.Create(Format(SFileCannotBeWritten, [Dest]));
        end;
    end;
end;

procedure NumericFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  FormatString: string;
begin
  Assert(Assigned(Sender));

  if VarIsNullOrEmpty(Sender.Value) or (Sender.Value = 0) then
    Text:= ''
  else
    begin
      if (Sender is TAggregateField) then
        FormatString:= (Sender as TAggregateField).DisplayFormat
      else
        begin
          Assert(Sender is TNumericField);

          if DisplayText then
            FormatString:= (Sender as TNumericField).DisplayFormat
          else
            FormatString:= (Sender as TNumericField).EditFormat;
        end;

      Text:= FormatFloat(FormatString, Sender.Value);
    end;
end;

procedure TimeFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.IsNull then
    Text:= ''
  else
    Text:= FormatDateTime(FormatSettings.ShortTimeFormat, Sender.AsDateTime);
end;

procedure PercentFieldGetText(Sender: TField;
  var Text: String; DisplayText: Boolean; EmptyIfZero: Boolean);
var
  FormatString: string;
begin
  if VarIsNullOrEmpty(Sender.Value) { aggregate friendly IsNull }  then
    Text:= ''
  else
    begin
      if (Sender is TAggregateField) then
        FormatString:= (Sender as TAggregateField).DisplayFormat
      else
        begin
          if DisplayText then
            FormatString:= (Sender as TAbmesFloatField).DisplayFormat
          else
            FormatString:= (Sender as TAbmesFloatField).EditFormat;
        end;

      Text:= FormatFloat(FormatString, VarToFloat(Sender.Value) * 100);
      if EmptyIfZero and (Text = '0') then
        Text:= '';
    end;
end;

procedure PercentFieldSetText(Sender: TField;
  const Text: String);
var
  d: Double;
begin
  if (Text <> '') then
    begin
      try
        d:= StrToFloat(Text) / 100;
      except
        Sender.Clear;
        Exit;
      end;

      if (Sender is TFloatField) then
        with Sender as TFloatField do
          if ((MinValue <> 0) or (MaxValue <> 0)) and
             ((d < MinValue) or (d > MaxValue)) then
            DatabaseErrorFmt(SFieldRangeError, [d * 100, DisplayName, MinValue * 100, MaxValue * 100]);

      Sender.AsFloat:= d;
    end
  else
    Sender.Clear;
end;

procedure DiscountModifierFieldGetText(Sender: TField; var Text: String; DisplayText: Boolean);
var
  FormatString: string;
begin
  if VarIsNullOrEmpty(Sender.Value) then
    Text:= ''
  else
    begin
      if DisplayText then
        FormatString:= (Sender as TAbmesFloatField).DisplayFormat
      else
        FormatString:= (Sender as TAbmesFloatField).EditFormat;

      Text:= FormatFloat(FormatString, (1 - VarToFloat(Sender.Value)) * 100);
    end;
end;

procedure DiscountModifierFieldSetText(Sender: TField; const Text: String);
var
  d: Double;
begin
  if (Text <> '') then
    begin
      try
        d:= StrToFloat(Text) / 100;
      except
        Sender.Clear;
        Exit;
      end;  { try }

      if (Sender is TFloatField) then
        with Sender as TFloatField do
          if ((MinValue <> 0) or (MaxValue <> 0)) and
             ((d < MinValue) or (d > MaxValue)) then
            DatabaseErrorFmt(SFieldRangeError, [d * 100, DisplayName, MinValue * 100, MaxValue * 100]);

      Sender.AsFloat:= 1 - d;
    end
  else
    Sender.Clear;
end;

function ConfirmRecordDelete: Boolean;
begin
  Result:=
    (MessageDlgEx(SDeleteRecordQuestion, mtConfirmation, mbOKCancel, 0) = mrOk);
end;


function ValidNoAsText(ANoAsText: string; Exact: Boolean): Boolean;
var
  i: Integer;
  len: Integer;
begin
  if (ANoAsText = '*') then
    begin
      Result:= True;
      Exit;
    end;

  Result:= False;

  if (not Exact) and (ANoAsText[Length(ANoAsText)] = '*') then
    begin
      SetLength(ANoAsText, Length(ANoAsText)-1);

      if (ANoAsText[Length(ANoAsText)] = '.') then
        SetLength(ANoAsText, Length(ANoAsText)-1);
    end;

  for i:= 1 to Length(ANoAsText) do
    if not CharInSet(ANoAsText[i], ['0'..'9', '.']) then
      Exit;

  while (Pos('.0', ANoAsText) > 0) do
    ANoAsText:= StringReplace(ANoAsText, '.0', '.', [rfReplaceAll]);

  len:= Length(ANoAsText);
  Result:=
    not ( (len = 0) or
          (ANoAsText[1] = '.') or
          (ANoAsText[len] = '.') or
          (Pos('..', ANoAsText) > 0) );
end;

procedure CheckNoAsTextField(AField: TField; Exact: Boolean);
begin
  if (AField.AsString <> '') and
     not ValidNoAsText(AField.AsString, Exact) then
    raise Exception.Create(SInvalidNoAsTextId);
end;

function TrimNoAsText(const ANoAsText: string): string;
begin
  Assert((ANoAsText = '') or ValidNoAsText(ANoAsText, False));

  Result:= ANoAsText;
  while (Pos('.0', Result) > 0) do
    Result:= StringReplace(Result, '.0', '.', [rfReplaceAll]);

  while (Length(Result) > 2) and
        (Result[1] = '0') and
        (Result[2] <> '.') do
    System.Delete(Result, 1, 1);
end;

procedure CheckFileExists(const FileName: string);
begin
  if not FileExists(FileName) then
    raise Exception.Create(SFileDoesNotExistsId + '(' + 'FileName:s=' + InternalEncodeString(FileName) + ')');
end;

procedure CheckDatePeriod(ABeginDateField, AEndDateField: TField; FocusEndDateField: Boolean; const AMessage: string);
begin
  if (not ABeginDateField.IsNull) and
     (not AEndDateField.IsNull) and
     (ABeginDateField.AsDateTime > AEndDateField.AsDateTime) then
    begin
      if FocusEndDateField then
        AEndDateField.FocusControl
      else
        ABeginDateField.FocusControl;

      raise Exception.Create(Utils.Coalesce(AMessage, SIncorrectDatePeriodId));
    end;
end;

procedure CheckDatesAreInOrder(AFirstDateField, ASecondDateField: TField);
begin
  CheckDatePeriod(
    AFirstDateField,
    ASecondDateField,
    True,
    Format(SWrongDatesOrderErrorMessage, [ASecondDateField.DisplayLabel, AFirstDateField.DisplayLabel]));
end;

function IsDateSubPeriod(ASubBeginDateField, ASubEndDateField,
  ABeginDateField, AEndDateField: TField): Boolean;
var
  SubBeginDate, SubEndDate, BeginDate, EndDate: TDateTime;
begin
  if ASubBeginDateField.IsNull then
    SubBeginDate:= MinDateTime
  else
    SubBeginDate:= ASubBeginDateField.AsDateTime;

  if ASubEndDateField.IsNull then
    SubEndDate:= MaxDateTime
  else
    SubEndDate:= ASubEndDateField.AsDateTime;

  if ABeginDateField.IsNull then
    BeginDate:= MinDateTime
  else
    BeginDate:= ABeginDateField.AsDateTime;

  if AEndDateField.IsNull then
    EndDate:= MaxDateTime
  else
    EndDate:= AEndDateField.AsDateTime;

  Result:=
    (BeginDate <= SubBeginDate) and
    (SubBeginDate <= SubEndDate) and
    (SubEndDate <= EndDate);
end;

procedure CheckFloatInterval(ABeginField, AEndField: TField; FocusEndField: Boolean);
begin
  if (not ABeginField.IsNull) and
     (not AEndField.IsNull) and
     (ABeginField.AsFloat > AEndField.AsFloat) then
    begin
      if FocusEndField then
        AEndField.FocusControl
      else
        ABeginField.FocusControl;

      raise Exception.Create(SIncorrectIntervalId);
    end;
end;

procedure MByteFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  FormatString: string;
begin
  if VarIsNullOrEmpty(Sender.Value) { aggregate friendly IsNull }  then
    Text:= ''
  else
    begin
      if (Sender is TAggregateField) then
        FormatString:= (Sender as TAggregateField).DisplayFormat
      else
        begin
          if DisplayText then
            FormatString:= (Sender as TAbmesFloatField).DisplayFormat
          else
            FormatString:= (Sender as TAbmesFloatField).EditFormat;
        end;

      Text:= FormatFloat(FormatString, VarToFloat(Sender.Value) / (1024 * 1024));
    end;
end;

procedure MByteFieldSetText(Sender: TField; const Text: string);
begin
  if (Text <> '') then
    try
      Sender.AsFloat:= StrToFloat(Text) * (1024 * 1024);
    except
      Sender.Clear
    end
  else
    Sender.Clear;
end;

procedure GridSplitterCanResize(var NewSize: Integer; var Accept: Boolean;
  SplitterLowerBound: Integer);
const
  MaxShift = 1;
  RowHeight = 18;
var
  Shift: Integer;
  lb: Integer;
begin
  lb:= SplitterLowerBound - MaxShift;

  if (NewSize >= lb) then
    begin
      Shift:= (NewSize - lb) mod RowHeight;

      Accept:= (Shift <= 2*MaxShift);

      if Accept then
        NewSize:= lb + RowHeight*((NewSize - lb) div RowHeight) +
                  1;
    end  { if }
  else
    Accept:= False;
end;

procedure SynchronizeGridsSelection(ASrcGrid: TAbmesDBGrid; const ADestGrids: array of TAbmesDBGrid);
var
  i, j: Integer;
  b: TBookmark;
  ds: TAbmesClientDataSet;
  sel: TBookmarkListEh;
begin
  ds:= ASrcGrid.DataSource.DataSet as TAbmesClientDataSet;
  if ds.Bof and ds.Eof then
    Exit;
  sel:= ASrcGrid.SelectedRows;
  for j:= Low(ADestGrids) to High(ADestGrids) do
    ADestGrids[j].SelectedRows.Clear;

  ds.DisableControls;
  try
    b:= ds.Bookmark;
    ds.First;
    try
      for i:= 0 to sel.Count-1 do
        begin
          ds.Bookmark:= sel[i];
          for j:= Low(ADestGrids) to High(ADestGrids) do
            ADestGrids[j].SelectedRows.CurrentRowSelected:= True;
        end;

    finally
      ds.Bookmark:= b;
    end;

  finally
    ds.EnableControls;
  end;
end;

procedure DeleteMenuItemsOfType(AParentMenuItem: TMenuItem; AMenuItemClass: TMenuItemClass);
var
  i: Integer;
begin
  i:= 0;
  while (i < AParentMenuItem.Count) do
    begin
      DeleteMenuItemsOfType(AParentMenuItem[i], AMenuItemClass);

      if (AParentMenuItem[i] is AMenuItemClass) then
        AParentMenuItem[i].Free
      else
        Inc(i);
    end;  { while }
end;

procedure FreeComponentsOfType(AOwner: TComponent; AComponentClass: TComponentClass);
var
  i: Integer;
begin
  i:= 0;
  while (i < AOwner.ComponentCount) do
    begin
      if (AOwner.Components[i] is AComponentClass) then
        AOwner.Components[i].Free
      else
        Inc(i);
    end;  { while }
end;

procedure RecursivelyFormatCaptions(ARoot: TPersistent; MsgParams: TStrings);
var
  i: Integer;
begin
  if ARoot is TForm then
    (ARoot as TForm).Caption:= FormatMessage((ARoot as TForm).Caption, MsgParams);

  if ARoot is TLabel then
    (ARoot as TLabel).Caption:= FormatMessage((ARoot as TLabel).Caption, MsgParams);

  if ARoot is TPanel then
    (ARoot as TPanel).Caption:= FormatMessage((ARoot as TPanel).Caption, MsgParams);

  if ARoot is TDBGridColumnEh then
    (ARoot as TDBGridColumnEh).Title.Caption:= FormatMessage((ARoot as TDBGridColumnEh).Title.Caption, MsgParams);

  if ARoot is TGroupBox then
    (ARoot as TGroupBox).Caption:= FormatMessage((ARoot as TGroupBox).Caption, MsgParams);

  if ARoot is TCheckBox then
    (ARoot as TCheckBox).Caption:= FormatMessage((ARoot as TCheckBox).Caption, MsgParams);

  if (ARoot is TChartSeries) then
    begin
      (ARoot as TChartSeries).Title:= FormatMessage((ARoot as TChartSeries).Title, MsgParams);
    end;

  if ARoot is TAction then
    begin
      (ARoot as TAction).Caption:= FormatMessage((ARoot as TAction).Caption, MsgParams);
      (ARoot as TAction).Hint:= FormatMessage((ARoot as TAction).Hint, MsgParams);
    end;

  if ARoot is TSpeedButton then
    begin
      (ARoot as TSpeedButton).Caption:= FormatMessage((ARoot as TSpeedButton).Caption, MsgParams);
      (ARoot as TSpeedButton).Hint:= FormatMessage((ARoot as TSpeedButton).Hint, MsgParams);
    end;

  if ARoot is TToolButton then
    begin
      (ARoot as TToolButton).Caption:= FormatMessage((ARoot as TToolButton).Caption, MsgParams);
      (ARoot as TToolButton).Hint:= FormatMessage((ARoot as TToolButton).Hint, MsgParams);
    end;

  if ARoot is TQRLabel then
    begin
      (ARoot as TQRLabel).Caption:= FormatMessage((ARoot as TQRLabel).Caption, MsgParams);
      (ARoot as TQRLabel).Hint:= FormatMessage((ARoot as TQRLabel).Hint, MsgParams);
    end;

  if (ARoot is TAbmesMatrixReport) then
    with (ARoot as TAbmesMatrixReport).Pattern do
      Text:= FormatMessage(Text, MsgParams);

  if ARoot is TDBRadioGroup then
    begin
      (ARoot as TDBRadioGroup).Caption:= FormatMessage((ARoot as TDBRadioGroup).Caption, MsgParams);
      for i:= 0 to (ARoot as TDBRadioGroup).Items.Count - 1 do
        (ARoot as TDBRadioGroup).Items[i]:= FormatMessage((ARoot as TDBRadioGroup).Items[i], MsgParams);
    end;

  if ARoot is TJvDBRadioPanel then
    begin
      // tova s caption-a ne e nujno, shtoto naslediava neshto, koeto se poddyrja, a i dolnia caption e protected
      //(ARoot as TJvDBRadioPanel).Caption:= FormatMessage((ARoot as TJvDBRadioPanel).Caption, MsgParams);
      for i:= 0 to (ARoot as TJvDBRadioPanel).Items.Count - 1 do
        (ARoot as TJvDBRadioPanel).Items[i]:= FormatMessage((ARoot as TJvDBRadioPanel).Items[i], MsgParams);
    end;

  if ARoot is TField then
    (ARoot as TField).DisplayLabel:= FormatMessage((ARoot as TField).DisplayLabel, MsgParams);

  if ARoot is TComponent then
    for i:= 0 to (ARoot as TComponent).ComponentCount - 1 do
      RecursivelyFormatCaptions((ARoot as TComponent).Components[i], MsgParams);

  if ARoot is TAbmesDBGrid then
    for i:= 0 to (ARoot as TAbmesDBGrid).Columns.Count - 1 do
      RecursivelyFormatCaptions((ARoot as TAbmesDBGrid).Columns[i], MsgParams);
end;

procedure InitializeDBComboBox(AComboBox: TJvDBComboBox);
begin
  if Assigned(AComboBox) and Assigned(AComboBox.Field) then
    with AComboBox do
      ItemIndex:= Values.IndexOf(Field.AsString);
end;

procedure InitializeBooleanComboBox(ADBComboBox: TJvDBComboBox);
var
  SL: TStringList;
begin
  SL:= TStringList.Create;
  try
    SL.Delimiter:= ';';
    SL.DelimitedText:= (ADBComboBox.Field as TAbmesFloatField).DisplayBoolValues;

    Assert(SL.Count = 2);

    ADBComboBox.Items.Clear;
    ADBComboBox.Items.Add('');
    ADBComboBox.Items.Add(SL[1]);
    ADBComboBox.Items.Add(SL[0]);

    ADBComboBox.Values.Assign(ADBComboBox.Items);
  finally
    FreeAndNil(SL);
  end;
end;

procedure RefreshDBGrid(ADBGrid: TAbmesDBGrid);
var
  LeftCol, Col, Row: Integer;
begin
  LeftCol:= ADBGrid.LeftCol;
  Col:= ADBGrid.Col;
  Row:= ADBGrid.Row;

  RefreshDataSet(ADBGrid.DataSource.DataSet);

  ADBGrid.LeftCol:= LeftCol;
  ADBGrid.Col:= Col;
  ADBGrid.Row:= Row;
end;

function HoursToStr(AHours: Real): string;
var
  h, m: Integer;
begin
  h:= Trunc(AHours);
  m:= RealRound(Frac(AHours) * 60);

  Inc(h, m div 60);
  m:= m mod 60;

  Result:= FormatFloat(',0', h);

  if (m > 0) then
    Result:= Result + Format(':%.2d', [m]);
end;

procedure HoursFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if (Sender is TAggregateField) then
    begin
      if VarIsNull(Sender.AsVariant) then
        Text:= ''
      else
        Text:= HoursToStr(VarToFloat(Sender.AsVariant));
    end
  else
    begin
      if Sender.IsNull then
        Text:= ''
      else
        Text:= HoursToStr(Sender.AsFloat);
    end;
end;

{ TClientComponentChecker }

class procedure TClientComponentChecker.CheckForDisconnectedEventHandlers(
  AComponent: TComponent);
begin
  inherited;
  // do nothing more - just increse method visibility
end;

class function TClientComponentChecker.GetComponentPartOfEventName(
  AComponent: TComponent): string;
begin
  if (AComponent is TQuickRep) then
    Result:= 'QuickRep'
  else
    Result:= inherited GetComponentPartOfEventName(AComponent);
end;

procedure RefreshDBEdit(ADBEdit: TDBEdit);
var
  SaveDataSource: TDataSource;
begin
  SaveDataSource:= ADBEdit.DataSource;
  ADBEdit.DataSource:= nil;
  ADBEdit.DataSource:= SaveDataSource;
end;

procedure RefreshDBComboEdit(ADBComboEdit: TJvDBComboEdit);
var
  SaveDataSource: TDataSource;
begin
  SaveDataSource:= ADBComboEdit.DataSource;
  ADBComboEdit.DataSource:= nil;
  ADBComboEdit.DataSource:= SaveDataSource;
end;

{ TMenuItemHelper }

procedure TMenuItemHelper.AssignMenuItem(Source: TMenuItem);
begin
  Action:= Source.Action;
  Caption:= Source.Caption;
  Hint:= Source.Hint;
  ImageIndex:= Source.ImageIndex;
  Enabled:= Source.Enabled;
  Checked:= Source.Checked;
  OnClick:= Source.OnClick;
  Tag:= Source.Tag;
  Visible:= Source.Visible;
end;

procedure InitializePriorityInterval(ABeginPriorityCodeField, AEndPriorityCodeField: TField; APriorityType: TPriorityType);

  procedure AssignPriorityFieldsValues;
  var
    MinPriorityCode: Integer;
    MaxPriorityCode: Integer;
  begin
    case APriorityType of
      ptMain:
        dmMain.SvrCommon.GetMinAndMaxPriorityNoCodes(MinPriorityCode, MaxPriorityCode);

      ptOccWorkDept:
        dmMain.SvrHumanResource.GetMinAndMaxOccWorkDeptPriorityNoCodes(MinPriorityCode, MaxPriorityCode);
    else
      raise Exception.Create('Unknown Priority Type');
    end;  { case }

    ABeginPriorityCodeField.AsInteger:= MinPriorityCode;
    AEndPriorityCodeField.AsInteger:= MaxPriorityCode;
  end;

var
  DataSet: TDataSet;

begin
  Assert(Assigned(ABeginPriorityCodeField));
  Assert(Assigned(AEndPriorityCodeField));
  Assert(ABeginPriorityCodeField <> AEndPriorityCodeField);
  Assert(ABeginPriorityCodeField.DataSet = AEndPriorityCodeField.DataSet);

  DataSet:= ABeginPriorityCodeField.DataSet;

  if (DataSet.State in dsEditModes) then
    AssignPriorityFieldsValues
  else
    begin
      DataSet.Edit;
      try
        AssignPriorityFieldsValues;
        DataSet.Post;
      except
        DataSet.Cancel;
        raise;
      end;  { try }
    end;
end;

procedure DoEmployeeFieldChanged(
  AEmployeeCodeField: TField;
  AEmployeeNoField: TField = nil;
  AEmployeeNameField: TField = nil;
  AHasDocField: TField = nil;
  ADocBranchCodeField: TField = nil;
  ADocCodeField: TField = nil);
var
  EmpName: string;
  EmployeeNo: Integer;
  DocBranchCode: Integer;
  DocCode: Integer;
  HasDoc: Boolean;
begin
  dmMain.SvrHumanResource.GetEmployeeData(
    AEmployeeCodeField.AsInteger, EmpName, HasDoc, DocBranchCode, DocCode, EmployeeNo);

  if Assigned(AEmployeeNoField) then
    AEmployeeNoField.AsInteger:= EmployeeNo;

  if Assigned(AEmployeeNameField) then
    AEmployeeNameField.AsString:= EmpName;

  if Assigned(AHasDocField) then
    AHasDocField.AsBoolean:= HasDoc;

  if Assigned(ADocBranchCodeField) then
    ADocBranchCodeField.AsInteger:= DocBranchCode;

  if Assigned(ADocCodeField) then
    ADocCodeField.AsInteger:= DocCode;
end;

procedure AutoSizeColumn(AGrid: TAbmesDBGrid; AColumnIndex: Integer);
var
  ColumnWidth: Integer;
  i: Integer;
begin
  if AGrid.AutoFitColWidths then
    Exit;

  ColumnWidth:=
    AGrid.Width -
    GridIndicatorWidth - 1 -
    GridVerticalScrollBarWidth;

  for i:= 0 to AGrid.Columns.Count - 1 do
    Dec(ColumnWidth, IfThen((i <> AColumnIndex) and AGrid.Columns[i].Visible, AGrid.Columns[i].Width + 1));

  ColumnWidth:= Max(ColumnWidth, AGrid.Columns[AColumnIndex].MinWidth);

  if (ColumnWidth <> AGrid.Columns[AColumnIndex].Width) then
    AGrid.Columns[AColumnIndex].Width:= ColumnWidth;
end;

function IsButtonForTagDown(AColTag: Integer; AControls: array of TWinControl): Boolean;
var
  Control: TWinControl;
  LowerColTag: Integer;
  ButtonFound: Boolean;
  sb: TSpeedButton;
  tb: TToolButton;
begin
  Result:= False;

  LowerColTag:= AColTag;
  if Odd(LowerColTag) then
    Dec(LowerColTag);

  ButtonFound:= False;
  for Control in AControls do
    begin
      for sb in Control.AllControls.OfType<TSpeedButton> do
        if (sb.Tag = LowerColTag) then
          begin
            Result:= sb.Down;
            ButtonFound:= True;
            Break;
          end;

      for tb in Control.AllControls.OfType<TToolButton> do
        if (tb.Tag = LowerColTag) then
          begin
            Result:= tb.Down;
            ButtonFound:= True;
            Break;
          end;
    end;

  Assert(ButtonFound);
end;

function IsColumnVisible(AColTag: Integer; AControls: array of TWinControl): Boolean;
var
  ButtonTag: Integer;
begin
  Result:= True;
  while (AColTag > 0) do
    begin
      ButtonTag:= AColTag mod 100;
      Result:= Result and (Odd(ButtonTag) = IsButtonForTagDown(ButtonTag, AControls));
      AColTag:= AColTag div 100;
    end;  { while }
end;

procedure UpdateColumnsVisibility(AGrid: TAbmesDBGrid; const AControls: array of TWinControl);
var
  Col: TColumnEh;
  i: Integer;
begin
  for i:= 0 to AGrid.Columns.Count - 1 do
    begin
      Col:= AGrid.Columns[i];
      if (Col.Tag > 1) then
        Col.Visible:= IsColumnVisible(Col.Tag, AControls);
    end;  { for }
end;

procedure UpdateColumnsVisibility(AGrid: TAbmesDBGrid; AControl: TWinControl);
begin
  UpdateColumnsVisibility(AGrid, [AControl]);
end;

procedure SetControlReadOnly(AReadOnly: Boolean; AControl: TWinControl);
begin
  if (AControl is TDBEdit) then
    begin
      (AControl as TDBEdit).ReadOnly:= AReadOnly;
      (AControl as TDBEdit).Color:= ReadOnlyColors[AReadOnly];
      Exit;
    end;  { if }

  if (AControl is TDBComboBox) then
    begin
      (AControl as TDBComboBox).ReadOnly:= AReadOnly;
      (AControl as TDBComboBox).Color:= ReadOnlyColors[AReadOnly];
      Exit;
    end;  { if }

  if (AControl is TJvDBLookupCombo) then
    begin
      (AControl as TJvDBLookupCombo).ReadOnly:= AReadOnly;
      (AControl as TJvDBLookupCombo).Color:= ReadOnlyColors[AReadOnly];
      Exit;
    end;  { if }

  if (AControl is TJvDBComboBox) then
    begin
      (AControl as TJvDBComboBox).ReadOnly:= AReadOnly;
      (AControl as TJvDBComboBox).Color:= ReadOnlyColors[AReadOnly];
      Exit;
    end;  { if }

  if (AControl is TDBLookupComboBox) then
    begin
      (AControl as TDBLookupComboBox).ReadOnly:= AReadOnly;
      (AControl as TDBLookupComboBox).Color:= ReadOnlyColors[AReadOnly];
      Exit;
    end;  { if }

  if (AControl is TDBComboBoxEh) then
    begin
      (AControl as TDBComboBoxEh).ReadOnly:= AReadOnly;
      (AControl as TDBComboBoxEh).Color:= ReadOnlyColors[AReadOnly];
      Exit;
    end;  { if }

  if (AControl is TAbmesDBGrid) then
    begin
      (AControl as TAbmesDBGrid).ReadOnly:= AReadOnly;
      (AControl as TAbmesDBGrid).Color:= ReadOnlyColors[AReadOnly];
      Exit;
    end;  { if }

  if (AControl is TDBCheckBox) then
    begin
      (AControl as TDBCheckBox).ReadOnly:= AReadOnly;
      Exit;
    end;  { if }

  if (AControl is TAbmesDBCheckBox) then
    begin
      (AControl as TAbmesDBCheckBox).ReadOnly:= AReadOnly;
      Exit;
    end;  { if }

  if (AControl is TJvDBLookupEdit) then
    begin
      (AControl as TJvDBLookupEdit).ReadOnly:= AReadOnly;
      (AControl as TJvDBLookupEdit).Color:= ReadOnlyColors[AReadOnly];
      Exit;
    end;  { if }

  if (AControl is TCheckBox) then
    begin
      (AControl as TCheckBox).Enabled:= not AReadOnly;
      Exit;
    end;  { if }

  if (AControl is TAbmesDBDateEdit) then
    begin
      (AControl as TAbmesDBDateEdit).ReadOnly:= AReadOnly;
      (AControl as TAbmesDBDateEdit).Color:= ReadOnlyColors[AReadOnly];
      Exit;
    end;

  if (AControl is TDBMemo) then
    begin
      (AControl as TDBMemo).ReadOnly:= AReadOnly;
      (AControl as TDBMemo).Color:= ReadOnlyColors[AReadOnly];
      Exit;
    end;

  if (AControl is TEdit) then
    begin
      (AControl as TEdit).ReadOnly:= AReadOnly;
      (AControl as TEdit).Color:= ReadOnlyColors[AReadOnly];
      Exit;
    end;  { if }

  raise Exception.CreateFmt(
    'SetControlReadOnly: Unknown Type of Control: Name: %s Type: %s',
    [Acontrol.Name, AControl.ClassName]);
end;

procedure SetControlsReadOnly(AReadOnly: Boolean; const AControls: array of TWinControl);
var
  Control: TWinControl;
begin
  for Control in AControls do
    SetControlReadOnly(AReadOnly, Control);
end;

procedure SetControlsVisible(AVisible: Boolean; const AControls: array of TControl);
var
  Control: TControl;
begin
  for Control in AControls do
    Control.Visible:= AVisible;
end;

function StrPadNearest(AString: string; AWidthInPixels: Integer; APaddingChar: Char = ' '): string;
var
  StringWidth: Integer;
  PaddingCharWidth: Integer;
  PaddingCount: Integer;
begin
  StringWidth:= fmMain.Canvas.TextWidth(AString);
  PaddingCharWidth:= fmMain.Canvas.TextWidth(APaddingChar);

  PaddingCount:= RealRound((AWidthInPixels - StringWidth) / PaddingCharWidth);

  Result:= StrPadRight(AString, PaddingCount, APaddingChar);
end;

function GetStatusText(AStatusCode: Integer; AStatusTextType: TStatusTextType;
  const AStatusNames: array of string; const AStatusAbbrevs: array of string;
  AFirstFieldWidthInPixels: Integer = 50; AStatusOffset: Integer = 1): string;
var
  StatusIndex: Integer;
begin
  Assert(Length(AStatusNames) = Length(AStatusAbbrevs));
  Assert(Low(AStatusNames) = Low(AStatusAbbrevs));
  Assert(High(AStatusNames) = High(AStatusAbbrevs));

  StatusIndex:= AStatusCode - AStatusOffset;

  Assert(InRange(StatusIndex, Low(AStatusNames), High(AStatusNames)));

  AFirstFieldWidthInPixels:= ScalePixels(AFirstFieldWidthInPixels);

  case AStatusTextType of
    sttName:
      Result:= AStatusNames[StatusIndex];

    sttAbbrev:
      Result:= AStatusAbbrevs[StatusIndex];

    sttAbbrevName:
      Result:=
        StrPadNearest(AStatusAbbrevs[StatusIndex], AFirstFieldWidthInPixels) +
        AStatusNames[StatusIndex];

    sttCodeAbbrevName:
      Result:=
        StrPadNearest(IntToStr(AStatusCode) + ' - ' + AStatusAbbrevs[StatusIndex], AFirstFieldWidthInPixels) +
        AStatusNames[StatusIndex];
  else
    raise Exception.Create('Unkown StatusTextType');
  end;  { case }
end;

procedure SetDataSetsGetFieldValueAsStringEvent(AOwner: TComponent);
var
  cds: TAbmesClientDataSet;
begin
  Assert(Assigned(AOwner));
  for cds in AOwner.AllComponents.OfType<TAbmesClientDataSet> do
    cds.OnGetFieldValueAsString:= dmMain.DataSetGetFieldValueAsString;
end;

procedure CalcWorkdaysDiff(APlanDateField, ARealDateField: TAbmesSQLTimeStampField; AResultField: TAbmesFloatField);
begin
  if APlanDateField.IsNull then
    AResultField.Clear
  else
    AResultField.AsInteger:=
      dmMain.CountWorkdays(
        IfThen(
          ARealDateField.IsNull,
          ContextDate,
          ARealDateField.AsDateTime
        ),
        APlanDateField.AsDateTime
      );
end;

procedure DoEmployeeDateTimeAction(AEmployeeField, ADateField, ATimeField: TField; const AConfirmMessage: string);
var
  CurrentDateTime: TDateTime;
begin
  Assert(AllAssigned([AEmployeeField, ADateField, ATimeField]));
  Assert(ADateField.DataSet = AEmployeeField.DataSet);
  Assert(ATimeField.DataSet = AEmployeeField.DataSet);

  if (AConfirmMessage <> '') then
    ConfirmAction(AConfirmMessage);

  CheckEditMode(AEmployeeField.DataSet);

  CurrentDateTime:= ContextNow;
  AEmployeeField.AsInteger:= dmMain.LoginContext.UserCode;
  ADateField.AsDateTime:= DateOf(CurrentDateTime);
  ATimeField.AsDateTime:= TimeOf(CurrentDateTime);
end;

function ShowExecutionTime(const AOperationName: string): TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      Stopwatch: TStopwatch;
    begin
      Stopwatch:= TStopwatch.StartNew;
      try
        AProc;
      finally
        Stopwatch.Stop;
      end;

      ShowMessageFmt(
        'Operation "%s" done in %d.%d seconds',
        [AOperationName, Stopwatch.Elapsed.Seconds, Stopwatch.Elapsed.Milliseconds]);
    end);
end;

type
  TDBGridEhHack = class(TDBGridEh);

function GetColumnOnMouse(AGrid: TDBGridEh): TColumnEh;
var
  p: TPoint;
  s, i: Integer;
  InRowCount: Integer;
  InRowNo: Integer;
begin
  p:= AGrid.ScreenToClient(Mouse.CursorPos);

  s:= AGrid.CalcIndicatorColWidth;
  i:= 0;
  while (p.X > s) and (i < AGrid.Columns.Count) do
    begin
      if (AGrid.Columns[i].InRowLinePos = 0) then
        Inc(s, AGrid.Columns[i].Width + 1);
      Inc(i);
    end;

  if (i = 0) then
    Result:= nil
  else
    begin
      while (i < AGrid.Columns.Count) and
            (AGrid.Columns[i].InRowLinePos > 0) do
        Inc(i);

      InRowCount:= AGrid.Columns[i-1].InRowLinePos + 1;
      InRowNo:= ((p.Y mod (TDBGridEhHack(AGrid).DefaultRowHeight + 1)) div (TDBGridEhHack(AGrid).DefaultRowHeight div InRowCount + 1)) + 1;

      Result:= AGrid.Columns[i - 1 - (InRowCount-InRowNo)];
    end;
end;

{ TDBChartSeriesEnumerator }

function TDBChartSeriesEnumerator.GetItem(AIndex: Integer): TChartSeries;
begin
  Result:= Container.Series[AIndex];
end;

function TDBChartSeriesEnumerator.ItemCount: Integer;
begin
  Result:= Container.SeriesCount;
end;

{ TDBChartHelper }

function TDBChartHelper.AllSeries: TEnumerableRec<TChartSeries>;
begin
  Result:= TDBChartSeriesEnumerator.CreateEnumerableRec(Self);
end;

procedure DoControlValueError(AControl: TWinControl; const AMessage: string);
begin
  AControl.SetFocus;
  raise Exception.Create(AMessage);
end;

procedure DoControlValueErrorFmt(AControl: TWinControl; const AMessage: string; const Args: array of const);
begin
  DoControlValueError(AControl, Format(AMessage, Args));
end;

procedure PreventGridColumnSelection(AGrid: TAbmesDBGrid; AMessage: tagMSG; var Handled: Boolean);
const
  GridColumnSelectionHeight = 8;
var
  GridDataRectTop: Integer;
begin
  if (AMessage.hwnd = AGrid.Handle) and (AMessage.message = WM_LBUTTONDOWN) then
    begin
      GridDataRectTop:= AGrid.ClientToScreen(Point(0, AGrid.DataRect.Top)).Y;
      if InRange(AMessage.pt.Y, GridDataRectTop - GridColumnSelectionHeight, GridDataRectTop) then
        Handled:= True;
    end;
end;

function FormatByteSize(const Bytes: Extended): string;
type
  PowersOfTen = 0..4;
const
  PowerLabels: array[PowersOfTen] of string = (SBytes, SKilobytes, SMegabytes, SGigabytes, STerabytes);
var
  p: Integer;
  Limit: Extended;
begin
  for p:= High(PowersOfTen) downto Low(PowersOfTen) do
    begin
      Limit:= Power(2, p*10);

      if (Bytes >= Limit) then
        Exit(Format('%s %s', [FormatFloat('#.#', Bytes / Limit), PowerLabels[p]]));
    end;

  Result:= '0 ' + SBytes;
end;

function FormatTimeLength(ATimeLength: Double): string;
begin
  if (ATimeLength > 2) then
    Exit(Format('%d %s', [Trunc(ATimeLength), SDays]));

  ATimeLength:= ATimeLength * 24;
  if (ATimeLength > 2) then
    Exit(Format('%d %s', [Trunc(ATimeLength), SHours]));

  ATimeLength:= ATimeLength * 60;
  if (ATimeLength > 2) then
    Exit(Format('%d %s', [Trunc(ATimeLength), SMinutes]));

  ATimeLength:= ATimeLength * 60;
  Exit(Format('%d %s', [Trunc(ATimeLength), SSeconds]));
end;

function CleanFormCaption(const ACaption: string): string;
begin
  Result:= ACaption;
  Result:= StringReplace(Result, SRegisterOf, '', [rfReplaceAll]);
  Result:= StringReplace(Result, ' - ' + SEditCaption, '', [rfReplaceAll]);
  Result:= StringReplace(Result, ' - ' + SInsertCaption, '', [rfReplaceAll]);
  Result:= StringReplace(Result, ' - ' + SReadOnlyCaption, '', [rfReplaceAll]);
end;

procedure FixDBGridHorizontalScroller(ADBGrid: TAbmesDBGrid);
var
  i: Integer;
begin
  SendMessage(ADBGrid.Handle, WM_HSCROLL, SB_LEFT, 0);

  for i:= 1 to 10 do
    SendMessage(ADBGrid.Handle, WM_HSCROLL, SB_PAGELEFT, 0);
end;

procedure PersistDBTextMessages(ADataSet: TAbmesClientDataSet);
begin
  ADataSet.TempReadOnly(False)/
    ADataSet.ForEach/
      ADataSet.SafeEdit/
        ADataSet.Fields.OfType<TAbmesWideStringField>.ForEach/
          procedure (f: TAbmesWideStringField) begin
            f.AsString:= f.AsString;
          end;

  ADataSet.MergeChangeLog;
end;

function MsgToMessage(const Msg: TMsg): TMessage;
begin
  Result.Msg:= Msg.Message;
  Result.LParam:= Msg.lParam;
  Result.WParam:= Msg.wParam;
end;

function WordWrapString(const AValue: string; ACanvas: TCanvas; const AMaxWidth: Integer): string;

  function GetFirstWord(const S: string): string;
  var
    LastDelimiterPos: Integer;
    i: Integer;
    p: Integer;
  begin
    LastDelimiterPos:= 0;
    i:= 1;
    while (i <= Length(S)) do
      begin
        if (ACanvas.TextWidth(LeftStr(S, i)) > AMaxWidth) then
          begin
            if (LastDelimiterPos > 0) then
              p:= LastDelimiterPos
            else
              p:= i - 1;

            Exit(LeftStr(S, p));
          end;

        if (Ord(S[i]) in WordDelimiters) then
          LastDelimiterPos:= i;

        Inc(i);
      end;

    Result:= S;
  end;

  function TrimLastLineBreak(const S: string): string;
  begin
    if (RightStr(S, Length(SLineBreak)) = SLineBreak) then
      Result:= Copy(S, 1, Length(S) - Length(SLineBreak))
    else
      Result:= S;
  end;

  function WordWrapLine(ALine: string): string;
  var
    FirstWord: string;
  begin
    Result:= '';
    while (ALine <> '') do
      begin
        FirstWord:= GetFirstWord(ALine);
        Result:= Result + FirstWord + SLineBreak;
        ALine:= Copy(ALine, Length(FirstWord) + 1);
      end;

    Result:= TrimLastLineBreak(Result);
  end;

var
  s: string;
  SL: TStringList;
begin
  Result:= '';

  SL:= TStringList.Create;
  try
    SL.Text:= AValue;

    for s in SL do
      Result:= Result + WordWrapLine(s) + SLineBreak;
  finally
    FreeAndNil(SL);
  end;

  Result:= TrimLastLineBreak(Result);
end;

procedure FixDBGridEhColumnWidths(const ADBGridEh: TDBGridEh);
var
  i, w: Integer;
begin
  ADBGridEh.Columns.BeginUpdate;
  try
    for i:= 0 to ADBGridEh.Columns.Count - 1 do
      begin
        w:= ADBGridEh.Columns[i].Width;
        ADBGridEh.Columns[i].Width:= 0;
        ADBGridEh.Columns[i].Width:= w;
      end;
  finally
    ADBGridEh.Columns.EndUpdate;
  end;
end;

type
  TCustomButtonHack = class(TCustomButton)
  protected
    property Caption;
  end;

procedure FixCaptions(AComponent: TComponent; const AFixCaptionFunc: TConstFunc<string, string>);
var
  ALabel: TLabel;
  AMenuItem: TMenuItem;
  ACustomButton: TCustomButton;
  c: TComponent;
  LOldCaption, LNewCaption: string;
begin
  if AComponent is TForm then
    with (AComponent as TForm) do
      begin
        LOldCaption:= Caption;
        LNewCaption:= AFixCaptionFunc(LOldCaption);
        if (LNewCaption <> LOldCaption) then
          Caption:= LNewCaption;
      end;

  for ALabel in AComponent.AllComponents.OfType<TLabel> do
    with ALabel do
      begin
        LOldCaption:= Caption;
        LNewCaption:= AFixCaptionFunc(LOldCaption);
        if (LNewCaption <> LOldCaption) then
          Caption:= LNewCaption;
      end;

  for ACustomButton in AComponent.AllComponents.OfType<TCustomButton> do
    with TCustomButtonHack(ACustomButton) do
      begin
        LOldCaption:= Caption;
        LNewCaption:= AFixCaptionFunc(LOldCaption);
        if (LNewCaption <> LOldCaption) then
          Caption:= LNewCaption;
      end;

  for AMenuItem in AComponent.AllComponents.OfType<TMenuItem> do
    with AMenuItem do
      begin
        LOldCaption:= Caption;
        LNewCaption:= AFixCaptionFunc(LOldCaption);
        if (LNewCaption <> LOldCaption) then
          Caption:= LNewCaption;
      end;

  for c in AComponent.AllComponents do
    FixCaptions(c, AFixCaptionFunc);
end;

function FixCaption(const ACaption: string; const ASearchText, AReplaceWithText: string): string;
begin
  Result:= StringReplace(ACaption, ASearchText, AReplaceWithText, [rfReplaceAll]);
end;

procedure FixCaptions(AComponent: TComponent; const ASearchText, AReplaceWithText: string);
begin
  FixCaptions(
    AComponent,
    function (const ACaption: string): string
    begin
      Result:= FixCaption(ACaption, ASearchText, AReplaceWithText);
    end
  );
end;

function FixCaption(const ACaption: string;  AParamsDictionary: TDictionary<string, string>): string;
var
  Pair: TPair<string, string>;
begin
  Result:= ACaption;

  if (Pos('%', Result) <= 0) then
    Exit;

  for Pair in AParamsDictionary do
    if (Pair.Key <> '') then
      Result:= FixCaption(Result, '%' + Pair.Key + '%', Pair.Value);
end;

procedure FixCaptions(AComponent: TComponent; AParamsDictionary: TDictionary<string, string>);
begin
  FixCaptions(
    AComponent,
    function (const ACaption: string): string
    begin
      Result:= FixCaption(ACaption, AParamsDictionary);
    end
  );
end;

resourcestring
  SSundayShort = 'Нед';
  SMondayShort = 'Пон';
  STuesdayShort = 'Вто';
  SWednesdayShort = 'Сря';
  SThursdayShort = 'Чет';
  SFridayShort = 'Пет';
  SSaturdayShort = 'Съб';

{ TPrintDBGridEhHelper }

procedure TPrintDBGridEhHelper.PreviewModal;
begin
  Self.Preview;
  PreviewFormEh.Hide;
  PreviewFormEh.ShowModal;
end;

procedure AbmesDialogsBeforeShowDialogForm(AForm: TForm);
begin
  ReplaceAppParams(AForm);
  AForm.Scaled:= False;
  AForm.Rescale;
  AForm.PositionFormInScreen;
end;

initialization
  Randomize;
  FormatSettings.ShortDayNames[1]:= SSundayShort;
  FormatSettings.ShortDayNames[2]:= SMondayShort;
  FormatSettings.ShortDayNames[3]:= STuesdayShort;
  FormatSettings.ShortDayNames[4]:= SWednesdayShort;
  FormatSettings.ShortDayNames[5]:= SThursdayShort;
  FormatSettings.ShortDayNames[6]:= SFridayShort;
  FormatSettings.ShortDayNames[7]:= SSaturdayShort;
  AbmesDialogs.SetBeforeShowDialogForm(AbmesDialogsBeforeShowDialogForm);
end.
