unit fCountry;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, Menus, AbmesClientDataSet, JvButtons, JvComponent,
  JvCaptionButton, JvComponentBase;

type
  TfmCountry = class(TEditForm)
    edtCode: TDBEdit;
    edtCountryName: TDBEdit;
    lblCode: TLabel;
    lblCountryName: TLabel;
    Bevel1: TBevel;
    edtCountryAbbrev: TDBEdit;
    lblCountryAbbrev: TLabel;
    edtICountryAbbrev: TDBEdit;
    lblICountryAbbrev: TLabel;
    edtICountryName: TDBEdit;
    lblICountryName: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
