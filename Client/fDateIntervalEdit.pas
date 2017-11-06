unit fDateIntervalEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBevelEditForm, fBaseFrame,
  fDBFrame, fFieldEditFrame, fDateIntervalFrame, Mask, JvToolEdit, JvDBControls,
  DBCtrls, uPeriods, JvBitBtn, JvExButtons, JvExMask, JvComponent,
  JvCaptionButton, dDocClient, uClientTypes, JvComponentBase, AbmesDBDateEdit;

type
  TfmDateIntervalEdit = class(TBevelEditForm)
    frDateInterval: TfrDateIntervalFrame;
    lblBeginDate: TLabel;
    lblEndDate: TLabel;
    deBeginDate: TAbmesDBDateEdit;
    deEndDate: TAbmesDBDateEdit;
    lblWorkdays: TLabel;
    lblDays: TLabel;
    edtWorkdays: TDBEdit;
    edtDays: TDBEdit;
    edtBeginDate: TDBEdit;
    edtEndDate: TDBEdit;
    btnClearBeginDate: TSpeedButton;
    btnClearEndDate: TSpeedButton;
    lblSlash: TLabel;
    shpHorizontalLine1: TShape;
    shpHorizontalLine2: TShape;
    shpVerticalLine1: TShape;
    shpVerticalLine2: TShape;
    shpHorizontalLine3: TShape;
    shpHorizontalLine4: TShape;
    actClearBeginDate: TAction;
    actClearEndDate: TAction;
    btnToday: TButton;
    btnCurrentWeek: TButton;
    btnCurrentMonth: TButton;
    actOneDayBack: TAction;
    actOneDayForward: TAction;
    actToday: TAction;
    actCurrentWeek: TAction;
    actOneWeekBack: TAction;
    actOneWeekForward: TAction;
    actCurrentMonth: TAction;
    actOneMonthBack: TAction;
    actOneMonthForward: TAction;
    btnOneDayBack: TJvBitBtn;
    btnOneDayForward: TJvBitBtn;
    btnOneWeekBack: TJvBitBtn;
    btnOneWeekForward: TJvBitBtn;
    btnOneMonthBack: TJvBitBtn;
    btnOneMonthForward: TJvBitBtn;
    actClearInterval: TAction;
    btnClearInterval: TSpeedButton;
    actCopyBeginToEndDate: TAction;
    btnCopyBeginToEndDate: TSpeedButton;
    btnOneQuarterBack: TJvBitBtn;
    btnCurrentQuarter: TButton;
    btnOneQuarterForward: TJvBitBtn;
    actCurrentQuarter: TAction;
    actOneQuarterBack: TAction;
    actOneQuarterForward: TAction;
    btnOneYearBack: TJvBitBtn;
    btnCurrentYear: TButton;
    btnOneYearForward: TJvBitBtn;
    actCurrentYear: TAction;
    actOneYearBack: TAction;
    actOneYearForward: TAction;
    procedure actCopyBeginToEndDateExecute(Sender: TObject);
    procedure actCopyBeginToEndDateUpdate(Sender: TObject);
    procedure actClearBeginDateUpdate(Sender: TObject);
    procedure actClearBeginDateExecute(Sender: TObject);
    procedure actClearEndDateUpdate(Sender: TObject);
    procedure actClearEndDateExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure OnBackAndForwardActionsUpdate(Sender: TObject);
    procedure actCurrentWeekExecute(Sender: TObject);
    procedure actTodayExecute(Sender: TObject);
    procedure actCurrentMonthExecute(Sender: TObject);
    procedure actOneDayBackExecute(Sender: TObject);
    procedure actOneDayForwardExecute(Sender: TObject);
    procedure actOneWeekBackExecute(Sender: TObject);
    procedure actOneWeekForwardExecute(Sender: TObject);
    procedure actOneMonthBackExecute(Sender: TObject);
    procedure actOneMonthForwardExecute(Sender: TObject);
    procedure OnMonthForwardAndBackwardActionsUpdate(Sender: TObject);
    procedure OnQuarterForwardAndBackwardActionsUpdate(Sender: TObject);
    procedure OnYearForwardAndBackwardActionsUpdate(Sender: TObject);
    procedure LoadDefaultPeriodsUpdate(Sender: TObject);
    procedure actClearIntervalExecute(Sender: TObject);
    procedure actClearIntervalUpdate(Sender: TObject);
    procedure frDateIntervaledtIntervalButtonClick(Sender: TObject);
    procedure frDateIntervaledtIntervalDblClick(Sender: TObject);
    procedure actCurrentQuarterExecute(Sender: TObject);
    procedure actOneQuarterBackExecute(Sender: TObject);
    procedure actOneQuarterForwardExecute(Sender: TObject);
    procedure actOneYearBackExecute(Sender: TObject);
    procedure actOneYearForwardExecute(Sender: TObject);
    procedure actCurrentYearExecute(Sender: TObject);
  private
    FBeginDateReadOnly: Boolean;
    FEndDateReadOnly: Boolean;
    FPeriodDaysReadOnly: Boolean;
    procedure LoadCurrentPeriod(APerItem: TPeriod);
    procedure MoveDatesByTimeUnit(APerItem: TPeriod; ADelta: Integer);
    procedure AlignEndDateToEndOfPeriod(APeriod: TPeriod);
    function DateIntervalMatchesPeriod(APeriod: TPeriod): Boolean;
    function CanEditBeginDate: Boolean;
    function CanEditEndDate: Boolean;
    function CanEditDateInterval: Boolean;
  protected
    function GetFormCaption: string; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ABeginDateReadOnly: Boolean = False; AEndDateReadOnly: Boolean = False;
      APeriodDaysReadOnly: Boolean = False); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ABeginDateReadOnly: Boolean = False; AEndDateReadOnly: Boolean = False;
      APeriodDaysReadOnly: Boolean = False): Boolean;
  end;

