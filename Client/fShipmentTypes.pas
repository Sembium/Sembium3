unit fShipmentTypes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient, GridsEh,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fBottomButtonGridForm, AbmesClientDataSet, DBGridEh, AbmesDBGrid, AbmesFields,
  Menus, JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton;

type
  TfmShipmentTypes = class(TBottomButtonGridForm)
    cdsGridDataSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataSHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataSHIPMENT_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataNOTES: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;                                                                             

implementation

uses
  dMain, fShipmentType;

{$R *.DFM}

{ TfmShipmentTypes }

procedure TfmShipmentTypes.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmShipmentType;
end;

end.
