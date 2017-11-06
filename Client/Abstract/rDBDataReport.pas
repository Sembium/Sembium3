unit rDBDataReport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rBaseReport, Db, DBClient, QRExport, QuickRpt, QRCtrls, ExtCtrls,
  AbmesClientDataSet, uNestProc;

type
  TDBDataReport = class(TBaseReport)
    mdsParams: TAbmesClientDataSet;
    mdsReport: TAbmesClientDataSet;
    bndPageFooter: TQRBand;
    qrsDataAndTime: TQRSysData;
    qrsPageNum: TQRSysData;
    lblPrintedByApp1: TQRLabel;
    lblPrintedByApp2: TQRLabel;
    lblPrintedByApp3: TQRLabel;
    lblPrintedByApp4: TQRLabel;
    lblCompanyName: TQRLabel;
    procedure bndPageFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    FReportDataSet: TDataSet;
    FParamsDataSet: TDataSet;
    FPrintCurrentRecOnly: Boolean;
    FReportNeedsMoreData: Boolean;
    FSavedOnNeedData: TQROnNeedDataEvent;
    FSavedDataSet: TDataSet;
    procedure PrintCurrentOnlyOnNeedData(Sender: TObject; var MoreData: Boolean);
    procedure ChangeDataSets;
    procedure DoRepositionTaggedItems;
    procedure PreparePrintingCurrentRecOnly;
    procedure UnpreparePrintingCurrentRecOnly;
    function TempPreparePrintingCurrentRecOnly: TNestProcRec;
  protected
    function GetCorespondingDataSet(ADataSet: TDataSet): TDataSet; virtual;
    procedure InternalPrintReport; override;
    property ReportDataSet: TDataSet read FReportDataSet;
    property ParamsDataSet: TDataSet read FParamsDataSet;
    class function DisableControlsOnPrint: Boolean; virtual;
    function RepositionTaggedItemsEnabled: Boolean; virtual;
    function GetRepositionDelta: Integer; virtual;
    function GetColumnHeaderBandHeight: Integer; virtual;
    function GetDetailBandHeight: Integer; virtual;
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet; APrintCurrentRecOnly: Boolean = False); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil; APrintCurrentRecOnly: Boolean = False);
  end;

  TDBDataReportClass = class of TDBDataReport;

implementation

uses
  TypInfo, dMain, fReportParent, Printers, uUtils, uClientAppResources;

{$R *.DFM}

{ TDBDataReport }

procedure TDBDataReport.ChangeDataSets;
var
  c: TComponent;
  PropInfo: PPropInfo;
begin
  DataSet:= GetCorespondingDataSet(DataSet);

  for c in AllComponents do
    begin
      PropInfo:= TypInfo.GetPropInfo(c.ClassInfo, 'DataSet');
      if Assigned(PropInfo) then
        TypInfo.SetObjectProp(c, PropInfo, GetCorespondingDataSet(TypInfo.GetObjectProp(c, PropInfo) as TDataSet));
    end;
end;

function TDBDataReport.GetColumnHeaderBandHeight: Integer;
begin
  Result:= 88;
end;

function TDBDataReport.GetCorespondingDataSet(
  ADataSet: TDataSet): TDataSet;
begin
  if (ADataSet = mdsReport) then
    Result:= ReportDataSet
  else
    if (ADataSet = mdsParams) then
      Result:= ParamsDataSet
    else
      Result:= nil;
end;

function TDBDataReport.GetDetailBandHeight: Integer;
begin
  Result:= 20;
end;

function TDBDataReport.GetRepositionDelta: Integer;
begin
  Result:= 88;
end;

procedure TDBDataReport.PreparePrintingCurrentRecOnly;
begin
  FReportNeedsMoreData:= True;
  FSavedDataSet:= DataSet;
  DataSet:= nil;
  FSavedOnNeedData:= OnNeedData;
  OnNeedData:= PrintCurrentOnlyOnNeedData;
end;

procedure TDBDataReport.UnpreparePrintingCurrentRecOnly;
begin
  OnNeedData:= FSavedOnNeedData;
  DataSet:= FSavedDataSet;
end;

function TDbDataReport.TempPreparePrintingCurrentRecOnly: TNestProcRec;
begin
  Result:= TryFinally(PreparePrintingCurrentRecOnly, UnpreparePrintingCurrentRecOnly);
end;

