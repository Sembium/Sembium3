unit fAccessRules;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fGridForm, Vcl.Menus, Data.DB, AbmesFields, ParamDataSet, System.Actions,
  Vcl.ActnList, Datasnap.DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.DBCtrls, ColorNavigator, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  fAccessRule, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  fBottomButtonGridForm;

type
  [EditFormClass(TfmAccessRule)]
  TfmAccessRules = class(TBottomButtonGridForm)
    cdsGridDataACCESS_RULE_CODE: TAbmesFloatField;
    cdsGridDataACCESS_RULE_NAME: TAbmesWideStringField;
    cdsGridDataACCESS_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataIS_ACTIVE: TAbmesFloatField;
  private
    { Private declarations }
  protected
    function GetAddButtonAction: TAddButtonAction; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain;

{$R *.dfm}

{ TfmAccessRules }

function TfmAccessRules.GetAddButtonAction: TAddButtonAction;
begin
  Result:= abaInsertMenu;
end;

end.
