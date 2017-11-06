unit fActiveConnections;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, Menus, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions,
  DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  [SkipRefreshConfirmation]
  TfmActiveConnections = class(TGridForm)
    cdsGridDataCLIENT_COMPUTER_NAME: TAbmesWideStringField;
    cdsGridDataCLIENT_WINDOWS_USER_NAME: TAbmesWideStringField;
    cdsGridDataLOGIN_NAME: TAbmesWideStringField;
    cdsGridDataUSER_FULL_NAME: TAbmesWideStringField;
    cdsGridDataCONNECTION_ID: TAbmesFloatField;
    cdsGridDataCLIENT_WINDOWS_SESSION_ID: TAbmesFloatField;
    cdsGridDataLAST_LOGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataLAST_LOGIN_TIME: TAbmesSQLTimeStampField;
    btnCloseConnection: TBitBtn;
    actCloseConnection: TAction;
    cdsGridDataCLOSE_CONNECTION_REQUESTED: TAbmesFloatField;
    cdsGridDataLAST_TIME_CHECK_DATE: TAbmesSQLTimeStampField;
    cdsGridDataLAST_TIME_CHECK_TIME: TAbmesSQLTimeStampField;
    cdsGridDataEMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataCONNECTION_TYPE: TAbmesWideStringField;
    cdsGridDataDB_NAME: TAbmesWideStringField;
    cdsGridDataIS_IN_USE: TAbmesFloatField;
    cdsGridDataLICENSE_POOL_TYPE: TAbmesFloatField;
    cdsGridDataCLIENT_SYS_VOLUME_SERIAL_NUMBER: TAbmesWideStringField;
    cdsGridData_DISPLAY_WINDOWS_SESSION_ID: TAbmesWideStringField;
    cdsGridDataLAST_ACTIVITY_DATE: TAbmesSQLTimeStampField;
    cdsGridDataLAST_ACTIVITY_TIME: TAbmesSQLTimeStampField;
    cdsGridDataIP_ADDRESS: TAbmesWideStringField;
    cdsGridDataCURRENT_ACTIVITY_SECONDS: TAbmesFloatField;
    cdsGridDataCLIENT_WINDOWS_VERSION: TAbmesWideStringField;
    tlbToggles: TToolBar;
    btnShowSessionID: TToolButton;
    actShowSessionID: TAction;
    cdsGridDataCLIENT_HARDWARE_INFO: TWideStringField;
    actShowHardwareInfo: TAction;
    btnShowHardwareInfo: TToolButton;
    cdsGridDataSESSION_COUNT: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure actCloseConnectionUpdate(Sender: TObject);
    procedure actCloseConnectionExecute(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataLICENSE_POOL_TYPEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure actShowSessionIDExecute(Sender: TObject);
    procedure actShowHardwareInfoExecute(Sender: TObject);
    procedure cdsGridDataAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsGridDataSESSION_COUNTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uClientUtils, uUserActivityConsts, uUtils, uLicenseUtils,
  System.StrUtils, AbmesDialogs;

resourcestring
  SConfirmConnectionClose = 'Потвърдете прекратяването на избраните връзки';
  SConnectionCloseMessage = 'Съобщение';
  SConfirmSelfConnectionClose = 'Текущата връзка е между избраните. Потвърдете прекратяването';

  SLicensePoolTypeInternal = 'С  Сервизен';
  SLicensePoolTypeNamed = 'И  Именован';
  SLicensePoolTypeConcurrent = 'К  Конкурентен';

const
  LicensePoolTypeTexts: array[TLicensePoolType] of string = (
    '',
    SLicensePoolTypeInternal,
    SLicensePoolTypeNamed,
    SLicensePoolTypeConcurrent);

{$R *.dfm}

procedure TfmActiveConnections.actCloseConnectionExecute(Sender: TObject);
var
  ConnectionIds: OleVariant;
  CloseMessage: string;
begin
  inherited;
  LoginContext.CheckUserActivity(uaActiveConnectionsEdit);

  CloseMessage:= InputBoxEx(SConfirmConnectionClose, SConnectionCloseMessage, '');

  if (CloseMessage = '') then
    Abort;

  ConnectionIds:= GetSelectedIntegers(grdData, 'CONNECTION_ID');

  if IsInVarArray(LoginContext.ConnectionId, ConnectionIds) then
    ConfirmAction(SConfirmSelfConnectionClose);

  dmMain.SvrNonDbUtils.CloseConnections(ConnectionIds, CloseMessage);
  RefreshDataSet(cdsGridData);
end;

procedure TfmActiveConnections.actCloseConnectionUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridData.IsEmpty and
    (grdData.SelectedRows.Count > 0);
end;

procedure TfmActiveConnections.actShowHardwareInfoExecute(Sender: TObject);
begin
  inherited;
  actShowHardwareInfo.Checked:= not actShowHardwareInfo.Checked;
  grdData.Columns[8].Visible:= actShowHardwareInfo.Checked;      // CLIENT_HARDWARE_INFO
  grdData.Columns[9].Visible:= not actShowHardwareInfo.Checked;  // LOGIN_NAME
  grdData.Columns[10].Visible:= not actShowHardwareInfo.Checked; // EMPLOYEE_NO
  grdData.Columns[11].Visible:= not actShowHardwareInfo.Checked; // USER_FULL_NAME
end;

procedure TfmActiveConnections.actShowSessionIDExecute(Sender: TObject);
begin
  inherited;
  actShowSessionID.Checked:= not actShowSessionID.Checked;
  grdData.Columns[6].Visible:= not actShowSessionID.Checked;
  grdData.Columns[7].Visible:= actShowSessionID.Checked;
end;

procedure TfmActiveConnections.cdsGridDataAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  if VarIsNullOrEmpty(OwnerData) then
    pnlNavigator.Caption:= ''
  else
    pnlNavigator.Caption:= Format('Session count: %d', [VarToInt(OwnerData)]);
end;

procedure TfmActiveConnections.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridData_DISPLAY_WINDOWS_SESSION_ID.AsString:=
    Format('%s/%s', [cdsGridDataCLIENT_WINDOWS_SESSION_ID.AsString, cdsGridDataCLIENT_SYS_VOLUME_SERIAL_NUMBER.AsString]);
end;

procedure TfmActiveConnections.cdsGridDataLICENSE_POOL_TYPEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    Text:= LicensePoolTypeTexts[IntToLicensePoolType(Sender.AsInteger)]
  else
    Text:= Sender.AsString;
end;

procedure TfmActiveConnections.cdsGridDataSESSION_COUNTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmActiveConnections.FormCreate(Sender: TObject);
begin
  inherited;
  RegisterDateFields([
    cdsGridDataLAST_LOGIN_DATE,
    cdsGridDataLAST_TIME_CHECK_DATE,
    cdsGridDataLAST_ACTIVITY_DATE
  ]);
end;

procedure TfmActiveConnections.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
const
  ClosingConnectionColor = $00B0B0FF;
  ClosingConnectionColors: array[Boolean] of TColor = (clWindow, ClosingConnectionColor);
begin
  inherited;

  if (gdSelected in State) or
     (not ContainsText(Column.FieldName, '_DATE') and
      not ContainsText(Column.FieldName, '_TIME')) then
    Background:= ClosingConnectionColors[cdsGridDataCLOSE_CONNECTION_REQUESTED.AsBoolean];
end;

end.