implementation

uses
  uClientUtils, uUtils, uClientDateTime;

resourcestring
  SBrowseDateInterval = 'Преглед на времеви интервал';
  SEditDateInterval = 'Задаване на времеви интервал';

{$R *.dfm}

function TfmDateIntervalEdit.CanEditBeginDate: Boolean;
begin
  Result:= (EditMode = emEdit) and not FBeginDateReadOnly;
end;

function TfmDateIntervalEdit.CanEditEndDate: Boolean;
begin
  Result:= (EditMode = emEdit) and not FEndDateReadOnly;
end;

function TfmDateIntervalEdit.CanEditDateInterval: Boolean;
begin
  Result:= CanEditBeginDate and CanEditEndDate;
end;

procedure TfmDateIntervalEdit.actClearBeginDateUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanEditBeginDate and
    not dsData.DataSet.FieldByName('BEGIN_DATE').IsNull;
end;

procedure TfmDateIntervalEdit.actClearBeginDateExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('BEGIN_DATE').Clear;
end;

procedure TfmDateIntervalEdit.actClearEndDateUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanEditEndDate and
    not dsData.DataSet.FieldByName('END_DATE').IsNull;
end;

procedure TfmDateIntervalEdit.actClearEndDateExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('END_DATE').Clear;
end;

procedure TfmDateIntervalEdit.actClearIntervalExecute(Sender: TObject);
begin
  inherited;
  actClearBeginDate.Execute;
  actClearEndDate.Execute;
end;

procedure TfmDateIntervalEdit.actClearIntervalUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    actClearBeginDate.Enabled or
    actClearEndDate.Enabled;
end;

procedure TfmDateIntervalEdit.FormCreate(Sender: TObject);
begin
  inherited;
  frDateInterval.FieldNames:= 'BEGIN_DATE;END_DATE';
end;

procedure TfmDateIntervalEdit.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  // do not call inherited
  AFrame.ReadOnly:= True;
end;

