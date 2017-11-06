unit rInvoicesWithoutDiscount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rInvoices, DB, QRExport, QRCtrls, QuickRpt, ExtCtrls;

type
  TrptInvoicesWithoutDiscount = class(TrptInvoices)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
                               
end.
