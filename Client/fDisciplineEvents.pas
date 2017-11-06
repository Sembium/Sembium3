unit fDisciplineEvents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, JvComponentBase, JvCaptionButton,
  DB, AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, Buttons, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, StdCtrls, uClientTypes, dDocClient,
  Mask, fBaseFrame, fDBFrame, fFieldEditFrame, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, fDateIntervalFrame, fDateFieldEditFrame, Menus;

type
  TfmDisciplineEvents = class(TMasterDetailForm)
    pdsGridDataParamsTHE_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsMIN_DISC_EVENT_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_DISC_EVENT_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAIN_OCCUPATION_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsDISCIPLINE_EVENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDISCIPLINE_EVENT_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsCREATE_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsCREATE_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsSTORNO_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsSTORNO_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataDET_NO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsGridDataDISC_EVENT_TYPE_NAME: TAbmesWideStringField;
    cdsDetail_DET_DISCIPLINE_EVENT_COUNT: TAggregateField;
    cdsGridDataDISCIPLINE_EVENT_COUNT: TAbmesFloatField;
    actExtendedDetailInfo: TAction;
    cdsGridData_TOTAL_DISCIPLINE_EVENT_COUNT: TAggregateField;
    cdsGridDataDET_TOTAL_RATING: TAbmesFloatField;
    cdsDetail_DET_TOTAL_RATING: TAggregateField;
    cdsDetailEMPLOYEE_CODE: TAbmesFloatField;
    cdsDetailDISCIPLINE_EVENT_CODE: TAbmesFloatField;
    cdsDetailDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsDetailDET_NO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsDetailDISC_EVENT_TYPE_NAME: TAbmesWideStringField;
    cdsDetailDET_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailDET_DOC_CODE: TAbmesFloatField;
    cdsDetailDET_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsDetailDISC_EVENT_STATUS_CODE: TAbmesFloatField;
    cdsDetailDISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField;
    cdsDetailEMPLOYEE_NO: TAbmesFloatField;
    cdsDetailEMPLOYEE_NAME: TAbmesWideStringField;
    cdsDetailEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailEMPLOYEE_DOC_CODE: TAbmesFloatField;
    cdsDetailEMPLOYEE_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsDetailMAIN_OCC_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDetailDISCIPLINE_EVENT_RATING: TAbmesFloatField;
    cdsDetailDISCIPLINE_EVENT_COMMENT: TAbmesWideStringField;
    cdsDetailAUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsDetailCREATE_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField;
    cdsDetailCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDetailSTORNO_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField;
    cdsDetailSTORNO_DATE: TAbmesSQLTimeStampField;
    cdsDetailDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailDOC_CODE: TAbmesFloatField;
    cdsDetailHAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataDET_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDET_DOC_CODE: TAbmesFloatField;
    cdsGridDataDET_HAS_DOC_ITEMS: TAbmesFloatField;
    actDisciplineEventDocs: TAction;
    actEmployeeDocs: TAction;
    actDisciplineEventTypeDocs: TAction;
    tlbDisciplineEventTypeDocs: TToolBar;
    sepDisciplineEventTypeDocs: TToolButton;
    pnlDisciplineEventTypeDocs: TPanel;
    btnDisciplineEventTypeDocs: TToolButton;
    tlbDisciplineEventDocs: TToolBar;
    sepDisciplineEventDocs: TToolButton;
    pnlDisciplineEventDocs: TPanel;
    btnDisciplineEventDocs: TToolButton;
    tlbEmployeeDocs: TToolBar;
    sepEmployeeDocs: TToolButton;
    pnlEmployeeDocs: TPanel;
    btnEmployeeDocs: TToolButton;
    cdsDetailDET_COLOR: TAbmesFloatField;
    cdsDetailDET_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridDataDET_COLOR: TAbmesFloatField;
    cdsGridDataDET_BACKGROUND_COLOR: TAbmesFloatField;
    pnlFilter: TPanel;
    pdsGridDataParamsMAIN_OCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField;
    edtMainOccupationDeptIdentifier: TDBEdit;
    lblMainOccupationDeptIdentifier: TLabel;
    frEmployee: TfrEmployeeFieldEditFrameBald;
    frAuthorizeEmployee: TfrEmployeeFieldEditFrameBald;
    lblEmployee: TLabel;
    lblAuthorizeEmployee: TLabel;
    frDisciplineEventDateInterval: TfrDateIntervalFrame;
    frDisciplineEventDate: TLabel;
    pdsGridDataParamsDISC_EVENT_TYPE_NAME: TAbmesWideStringField;
    edtDiscEventType: TDBEdit;
    lblDiscEventType: TLabel;
    frTheDate: TfrDateFieldEditFrame;
    pdsGridDataParams_THE_DATE: TAbmesSQLTimeStampField;
    lblTheDate: TLabel;
    pdsGridDataParams_EMPLOYEE_NAME: TAbmesWideStringField;
    pdsGridDataParams_AUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField;
    pdsGridDataParams_EMPLOYEE_NO: TAbmesFloatField;
    pdsGridDataParams_AUTHORIZE_EMPLOYEE_NO: TAbmesFloatField;
    cdsEmployeeFrameAllEmployees: TAbmesClientDataSet;
    pnlDetailsCaption: TPanel;
    tlbDetails: TToolBar;
    btnExtendedDetailInfo: TSpeedButton;
    btnEditDetailRecord: TBitBtn;
    pdsGridDataParamsCHOSEN_MAIN_OCCUPATION_DEPT_ONLY: TAbmesFloatField;
    procedure cdsDetailAfterOpen(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExtendedDetailInfoExecute(Sender: TObject);
    procedure actDisciplineEventTypeDocsUpdate(Sender: TObject);
    procedure actDisciplineEventTypeDocsExecute(Sender: TObject);
    procedure actDisciplineEventDocsUpdate(Sender: TObject);
    procedure actDisciplineEventDocsExecute(Sender: TObject);
    procedure actEmployeeDocsUpdate(Sender: TObject);
    procedure actEmployeeDocsExecute(Sender: TObject);
    procedure cdsDetailDISC_EVENT_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure pdsGridDataParamsMAIN_OCCUPATION_DEPT_CODEChange(
      Sender: TField);
    procedure pdsGridDataParamsDISC_EVENT_TYPE_CODEChange(Sender: TField);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsDISCIPLINE_EVENT_BEGIN_DATEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FieldsAllWhenNullGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    FLocateEmployeeCode: Integer;
    FLocateDisciplineEventCode: Integer;
    procedure RefreshDataSets;
    procedure SetDetailColumns;
  protected
    class function CanUseDocs: Boolean; override;
    class function ManualDetailFetch: Boolean; override;
    function ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure RefreshGridData; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True); override;
  end;

