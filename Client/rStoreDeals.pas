unit rStoreDeals;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rDBDataReport, Db, QuickRpt, Qrctrls, ExtCtrls, AbmesFields,
  QRExport, DBClient, AbmesClientDataSet;

type
  TrptStoreDeals = class(TDBDataReport)
    mdsParams_PRODUCT_NO: TAbmesWideStringField;
    mdsParamsSTART_DATE: TAbmesSQLTimeStampField;
    mdsParamsEND_DATE: TAbmesSQLTimeStampField;
    mdsParamsNO_1: TAbmesFloatField;
    mdsParamsNO_2: TAbmesFloatField;
    mdsParamsNO_3: TAbmesFloatField;
    mdsParamsNO_4: TAbmesFloatField;
    mdsParamsNO_5: TAbmesFloatField;
    mdsParamsFORK_NO: TAbmesFloatField;
    mdsParamsIS_IN: TAbmesFloatField;
    mdsParamsIS_OUT: TAbmesFloatField;
    mdsParamsIS_STORNO: TAbmesFloatField;
    mdsParamsIS_NOT_STORNO: TAbmesFloatField;
    mdsParamsBND_PROCESS_CODE: TAbmesFloatField;
    mdsParamsSALE_BRANCH_CODE: TAbmesFloatField;
    mdsParamsSALE_NO: TAbmesFloatField;
    mdsParamsIS_WASTE_BOUND: TAbmesFloatField;
    mdsParamsIS_NOT_WASTE_BOUND: TAbmesFloatField;
    mdsParams_BND_PROCESS_ABBREV: TAbmesWideStringField;
    mdsParamsSTORE_CODE: TAbmesFloatField;
    mdsParams_STORE_IDENTIFIER: TAbmesWideStringField;
    mdsParams_STORE_FULL_NAME: TAbmesWideStringField;
    mdsParamsOTHER_STORE_CODE: TAbmesFloatField;
    mdsParamsWORK_ORDER_NO: TAbmesWideStringField;
    mdsParamsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    mdsParamsPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    mdsParams_DEPT_NAME: TAbmesWideStringField;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand5: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRShape33: TQRShape;
    QRLabel32: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape34: TQRShape;
    QRLabel44: TQRLabel;
    QRShape35: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand6: TQRBand;
    QRShape38: TQRShape;
    QRLabel51: TQRLabel;
    QRShape39: TQRShape;
    QRLabel52: TQRLabel;
    QRShape40: TQRShape;
    lblDate: TQRLabel;
    QRShape41: TQRShape;
    QRLabel54: TQRLabel;
    QRShape42: TQRShape;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    shpProductNo: TQRShape;
    lblProductNo: TQRLabel;
    shpProductName: TQRShape;
    lblProductName: TQRLabel;
    QRShape46: TQRShape;
    QRLabel61: TQRLabel;
    QRShape47: TQRShape;
    QRLabel62: TQRLabel;
    QRShape48: TQRShape;
    QRLabel63: TQRLabel;
    QRShape49: TQRShape;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRShape50: TQRShape;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRShape51: TQRShape;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRShape52: TQRShape;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRShape53: TQRShape;
    lblPrices: TQRLabel;
    QRShape54: TQRShape;
    QRLabel73: TQRLabel;
    QRShape55: TQRShape;
    QRLabel74: TQRLabel;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    shpDetailProductNo: TQRShape;
    shpDetailProductName: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    lblDetailProductNo: TQRDBText;
    lblDetailProductName: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    lblProduct: TQRLabel;
    shpProduct: TQRShape;
    QRShape6: TQRShape;
    QRLabel2: TQRLabel;
    QRShape7: TQRShape;
    QRDBText1: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  protected
    function GetColumnHeaderBandHeight: Integer; override;
    function GetDetailBandHeight: Integer; override;
  public
    { Public declarations }
  end;

implementation

uses fReportParent, uProductClientUtils, uClientUtils, uProducts;

{$R *.DFM}

resourcestring
  SPricesBaseCurrency = 'Стойност /%s/';

function TrptStoreDeals.GetColumnHeaderBandHeight: Integer;
begin
  Result:= 41;
end;

function TrptStoreDeals.GetDetailBandHeight: Integer;
begin
  Result:= 19;
end;

procedure TrptStoreDeals.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  MsgParams: TStrings;
begin
  inherited;

  lblPrices.Caption:= Format(SPricesBaseCurrency, [LoginContext.BaseCurrencyAbbrev]);

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext,
    IntToProductClass(ParamsDataSet.FieldByName('_PRODUCT_CLASS_CODE').AsInteger));

  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;
end;

end.
