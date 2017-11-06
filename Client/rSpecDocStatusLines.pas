unit rSpecDocStatusLines;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rSpecAndXModelDocStatusAbstract, DB, QRExport, QRCtrls,
  QuickRpt, ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptSpecDocStatusLines = class(TrptSpecAndXModelDocStatusAbstract)
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
