unit fInvoiceNoGenerators;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, fBottomButtonGridForm, DBGridEhGrouping,
  Menus, DB, AbmesFields, ParamDataSet, ActnList,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, uClientTypes;

type
  TfmInvoiceNoGenerators = class(TBottomButtonGridForm)
    cdsGridData_MAX_INVOICE_NO_GENERATOR_NO: TAggregateField;
    cdsGridDataINVOICE_NO_GENERATOR_CODE: TAbmesFloatField;
    cdsGridDataINVOICE_NO_GENERATOR_NO: TAbmesFloatField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataDEPT_NAME: TAbmesWideStringField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataIS_PROFORM_INVOICE: TAbmesFloatField;
    cdsGridDataIS_APPROVED: TAbmesFloatField;
    cdsGridDataMIN_INVOICE_NO: TAbmesFloatField;
    cdsGridDataMAX_INVOICE_NO: TAbmesFloatField;
    cdsGridDataCURRENT_INVOICE_NO: TAbmesFloatField;
    cdsGridDataINVOICE_TYPE_NAMES: TAbmesWideStringField;
    cdsGridDataCURRENCY_ABBREVS: TAbmesWideStringField;
    actPast: TAction;
    actPresent: TAction;
    actFuture: TAction;
    tlbTime: TToolBar;
    sepPast: TToolButton;
    btnPast: TSpeedButton;
    btnPresent: TSpeedButton;
    btnFuture: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataBEGIN_DATEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataIS_PROFORM_INVOICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataIS_APPROVEDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataINVOICE_TYPE_NAMESGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataCURRENCY_ABBREVSGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataCURRENT_INVOICE_NOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure TimeActionExecute(Sender: TObject);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    procedure BooleanFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ListFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure Refilter;
  protected
    function GetAddButtonAction: TAddButtonAction; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fInvoiceNoGenerator, StrUtils, uClientConsts, uClientUtils, uUtils,
  uClientDateTime, Math;

{$R *.dfm}

{ TfmInvoiceNoGenerators }

procedure TfmInvoiceNoGenerators.TimeActionExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  Refilter;
end;

procedure TfmInvoiceNoGenerators.BooleanFieldGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.DataSet.IsEmpty or not DisplayText then
    Text:= Sender.AsString
  else
    begin
      if Sender.IsNull then
        Text:= SAllInBracketsShort
      else
        Text:= IfThen(Sender.AsBoolean, SYes, SNo);
    end;
end;

procedure TfmInvoiceNoGenerators.ListFieldGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.IsNull and not Sender.DataSet.IsEmpty then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

procedure TfmInvoiceNoGenerators.Refilter;
var
  InvoiceNoGeneratorCode: Integer;
begin
  cdsGridData.TempDisableControls/
    procedure begin
      InvoiceNoGeneratorCode:= cdsGridDataINVOICE_NO_GENERATOR_CODE.AsInteger;

      cdsGridData.Filtered:= False;
      cdsGridData.Filtered:= True;

      cdsGridData.Locate(cdsGridDataINVOICE_NO_GENERATOR_CODE.FieldName, InvoiceNoGeneratorCode, []);
    end;
end;

function TfmInvoiceNoGenerators.ShowEditForm(AEditMode: TEditMode): Boolean;
var
  Res: Boolean;
  b: TBookmark;
begin
  b:= cdsGridData.Bookmark;

  cdsGridData.TempDisableControls/
    procedure begin
      cdsGridData.TempUnfilter/
        procedure begin
          if not cdsGridData.IsEmpty then
            cdsGridData.Bookmark:= b;

          Res:= inherited ShowEditForm(AEditMode);

          b:= cdsGridData.Bookmark;
        end;

      if not cdsGridData.IsEmpty then
        cdsGridData.Bookmark:= b;
    end;

  Result:= Res;
end;

procedure TfmInvoiceNoGenerators.cdsGridDataBEGIN_DATEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= dmMain.GetDateIntervalAsShortString(
    cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime);
end;

procedure TfmInvoiceNoGenerators.cdsGridDataCURRENCY_ABBREVSGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ListFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmInvoiceNoGenerators.cdsGridDataCURRENT_INVOICE_NOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  if DisplayText and Sender.IsNull and not Sender.DataSet.IsEmpty then
    Text:= SNotExists
  else
    NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmInvoiceNoGenerators.cdsGridDataFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    (actPast.Checked and (cdsGridDataEND_DATE.AsDateTime < ContextDate)) or
    (actPresent.Checked and InRange(ContextDate, cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime)) or
    (actFuture.Checked and (ContextDate < cdsGridDataBEGIN_DATE.AsDateTime));
end;

procedure TfmInvoiceNoGenerators.cdsGridDataINVOICE_TYPE_NAMESGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ListFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmInvoiceNoGenerators.cdsGridDataIS_APPROVEDGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  BooleanFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmInvoiceNoGenerators.cdsGridDataIS_PROFORM_INVOICEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  BooleanFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmInvoiceNoGenerators.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmInvoiceNoGenerator;
end;

function TfmInvoiceNoGenerators.GetAddButtonAction: TAddButtonAction;
begin
  Result:= abaInsertMenu;
end;

end.
