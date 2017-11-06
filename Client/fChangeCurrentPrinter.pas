unit fChangeCurrentPrinter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fButtonForm, ActnList, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvCombobox, DB, AbmesFields, DBClient,
  AbmesClientDataSet, JvExControls, JvDBLookup;

type
  TfmChangeCurrentPrinter = class(TButtonForm)
    gbPrinter: TGroupBox;
    JvDBLookupCombo1: TJvDBLookupCombo;
    cdsPrinters: TAbmesClientDataSet;
    cdsChoosenPrinterIndex: TAbmesClientDataSet;
    cdsPrintersPRINTER_INDEX: TAbmesFloatField;
    cdsPrintersPRINTER_NAME: TAbmesWideStringField;
    cdsChoosenPrinterIndexCHOSEN_PRINTER_INDEX: TAbmesFloatField;
    cdsChoosenPrinterIndex_CHOSEN_PRINTER_NAME: TAbmesWideStringField;
    dsChoosenPrinterIndex: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Printers, uUtils;

{$R *.dfm}

procedure TfmChangeCurrentPrinter.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  cdsPrinters.CreateDataSet;
  cdsChoosenPrinterIndex.CreateDataSet;

  for i:= 0 to Printer.Printers.Count - 1 do
    cdsPrinters.AppendRecord([i, Printer.Printers[i]]);

  cdsChoosenPrinterIndex.SafeAppend/
    procedure begin
      cdsChoosenPrinterIndexCHOSEN_PRINTER_INDEX.AsInteger:= Printer.PrinterIndex;
    end;
end;

procedure TfmChangeCurrentPrinter.FormDestroy(Sender: TObject);
begin
  inherited;
  cdsChoosenPrinterIndex.Close;
  cdsPrinters.Close;
end;

procedure TfmChangeCurrentPrinter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (ModalResult = mrOk) then
    Printer.PrinterIndex:= cdsChoosenPrinterIndexCHOSEN_PRINTER_INDEX.AsInteger;
end;

end.
