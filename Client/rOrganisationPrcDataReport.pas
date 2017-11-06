unit rOrganisationPrcDataReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rPrcDataReport, DB, DBClient, AbmesClientDataSet, QRExport, QRCtrls, QuickRpt, ExtCtrls;

type
  TrptOrganisationPrcDataReport = class(TPrcDataReport)
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
