unit fDateIntervalFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, StdCtrls, Mask, DBCtrls, DB, ActnList,
  JvToolEdit, JvDBControls, DBClient, AbmesClientDataSet, AbmesFields, uClientPeriods,
  JvExMask, Menus, ExtCtrls, System.Actions, uPeriods;

type
  TDateIntervalChangedNotifier = procedure(Sender: TObject; BeginDate, EndDate: TField) of object;

type
  TfrDateIntervalFrame = class(TFieldEditFrame)
    edtInterval: TJvDBComboEdit;
    cdsDates: TAbmesClientDataSet;
    dsDates: TDataSource;
    cdsDatesEND_DATE: TAbmesSQLTimeStampField;
    cdsDatesBEGIN_DATE: TAbmesSQLTimeStampField;
    actEditDateInterval: TAction;
    cdsDatesDAYS: TAbmesFloatField;
    cdsDatesWORKDAYS: TAbmesFloatField;
    cdsDates_BEGIN_DATE: TAbmesSQLTimeStampField;
    pmCopyPaste: TPopupMenu;
    miCut: TMenuItem;
    miCopy: TMenuItem;
    miPaste: TMenuItem;
    miDelete: TMenuItem;
    alCopyPaste: TActionList;
    actEditCut: TAction;
    actEditCopy: TAction;
    actEditPaste: TAction;
    actEditDelete: TAction;
    tmrHint: TTimer;
    procedure edtIntervalButtonClick(Sender: TObject);
    procedure actEditDateIntervalExecute(Sender: TObject);
    procedure cdsDatesBEGIN_DATEChange(Sender: TField);
    procedure cdsDatesEND_DATEChange(Sender: TField);
    procedure cdsDatesDAYSChange(Sender: TField);
    procedure cdsDatesWORKDAYSChange(Sender: TField);
    procedure actFrameUpdate(Sender: TObject);
    procedure edtIntervalDblClick(Sender: TObject);
    procedure cdsDatesAfterPost(DataSet: TDataSet);
    procedure cdsDatesCalcFields(DataSet: TDataSet);
    procedure cdsDates_BEGIN_DATEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actEditCopyExecute(Sender: TObject);
    procedure actEditPasteExecute(Sender: TObject);
    procedure actEditCutExecute(Sender: TObject);
    procedure actEditDeleteExecute(Sender: TObject);
    procedure actEditCutUpdate(Sender: TObject);
    procedure actEditCopyUpdate(Sender: TObject);
    procedure actEditPasteUpdate(Sender: TObject);
    procedure actEditDeleteUpdate(Sender: TObject);
    procedure edtIntervalKeyPress(Sender: TObject; var Key: Char);
    procedure tmrHintTimer(Sender: TObject);
    procedure edtIntervalKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FDataChanging: Boolean;
    FDealingWithOuterDataSet: Boolean;
    FNeedsInitialUpdate: Boolean;
    FDateIntervalFormat: TDateIntervalFormat;
    FEndDateReadOnly: Boolean;
    FBeginDateReadOnly: Boolean;
    FEndDateChanged: TDateIntervalChangedNotifier;
    FBeginDateChanged: TDateIntervalChangedNotifier;
    FPeriodDaysReadOnly: Boolean;
    FValidateMonthInterval: Boolean;
    FShortcutPeriod: TPeriod;
    FShortcutPeriodSet: Boolean;
    procedure CalcDaysAndWorkdays;
    procedure CheckIntervalIntegrity;
    procedure DoBeginDateChanged;
    procedure DoEndDateChanged;
    procedure ShowDateIntervalHint(const AHint: string);
    procedure CancelDateIntervalHint;
  private
    FDateIntervalHint: THintWindow;
  protected
    procedure DataChange(Sender: TObject); override;
    procedure UpdateData(Sender: TObject); override;
    function GetFocusControl: TWinControl; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property BeginDateReadOnly: Boolean read FBeginDateReadOnly write FBeginDateReadOnly;
    property EndDateReadOnly: Boolean read FEndDateReadOnly write FEndDateReadOnly;
    property PeriodDaysReadOnly: Boolean read FPeriodDaysReadOnly write FPeriodDaysReadOnly;
    property BeginDateChanged: TDateIntervalChangedNotifier read FBeginDateChanged write FBeginDateChanged;
    property EndDateChanged: TDateIntervalChangedNotifier read FEndDateChanged write FEndDateChanged;
    property ValidateMonthInterval: Boolean read FValidateMonthInterval write FValidateMonthInterval;
  end;

