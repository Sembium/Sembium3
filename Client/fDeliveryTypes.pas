unit fDeliveryTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls;

type
  TfmDeliveryTypes = class(TBottomButtonGridForm)
    cdsGridDataDELIVERY_TYPE_CODE: TAbmesFloatField;
    cdsGridDataDELIVERY_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataDESCRIPTION: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  fDeliveryType;

{$R *.dfm}

{ TfmDeliveryTypes }

procedure TfmDeliveryTypes.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmDeliveryType;
end;

end.
