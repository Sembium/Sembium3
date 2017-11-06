unit fUserEffectiveActivities;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDualGridForm, JvButtons, ParamDataSet, ActnList, DB,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  AbmesFields, Mask, JvComponent, JvCaptionButton, JvComponentBase, fBaseFrame,
  fDBFrame, fFieldEditFrame, fDateFieldEditFrame, DBGridEhGrouping, Menus,
  fDBGridSearch, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions,
  EhLibVCL, DBAxisGridsEh;

type
  TfmUserEffectiveActivities = class(TDualGridForm)
    pnlInfo: TPanel;
    pnlUserToDate: TPanel;
    lblUser: TLabel;
    edtUser: TDBEdit;
    cdsGridDataACTIVITY_CODE: TAbmesFloatField;
    cdsGridDataACTIVITY_NAME: TAbmesWideStringField;
    cdsGridDataIS_PERSONAL_ACTIVITY: TAbmesFloatField;
    cdsGridDataIS_GROUP_ACTIVITY: TAbmesFloatField;                                                 
    cdsGridDataACTIVITY_GROUP_NAMES: TAbmesWideStringField;
    cdsOtherGridDataACTIVITY_CODE: TAbmesFloatField;
    cdsOtherGridDataACTIVITY_NAME: TAbmesWideStringField;
    cdsOtherGridDataACTIVITY_GROUP_NAMES: TAbmesWideStringField;
    cdsGridData_ACTIVITY_GROUP_NAMES: TAbmesWideStringField;
    pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataACTIVITY_NO: TAbmesFloatField;
    cdsOtherGridDataACTIVITY_NO: TAbmesFloatField;
    cdsGridDataACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField;
    cdsOtherGridDataACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField;
    pdsGridDataParamsTO_DATE: TAbmesSQLTimeStampField;
    lblToDate: TLabel;
    frToDate: TfrDateFieldEditFrame;
    pnlUserName: TPanel;
    frSearchData: TfrDBGridSearch;
    frSearchOtherData: TfrDBGridSearch;
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsOtherGridDataBeforeOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uColorConsts, fUserEffectiveActivitiesFilter, uUtils, uClientUtils, Math,
  uClientDateTime, fEditForm;

{$R *.dfm}

resourcestring
  SPersonalActivity = 'Лично';

{ TfmUserEffectiveActivities }

procedure TfmUserEffectiveActivities.cdsOtherGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsOtherGridData.Params, pdsGridDataParams);
end;

procedure TfmUserEffectiveActivities.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmUserEffectiveActivitiesFilter;
  frToDate.FieldNames:= 'TO_DATE';
  frToDate.SetDataSet(pdsGridDataParams);
  MaximizeStyle:= msStandard;
  frSearchData.DBGrid:= grdData;
  frSearchOtherData.DBGrid:= grdOtherData;
end;

procedure TfmUserEffectiveActivities.FormResize(Sender: TObject);
begin
  inherited;
  grdData.Width:= (pnlGrid.ClientWidth - pnlMoveButtons.Width) div 2;
end;

procedure TfmUserEffectiveActivities.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  inherited;

  if not (gdSelected in State) then
    begin
      if cdsGridDataIS_PERSONAL_ACTIVITY.AsBoolean then
        begin
          if cdsGridDataIS_GROUP_ACTIVITY.AsBoolean then
            AFont.Color:= ccPersonalAndGroupActivity
          else
            AFont.Color:= ccPersonalActivity;
        end;
    end;
end;

procedure TfmUserEffectiveActivities.Initialize;
begin
  inherited Initialize;

  grdData.Columns[2].Visible:= LoginContext.IsOldActivitySystemVisible;
  grdOtherData.Columns[2].Visible:= LoginContext.IsOldActivitySystemVisible;

  AutoSizeColumn(grdData, 1);
  AutoSizeColumn(grdOtherData, 1);
end;

procedure TfmUserEffectiveActivities.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsGridDataIS_PERSONAL_ACTIVITY.AsBoolean then
    begin
      if cdsGridDataIS_GROUP_ACTIVITY.AsBoolean then
        cdsGridData_ACTIVITY_GROUP_NAMES.AsString:= SPersonalActivity + '; ' + cdsGridDataACTIVITY_GROUP_NAMES.AsString
      else
        cdsGridData_ACTIVITY_GROUP_NAMES.AsString:= SPersonalActivity;
    end
  else
    cdsGridData_ACTIVITY_GROUP_NAMES.AsString:= cdsGridDataACTIVITY_GROUP_NAMES.AsString;
end;

procedure TfmUserEffectiveActivities.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams.Edit;
  try
    pdsGridDataParamsTO_DATE.AsDateTime:= ContextDate;
    pdsGridDataParams.Post;
  except
    pdsGridDataParams.Cancel;
    raise;
  end;  { try }
end;

procedure TfmUserEffectiveActivities.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frToDate) then
    AFrame.ReadOnly:= True
  else
    inherited SetDBFrameReadOnly(AFrame);
end;

end.