implementation

uses dMain, uUtils, fEmployee, fDisciplineEventsFilter, uDocUtils, Math,
  rDisciplineEvents, uTreeClientUtils, uClientUtils, uClientDateTime;

{$R *.dfm}

resourcestring
  SActiveStatus = 'Активно';
  SPassiveStatus = 'Пасивно';
  SReplacedStatus = 'Заменено';
  SCanceledStatus = 'Отменено';
  SStornoStatus = 'Анулирано';

const
  StatusNames: array[0..5] of string =
    ('', SActiveStatus, SPassiveStatus, SReplacedStatus, SCanceledStatus, SStornoStatus);

procedure TfmDisciplineEvents.actDisciplineEventDocsExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl),
    dotEmployeeDisciplineEvent, cdsDetail);
end;

procedure TfmDisciplineEvents.actDisciplineEventDocsUpdate(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= cdsDetail.Active and not cdsDetail.IsEmpty;
      ImageIndex:= cdsDetailHAS_DOC_ITEMS.AsInteger;
    end;  { with }
end;

procedure TfmDisciplineEvents.actDisciplineEventTypeDocsExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl),
    dotDiscEventType, cdsGridData, 'DET_DOC_BRANCH_CODE', 'DET_DOC_CODE');
end;

procedure TfmDisciplineEvents.actDisciplineEventTypeDocsUpdate(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= cdsGridData.Active and not cdsGridData.IsEmpty;
      ImageIndex:= cdsGridDataDET_HAS_DOC_ITEMS.AsInteger;
    end;  { with }
end;

procedure TfmDisciplineEvents.actEmployeeDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl),
    dotEmployee, cdsDetail, 'EMPLOYEE_DOC_BRANCH_CODE', 'EMPLOYEE_DOC_CODE');
end;

