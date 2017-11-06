unit fPersonCraft;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, JvExControls,
  JvDBLookup, Mask, DBCtrls, JvComponentBase;

type
  TfmPersonCraft = class(TEditForm)
    gbCraftType: TGroupBox;
    lblCraftTypeCode: TLabel;
    lblCraftType: TLabel;
    cbCraftType: TJvDBLookupCombo;
    edtCraftTypeCode: TDBEdit;
    gbCraft: TGroupBox;
    cbCraft: TJvDBLookupCombo;
    gbPriority: TGroupBox;
    lblCraftCode: TLabel;
    edtCraftCode: TDBEdit;
    lblCraft: TLabel;
    cbPriority: TJvDBLookupCombo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
