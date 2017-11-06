unit fSysRole;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDualGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, Mask, uClientTypes, Menus, JvExStdCtrls, JvDBCombobox, JvExControls,
  JvDBLookup, uSysRoleClientUtils, DBGridEhGrouping;

type
  TfmSysRole = class(TDualGridForm)
    pnlSysRoleData: TPanel;
    lblSysRoleName: TLabel;
    edtSysRoleName: TDBEdit;
    edtSysRoleNo: TDBEdit;
    lblSysRoleNo: TLabel;
    cdsDataSYS_ROLE_CODE: TAbmesFloatField;
    cdsDataSYS_ROLE_NO: TAbmesFloatField;
    cdsDataSYS_ROLE_NAME: TAbmesWideStringField;
    cdsDataqrySysRoleActivities: TDataSetField;
    cdsGridDataSYS_ROLE_CODE: TAbmesFloatField;
    cdsGridDataACTIVITY_CODE: TAbmesFloatField;
    cdsGridDataACTIVITY_NO: TAbmesFloatField;
    cdsGridDataACTIVITY_NAME: TAbmesWideStringField;
    cdsOtherGridDataSYS_ROLE_CODE: TAbmesFloatField;
    cdsOtherGridDataACTIVITY_CODE: TAbmesFloatField;
    cdsOtherGridDataACTIVITY_NO: TAbmesFloatField;
    cdsOtherGridDataACTIVITY_NAME: TAbmesWideStringField;
    btnOccupations: TBitBtn;
    actOccupations: TAction;
    cdsDataIS_RESERVED: TAbmesFloatField;
    cdsSysRoleTypes: TAbmesClientDataSet;
    cdsSysRoleTypesSYS_ROLE_TYPE_CODE: TAbmesFloatField;
    cdsSysRoleTypesSYS_ROLE_TYPE_NAME: TAbmesWideStringField;
    cdsSysRoleTypesSYS_ROLE_TYPE_ABBREV: TAbmesWideStringField;
    cdsDataSYS_ROLE_TYPE_CODE: TAbmesFloatField;
    cdsData_SYS_ROLE_TYPE_NAME: TAbmesWideStringField;
    lblSysRoleType: TLabel;
    edtSysRoleType: TDBEdit;
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actOccupationsExecute(Sender: TObject);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsOtherGridDataAfterOpen(DataSet: TDataSet);
    procedure cdsDataSYS_ROLE_TYPE_CODEChange(Sender: TField);
    procedure cdsSysRoleTypesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsDataSYS_ROLE_TYPE_CODEValidate(Sender: TField);
    procedure actOccupationsUpdate(Sender: TObject);
  private
    FChangingSysRoleType: Boolean;
  protected
    procedure DoApplyUpdates; override;
    procedure ChangeEditMode(var AEditMode: TEditMode); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetAddToDataEnabled: Boolean; override;
    function GetRemoveFromDataEnabled: Boolean; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uClientUtils, uUserActivityConsts, fOccupationsAndEmployees, Math,
  uUtils;

{$R *.dfm}

resourcestring
  SSysRoleNosInIntervalAreReserved = 'Кодовете в интервала от %d до %d трябва да завършват на число между %d и %d';
  SClearSysRoles = 'Всички Присъщи Информационни Отговорности за Набор Информационни Отговорности ще бъдат изчистени. Желаете ли да продължите?';

{ TfmSysRole }

class function TfmSysRole.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmSysRole.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not InsertingLike and
     InRange(cdsDataSYS_ROLE_NO.AsInteger, MinReservedSysRoleNo, MaxReservedSysRoleNo) and
     not InRange(cdsDataSYS_ROLE_NO.AsInteger mod 100, MinNotReservedSubRangeSysRoleNo, MaxNotReservedSubRangeSysRoleNo) then
    begin
      raise Exception.CreateFmt(
        SSysRoleNosInIntervalAreReserved,
        [MinReservedSysRoleNo, MaxReservedSysRoleNo, MinNotReservedSubRangeSysRoleNo, MaxNotReservedSubRangeSysRoleNo]);
    end;  { if }