procedure TfmDisciplineEvents.actEmployeeDocsUpdate(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= cdsDetail.Active and not cdsDetail.IsEmpty;
      ImageIndex:= cdsDetailEMPLOYEE_HAS_DOC_ITEMS.AsInteger;
    end;  { with }
end;

procedure TfmDisciplineEvents.actExtendedDetailInfoExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetDetailColumns;
end;

procedure TfmDisciplineEvents.actFilterExecute(Sender: TObject);
begin
  if TfmDisciplineEventsFilter.ShowForm(dmDocClient, pdsGridDataParams) then
    RefreshDataSets;
end;

class function TfmDisciplineEvents.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmDisciplineEvents.cdsDetailAfterOpen(DataSet: TDataSet);
var
  LocateDiscEventTypeCode: Integer;
begin
  inherited;

  cdsDetail.DisableControls;
  try
    cdsGridData.DisableControls;
    try
      cdsDetail.MasterSource:= nil;
      cdsDetail.MasterFields:= '';

      if (FLocateDisciplineEventCode > 0) and
         cdsDetail.Locate('EMPLOYEE_CODE; DISCIPLINE_EVENT_CODE',
           VarArrayOf([FLocateEmployeeCode, FLocateDisciplineEventCode]), []) then
        LocateDiscEventTypeCode:= cdsDetailDISC_EVENT_TYPE_CODE.AsInteger
      else
        LocateDiscEventTypeCode:= 0;

      cdsDetail.First;
      while not cdsDetail.Eof do
        begin
          if (gbFirst in cdsDetail.GetGroupState(1)) then
            begin
              cdsGridData.AppendRecord([
                cdsDetailDISC_EVENT_TYPE_CODE.AsVariant,
                cdsDetailDET_NO_AS_FORMATED_TEXT.AsVariant,
                cdsDetailDISC_EVENT_TYPE_NAME.AsVariant,
                cdsDetailDET_DOC_BRANCH_CODE.AsVariant,
                cdsDetailDET_DOC_CODE.AsVariant,
                cdsDetailDET_HAS_DOC_ITEMS.AsVariant,
                cdsDetailDET_COLOR.AsVariant,
                cdsDetailDET_BACKGROUND_COLOR.AsVariant,
                cdsDetail_DET_TOTAL_RATING.AsVariant,
                cdsDetail_DET_DISCIPLINE_EVENT_COUNT.AsVariant
              ]);
            end;

          cdsDetail.Next;
        end;  { while }

      cdsGridData.First;
      cdsDetail.MasterSource:= dsGridData;
      cdsDetail.MasterFields:= 'DET_NO_AS_FORMATED_TEXT';
      cdsDetail.First;

      if (LocateDiscEventTypeCode > 0) then
        cdsGridData.Locate('DISC_EVENT_TYPE_CODE', LocateDiscEventTypeCode, []);
    finally
      cdsGridData.EnableControls;
    end;  { try }
  finally
    cdsDetail.EnableControls;
  end;  { try }
end;

procedure TfmDisciplineEvents.cdsDetailDISC_EVENT_STATUS_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if InRange(Sender.AsInteger, Low(StatusNames), High(StatusNames)) then
    Text:= StatusNames[Sender.AsInteger];
end;

procedure TfmDisciplineEvents.FieldsAllWhenNullGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmDisciplineEvents.FormCreate(Sender: TObject);
begin
  inherited;

  FilterFormClass:= TfmDisciplineEventsFilter;
  DetailEditFormClass:= TfmEmployee;
  ReportClass:= TrptDisciplineEvents;
  MasterReportClass:= TrptDisciplineEvents;

  frTheDate.FieldNames:= '_THE_DATE';
  frEmployee.FieldNames:= 'EMPLOYEE_CODE';
  frEmployee.DocButtonVisible:= False;
  frEmployee.ShowAllWhenEmpty:= True;
  frEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;
  frAuthorizeEmployee.FieldNames:= 'AUTHORIZE_EMPLOYEE_CODE';
  frAuthorizeEmployee.DocButtonVisible:= False;
  frAuthorizeEmployee.ShowAllWhenEmpty:= True;
  frAuthorizeEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;
  frDisciplineEventDateInterval.FieldNames:= 'DISCIPLINE_EVENT_BEGIN_DATE; DISCIPLINE_EVENT_END_DATE';

  RegisterDateFields(cdsDetail);
  RegisterDateFields(pdsGridDataParams);
  SetDetailColumns;
end;

procedure TfmDisciplineEvents.FormShow(Sender: TObject);
begin
  inherited;
  actForm.Update;
end;

procedure TfmDisciplineEvents.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.Field = cdsGridDataDET_NO_AS_FORMATED_TEXT) and not (gdSelected in State) then
    begin
      if not cdsGridDataDET_COLOR.IsNull then
        AFont.Color:= cdsGridDataDET_COLOR.AsInteger;

      if not cdsGridDataDET_BACKGROUND_COLOR.IsNull then
        Background:= cdsGridDataDET_BACKGROUND_COLOR.AsInteger;
    end;
end;

class function TfmDisciplineEvents.ManualDetailFetch: Boolean;
begin
  Result:= True;
end;

