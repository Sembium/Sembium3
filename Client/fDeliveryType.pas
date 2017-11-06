unit fDeliveryType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TfmDeliveryType = class(TBevelEditForm)
    lblDeliveryTypeNo: TLabel;
    edtDeliveryTypeNo: TDBEdit;
    lblDeliveryTypeAbbrev: TLabel;
    edtDeliveryTypeAbbrev: TDBEdit;
    lblDeliveryTypeDescription: TLabel;
    edtDeliveryTypeDescription: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
