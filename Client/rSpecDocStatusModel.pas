unit rSpecDocStatusModel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rSpecAndXModelDocStatusModelAbstract, DB, QRExport,
  QRCtrls, QuickRpt, ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptSpecDocStatusModel = class(TrptSpecAndXModelDocStatusModelAbstract)
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
