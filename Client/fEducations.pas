unit fEducations;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fBottomButtonGridForm, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmEducations = class(TBottomButtonGridForm)
    cdsGridDataEDUCATION_CODE: TAbmesFloatField;
    cdsGridDataEDUCATION_NAME: TAbmesWideStringField;
    cdsGridDataEDUCATION_SHORT_NAME: TAbmesWideStringField;                                 
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fEducation;

{$R *.dfm}

{ TfmEducations }

procedure TfmEducations.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmEducation;
end;

end.
 
