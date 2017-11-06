unit fUserActivities;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, AbmesFields, DBClient,
  AbmesClientDataSet, Menus, JvButtons, ImgList, ActnList, StdCtrls, Mask,
  DBCtrls, GridsEh, DBGridEh, AbmesDBGrid, Buttons, ExtCtrls, fDualGridForm,
  ParamDataSet, ColorNavigator, ComCtrls, ToolWin,
  JvComponent, JvCaptionButton, JvComponentBase, DBGridEhGrouping, fBaseFrame,
  fDBGridSearch, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions,
  EhLibVCL, DBAxisGridsEh;

type
  TfmUserActivities = class(TDualGridForm)
    pnlInfo: TPanel;
    pnlUserLogin: TPanel;
    lblUser: TLabel;
    edtUser: TDBEdit;
    cdsGridDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataACTIVITY_CODE: TAbmesFloatField;
    cdsGridDataACTIVITY_NAME: TAbmesWideStringField;                                                      
    cdsOtherGridDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsOtherGridDataACTIVITY_CODE: TAbmesFloatField;
    cdsOtherGridDataACTIVITY_NAME: TAbmesWideStringField;
    pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataACTIVITY_NO: TAbmesFloatField;
    cdsOtherGridDataACTIVITY_NO: TAbmesFloatField;
    pnlUserName: TPanel;
    frSearchData: TfrDBGridSearch;
    frSearchOtherData: TfrDBGridSearch;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure DoApplyUpdates; override;
  end;

implementation

uses
  dMain, fEditForm;

{$R *.dfm}

{ TfmUserActivities }

procedure TfmUserActivities.DoApplyUpdates;
begin
  inherited;
  dmMain.RefreshLoginContext;
end;

procedure TfmUserActivities.FormCreate(Sender: TObject);
begin
  inherited;
  MaximizeStyle:= msStandard;
  frSearchData.DBGrid:= grdData;
  frSearchOtherData.DBGrid:= grdOtherData;
end;

procedure TfmUserActivities.FormResize(Sender: TObject);
begin
  inherited;
  grdData.Width:= (pnlGrid.ClientWidth - pnlMoveButtons.Width) div 2;
end;

end.
