unit fCrafts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvComponent, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls;

type
  TfmCrafts = class(TBottomButtonGridForm)
    cdsGridDataCRAFT_CODE: TAbmesFloatField;
    cdsGridDataCRAFT_NAME: TAbmesWideStringField;
    cdsGridDataCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsCraftTypes: TAbmesClientDataSet;
    cdsCraftTypesCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsCraftTypesCRAFT_TYPE_NAME: TAbmesWideStringField;
    cdsGridData_CRAFT_TYPE_NAME: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fCraft;

{$R *.dfm}

{ TfmCrafts }

procedure TfmCrafts.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmCraft;
end;

end.
