unit fCraftTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponent, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, fBottomButtonGridForm;

type
  TfmCraftTypes = class(TBottomButtonGridForm)
    cdsGridDataCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataCRAFT_TYPE_NAME: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fCraftType;

{$R *.dfm}

{ TfmCraftTypes }

procedure TfmCraftTypes.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmCraftType;
end;

end.
