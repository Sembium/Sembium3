unit fSaleType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, Menus,
  JvButtons, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmSaleType = class(TBevelEditForm)
    edtSaleTypeCode: TDBEdit;
    edtSaleTypeAbbrev: TDBEdit;
    edtSaleTypeName: TDBEdit;
    edtExportNo: TDBEdit;
    lblSaleTypeCode: TLabel;
    lblSaleTypeName: TLabel;
    lblSaleTypeAbbrev: TLabel;
    lblExportNo: TLabel;
    edtExportNo2: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
