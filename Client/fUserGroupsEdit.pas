unit fUserGroupsEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, Menus, DBClient, AbmesClientDataSet,
  JvButtons, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  fGridForm, ParamDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ColorNavigator, AbmesFields, ComCtrls, ToolWin, fDualGridForm,
  JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmUserGroupsEdit = class(TDualGridForm)
    bvlMain: TBevel;
    actAddUser: TAction;
    actAddAllUsers: TAction;
    actRemoveUser: TAction;
    actRemveAllUsers: TAction;
    pnlTop: TPanel;
    pnlUserData: TPanel;
    lblName: TLabel;
    lblCode: TLabel;
    edtName: TDBEdit;
    edtCode: TDBEdit;
    cdsOtherGridDataUSER_GROUP_CODE: TAbmesFloatField;
    cdsOtherGridDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsOtherGridDataEMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataUSER_GROUP_CODE: TAbmesFloatField;
    cdsGridDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataEMPLOYEE_NAME: TAbmesWideStringField;
    pdsGridDataParamsUSER_GROUP_CODE: TAbmesFloatField;
    cdsDataUSER_GROUP_CODE: TAbmesFloatField;
    cdsDataUSER_GROUP_NAME: TAbmesWideStringField;
    cdsDataqryUserGroupUsers: TDataSetField;
    cdsGridDataEMPLOYEE_NO: TAbmesFloatField;
    cdsOtherGridDataEMPLOYEE_NO: TAbmesFloatField;
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    class function CanEditOuterDataSet: Boolean; override;
  protected
    procedure DoApplyUpdates; override;
  end;

implementation

uses
  dMain, uUtils, uClientTypes, uClientUtils;

{$R *.dfm}

{ TfmUserGroupsEdit }

procedure TfmUserGroupsEdit.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
  c: TColor;
begin
  inherited;

  ro:= (EditMode = emReadOnly);
  c:= ReadOnlyColors[ro];

  edtCode.ReadOnly:= ro;
  edtName.ReadOnly:= ro;

  edtCode.Color:= c;
  edtName.Color:= c;
end;

class function TfmUserGroupsEdit.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmUserGroupsEdit.DoApplyUpdates;
begin
  inherited;
  dmMain.RefreshLoginContext;
end;

end.
