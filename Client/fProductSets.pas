unit fProductSets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, DB, AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, fBottomButtonGridForm,
  DBGridEhGrouping;

type
  TfmProductSets = class(TBottomButtonGridForm)
    cdsGridDataPRODUCT_SET_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_SET_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_SET_NAME: TAbmesWideStringField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataBEGIN_DATEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  protected
    function GetAddButtonAction: TAddButtonAction; override;
  public
    { Public declarations }
  end;

implementation

uses
  fProductSet, uClientTypes, dMain, uUtils;

{$R *.dfm}

procedure TfmProductSets.cdsGridDataBEGIN_DATEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;

  if cdsGridDataBEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsShortString(cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime);
end;

procedure TfmProductSets.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmProductSet;
end;

function TfmProductSets.GetAddButtonAction: TAddButtonAction;
begin
  Result:= abaInsertMenu;
end;

end.
