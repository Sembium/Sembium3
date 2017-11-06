unit fContactType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls,
  Buttons, ExtCtrls, Mask, DBCtrls;

type
  TfmContactType = class(TEditForm)
    edtCode: TDBEdit;
    lblCode: TLabel;
    edtName: TDBEdit;
    lblName: TLabel;
    bvlMain: TBevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
