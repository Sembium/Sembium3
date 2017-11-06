unit fCraftType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  JvComponentBase;

type
  TfmCraftType = class(TBevelEditForm)
    lblCraftTypeCode: TLabel;
    lblCraftTypeName: TLabel;
    edtCraftTypeCode: TDBEdit;
    edtCraftTypeName: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
