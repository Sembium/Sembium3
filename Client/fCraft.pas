unit fCraft;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  JvExControls, JvDBLookup, JvComponentBase;

type
  TfmCraft = class(TBevelEditForm)
    lblCraftTypeCode: TLabel;
    edtCraftTypeCode: TDBEdit;
    lblCraftTypeName: TLabel;
    edtCraftTypeName: TDBEdit;
    lblCraftType: TLabel;
    cbCraftType: TJvDBLookupCombo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
