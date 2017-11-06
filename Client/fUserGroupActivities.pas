unit fUserGroupActivities;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, AbmesFields, DBClient,
  AbmesClientDataSet, Menus, JvButtons, ImgList, ActnList, StdCtrls, Mask,
  DBCtrls, GridsEh, DBGridEh, AbmesDBGrid, Buttons, ExtCtrls, fDualGridForm,
  ParamDataSet, ColorNavigator, ComCtrls, ToolWin,
  JvComponent, JvCaptionButton, JvComponentBase, DBGridEhGrouping;

type
  TfmUserGroupActivities = class(TDualGridForm)
    pnlInfo: TPanel;
    pnlUserGroupName: TPanel;
    edtUserGroupName: TDBEdit;
    lblUserGroupName: TLabel;
    cdsGridDataUSER_GROUP_CODE: TAbmesFloatField;
    cdsGridDataACTIVITY_CODE: TAbmesFloatField;
    cdsGridDataACTIVITY_NAME: TAbmesWideStringField;
    cdsOtherGridDataUSER_GROUP_CODE: TAbmesFloatField;                                                    
    cdsOtherGridDataACTIVITY_CODE: TAbmesFloatField;
    cdsOtherGridDataACTIVITY_NAME: TAbmesWideStringField;
    pdsGridDataParamsUSER_GROUP_CODE: TAbmesFloatField;
    cdsGridDataACTIVITY_NO: TAbmesFloatField;
    cdsOtherGridDataACTIVITY_NO: TAbmesFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure DoApplyUpdates; override;
  end;

implementation

uses
  dMain;

{$R *.dfm}

{ TfmUserGroupActivities }

procedure TfmUserGroupActivities.DoApplyUpdates;
begin
  inherited;
  dmMain.RefreshLoginContext;
end;

end.
