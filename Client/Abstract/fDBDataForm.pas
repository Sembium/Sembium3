unit fDBDataForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fDataForm, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls, Db, rDBDataReport,
  DBClient, JvButtons, Menus, AbmesFields, uClientPeriods, JvComponent,
  JvCaptionButton, JvComponentBase, uObjectSubscription, uClientUtils,
  uUtils, PrnDbgeh, AbmesDBGrid, uNestProc, uAttributeUtils, System.Actions;

type
  PrintActiveGridEnabledAttribute = class(TPositiveBooleanValueAttribute);

type
  [PrintActiveGridEnabled]
  TDBDataForm = class(TDataForm)
    dsData: TDataSource;
    actPrintActiveGrid: TAction;
    procedure actPrintExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actPrintActiveGridExecute(Sender: TObject);
    procedure actPrintActiveGridUpdate(Sender: TObject);
  private
    FDateFieldFormatSubscription: TDateFieldFormatSubscription;
    FQuantityFieldFormatSubscription: TQuantityFieldFormatSubscription;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FHasDocItemsField: TAbmesFloatField;
    FPrintActiveGridEnabled: Boolean;
    procedure SetFramesSkipDataChange;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    function TempPrintGridPaperSettings: TNestProcRec;
    function CreatePrintDBGridEh(AGrid: TAbmesDBGrid): TPrintDBGridEh;
  protected
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
    function GetApplyUpdatesEnabled: Boolean; override;
    function GetCancelUpdatesEnabled: Boolean; override;

    function IsRegisteredDateField(const AField: TAbmesSQLTimeStampField): Boolean;
    procedure RegisterDateField(const AField: TAbmesSQLTimeStampField);
    procedure UnregisterDateField(const AField: TAbmesSQLTimeStampField);
    procedure RegisterDateFields(const AFields: array of TAbmesSQLTimeStampField); overload;
    procedure UnregisterDateFields(const AFields: array of TAbmesSQLTimeStampField); overload;

    function IsQuantityField(const AField: TAbmesFloatField): Boolean; virtual;
    function IsRegisteredQuantityField(const AField: TAbmesFloatField): Boolean;
    procedure RegisterQuantityField(const AField: TAbmesFloatField);
    procedure UnregisterQuantityField(const AField: TAbmesFloatField);
    procedure RegisterQuantityFields(const AFields: array of TAbmesFloatField); overload;
    procedure RegisterQuantityFields(const ADataSet: TDataSet); overload;
    procedure UnregisterQuantityFields(const AFields: array of TAbmesFloatField); overload;
    procedure UnregisterQuantityFields(const ADataSet: TDataSet); overload;
    procedure RegisterAllQuantityFields;
    function GetActiveGridReportTitle(AGrid: TAbmesDBGrid): string; virtual;
    function GetPrintActiveGridEnabled: Boolean; virtual;

    function GetDateFormat: string; virtual;
    function GetWeekDateFormat: string; virtual;
    property HasDocItemsField: TAbmesFloatField read FHasDocItemsField write FHasDocItemsField;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Initialize; override;
    procedure Finalize; override;
    function SupportsFilterForm: Boolean; virtual;
    procedure RegisterDateFields(const ADataSet: TDataSet); overload;
    procedure UnregisterDateFields(const ADataSet: TDataSet); overload;
  end;

resourcestring
  SPrintGridPageFooterLeftText = 'Отпечатано от %AppName% на &[Date] &[Time]';
  SPrintGridPageFooterRightText = 'Стр. &[Page]';

implementation

uses
  fDBFrame, dMain, uUserActivityConsts, uFieldTextVisibility, fFieldEditFrame,
  PrViewEh, Printers, PrvFrmEh, VclTee.DBChart, VclTee.Series, VclTee.Teengine,
  uGraphUtils, uClientApp;