procedure TfmDisciplineEvents.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams.Edit;
  try
    pdsGridDataParamsTHE_DATE.AsDateTime:= ContextDate;
    pdsGridDataParams.Post;
  except
    pdsGridDataParams.Cancel;
    raise;
  end;
end;

procedure TfmDisciplineEvents.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams_THE_DATE.Assign(pdsGridDataParamsTHE_DATE);
end;

procedure TfmDisciplineEvents.pdsGridDataParamsDISCIPLINE_EVENT_BEGIN_DATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:=
    dmMain.GetDateIntervalAsShortString(
      pdsGridDataParamsDISCIPLINE_EVENT_BEGIN_DATE.AsDateTime,
      pdsGridDataParamsDISCIPLINE_EVENT_END_DATE.AsDateTime);
end;

procedure TfmDisciplineEvents.pdsGridDataParamsDISC_EVENT_TYPE_CODEChange(
  Sender: TField);
begin
  inherited;
  DoDiscEventTypeFieldChanged(pdsGridDataParamsDISC_EVENT_TYPE_CODE,
    nil, nil, nil, nil, nil,
    pdsGridDataParamsDISC_EVENT_TYPE_NAME);
end;

procedure TfmDisciplineEvents.pdsGridDataParamsMAIN_OCCUPATION_DEPT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(
    pdsGridDataParamsMAIN_OCCUPATION_DEPT_CODE, nil,
    pdsGridDataParamsMAIN_OCCUPATION_DEPT_IDENTIFIER);

  if Sender.IsNull then
    pdsGridDataParamsCHOSEN_MAIN_OCCUPATION_DEPT_ONLY.AsBoolean:= False;
end;

procedure TfmDisciplineEvents.RefreshDataSets;
var
  SaveCursor: TCursor;
  b, b1: TBookmark;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    b:= cdsGridData.Bookmark;
    b1:= cdsDetail.Bookmark;

    cdsGridData.Close;
    cdsGridData.CreateDataSet;

    RefreshDataSet(cdsDetail);

    try
      cdsGridData.Bookmark:= b;
      cdsDetail.Bookmark:= b1;
    except
      on EDatabaseError do
        begin
          // Do nothing. Just catch the exception
        end;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;  { try }
end;

procedure TfmDisciplineEvents.RefreshGridData;
begin
  dsGridData.DataSet.DisableControls;
  try
    cdsDetail.DisableControls;
    try
      cdsDetail.Close;
      cdsDetail.Open;
    finally
      cdsDetail.EnableControls;
    end;
  finally
    dsGridData.DataSet.EnableControls;
  end;

  if (FLocateEmployeeCode > 0) and (FLocateDisciplineEventCode > 0) then
    cdsDetail.Locate('EMPLOYEE_CODE; DISCIPLINE_EVENT_CODE',
      VarArrayOf([FLocateEmployeeCode, FLocateDisciplineEventCode]), []);

  FLocateEmployeeCode:= 0;
  FLocateDisciplineEventCode:= 0;
end;

procedure TfmDisciplineEvents.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode,
    ADefaultsOrigin, AFilterFormEnabled);

  if Assigned(ADataSet) and
     (AEditMode in [emEdit, emReadOnly]) then
    SetParams(cdsDetail.Params, ADataSet);
end;

procedure TfmDisciplineEvents.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= True;
end;

procedure TfmDisciplineEvents.SetDetailColumns;
begin
  grdDetail.Columns.BeginUpdate;
  try
    grdDetail.Columns[5].Visible:= not actExtendedDetailInfo.Checked;
    grdDetail.Columns[6].Visible:= not actExtendedDetailInfo.Checked;
    grdDetail.Columns[7].Visible:= not actExtendedDetailInfo.Checked;
    grdDetail.Columns[8].Visible:= actExtendedDetailInfo.Checked;
    grdDetail.Columns[9].Visible:= actExtendedDetailInfo.Checked;
    grdDetail.Columns[10].Visible:= actExtendedDetailInfo.Checked;
    grdDetail.Columns[11].Visible:= actExtendedDetailInfo.Checked;
  finally
    grdDetail.Columns.EndUpdate;
  end;
end;

function TfmDisciplineEvents.ShowDetailEditForm(AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin): Boolean;
begin
  Result:= TfmEmployee.ShowForm(dmDocClient, cdsDetail, AEditMode);
  if Result then
    begin
      FLocateEmployeeCode:= cdsDetailEMPLOYEE_CODE.AsInteger;
      FLocateDisciplineEventCode:= cdsDetailDISCIPLINE_EVENT_CODE.AsInteger;
    end;
end;

end.
