unit fProductQuantitiesTreeEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient, GridsEh,
  AbmesClientDataSet, DBGridEh, AbmesDBGrid, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, AbmesFields, Menus, JvButtons, ComCtrls,
  ToolWin, uClientTypes, dDocClient, JvComponent, JvCaptionButton,
  JvComponentBase, uProducts, DBGridEhGrouping;

type
  TfmProductQuantitiesTreeEdit = class(TGridForm)
    cdsGridDataSTORE_CODE: TAbmesFloatField;
    cdsGridDataTOTAL_QUANTITY: TAbmesFloatField;
    cdsGridDataTOTAL_PRICE: TAbmesFloatField;
    cdsGridDataTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_TOTAL_QUANTITY: TAggregateField;
    cdsGridData_SUM_TOTAL_ACCOUNT_QUANTITY: TAggregateField;
    cdsGridData_SUM_TOTAL_PRICE: TAggregateField;
    cdsGridDataSTORE_FULL_NAME: TAbmesWideStringField;
    lblLegend: TLabel;
    cdsGridDataTOTAL_MARKET_PRICE: TAbmesFloatField;
    tlbToggleMeasures: TToolBar;
    btnWorkMeasure: TToolButton;
    btnAccountMeasure: TToolButton;
    actWorkMeasure: TAction;
    actAccountMeasure: TAction;
    cdsGridData_SUM_TOTAL_MARKET_PRICE: TAggregateField;
    actExcludeVAT: TAction;
    actIncludeVAT: TAction;
    tlbTogglePrices: TToolBar;
    btnExcludeVAT: TToolButton;
    btnIncludeVAT: TToolButton;
    sepWorkMeasure: TToolButton;
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actWorkMeasureExecute(Sender: TObject);
    procedure actAccountMeasureExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure GetPriceFieldText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actExcludeVATExecute(Sender: TObject);
    procedure actIncludeVATExecute(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FVatPercent: Real;
    procedure SetVisibleColumns;
  protected
    function GetOriginalFormCaption: string; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AMeasureAbbrev: string = ''; AAccountMeasureAbbrev: string = '';
      AProductClass: TProductClass = pcNormal; AVatPercent: Real = 0); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AMeasureAbbrev: string = ''; AAccountMeasureAbbrev: string = '';
      AProductClass: TProductClass = pcNormal; AVatPercent: Real = 0): Boolean;
    procedure Initialize; override;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  dMain, uClientUtils, uProductClientUtils, uToolbarUtils, Math, uUtils;

{$R *.DFM}

{ TfmProductQuantitiesTreeEdit }

procedure TfmProductQuantitiesTreeEdit.cdsGridDataBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('PRODUCT_CODE').AsInteger:=
    dsData.DataSet.FieldByName('NODE_ID').AsInteger;
end;

procedure TfmProductQuantitiesTreeEdit.FormCreate(Sender: TObject);
begin
  inherited;
  SetSecondaryCurrencyAbbrevColumnCaption(grdData.Columns[3]);
  SetSecondaryCurrencyAbbrevColumnCaption(grdData.Columns[4]);
  SetVisibleColumns;

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridDataTOTAL_PRICE,
      cdsGridData_SUM_TOTAL_PRICE]);

  RegisterFieldsTextVisibility(
    IsSalePriceVisible,
    [ cdsGridDataTOTAL_MARKET_PRICE,
      cdsGridData_SUM_TOTAL_MARKET_PRICE]);
end;

function TfmProductQuantitiesTreeEdit.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmProductQuantitiesTreeEdit.GetPriceFieldText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
  FormatString: string;
begin
  inherited;

  if VarIsNullOrEmpty(Sender.Value) { aggregate friendly IsNull }  then
    Text:= ''
  else
    begin
      if (Sender is TAggregateField) then
        FormatString:= (Sender as TAggregateField).DisplayFormat
      else
        FormatString:= (Sender as TAbmesFloatField).DisplayFormat;

      Text:= FormatFloat(FormatString,
        VarToFloat(Sender.Value) * (1 + IfThen(actIncludeVAT.Checked, FVatPercent)));
    end;
end;

procedure TfmProductQuantitiesTreeEdit.Initialize;
var
  MsgParams: TStrings;
begin
  inherited;
  
  MsgParams:=
    CreateCommonMsgParams(
      LoginContext,
      FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;

  if (FProductClass = pcFinancial) then
    begin
      grdData.Columns[3].Visible:= False;
      grdData.Columns[4].Visible:= False;

      grdData.Columns[0].Width:=
        grdData.Columns[0].Width + grdData.Columns[3].Width + grdData.Columns[4].Width + 2;
    end;

  if LoginContext.DefaultIncludeVAT and (FProductClass <> pcFinancial) then
    actIncludeVAT.Execute;
end;

procedure TfmProductQuantitiesTreeEdit.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AMeasureAbbrev, AAccountMeasureAbbrev: string;
  AProductClass: TProductClass; AVatPercent: Real);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);

  if (AMeasureAbbrev <> '') then
    with grdData.Columns[1].Title do
      Caption:= Caption + ' (' + AMeasureAbbrev + ')';

  if (AAccountMeasureAbbrev <> '') then
    with grdData.Columns[2].Title do
      Caption:= Caption + ' (' + AAccountMeasureAbbrev + ')';

  FProductClass:= AProductClass;
  FVatPercent:= AVatPercent;
end;

procedure TfmProductQuantitiesTreeEdit.SetVisibleColumns;
begin
  grdData.Columns[1].Visible:= actWorkMeasure.Checked;
  grdData.Columns[2].Visible:= actAccountMeasure.Checked;
end;

class function TfmProductQuantitiesTreeEdit.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AMeasureAbbrev, AAccountMeasureAbbrev: string;
  AProductClass: TProductClass; AVatPercent: Real): Boolean;
var
  f: TfmProductQuantitiesTreeEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
      AMeasureAbbrev, AAccountMeasureAbbrev, AProductClass, AVatPercent);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmProductQuantitiesTreeEdit.actExcludeVATExecute(Sender: TObject);
begin
  inherited;
  grdData.Invalidate;
end;

procedure TfmProductQuantitiesTreeEdit.actFormUpdate(Sender: TObject);
begin
  inherited;
  NormalizedToolbar(tlbToggleMeasures).Visible:= (FProductClass <> pcFinancial);
  NormalizedToolbar(tlbTogglePrices).Visible:= (FProductClass <> pcFinancial);
  lblLegend.Visible:= (FProductClass <> pcFinancial);
end;

procedure TfmProductQuantitiesTreeEdit.actIncludeVATExecute(Sender: TObject);
begin
  inherited;
  grdData.Invalidate;
end;

procedure TfmProductQuantitiesTreeEdit.actWorkMeasureExecute(
  Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmProductQuantitiesTreeEdit.actAccountMeasureExecute(
  Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

end.
