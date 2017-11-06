unit fDeptTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, JvButtons, ParamDataSet, ActnList,
  DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  AbmesFields, JvComponent, JvCaptionButton, JvComponentBase,
  fBottomButtonGridForm;

type
  TfmDeptTypes = class(TBottomButtonGridForm)
    cdsGridDataDEPT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataDEPT_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataDEPT_TYPE_NAME: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fDeptType;

{$R *.dfm}

{ TfmDeptTypes }

procedure TfmDeptTypes.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmDeptType;
end;

end.
