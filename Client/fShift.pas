unit fShift;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBevelEditForm, Mask, DBCtrls,
  JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmShift = class(TBevelEditForm)
    lblShiftAbbrev: TLabel;
    edtShiftAbbrev: TDBEdit;
    edtShiftName: TDBEdit;
    lblShiftName: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
 
