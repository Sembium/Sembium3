unit fUserMemberGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDualGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, Mask, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  Vcl.Menus, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmUserMemberGroups = class(TDualGridForm)
    pnlInfo: TPanel;
    pnlUserInfo: TPanel;
    lblUser: TLabel;
    edtUser: TDBEdit;
    cdsGridDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataUSER_GROUP_CODE: TAbmesFloatField;
    cdsGridDataUSER_GROUP_NAME: TAbmesWideStringField;
    cdsOtherGridDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsOtherGridDataUSER_GROUP_CODE: TAbmesFloatField;
    cdsOtherGridDataUSER_GROUP_NAME: TAbmesWideStringField;
    pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField;
  private
    { Private declarations }
  protected
    procedure DoApplyUpdates; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain;

{$R *.dfm}

{ TfmUserMemberGroups }

procedure TfmUserMemberGroups.DoApplyUpdates;
begin
  inherited;
  dmMain.RefreshLoginContext;
end;

end.