const
  SPrintGridTitleRTF =
    '{\rtf1\ansi\ansicpg1251\deff0\deflang1026{\fonttbl{\f0\fnil\fcharset0 Tahoma;}{\f1\fnil\fcharset204 Tahoma;}}' + SLineBreak +
    '\viewkind4\uc1\pard\lang1033\f0\fs36 %ReportTitle%\par' + SLineBreak +
    '\lang1026\f1\fs16\par}';
   SPrintGridTitleMacro = '%ReportTitle%';

{$R *.DFM}

{ TDBDataForm }

function TDBDataForm.TempPrintGridPaperSettings: TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc)
      var
        SavedPage: TPrinterPage;
      begin
        SavedPage:= SetUpPrinter(DMPAPER_A4, poLandscape, PrinterPreview.Printer);
        try
          AProc;
        finally
          SetUpPrinter(SavedPage.PaperSize, SavedPage.Orientation, PrinterPreview.Printer);
        end;
      end);
end;

function TDBDataForm.CreatePrintDBGridEh(AGrid: TAbmesDBGrid): TPrintDBGridEh;

  procedure LoadReportTitleRTF(APrintDBGridEh: TPrintDBGridEh);
  begin
    Utils.Using<TStream>(TStringStream.Create(SPrintGridTitleRTF))/
      APrintDBGridEh.BeforeGridText.LoadFromStreamProc;
  end;

var
  ReportTitle: string;
begin
  Result:= TPrintDBGridEh.Create(nil);
  Result.DBGridEh:= AGrid;
  Result.Options:= [pghColored, pghFitGridToPageWidth];
  Result.PageFooter.LeftText.Text:= uClientApp.ReplaceAppParams(SPrintGridPageFooterLeftText);
  Result.PageFooter.RightText.Text:= uClientApp.ReplaceAppParams(SPrintGridPageFooterRightText);
  Result.PageFooter.CenterText.Text:= LoginContext.CompanyShortName;

  ReportTitle:= GetActiveGridReportTitle(AGrid);
  if (ReportTitle <> '') then
    begin
      LoadReportTitleRTF(Result);
      Result.SetSubstitutes([SPrintGridTitleMacro, ReportTitle]);
    end;
end;

procedure TDBDataForm.actPrintActiveGridExecute(Sender: TObject);
var
  ActiveGrid: TAbmesDBGrid;
begin
  inherited;

  ActiveGrid:= ActiveControl.GetAs<TAbmesDBGrid>;

  if not Assigned(ActiveGrid) or
     not Assigned(ActiveGrid.DataSource) or
     not Assigned(ActiveGrid.DataSource.DataSet) or
     ActiveGrid.DataSource.DataSet.IsEmpty then
    begin
      Exit;
    end;

  Utils.Using(CreatePrintDBGridEh(ActiveGrid))/
    procedure (prn: TPrintDBGridEh) begin
      TempPrintGridPaperSettings/
        procedure begin
          prn.PreviewModal;
        end;
    end;
end;

procedure TDBDataForm.actPrintActiveGridUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetPrintActiveGridEnabled;
end;

function TDBDataForm.GetActiveGridReportTitle(AGrid: TAbmesDBGrid): string;
begin
  Result:= '';
end;

function TDBDataForm.GetPrintActiveGridEnabled: Boolean;
begin
  Result:= FPrintActiveGridEnabled;
end;

procedure TDBDataForm.actPrintExecute(Sender: TObject);
var
  d: TDataSet;
begin
  if ReportClass.InheritsFrom(TDBDataReport) then
    begin
      if (dsData.DataSet.State = dsInactive) then
        d:= nil
      else
        d:= dsData.DataSet;

      TDBDataReportClass(ReportClass).PrintReport(d);
    end
  else
    inherited;
end;

procedure TDBDataForm.DoApplyUpdates;
begin
  inherited DoApplyUpdates;
  if (dsData.DataSet.State in dsEditModes) then
    dsData.DataSet.Post;
end;

procedure TDBDataForm.DoCancelUpdates;
begin
  inherited DoCancelUpdates;
  if (dsData.DataSet.State in dsEditModes) then
    dsData.DataSet.Cancel;
end;