procedure TDBDataReport.InternalPrintReport;
const
  WorkaroundZaTypiJyltiPrinteri = 15;
begin
  IfThen(FPrintCurrentRecOnly, TempPreparePrintingCurrentRecOnly)/
    procedure begin
      ChangeDataSets;

      if (Page.Orientation = poPortrait) then
        Page.BottomMargin:= WorkaroundZaTypiJyltiPrinteri;

      IfThen(Assigned(ReportDataSet), ReportDataSet.PreserveBookmark)/
        IfThen(DisableControlsOnPrint and Assigned(ReportDataSet), ReportDataSet.TempDisableControls)/
          procedure begin
            if RepositionTaggedItemsEnabled then
              DoRepositionTaggedItems;

            inherited InternalPrintReport;
          end;
    end;
end;

procedure TDBDataReport.PrintCurrentOnlyOnNeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  if Assigned(FSavedOnNeedData) then
    FSavedOnNeedData(Sender, MoreData);

  MoreData:= MoreData or FReportNeedsMoreData;
  FReportNeedsMoreData:= False;
end;

class procedure TDBDataReport.PrintReport(AReportDataSet: TDataSet; AParamsDataSet: TDataSet; APrintCurrentRecOnly: Boolean);
var
  r: TDBDataReport;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, APrintCurrentRecOnly);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

function TDBDataReport.RepositionTaggedItemsEnabled: Boolean;
begin
  Result:= Assigned(ParamsDataSet) and (ParamsDataSet.FindField('REPORT_TAG') <> nil);
end;

procedure TDBDataReport.SetDataParams(AReportDataSet,
  AParamsDataSet: TDataSet; APrintCurrentRecOnly: Boolean);
begin
  inherited SetDataParams;
  FReportDataSet:= AReportDataSet;
  FParamsDataSet:= AParamsDataSet;
  FPrintCurrentRecOnly:= APrintCurrentRecOnly;
  lblCompanyName.Caption:= LoginContext.CompanyShortName;
end;

class function TDBDataReport.DisableControlsOnPrint: Boolean;
begin
  Result:= True;
end;

procedure TDBDataReport.DoRepositionTaggedItems;
var
  c: TQRPrintable;
  t: Integer;
  Delta: Integer;
begin
  t:= ParamsDataSet.FieldByName('REPORT_TAG').AsInteger;
  Delta:= GetRepositionDelta;

  for c in AllComponents.OfType<TQRPrintable> do
    if (c.Tag > 0) and c.Enabled then
      begin
        c.Enabled:= (c.Tag = t);
        if c.Enabled then
          c.Top:= c.Top - (t - 1) * Delta;
      end;

  if (Bands.ColumnHeaderBand <> nil) then
    Bands.ColumnHeaderBand.Height:= GetColumnHeaderBandHeight;

  if (Bands.DetailBand <> nil) then
    Bands.DetailBand.Height:= GetDetailBandHeight;
end;

procedure TDBDataReport.bndPageFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;

  lblPrintedByApp1.Caption:= SSplitAppNamePart1;
  lblPrintedByApp2.Caption:= SSplitAppNamePart2;
  lblPrintedByApp3.Caption:= SSplitAppNamePart3;

  lblPrintedByApp4.Left:= 0;
  lblPrintedByApp1.Left:= lblPrintedByApp4.Left + lblPrintedByApp4.Width;
  lblPrintedByApp2.Left:= lblPrintedByApp1.Left + lblPrintedByApp1.Width - 1;
  lblPrintedByApp3.Left:= lblPrintedByApp2.Left + lblPrintedByApp2.Width;
  qrsDataAndTime.Left:= lblPrintedByApp3.Left + lblPrintedByApp3.Width + 3;

  lblCompanyName.Left:= (bndPageFooter.Width - lblCompanyName.Width) div 2;

  qrsPageNum.Left:= bndPageFooter.Width - qrsPageNum.Width - 15;

  lblPrintedByApp1.Top:= lblPrintedByApp4.Top - 2;
  lblPrintedByApp2.Top:= lblPrintedByApp4.Top - 4;
  lblPrintedByApp3.Top:= lblPrintedByApp4.Top - 2;
  qrsDataAndTime.Top:= lblPrintedByApp4.Top;
  lblCompanyName.Top:= lblPrintedByApp4.Top - 2;
  qrsPageNum.Top:= lblPrintedByApp4.Top;
end;

end.