implementation

uses
  JclDateTime, fDateIntervalEdit, uClientTypes, uUtils, dMain, uColorConsts,
  uClientUtils, Math, AbmesDateTime, Clipbrd, uClientDateTime,
  Types, StrUtils;

resourcestring
  SInvalidDateInterval = 'Невалиден времеви интервал - крайната дата трябва да е по-голяма или равна на началната';
  SInvalidMonthIntervalFirstDate = 'Невалиден месечен интервал - началната дата трябва да е първо число от месец';
  SInvalidMonthIntervalSecondDate = 'Невалиден месечен интервал - крайната дата трябва да е последно число от месец';

const
  DateIntervalClipboardFormatName = 'DateInterval';

type
  TClipboardDateInterval = record
    BeginDate: TDateTime;
    BeginDateIsNull: Boolean;
    EndDate: TDateTime;
    EndDateIsNull: Boolean;
  end;
  PClipboardDateInterval = ^TClipboardDateInterval;

var
  cfDateInterval: UINT;

{$R *.dfm}

{ TfrDateIntervalFrame }

procedure TfrDateIntervalFrame.edtIntervalButtonClick(Sender: TObject);
begin
  inherited;
  actEditDateInterval.Execute;
end;

procedure TfrDateIntervalFrame.actEditCopyExecute(Sender: TObject);
var
  DateIntervalMemoryHandle, TextMemoryHandle: THandle;
  ClipboardDateInterval: TClipboardDateInterval;
  ClipboardDateIntervalPointer, DateIntervalPointer: PClipboardDateInterval;
  Clipboard: TClipboard;
  TextPointer: PChar;
  IntervalText: AnsiString;
begin
  inherited;

  ClipboardDateInterval.BeginDate:= cdsDatesBEGIN_DATE.AsDateTime;
  ClipboardDateInterval.BeginDateIsNull:= cdsDatesBEGIN_DATE.IsNull;
  ClipboardDateInterval.EndDate:= cdsDatesEND_DATE.AsDateTime;
  ClipboardDateInterval.EndDateIsNull:= cdsDatesEND_DATE.IsNull;

  DateIntervalMemoryHandle:= GlobalAlloc(GMEM_MOVEABLE, SizeOf(TClipboardDateInterval));
  try
    ClipboardDateIntervalPointer:= GlobalLock(DateIntervalMemoryHandle);
    try
      DateIntervalPointer:= Addr(ClipboardDateInterval);
      Move(DateIntervalPointer^, ClipboardDateIntervalPointer^, SizeOf(TClipboardDateInterval));
      cfDateInterval:= RegisterClipboardFormat(PChar(DateIntervalClipboardFormatName));

      Clipboard:= TClipboard.Create;
      try
        Clipboard.SetAsHandle(cfDateInterval, DateIntervalMemoryHandle);
      finally
        FreeAndNil(Clipboard);
      end;  { try }
    finally
      GlobalUnlock(DateIntervalMemoryHandle);
    end;  { try }
  except
    GlobalFree(DateIntervalMemoryHandle);
    raise;
  end;  { try }

  IntervalText:= AnsiString(edtInterval.Text);

  TextMemoryHandle:= GlobalAlloc(GMEM_MOVEABLE, Length(IntervalText) + 1);
  try
    TextPointer:= GlobalLock(TextMemoryHandle);
    try
      Move(PAnsiChar(IntervalText)^, TextPointer^, Length(IntervalText));
      OpenClipboard(Application.Handle);
      try
        SetClipboardData(CF_TEXT, TextMemoryHandle);
      finally
        CloseClipboard;
      end;
    finally
      GlobalUnlock(TextMemoryHandle);
    end;  { try }
  except
    GlobalFree(TextMemoryHandle);
    raise;
  end;  { try }