function TDBDataForm.GetApplyUpdatesEnabled: Boolean;
begin
  Result:=
    (dsData.DataSet.State in dsEditModes) or
    (Assigned(dmDocClient) and IsDocModifiedHere);
end;

function TDBDataForm.GetCancelUpdatesEnabled: Boolean;
begin
  Result:=
    (dsData.DataSet.State in dsEditModes) or
    (Assigned(dmDocClient) and IsDocModifiedHere);
end;

procedure TDBDataForm.dmDocClientOnDataChanged(Sender: TObject);
begin
  Assert(Assigned(HasDocItemsField));
  dmDocClient.SetHasDocItemsField(HasDocItemsField);
end;

procedure TDBDataForm.Initialize;
var
  f: TDBFrame;
  chart: TDBChart;
begin
// set the dsData.DataSet of all DBFrames if empty to dsData.DataSet
  for f in Frames.OfType<TDBFrame> do
    f.SetDataSet(dsData.DataSet);

  inherited Initialize;

  if Assigned(HasDocItemsField) then
    begin
      FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
      dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;
    end;

  for chart in AllComponents.OfType<TDBChart>() do
    FixGraphStyle(chart);
end;

procedure TDBDataForm.Finalize;
begin
  if Assigned(HasDocItemsField) then
    begin
      dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
      FOlddmDocClientOnDataChanged:= nil;
    end;

  inherited Finalize;
end;

procedure TDBDataForm.SetFramesSkipDataChange;
var
  f: TFieldEditFrame;
begin
  for f in AllComponents.OfType<TFieldEditFrame> do
    f.SkipDataChange:= True;
end;

function TDBDataForm.SupportsFilterForm: Boolean;
begin
  Result:= False;
end;

procedure TDBDataForm.actFormUpdate(Sender: TObject);
begin
  inherited;
  FDateFieldFormatSubscription.Execute;
  FQuantityFieldFormatSubscription.Execute;
end;

procedure TDBDataForm.RegisterAllQuantityFields;
var
  ds: TDataSet;
begin
  for ds in AllComponents.OfType<TDataSet> do
    RegisterQuantityFields(ds);
end;

procedure TDBDataForm.RegisterDateField(const AField: TAbmesSQLTimeStampField);
begin
  FDateFieldFormatSubscription.Subscribe(AField);
end;

procedure TDBDataForm.RegisterDateFields(
  const AFields: array of TAbmesSQLTimeStampField);
begin
  FDateFieldFormatSubscription.Subscribe(AFields);
end;

procedure TDBDataForm.UnregisterDateField(const AField: TAbmesSQLTimeStampField);
begin
  FDateFieldFormatSubscription.Unsubscribe(AField);
end;

procedure TDBDataForm.UnregisterDateFields(
  const AFields: array of TAbmesSQLTimeStampField);
begin
  FDateFieldFormatSubscription.Unsubscribe(AFields);
end;

function TDBDataForm.IsQuantityField(const AField: TAbmesFloatField): Boolean;
begin
  Result:=
    Assigned(AField) and
    (Pos('PERCENT', AField.FieldName) = 0) and
    (Pos('PCT', AField.FieldName) = 0) and
    ( (Pos('QUANTITY', AField.FieldName) > 0) or
      (Pos('QTY', AField.FieldName) > 0) );
end;

function TDBDataForm.IsRegisteredDateField(
  const AField: TAbmesSQLTimeStampField): Boolean;
begin
  Result:= FDateFieldFormatSubscription.IsSubscribed(AField);
end;

function TDBDataForm.IsRegisteredQuantityField(
  const AField: TAbmesFloatField): Boolean;
begin
  Result:= FQuantityFieldFormatSubscription.IsSubscribed(AField);
end;

procedure TDBDataForm.RegisterDateFields(const ADataSet: TDataSet);
var
  f: TAbmesSQLTimeStampField;
begin
  Assert(Assigned(ADataSet));

  for f in ADataSet.Fields.OfType<TAbmesSQLTimeStampField> do
    Assert(not IsRegisteredDateField(f));

  for f in ADataSet.Fields.OfType<TAbmesSQLTimeStampField> do
    RegisterDateField(f);