procedure TfmDateIntervalEdit.actFormUpdate(Sender: TObject);
begin
  inherited;
  SetControlsReadOnly((EditMode = emReadOnly) or FBeginDateReadOnly, [deBeginDate, edtBeginDate]);
  SetControlsReadOnly((EditMode = emReadOnly) or FEndDateReadOnly, [deEndDate, edtEndDate]);
  SetControlsReadOnly((EditMode = emReadOnly) or FEndDateReadOnly or FPeriodDaysReadOnly, [edtDays, edtWorkdays]);
end;

procedure TfmDateIntervalEdit.OnBackAndForwardActionsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanEditDateInterval and
    ( not dsData.DataSet.FieldByName('BEGIN_DATE').IsNull or
      not dsData.DataSet.FieldByName('END_DATE').IsNull
    );
end;

procedure TfmDateIntervalEdit.LoadCurrentPeriod(APerItem: TPeriod);
begin
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('BEGIN_DATE').AsDateTime:= GetPeriodFirstDate(ContextDate, APerItem);
  dsData.DataSet.FieldByName('END_DATE').AsDateTime:= GetPeriodLastDate(ContextDate, APerItem);
end;

procedure TfmDateIntervalEdit.actCurrentWeekExecute(Sender: TObject);
begin
  inherited;
  LoadCurrentPeriod(perWeek);
end;

procedure TfmDateIntervalEdit.actTodayExecute(Sender: TObject);
begin
  inherited;
  LoadCurrentPeriod(perDay);
end;

procedure TfmDateIntervalEdit.actCurrentMonthExecute(Sender: TObject);
begin
  inherited;
  LoadCurrentPeriod(perMonth);
end;

procedure TfmDateIntervalEdit.actCurrentQuarterExecute(Sender: TObject);
begin
  inherited;
  LoadCurrentPeriod(perQuarter);
end;

procedure TfmDateIntervalEdit.actCurrentYearExecute(Sender: TObject);
begin
  inherited;
  LoadCurrentPeriod(perYear);
end;

procedure TfmDateIntervalEdit.MoveDatesByTimeUnit(APerItem: TPeriod; ADelta: Integer);
begin
  with dsData.DataSet.FieldByName('BEGIN_DATE') do
    if not IsNull then
      begin
        CheckEditMode(dsData.DataSet);
        AsDateTime:= IncDate(AsDateTime, APerItem, ADelta);
      end;

  with dsData.DataSet.FieldByName('END_DATE') do
    if not IsNull then
      begin
        CheckEditMode(dsData.DataSet);
        AsDateTime:= IncDate(AsDateTime, APerItem, ADelta);
      end;
end;

procedure TfmDateIntervalEdit.actOneDayBackExecute(Sender: TObject);
begin
  inherited;
  MoveDatesByTimeUnit(perDay, -1);
end;

procedure TfmDateIntervalEdit.actOneDayForwardExecute(Sender: TObject);
begin
  inherited;
  MoveDatesByTimeUnit(perDay, 1);
end;

procedure TfmDateIntervalEdit.actOneWeekBackExecute(Sender: TObject);
begin
  inherited;
  MoveDatesByTimeUnit(perWeek, -1);
end;

procedure TfmDateIntervalEdit.actOneWeekForwardExecute(Sender: TObject);
begin
  inherited;
  MoveDatesByTimeUnit(perWeek, 1);
end;

procedure TfmDateIntervalEdit.AlignEndDateToEndOfPeriod(APeriod: TPeriod);
begin
  with dsData.DataSet.FieldByName('END_DATE') do
    AsDateTime:= GetPeriodLastDate(AsDateTime, APeriod);
end;

procedure TfmDateIntervalEdit.actOneMonthBackExecute(Sender: TObject);
begin
  inherited;
  MoveDatesByTimeUnit(perMonth, -1);
  AlignEndDateToEndOfPeriod(perMonth);
end;

