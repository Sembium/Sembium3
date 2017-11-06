unit rVendorProductSignatures;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QRCtrls,
  QuickRpt, ExtCtrls;

type
  TrptVendorProductSignatures = class(TDBDataReport)
    bndTitle: TQRBand;
    lblTitle: TQRLabel;
    lblProduct: TQRLabel;
    lblCompany: TQRLabel;
    shpProductName: TQRShape;
    txtProductName: TQRDBText;
    shpProductNo: TQRShape;
    txtProductNo: TQRDBText;
    shpCompanyName: TQRShape;
    txtComapnyName: TQRDBText;
    shpCompanyNo: TQRShape;
    txtCompanyNo: TQRDBText;
    bndDetail: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