end;

procedure TDBDataForm.RegisterQuantityField(const AField: TAbmesFloatField);
begin
  FQuantityFieldFormatSubscription.Subscribe(AField);
end;

procedure TDBDataForm.RegisterQuantityFields(const ADataSet: TDataSet);
var
  f: TAbmesFloatField;
begin
  Assert(Assigned(ADataSet));

  for f in ADataSet.Fields.OfType<TAbmesFloatField> do
    if IsQuantityField(f) then
      Assert(not IsRegisteredQuantityField(f));

  for f in ADataSet.Fields.OfType<TAbmesFloatField> do
    if IsQuantityField(f) then
      RegisterQuantityField(f);
end;

procedure TDBDataForm.RegisterQuantityFields(
  const AFields: array of TAbmesFloatField);
begin
  FQuantityFieldFormatSubscription.Subscribe(AFields);
end;

procedure TDBDataForm.UnregisterDateFields(const ADataSet: TDataSet);
var
  f: TAbmesSQLTimeStampField;
begin
  Assert(Assigned(ADataSet));

  for f in ADataSet.Fields.OfType<TAbmesSQLTimeStampField> do
    Assert(IsRegisteredDateField(f));

  for f in ADataSet.Fields.OfType<TAbmesSQLTimeStampField> do
    UnregisterDateField(f);
end;

procedure TDBDataForm.UnregisterQuantityFields(const ADataSet: TDataSet);
var
  f: TAbmesFloatField;
begin
  Assert(Assigned(ADataSet));

  for f in ADataSet.Fields.OfType<TAbmesFloatField> do
    if IsQuantityField(f) then
      Assert(IsRegisteredQuantityField(f));

  for f in ADataSet.Fields.OfType<TAbmesFloatField> do
    if IsQuantityField(f) then
      UnregisterQuantityField(f);
end;

procedure TDBDataForm.UnregisterQuantityFields(
  const AFields: array of TAbmesFloatField);
begin
  FQuantityFieldFormatSubscription.Unsubscribe(AFields);
end;

procedure TDBDataForm.UnregisterQuantityField(const AField: TAbmesFloatField);
begin
  FQuantityFieldFormatSubscription.Unsubscribe(AField);
end;

procedure TDBDataForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (ModalResult <> mrOK) then
    SetFramesSkipDataChange;

  inherited;
end;

procedure TDBDataForm.FormCreate(Sender: TObject);
begin
  SetDataSetsGetFieldValueAsStringEvent(Self);
  inherited;
  RegisterAllQuantityFields;
end;

constructor TDBDataForm.Create(AOwner: TComponent);
var
  PrintActiveGridEnabledAttr: TPositiveBooleanValueAttribute;
begin
  PrintActiveGridEnabledAttr:= FindAttribute<PrintActiveGridEnabledAttribute>;
  FPrintActiveGridEnabled:= Assigned(PrintActiveGridEnabledAttr) and PrintActiveGridEnabledAttr.Value;

  FDateFieldFormatSubscription:= TDateFieldFormatSubscription.Create(Self);
  FQuantityFieldFormatSubscription:= TQuantityFieldFormatSubscription.Create(Self);
  inherited Create(AOwner);
end;

destructor TDBDataForm.Destroy;
begin
  inherited Destroy;
  FreeAndNil(FQuantityFieldFormatSubscription);
  FreeAndNil(FDateFieldFormatSubscription);
end;

procedure TDBDataForm.FormShow(Sender: TObject);
begin
  inherited;
  InitializeAllAbmesDBGridsOf(Self);
end;

function TDBDataForm.GetDateFormat: string;
begin
  Assert(Assigned(dmMain));
  Result:= dmMain.GetDateFormat;
end;

function TDBDataForm.GetWeekDateFormat: string;
begin
  Assert(Assigned(dmMain));
  Result:= dmMain.GetWeekDateFormat;
end;

end.