end;

procedure TfrDateIntervalFrame.actEditCopyUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= 
    (edtInterval.Focused) and
    ((not cdsDatesBEGIN_DATE.IsNull) or (not cdsDatesEND_DATE.IsNull));
end;

procedure TfrDateIntervalFrame.actEditCutExecute(Sender: TObject);
begin
  inherited;
  actEditCopy.Execute;
  actEditDelete.Execute;
end;

procedure TfrDateIntervalFrame.actEditCutUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= 
    (edtInterval.Focused) and
    ((not cdsDatesBEGIN_DATE.IsNull) or (not cdsDatesEND_DATE.IsNull)) and
    (not ReadOnly) and 
    (not BeginDateReadOnly) and 
    (not EndDateReadOnly);
end;

procedure TfrDateIntervalFrame.actEditDateIntervalExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;
  if ReadOnly or not dsData.DataSet.CanModify then
    em:= emReadOnly
  else
    em:= emEdit;

  if not TfmDateIntervalEdit.ShowForm(nil, cdsDates, em, doNone,
           BeginDateReadOnly, EndDateReadOnly, PeriodDaysReadOnly) then
    DataChange(Self);
end;

procedure TfrDateIntervalFrame.actEditDeleteExecute(Sender: TObject);
begin
  inherited;
  cdsDates.Edit;
  try
    cdsDatesBEGIN_DATE.Clear;
    cdsDatesEND_DATE.Clear;
    cdsDates.Post;
  except
    cdsDates.Cancel;
    raise;
  end;
end;

procedure TfrDateIntervalFrame.actEditDeleteUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= 
    (edtInterval.Focused) and
    (not ReadOnly) and 
    (not BeginDateReadOnly) and 
    (not EndDateReadOnly) and 
    ((not cdsDatesBEGIN_DATE.IsNull) or (not cdsDatesEND_DATE.IsNull));
end;

procedure TfrDateIntervalFrame.actEditPasteExecute(Sender: TObject);
var
  DateIntervalMemoryHandle: THandle;
  DateIntervalPointer: PClipboardDateInterval;
  Clipboard: TClipboard;
begin
  inherited;
  Clipboard:= TClipboard.Create;
  try
    DateIntervalMemoryHandle:= Clipboard.GetAsHandle(cfDateInterval);
    DateIntervalPointer:= GlobalLock(DateIntervalMemoryHandle);
    try
      cdsDates.Edit;
      try
        if not DateIntervalPointer^.BeginDateIsNull then
          cdsDatesBEGIN_DATE.AsDateTime:= DateIntervalPointer^.BeginDate
        else
          cdsDatesBEGIN_DATE.Clear;

        if not DateIntervalPointer^.EndDateIsNull then
          cdsDatesEND_DATE.AsDateTime:= DateIntervalPointer^.EndDate
        else
          cdsDatesEND_DATE.Clear;

        cdsDates.Post;
      except
        cdsDates.Cancel;
        raise;
      end;
    finally
      GlobalUnlock(DateIntervalMemoryHandle);
    end;  { try }
  finally
    FreeAndNil(Clipboard);
  end;  { try }
end;

procedure TfrDateIntervalFrame.actEditPasteUpdate(Sender: TObject);

  function ClipboardConsistsDateInterval: Boolean;
  var
    Clipboard: TClipboard;
    DateIntervalMemoryHandle: THandle;
  begin
    if (cfDateInterval = 0) then
      cfDateInterval:= RegisterClipboardFormat(PChar(DateIntervalClipboardFormatName));

    Clipboard:= TClipboard.Create;
    try
      DateIntervalMemoryHandle:= Clipboard.GetAsHandle(cfDateInterval);
      Result:= (DateIntervalMemoryHandle <> 0);
    finally
      FreeAndNil(Clipboard);
    end;  { finally }
  end;