procedure TfmDateIntervalEdit.actOneMonthForwardExecute(Sender: TObject);
begin
  inherited;
  MoveDatesByTimeUnit(perMonth, 1);
  AlignEndDateToEndOfPeriod(perMonth);
end;

procedure TfmDateIntervalEdit.actOneQuarterBackExecute(Sender: TObject);
begin
  inherited;
  MoveDatesByTimeUnit(perQuarter, -1);
  AlignEndDateToEndOfPeriod(perQuarter);
end;

procedure TfmDateIntervalEdit.actOneQuarterForwardExecute(Sender: TObject);
begin
  inherited;
  MoveDatesByTimeUnit(perQuarter, 1);
  AlignEndDateToEndOfPeriod(perQuarter);
end;

procedure TfmDateIntervalEdit.actOneYearBackExecute(Sender: TObject);
begin
  inherited;
  MoveDatesByTimeUnit(perYear, -1);
  AlignEndDateToEndOfPeriod(perYear);
end;

procedure TfmDateIntervalEdit.actOneYearForwardExecute(Sender: TObject);
begin
  inherited;
  MoveDatesByTimeUnit(perYear, 1);
  AlignEndDateToEndOfPeriod(perYear);
end;

function TfmDateIntervalEdit.DateIntervalMatchesPeriod(APeriod: TPeriod): Boolean;
var
  BeginDate, EndDate: TDateTime;
begin
  BeginDate:= dsData.DataSet.FieldByName('BEGIN_DATE').AsDateTime;
  EndDate:= dsData.DataSet.FieldByName('END_DATE').AsDateTime;

  Result:=
    (BeginDate <> 0) and
    (EndDate <> 0) and
    (BeginDate = GetPeriodFirstDate(BeginDate, APeriod)) and
    (EndDate = GetPeriodLastDate(EndDate, APeriod));
end;

procedure TfmDateIntervalEdit.OnMonthForwardAndBackwardActionsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanEditDateInterval and
    DateIntervalMatchesPeriod(perMonth);
end;

procedure TfmDateIntervalEdit.OnQuarterForwardAndBackwardActionsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanEditDateInterval and
    DateIntervalMatchesPeriod(perQuarter);
end;

procedure TfmDateIntervalEdit.OnYearForwardAndBackwardActionsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanEditDateInterval and
    DateIntervalMatchesPeriod(perYear);
end;

procedure TfmDateIntervalEdit.LoadDefaultPeriodsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= CanEditDateInterval;
end;

procedure TfmDateIntervalEdit.actCopyBeginToEndDateExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('END_DATE').Assign(dsData.DataSet.FieldByName('BEGIN_DATE'));
end;

procedure TfmDateIntervalEdit.actCopyBeginToEndDateUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanEditDateInterval and
    not dsData.DataSet.FieldByName('BEGIN_DATE').IsNull;
end;

function TfmDateIntervalEdit.GetFormCaption: string;
const
  FormCaptions: array [Boolean] of string = (SEditDateInterval, SBrowseDateInterval);
begin
  Result:= FormCaptions[EditMode = emReadOnly];
end;

procedure TfmDateIntervalEdit.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ABeginDateReadOnly, AEndDateReadOnly, APeriodDaysReadOnly: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FBeginDateReadOnly:= ABeginDateReadOnly;
  FEndDateReadOnly:= AEndDateReadOnly;
  FPeriodDaysReadOnly:= APeriodDaysReadOnly;
end;

class function TfmDateIntervalEdit.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ABeginDateReadOnly, AEndDateReadOnly, APeriodDaysReadOnly: Boolean): Boolean;
var
  f: TfmDateIntervalEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
      ABeginDateReadOnly, AEndDateReadOnly, APeriodDaysReadOnly);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmDateIntervalEdit.frDateIntervaledtIntervalButtonClick(Sender: TObject);
begin
  inherited;
  Abort;
end;

procedure TfmDateIntervalEdit.frDateIntervaledtIntervalDblClick(Sender: TObject);
begin
  inherited;
  Abort;
end;

end.


