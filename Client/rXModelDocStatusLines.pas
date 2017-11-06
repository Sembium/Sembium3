unit rXModelDocStatusLines;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rSpecAndXModelDocStatusAbstract, DB, QRExport, QRCtrls,
  QuickRpt, ExtCtrls;

type
  TrptXModelDocStatusLines = class(TrptSpecAndXModelDocStatusAbstract)
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