begin
  inherited;
  (Sender as TAction).Enabled:= 
    (edtInterval.Focused) and 
    (not ReadOnly) and 
    (not BeginDateReadOnly) and 
    (not EndDateReadOnly) and 
    ClipboardConsistsDateInterval;
end;

procedure TfrDateIntervalFrame.DataChange(Sender: TObject);
begin
  inherited DataChange(Sender);

  if (FieldCount > 1) and
     Assigned(Sender) and
     Assigned(Fields[0]) and
     Assigned(Fields[1]) and
     not FDealingWithOuterDataSet then
    try
      FDealingWithOuterDataSet:= True;
      with cdsDates do
        if not Active then
          begin
            CreateDataSet;
            Append;
          end;

      CheckEditMode(cdsDates);
      cdsDatesBEGIN_DATE.AsVariant:= Fields[0].AsVariant;
      cdsDatesEND_DATE.AsVariant:= Fields[1].AsVariant;

      RefreshDBComboEdit(edtInterval);
    finally
      FDealingWithOuterDataSet:= False;
    end;
end;

destructor TfrDateIntervalFrame.Destroy;
begin
  CancelDateIntervalHint;
  inherited;
end;

procedure TfrDateIntervalFrame.UpdateData(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  inherited UpdateData(Sender);               

  Assert(cdsDates.Active);
  Assert(FieldCount > 1);
  Assert(Assigned(Fields[0]));
  Assert(Assigned(Fields[0].DataSet));
  Assert(Assigned(Fields[1]));
  Assert(Assigned(Fields[1].DataSet));
  Assert(Fields[0].DataSet = Fields[1].DataSet);

  CheckIntervalIntegrity;

  if not FDealingWithOuterDataSet then
    try
      FDealingWithOuterDataSet:= True;
                                                        
      try
        if (Fields[0].AsVariant <> cdsDatesBEGIN_DATE.AsVariant) or
           (Fields[1].AsVariant <> cdsDatesEND_DATE.AsVariant) then
          begin
            CheckEditMode(Fields[0].DataSet);
            if (cdsDatesBEGIN_DATE.AsDateTime > Fields[1].AsDateTime) and
               (cdsDatesEND_DATE.AsDateTime > Fields[1].AsDateTime) then
              begin
                // pri promiana na pole se vika calcfields, a e dobra ideia da dyrjim end_date po-goliama ot begin_date vyv vseki moment
                Fields[1].AsVariant:= cdsDatesEND_DATE.AsVariant;
                Fields[0].AsVariant:= cdsDatesBEGIN_DATE.AsVariant;
              end
            else
              begin
                Fields[0].AsVariant:= cdsDatesBEGIN_DATE.AsVariant;
                Fields[1].AsVariant:= cdsDatesEND_DATE.AsVariant;
              end;
          end;

      except
        Reset;
        raise;
      end;  { try }

    finally
      FDealingWithOuterDataSet:= False;
    end;  { try }

    if ValidateMonthInterval then
      begin
        DecodeDate(Fields[0].AsDateTime, Year, Month, Day);
        if (Day <> 1) then
          raise Exception.Create(SInvalidMonthIntervalFirstDate);

        DecodeDate(Fields[1].AsDateTime, Year, Month, Day);
        if (Day <> MonthDays[IsLeapYear(Year)][Month]) then
          raise Exception.Create(SInvalidMonthIntervalSecondDate);
      end;  { if }
end;

constructor TfrDateIntervalFrame.Create(AOwner: TComponent);
begin
  inherited;
  FieldNames:= 'BEGIN_DATE;END_DATE';
  FNeedsInitialUpdate:= True;
  FDateIntervalFormat:= dmMain.DateIntervalFormat;
end;

procedure TfrDateIntervalFrame.ShowDateIntervalHint(const AHint: string);
var
  P: TPoint;
  R: TRect;
begin
  P := edtInterval.ClientToScreen(Point(0, edtInterval.Height));

  FDateIntervalHint:= THintWindow.Create(Self);
  try
    R:= FDateIntervalHint.CalcHintRect(400, AHint, nil);
    OffsetRect(R, P.X, P.Y);

    FDateIntervalHint.ActivateHint(R, AHint);
    tmrHint.Enabled := True;
  except
    FreeAndNil(FDateIntervalHint);
    raise;
  end;
end;

procedure TfrDateIntervalFrame.CancelDateIntervalHint;
begin
  tmrHint.Enabled := False;
  FreeAndNil(FDateIntervalHint);
end;

procedure TfrDateIntervalFrame.CalcDaysAndWorkdays;
begin
  if cdsDatesBEGIN_DATE.IsNull or
     cdsDatesEND_DATE.IsNull or
     (LargeZero(cdsDatesBEGIN_DATE.AsFloat) = 0) or
     (LargeZero(cdsDatesEND_DATE.AsFloat) = 0) then
    begin
      cdsDatesDAYS.Clear;
      cdsDatesWORKDAYS.Clear;
    end
  else
    begin
      cdsDatesDAYS.AsInteger:= RealRound(cdsDatesEND_DATE.AsDateTime - cdsDatesBEGIN_DATE.AsDateTime) + 1;
      cdsDatesWORKDAYS.AsInteger:= dmMain.CountWorkdays(cdsDatesBEGIN_DATE.AsDateTime, cdsDatesEND_DATE.AsDateTime);
    end;
end;

procedure TfrDateIntervalFrame.cdsDatesBEGIN_DATEChange(Sender: TField);
begin
  inherited;

  FShortcutPeriodSet:= False;

  if FDataChanging then
    Exit;

  FDataChanging:= True;
  try
    if not Sender.IsNull then
      Sender.AsDateTime:= Max(MinDate, Sender.AsDateTime);

    if not FDealingWithOuterDataSet then
      DoBeginDateChanged;

    CalcDaysAndWorkdays;
  finally
    FDataChanging:= False;
  end;  { try }
end;

procedure TfrDateIntervalFrame.cdsDatesEND_DATEChange(Sender: TField);
begin
  inherited;

  FShortcutPeriodSet:= False;

  if FDataChanging then
    Exit;

  FDataChanging:= True;
  try
    if not Sender.IsNull then
      Sender.AsDateTime:= Min(MaxDate, Sender.AsDateTime);

    cdsDatesBEGIN_DATE.AsVariant:= cdsDatesBEGIN_DATE.AsVariant; // initiate cdsDates_BEGIN_DATEGetText

    if not FDealingWithOuterDataSet then
      DoEndDateChanged;

    CalcDaysAndWorkdays;
  finally
    FDataChanging:= False;
  end;  { try }
end;

procedure TfrDateIntervalFrame.cdsDatesDAYSChange(Sender: TField);
begin
  inherited;

  if FDataChanging then
    Exit;

  FDataChanging:= True;
  try
    if not cdsDatesBEGIN_DATE.IsNull then
      cdsDatesEND_DATE.AsDateTime:= Min(MaxDate, cdsDatesBEGIN_DATE.AsDateTime + cdsDatesDAYS.AsInteger - 1)
    else
      begin
        if not cdsDatesEND_DATE.IsNull then
          cdsDatesBEGIN_DATE.AsDateTime:= Max(MinDate, cdsDatesEND_DATE.AsDateTime - cdsDatesDAYS.AsInteger + 1)
      end;

    CalcDaysAndWorkdays;
  finally
    FDataChanging:= False;
  end;  { try }
end;

procedure TfrDateIntervalFrame.cdsDatesWORKDAYSChange(Sender: TField);
begin
  inherited;

  if FDataChanging then
    Exit;

  FDataChanging:= True;
  try
    if not cdsDatesBEGIN_DATE.IsNull then
      cdsDatesEND_DATE.AsDateTime:= Min(MaxDate, dmMain.IncDateByWorkdays(cdsDatesBEGIN_DATE.AsDateTime - 1, cdsDatesWORKDAYS.AsInteger))
    else
      begin
        if not cdsDatesEND_DATE.IsNull then
          cdsDatesBEGIN_DATE.AsDateTime:= Max(MinDate, dmMain.IncDateByWorkdays(cdsDatesEND_DATE.AsDateTime + 1, -cdsDatesWORKDAYS.AsInteger));
      end;

    CalcDaysAndWorkdays;
  finally
    FDataChanging:= False;
  end;  { try }
end;

procedure TfrDateIntervalFrame.CheckIntervalIntegrity;
begin
  if not cdsDatesBEGIN_DATE.IsNull and
     not cdsDatesEND_DATE.IsNull and
     (cdsDatesBEGIN_DATE.AsDateTime > cdsDatesEND_DATE.AsDateTime) then
    raise Exception.Create(SInvalidDateInterval);
end;

procedure TfrDateIntervalFrame.actFrameUpdate(Sender: TObject);
var
  NewDateIntervalDisplayStyle: TDateIntervalFormat;
begin
  inherited;

  if FNeedsInitialUpdate then
    begin
      FNeedsInitialUpdate:= False;
      DataChange(Self);
    end;

  cdsDates_BEGIN_DATE.DisplayFormat:= dmMain.GetIntervalDateDisplayFormat;

  // date interval display style changed?
  NewDateIntervalDisplayStyle:= dmMain.DateIntervalFormat;
  if (NewDateIntervalDisplayStyle <> FDateIntervalFormat) then
    begin
      FDateIntervalFormat:= NewDateIntervalDisplayStyle;
      CheckEditMode(cdsDates);
      cdsDatesBEGIN_DATE.AsVariant:= cdsDatesBEGIN_DATE.AsVariant; // initiate cdsDates_BEGIN_DATEGetText
    end;

  edtInterval.Color:= DateReadOnlyColors[ReadOnly or not Assigned(dsData.DataSet) or not (dsData.DataSet.CanModify)];

  if (edtInterval.SelLength > 0) then  
    edtInterval.SelLength:= 0;

  edtInterval.Width:= Width;
  edtInterval.ButtonWidth:= edtInterval.Height - 3;

  if Assigned(Screen.ActiveControl) and (Screen.ActiveControl.Owner = Self) then
    begin
      actEditDateInterval.ShortCut:= TextToShortCut('Space');
      actEditDateInterval.SecondaryShortCuts.Add('Alt+Down')
    end
  else
    begin
      actEditDateInterval.ShortCut:= scNone;
      actEditDateInterval.SecondaryShortCuts.Clear;
    end;
end;

procedure TfrDateIntervalFrame.edtIntervalDblClick(Sender: TObject);
begin
  inherited;
  // vyv fmDateIntervalEdit ima tozi frame bez buton, da ne mojem bezkraino da vlizame v taia forma
  if (edtInterval.ButtonWidth > 0) then
    actEditDateInterval.Execute;
end;

procedure TfrDateIntervalFrame.edtIntervalKeyPress(Sender: TObject; var Key: Char);
var
  Period: TPeriod;
begin
  inherited;

  if not ReadOnly and
     dsData.DataSet.CanModify and
     not BeginDateReadOnly and
     not EndDateReadOnly then
    for Period:= Low(TPeriod) to High(TPeriod) do
      if AnsiSameText(Key, LeftStr(GetPeriodTypeName(Period), 1)) then
        begin
          CheckEditMode(cdsDates);
          cdsDatesBEGIN_DATE.AsDateTime:= GetPeriodFirstDate(ContextDate, Period);
          cdsDatesEND_DATE.AsDateTime:= GetPeriodLastDate(ContextDate, Period);
          cdsDates.Post;

          FShortcutPeriod:= Period;
          FShortcutPeriodSet:= True;

          CancelDateIntervalHint;
          ShowDateIntervalHint(GetPeriodTypeName(Period));

          Break;
        end;
end;

procedure TfrDateIntervalFrame.edtIntervalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ShortcutPeriod: TPeriod;
  BeginDelta: Integer;
  EndDelta: Integer;
  EndDatePeriodDate: TDateTime;
begin
  inherited;

  if FShortcutPeriodSet and
     ((Shift = [ssAlt]) or ((Shift = [ssCtrl, ssAlt]))) and
     ((Key = VK_LEFT) or (Key = VK_RIGHT)) then
    begin
      ShortcutPeriod:= FShortcutPeriod;

      if (Shift = [ssAlt]) then
        begin
          if (Key = VK_LEFT) then
            begin
              BeginDelta:= -1;
              EndDelta:= 0;
            end
          else
            begin
              BeginDelta:= 0;
              EndDelta:= 1;
            end;
        end
      else
        begin
          if (Key = VK_LEFT) then
            begin
              BeginDelta:= -1;
              EndDelta:= -1;
            end
          else
            begin
              BeginDelta:= 1;
              EndDelta:= 1;
            end;
        end;

      EndDatePeriodDate:= GetPeriodFirstDate(cdsDatesEND_DATE.AsDateTime, ShortcutPeriod);
      EndDatePeriodDate:= IncDate(EndDatePeriodDate, ShortcutPeriod, EndDelta);

      CheckEditMode(cdsDates);
      cdsDatesBEGIN_DATE.AsDateTime:= IncDate(cdsDatesBEGIN_DATE.AsDateTime, ShortcutPeriod, BeginDelta);
      cdsDatesEND_DATE.AsDateTime:= GetPeriodLastDate(EndDatePeriodDate, ShortcutPeriod);
      cdsDates.Post;

      FShortcutPeriodSet:= True;
    end;
end;

function TfrDateIntervalFrame.GetFocusControl: TWinControl;
begin
  Result:= edtInterval;
end;

procedure TfrDateIntervalFrame.tmrHintTimer(Sender: TObject);
begin
  inherited;
  CancelDateIntervalHint;
end;

procedure TfrDateIntervalFrame.cdsDatesAfterPost(DataSet: TDataSet);
begin
  inherited;
  ForceUpdateRecord;
end;

procedure TfrDateIntervalFrame.cdsDatesCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsDates_BEGIN_DATE.AsVariant:= cdsDatesBEGIN_DATE.AsVariant;
end;

procedure TfrDateIntervalFrame.cdsDates_BEGIN_DATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  bd, ed: TDateTime;
begin
  inherited;
  if not cdsDatesBEGIN_DATE.IsNull and
     not cdsDatesEND_DATE.IsNull and
     (cdsDatesBEGIN_DATE.AsDateTime > cdsDatesEND_DATE.AsDateTime) then
    Text:= ''
  else
    begin
      if cdsDatesBEGIN_DATE.IsNull then
        bd:= cdsDatesBEGIN_DATE.AsDateTime
      else
        bd:= Max(MinDate, cdsDatesBEGIN_DATE.AsDateTime);

      if cdsDatesEND_DATE.IsNull then
        ed:= cdsDatesEND_DATE.AsDateTime
      else
        ed:= Min(MaxDate, cdsDatesEND_DATE.AsDateTime);

      Text:= dmMain.GetDateIntervalAsString(bd, ed);
    end;
end;

procedure TfrDateIntervalFrame.DoBeginDateChanged;
begin
  if Assigned(BeginDateChanged) then
    BeginDateChanged(Self, cdsDatesBEGIN_DATE, cdsDatesEND_DATE);
end;

procedure TfrDateIntervalFrame.DoEndDateChanged;
begin
  if Assigned(EndDateChanged) then
    EndDateChanged(Self, cdsDatesBEGIN_DATE, cdsDatesEND_DATE);
end;

end.

