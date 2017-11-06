unit fLanguages;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBottomButtonGridForm, ImgList, ParamDataSet, ActnList, Db,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesFields, JvButtons,
  ComCtrls, ToolWin, JvComponent, JvCaptionButton;

type
  TfmLanguages = class(TBottomButtonGridForm)
    cdsGridDataLANGUAGE_CODE: TAbmesFloatField;
    cdsGridDataLANGUAGE_NAME: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
                                                                                      
implementation

uses
  dMain, fLanguage;

{$R *.DFM}

{ TfmLanguages }

procedure TfmLanguages.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmLanguage;
end;

end.
