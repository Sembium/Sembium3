unit fProductionProduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, Menus,
  JvButtons, ActnList, StdCtrls, Buttons, ExtCtrls, AbmesDBCheckBox, GridsEh,
  DBGridEh, AbmesDBGrid, AbmesFields, fGridForm, ParamDataSet,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, uClientTypes, Mask,
  dDocClient, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmProductionProduct = class(TGridForm)
    lblData: TLabel;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataPRODUCT_NAME: TAbmesWideStringField;
    cdsDataPRODUCT_NO: TAbmesFloatField;
    cdsDataMEASURE_CODE: TAbmesFloatField;
    cdsDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsDataTECH_MEASURE_CODE: TAbmesFloatField;                                              
    cdsDataTECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    cdsDataqryProductLocations: TDataSetField;
    pnlIsProductionProductCheckBox: TPanel;
    chbIsProductionProduct: TAbmesDBCheckBox;
    bvlMain: TBevel;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataSTORE_CODE: TAbmesFloatField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataSTORE_FULL_NAME: TAbmesWideStringField;
    cdsDataSELF_EXISTENT_STATUS_CODE: TAbmesFloatField;
    cdsDataIS_GROUP: TAbmesFloatField;
    gpProductInfo: TGroupBox;
    edtProductName: TDBEdit;
    edtProductNo: TDBEdit;
    edtMeasureAbbrev: TDBEdit;
    edtTechMeasureAbbrev: TDBEdit;
    lblProductName: TLabel;
    lblProductNo: TLabel;
    lblMeasureAbbrev: TLabel;
    lblTechMeasureAbbrev: TLabel;
    cdsGridDataIS_INHERITED: TAbmesFloatField;
    cdsGridDataPRODUCT_LEVEL: TAbmesFloatField;
    procedure cdsDataBeforeOpen(DataSet: TDataSet);
    procedure chbIsProductionProductClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
    FProductCode: Integer;
    FCheckingIsProductionProduct: Boolean;
    FCanCheckIsProductionProduct: Boolean;
  protected
    function GetRecordReadOnly: Boolean; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      AProductCode: Integer = 0;
      AEditMode: TEditMode = emEdit); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      AProductCode: Integer = 0;
      AEditMode: TEditMode = emEdit): Boolean;
  end;

implementation

uses
  dMain, uProducts, fDataForm, uUserActivityConsts;

{$R *.dfm}

resourcestring
  SCantMakeProductionProduct = 'За да обявите Управляемия Обект за "Каскадно обезпечаван",' + SLineBreak +
                               'трябва да не е група и да е обявен като "Самостоятелно съществуващ"!';

const
  GridSpecialColor = $00E1E1E1;

{ TfmProductionProduct }

class function TfmProductionProduct.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmProductionProduct.SetDataParams(AdmDocClient: TdmDocClient;
  AProductCode: Integer; AEditMode: TEditMode);
begin
  inherited SetDataParams(AdmDocClient, nil, AEditMode);
  FProductCode:= AProductCode;
end;

class function TfmProductionProduct.ShowForm(AdmDocClient: TdmDocClient;
  AProductCode: Integer; AEditMode: TEditMode): Boolean;
var
  f: TfmProductionProduct;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, AProductCode, AEditMode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmProductionProduct.cdsDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsData.Params.ParamByName('PRODUCT_CODE').AsInteger:= FProductCode;
end;

procedure TfmProductionProduct.chbIsProductionProductClick(
  Sender: TObject);                          
begin
  inherited;

  if FCheckingIsProductionProduct or (not FCanCheckIsProductionProduct) then
    Exit;

  FCheckingIsProductionProduct:= True;
  try
    if chbIsProductionProduct.Checked then
      try
        if ((cdsDataSELF_EXISTENT_STATUS_CODE.AsInteger <> sesYes) or cdsDataIS_GROUP.AsBoolean) then
          raise Exception.Create(SCantMakeProductionProduct);
      except
        chbIsProductionProduct.Checked:= False;
        raise;
      end;  { try }
  finally
    FCheckingIsProductionProduct:= False;
  end;   { try }
end;

procedure TfmProductionProduct.FormShow(Sender: TObject);
begin
  inherited;
  FCanCheckIsProductionProduct:= True;
end;

procedure TfmProductionProduct.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if cdsGridDataIS_INHERITED.AsBoolean and
     not (gdSelected in State) then
    Background:= GridSpecialColor;
end;

function TfmProductionProduct.GetRecordReadOnly: Boolean;
begin
  Result:=
    not LoginContext.HasUserActivity(uaProductionProductEdit);
end;

end.
