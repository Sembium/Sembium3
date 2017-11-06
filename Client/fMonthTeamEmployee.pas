unit fMonthTeamEmployee;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, Menus, DBClient, AbmesClientDataSet, JvButtons,
  ImgList, ActnList, StdCtrls, Buttons, ExtCtrls, fBevelEditForm, Mask,
  DBCtrls, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmMonthTeamEmployee = class(TBevelEditForm)
    lblEmployeeName: TLabel;
    lblEfficiency: TLabel;
    lblWorkdayCount: TLabel;
    edtEmployeeName: TDBEdit;
    edtEfficiency: TDBEdit;
    edtWorkdayCount: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
