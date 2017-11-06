unit rBaseReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, uClientLoginContext,
  QRExport;

type
  TBaseReport = class(TQuickRep)
    TextFilter: TQRTextFilter;
    CSVFilter: TQRCSVFilter;
    procedure TruncatingQRLabelPrint(sender: TObject; var Value: String);
  private
    FOriginalPrinterIndex: Integer;
    function GetLoginContext: TClientLoginContext;
    procedure SetDefaultPrinter;
  protected
    procedure InternalPrintReport; virtual;
    procedure Loaded; override;
    property LoginContext: TClientLoginContext read GetLoginContext;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure SetDataParams; virtual;
{$IFOPT D+}
    procedure Preview;
    procedure Print;
{$ENDIF}
    class procedure PrintReport;
  end;

  TBaseReportClass = class of TBaseReport;

implementation

uses
  uUtils, uClientUtils, dMain, fReportParent, uDefaultPrinters, Vcl.Printers, qrprntr;

{$R *.DFM}

{ TBaseReport }

constructor TBaseReport.Create(AOwner: TComponent);
begin
  inherited;
  FOriginalPrinterIndex:= Printer.PrinterIndex;
end;

destructor TBaseReport.Destroy;
begin
  Printer.PrinterIndex:= FOriginalPrinterIndex;
  inherited;
end;

procedure TBaseReport.InternalPrintReport;
begin
  PreviewInitialState:= wsMaximized;
  inherited Preview;
  Application.ProcessMessages;
end;

{$IFOPT D+}

procedure TBaseReport.Preview;
begin
  Assert(False, 'Do not call Preview. Call class method PrintReport instead!');
end;

procedure TBaseReport.Print;
begin
  Assert(False, 'Do not call Print. Call class method PrintReport instead!');
end;

{$ENDIF}

class procedure TBaseReport.PrintReport;
var
  r: TBaseReport;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams;
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TBaseReport.SetDataParams;
begin
  if (Page.PaperSize = A5) and
     (Page.Orientation = poLandscape) and
     A5LandscapeToA4Portrait then
    begin
      Page.PaperSize:= A4;
      Page.Orientation:= poPortrait;
    end;

  SetDefaultPrinter;
end;

procedure TBaseReport.SetDefaultPrinter;
var
  PaperSize: TPaperSize;
  DefaultPrinterIndex: Integer;
begin
  PaperSize:= QRPaperSizeToPaperSize(Page.PaperSize);

  DefaultPrinterIndex:= GetDefaultPrinterIndex(PaperSize);

  if (DefaultPrinterIndex >= 0) then
    begin
      PrinterSettings.PrinterIndex:= DefaultPrinterIndex;
      Printer.PrinterIndex:= DefaultPrinterIndex;
    end;
end;

procedure TBaseReport.TruncatingQRLabelPrint(sender: TObject; var Value: String);
begin
  fmReportParent.Font:= (Sender as TQRCustomLabel).Font;
  while (fmReportParent.Canvas.TextWidth(Value) > (Sender as TQRCustomLabel).Width) do
    SetLength(Value, Length(Value)-1);
end;

procedure TBaseReport.Loaded;
begin
  inherited Loaded;
  TClientComponentChecker.CheckForDisconnectedEventHandlers(Self);
  TClientComponentChecker.CheckComponentsNotConnected(Self);
end;

function TBaseReport.GetLoginContext: TClientLoginContext;
begin
  Result:= dmMain.LoginContext;
end;

end.
