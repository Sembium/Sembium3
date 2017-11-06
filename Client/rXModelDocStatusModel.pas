unit rXModelDocStatusModel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rSpecAndXModelDocStatusModelAbstract, DB, QRExport,
  QRCtrls, QuickRpt, ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptXModelDocStatusModel = class(TrptSpecAndXModelDocStatusModelAbstract)
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
