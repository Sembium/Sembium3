unit fCustomhouses;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient, GridsEh,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fBottomButtonGridForm, AbmesClientDataSet, DBGridEh, AbmesDBGrid, AbmesFields,
  Menus, JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton;

type
  TfmCustomhouses = class(TBottomButtonGridForm)
    cdsGridDataCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsGridDataCUSTOMHOUSE_NAME: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fCustomhouse;

{$R *.DFM}

{ TfmCustomhouses }

procedure TfmCustomhouses.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmCustomhouse;
end;

end.
