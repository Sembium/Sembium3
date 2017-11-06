unit fDefaultPrinters;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fGridForm, Vcl.Menus, Data.DB, AbmesFields, ParamDataSet, System.Actions,
  Vcl.ActnList, Datasnap.DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.DBCtrls, ColorNavigator, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  JvExControls, JvDBLookup;

type
  TfmDefaultPrinters = class(TGridForm)
    cdsGridDataPAPER_SIZE: TAbmesWideStringField;
    cdsGridDataPRINTER_NAME: TAbmesWideStringField;
    cdsPaperSizes: TAbmesClientDataSet;
    cdsPaperSizesPAPER_SIZE: TAbmesWideStringField;
    cdsPaperSizesNAME: TAbmesWideStringField;
    cdsPrinters: TAbmesClientDataSet;
    cdsPrintersPRINTER_NAME: TAbmesWideStringField;
    cdsGridData_PAPER_SIZE_NAME: TAbmesWideStringField;
    cdsGridData_PRINTER_NAME: TAbmesWideStringField;
    pnlA5LToA4PConversion: TPanel;
    lblA5LToA4PConversion: TLabel;
    cdsPageConversion: TAbmesClientDataSet;
    cdsPageConversions: TAbmesClientDataSet;
    cdsPageConversionsPAGE_CONVERSION: TAbmesWideStringField;
    cdsPageConversionsNAME: TAbmesWideStringField;
    cdsPageConversionA5L_TO_A4P_PAGE_CONVERSION: TAbmesWideStringField;
    cdsPageConversion_A5L_TO_A4P_PAGE_CONVERSION_NAME: TAbmesWideStringField;
    cbA5LToA4PConversion: TJvDBLookupCombo;
    dsPageConversion: TDataSource;
    procedure navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FOriginalFormCaption: string;
    procedure LoadPaperSizes;
    procedure LoadPrinters;
    procedure LoadPageConversions;
  protected
    procedure OpenDataSets; override;
    procedure DoApplyUpdates; override;
    function GetFormCaption: string; override;
  protected
    function GetApplyUpdatesEnabled: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  qrprntr, System.TypInfo, Vcl.Printers, uDefaultPrinters, AbmesDialogs, uUtils;

{$R *.dfm}

Resourcestring
  SUser = 'Компютърен Потребител';
  SComputer = 'Компютър';

{ TfmDefaultPrinters }

procedure TfmDefaultPrinters.LoadPageConversions;
var
  pc: TPageConversion;
begin
  cdsPageConversions.Close;
  cdsPageConversions.CreateDataSet;

  for pc:= Low(TPageConversion) to High(TPageConversion) do
    cdsPageConversions.AppendRecord([PageConversionToStr(pc), PageConversionName(pc)]);
end;

procedure TfmDefaultPrinters.LoadPaperSizes;
var
  ps: TPaperSize;
begin
  cdsPaperSizes.Close;
  cdsPaperSizes.CreateDataSet;

  for ps:= Low(TPaperSize) to High(TPaperSize) do
    cdsPaperSizes.AppendRecord([PaperSizeToStr(ps), PaperSizeName(ps)]);
end;

procedure TfmDefaultPrinters.LoadPrinters;
var
  prn: string;
begin
  cdsPrinters.Close;
  cdsPrinters.CreateDataSet;

  for prn in Printer.Printers do
    cdsPrinters.AppendRecord([prn]);
end;

procedure TfmDefaultPrinters.navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  if (Button = nbInsert) then
    begin
      cdsGridData.Append;
      Abort;
    end;

  inherited;
end;

procedure TfmDefaultPrinters.OpenDataSets;
begin
  LoadPaperSizes;
  LoadPrinters;
  LoadPageConversions;

  inherited;

  LoadDefaultPrinters(cdsGridData,
    cdsGridDataPAPER_SIZE,
    cdsGridDataPRINTER_NAME);

  cdsGridData.MergeChangeLog;

  cdsPageConversion.CreateDataSet;
  LoadA5LToA4PConversion(cdsPageConversion, cdsPageConversionA5L_TO_A4P_PAGE_CONVERSION);
  cdsPageConversion.MergeChangeLog;

  grdData.DataSource:= nil;
  grdData.DataSource:= dsGridData;
end;

procedure TfmDefaultPrinters.DoApplyUpdates;
begin
  SaveDefaultPrinters(cdsGridData,
    cdsGridDataPAPER_SIZE,
    cdsGridDataPRINTER_NAME);

  PostDataSet(cdsPageConversions);
  SaveA5LToA4PConversion(cdsPageConversions,
    cdsPageConversionA5L_TO_A4P_PAGE_CONVERSION);
end;

procedure TfmDefaultPrinters.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  PostDataSet(cdsGridData);
  inherited;
end;

procedure TfmDefaultPrinters.FormCreate(Sender: TObject);
begin
  inherited;
  Position:= poScreenCenter;
  FOriginalFormCaption:= actForm.Caption;
end;

function TfmDefaultPrinters.GetApplyUpdatesEnabled: Boolean;
begin
  Result:=
    inherited GetApplyUpdatesEnabled or
    (cdsPageConversion.State in dsEditModes);
end;

function TfmDefaultPrinters.GetFormCaption: string;
const
  Suffixes: array[TDefaultPrintersLocation] of string =
    ('', SUser, SComputer);
begin
  Result:= Format(FOriginalFormCaption, [Suffixes[EditDefaultPrintersLocation]]);
end;

end.