end;

procedure TfmSysRole.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  // shte se sloji now kod w server-a ot sequence i w dwata sluchaq
  if not InsertingLike then
    cdsDataSYS_ROLE_CODE.AsInteger:= -1;

  cdsDataIS_RESERVED.AsBoolean:= False;
end;

procedure TfmSysRole.cdsDataSYS_ROLE_TYPE_CODEChange(Sender: TField);
begin
  inherited;

  if not FChangingSysRoleType then
    begin
      FChangingSysRoleType:= True;
      try
        actRemoveAllFromData.Execute;
      finally
        FChangingSysRoleType:= False;
      end;  { try }
    end;  { if }
end;

procedure TfmSysRole.cdsDataSYS_ROLE_TYPE_CODEValidate(Sender: TField);
begin
  inherited;
  if (cdsGridData.RecordCount > 0) and
     (IntToSysRoleType(cdsDataSYS_ROLE_TYPE_CODE.AsInteger) <> srtActivities) then
    ConfirmAction(SClearSysRoles);
end;

procedure TfmSysRole.cdsOtherGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DataSet.Subtract(cdsGridData, 'ACTIVITY_CODE');
end;

procedure TfmSysRole.cdsSysRoleTypesFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    (IntToSysRoleType(cdsSysRoleTypesSYS_ROLE_TYPE_CODE.AsInteger) <> srtInternal) or
    (EditMode <> emInsert);
end;

procedure TfmSysRole.ChangeEditMode(var AEditMode: TEditMode);
begin
  inherited;
  if (EditMode = emEdit) and cdsDataIS_RESERVED.AsBoolean then
    AEditMode:= emReadOnly;
end;

procedure TfmSysRole.DoApplyUpdates;
begin
  inherited DoApplyUpdates;
  dmMain.RefreshLoginContext;
end;

function TfmSysRole.GetAddToDataEnabled: Boolean;
begin
  Result:=
    inherited GetAddToDataEnabled and
    (IntToSysRoleType(cdsDataSYS_ROLE_TYPE_CODE.AsInteger) = srtActivities);
end;

function TfmSysRole.GetRemoveFromDataEnabled: Boolean;
begin
  Result:=
    ( inherited GetRemoveFromDataEnabled and
      (IntToSysRoleType(cdsDataSYS_ROLE_TYPE_CODE.AsInteger) = srtActivities)
    ) or
    ( (cdsGridData.RecordCount > 0) and FChangingSysRoleType
    );
end;

procedure TfmSysRole.Initialize;
begin
  inherited;
  if (IntToSysRoleType(cdsDataSYS_ROLE_TYPE_CODE.AsInteger) <> srtActivities) then
    begin
      ClientHeight:= ClientHeight - pnlGrid.Height;    
      pnlGrid.Visible:= False;
      pnlExcelExportButton.Visible:= False;
    end;  { if }
end;

procedure TfmSysRole.OpenDataSets;
begin
  cdsSysRoleTypes.Open;
  inherited;
end;

procedure TfmSysRole.CloseDataSets;
begin
  inherited;
  cdsSysRoleTypes.Close;
end;

procedure TfmSysRole.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;
  ro:=
    (EditMode = emReadOnly) or
    (GetSysRoleNoType(cdsDataSYS_ROLE_NO.AsInteger) = srntDefault);

  SetControlsReadOnly(ro, [edtSysRoleNo, edtSysRoleName]);

end;

procedure TfmSysRole.actOccupationsExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaOccupationsAndEmployees);
  TfmOccupationsAndEmployees.ShowForm(nil, cdsData, emReadOnly, doNone, True, True);
end;

procedure TfmSysRole.actOccupationsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emInsert);
end;

end.
