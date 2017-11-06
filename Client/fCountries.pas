unit fCountries;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient, GridsEh,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fBottomButtonGridForm, AbmesClientDataSet, DBGridEh, AbmesDBGrid, AbmesFields,
  Menus, JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton,
  DBGridEhGrouping;

type
  TfmCountries = class(TBottomButtonGridForm)
    cdsGridDataCOUNTRY_CODE: TAbmesFloatField;
    cdsGridDataCOUNTRY_ABBREV: TAbmesWideStringField;
    cdsGridDataCOUNTRY_NAME: TAbmesWideStringField;
    cdsGridDataI_COUNTRY_ABBREV: TAbmesWideStringField;
    cdsGridDataI_COUNTRY_NAME: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }                                                        
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fCountry;

{$R *.DFM}

{ TfmCountries }

procedure TfmCountries.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmCountry;
end;

end.
