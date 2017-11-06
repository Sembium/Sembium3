unit fWorkHours;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, JvButtons, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, ComCtrls,
  ToolWin, Buttons, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls, ColorNavigator,
  StdCtrls, uClientTypes, dDocClient, Mask, JvComponent, JvCaptionButton,
  JvComponentBase, Menus;

type
  TfmWorkHours = class(TMasterDetailForm)
    cdsDetailMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDetailMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsDetailOM_BRANCH_CODE: TAbmesFloatField;
    cdsDetailOM_CODE: TAbmesFloatField;
    cdsDetailOPERATOR_IS_TEAM: TAbmesFloatField;
    cdsDetailOPERATOR_NO: TAbmesFloatField;
    cdsDetailOPERATOR_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDetailOPERATOR_NAME: TAbmesWideStringField;
    cdsDetailIS_SETUP: TAbmesFloatField;                                                                      
    cdsDetailWORK_DATE: TAbmesSQLTimeStampField;
    cdsDetailIS_WASTE: TAbmesFloatField;
    cdsDetailDETAIL_NAME: TAbmesWideStringField;
    cdsDetailWORK_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsDetailTECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailOPERATION_IDENTIFICATION: TAbmesWideStringField;
    cdsDetailWORK_HOURS: TAbmesFloatField;
    cdsDetailHOUR_PRICE: TAbmesFloatField;
    cdsDetailOPERATOR_EARNING: TAbmesFloatField;
    cdsGridDataOPERATOR_IS_TEAM: TAbmesFloatField;
    cdsGridDataOPERATOR_NO: TAbmesFloatField;
    cdsGridDataOPERATOR_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataOPERATOR_NAME: TAbmesWideStringField;
    pdsGridDataParamsIS_SETUP: TAbmesFloatField;
    pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_NO: TAbmesFloatField;
    pdsGridDataParamsPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsPRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsTEAM_CODE: TAbmesFloatField;
    pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_WORK: TAbmesFloatField;
    cdsDetail_TOTAL_SETUP_HOURS: TAggregateField;
    cdsDetail_TOTAL_WORK_NON_WASTE_HOURS: TAggregateField;
    cdsDetail_TOTAL_WORK_WASTE_HOURS: TAggregateField;
    cdsDetail_TOTAL_WORK_HOURS: TAggregateField;
    cdsDetail_TOTAL_SETUP_OPHOURS: TAggregateField;
    cdsDetail_TOTAL_WORK_NON_WASTE_OPHOURS: TAggregateField;
    cdsDetail_TOTAL_WORK_WASTE_OPHOURS: TAggregateField;
    cdsDetail_TOTAL_WORK_OPHOURS: TAggregateField;
    cdsGridDataTOTAL_SETUP_HOURS: TAbmesFloatField;
    cdsGridDataTOTAL_WORK_NON_WASTE_HOURS: TAbmesFloatField;
    cdsGridDataTOTAL_WORK_WASTE_HOURS: TAbmesFloatField;
    cdsGridDataTOTAL_WORK_HOURS: TAbmesFloatField;
    cdsGridDataAVG_WORK_HOURS: TAbmesFloatField;
    cdsGridDataTOTAL_SETUP_OPHOURS: TAbmesFloatField;
    cdsGridDataTOTAL_WORK_NON_WASTE_OPHOURS: TAbmesFloatField;
    cdsGridDataTOTAL_WORK_WASTE_OPHOURS: TAbmesFloatField;
    cdsGridDataTOTAL_WORK_OPHOURS: TAbmesFloatField;
    cdsGridDataAVG_WORK_OPHOURS: TAbmesFloatField;
    cdsGridDataWORK_HOUR_DENSITY: TAbmesFloatField;
    cdsDetail_TOTAL_OPERATOR_EARNING: TAggregateField;
    cdsGridDataTOTAL_OPERATOR_EARNINGS: TAbmesFloatField;
    cdsDetailIS_NOT_SETUP: TAbmesFloatField;
    cdsDetailIS_NOT_WASTE: TAbmesFloatField;
    cdsGridData_SUM_TOTAL_SETUP_HOURS: TAggregateField;
    cdsGridData_SUM_TOTAL_WORK_NON_WASTE_HOURS: TAggregateField;
    cdsGridData_SUM_TOTAL_WORK_WASTE_HOURS: TAggregateField;
    cdsGridData_SUM_TOTAL_WORK_HOURS: TAggregateField;
    cdsGridData_AVG_AVG_WORK_HOURS: TAggregateField;
    cdsGridData_SUM_TOTAL_SETUP_OPHOURS: TAggregateField;
    cdsGridData_SUM_TOTAL_WORK_NON_WASTE_OPHOURS: TAggregateField;
    cdsGridData_SUM_TOTAL_WORK_WASTE_OPHOURS: TAggregateField;
    cdsGridData_SUM_TOTAL_WORK_OPHOURS: TAggregateField;
    cdsGridData_AVG_AVG_WORK_OPHOURS: TAggregateField;
    cdsGridData_AVG_WORK_HOUR_DENSITY: TAggregateField;
    cdsGridData_SUM_TOTAL_OPERATOR_EARNINGS: TAggregateField;
    cdsDetailLATE_DAYS: TAbmesFloatField;
    btnPreviewOperation: TBitBtn;
    cdsTeams: TAbmesClientDataSet;
    cdsTeamsTEAM_CODE: TAbmesFloatField;
    cdsTeamsTEAM_NO: TAbmesFloatField;
    cdsTeamsTEAM_NAME: TAbmesWideStringField;
    pdsGridDataParams_TEAM_NO: TAbmesFloatField;
    pdsGridDataParams_TEAM_NAME: TAbmesWideStringField;
    pdsGridDataParams_WORKDAY_COUNT: TAbmesFloatField;
    pdsGridDataParamsDEPT_NAME: TAbmesWideStringField;
    pdsGridDataParamsDEPT_IDENTIFIER: TAbmesWideStringField;
    pnlPeriod: TPanel;
    lblPeriod: TLabel;
    lblOperatorCount: TLabel;
    edtPeriod: TDBEdit;
    edtOperatorCount: TDBEdit;
    cdsGridData_OPERATOR_COUNT: TAggregateField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    pdsGridDataParams_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_PRIORITY_NO: TAbmesFloatField;
    cdsDetailNO_AS_TEXT: TAbmesWideStringField;
    cdsDetailFORK_NO: TAbmesFloatField;
    cdsDetailDEPT_NAME: TAbmesWideStringField;
    pdsGridDataParams_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDetailOCCUPATION_NAME: TAbmesWideStringField;
    cdsDetailSHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataOCCUPATION_NAME: TAbmesWideStringField;
    cdsGridDataSHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsDetailOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParamsSHIFT_CODE: TAbmesFloatField;
    cdsShifts: TAbmesClientDataSet;
    cdsShiftsSHIFT_CODE: TAbmesFloatField;
    pdsGridDataParams_SHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsDetailDETAIL_NO: TAbmesFloatField;
    cdsShiftsSHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsDetailPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField;
    cdsPrioritiesPRIORITY_NO: TAbmesFloatField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    pdsGridDataParamsOCCUPATION_DEPT_CODE: TAbmesFloatField;
    cdsDetailDEFINED_EMPLOYEE_COUNT: TAbmesFloatField;
    cdsDetailWORK_OPHOURS: TAbmesFloatField;
    actToggleShowHours: TAction;
    btnToggleShowHours: TSpeedButton;
    cdsDetailTEAM_CODE: TAbmesFloatField;
    cdsDetailEMPLOYEE_CODE: TAbmesFloatField;
    cdsDetailWORKDAY_COUNT: TAbmesFloatField;
    cdsDetailEFFECTIVE_EMP_WORKHOURS: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsDetailAfterOpen(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure actEditDetailRecordExecute(Sender: TObject);
    procedure pdsGridDataParamsGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParams_TEAM_NOChange(Sender: TField);
    procedure pdsGridDataParams_TEAM_NOValidate(Sender: TField);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParamsDEPT_CODEChange(Sender: TField);
    procedure pdsGridDataParamsGetShortText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsTEAM_CODEChange(Sender: TField);
    procedure actToggleDateFormatExecute(Sender: TObject);
    procedure pdsGridDataParamsBEGIN_DATEChange(Sender: TField);
    procedure pdsGridDataParams_BEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure grdDetailGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure cdsDetailTECH_MEASURE_ABBREVGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure HoursFieldsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actToggleShowHoursExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    FShowManhours: Boolean;
    procedure RefreshDataSets;
  protected
    class function CanUseDocs: Boolean; override;
    class function ManualDetailFetch: Boolean; override;
    function GetInsertDetailRecordEnabled: Boolean; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True); override;
  end;

implementation

uses
  dMain, uUtils, uClientUtils, fMLMSOperationSetup, fOperationMovement,
  fWorkHoursFilter, uTreeClientUtils, fGridForm,
  JclDateTime, uColorConsts, rWorkHours, rWorkHoursDetail, uClientDateTime;

{$R *.dfm}

resourcestring
  SNoSuchTeam = 'Не съществува Екип с такъв код!';
  SOperatorEarning = 'Оценка на Труда по РИР (%s)';
  STechMeasureAbbrev = 'н.';
  SFututeDatesNotAllowed = 'ВрмИнт не трябва да включва бъдещи дати';

{ TfmWorkHours }

class function TfmWorkHours.CanUseDocs: Boolean;
begin
  Result:= True;
end;

class function TfmWorkHours.ManualDetailFetch: Boolean;
begin
  Result:= True;
end;

procedure TfmWorkHours.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode,
    ADefaultsOrigin, AFilterFormEnabled);

  if Assigned(ADataSet) and
     (AEditMode in [emEdit, emReadOnly]) then
    SetParams(cdsDetail.Params, ADataSet);
end;

procedure TfmWorkHours.FormCreate(Sender: TObject);
begin
  inherited;
  DelayDetailFetch:= False;
  DetailEditFormClass:= TfmMLMSOperationSetup;
  FilterFormClass:= TfmWorkHoursFilter;
  ReportClass:= TrptWorkHours;
  DetailsReportClass:= TrptWorkHoursDetail;

  RegisterDateFields(cdsDetail);
  RegisterDateField(pdsGridDataParams_BEGIN_DATE);

  RegisterFieldsTextVisibility(
    IsHighLevelInvestedValueVisible,
    [ cdsGridDataTOTAL_OPERATOR_EARNINGS,
      cdsGridData_SUM_TOTAL_OPERATOR_EARNINGS,
      cdsDetailOPERATOR_EARNING]);
end;

procedure TfmWorkHours.cdsDetailAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsDetail.DisableControls;
  try
    cdsGridData.DisableControls;
    try
      cdsDetail.MasterSource:= nil;
      cdsDetail.MasterFields:= '';

      cdsDetail.First;
      while not cdsDetail.Eof do
        begin
          if (gbFirst in cdsDetail.GetGroupState(2)) then
            begin
              cdsGridData.AppendRecord([
                cdsDetailOPERATOR_IS_TEAM.AsVariant,
                cdsDetailOPERATOR_NO.AsVariant,
                cdsDetailOPERATOR_DEPT_IDENTIFIER.AsVariant,
                cdsDetailOPERATOR_NAME.AsVariant,
                cdsDetailOCCUPATION_NAME.AsVariant,
                cdsDetailSHIFT_IDENTIFIER.AsVariant,
                cdsDetail_TOTAL_SETUP_HOURS.AsVariant,
                cdsDetail_TOTAL_WORK_NON_WASTE_HOURS.AsVariant,
                cdsDetail_TOTAL_WORK_WASTE_HOURS.AsVariant,
                cdsDetail_TOTAL_WORK_HOURS.AsVariant,
                (cdsDetail_TOTAL_WORK_HOURS.AsVariant / cdsDetailWORKDAY_COUNT.AsVariant),
                cdsDetail_TOTAL_SETUP_OPHOURS.AsVariant,
                cdsDetail_TOTAL_WORK_NON_WASTE_OPHOURS.AsVariant,
                cdsDetail_TOTAL_WORK_WASTE_OPHOURS.AsVariant,
                cdsDetail_TOTAL_WORK_OPHOURS.AsVariant,
                (cdsDetail_TOTAL_WORK_OPHOURS.AsVariant / cdsDetailWORKDAY_COUNT.AsVariant),
                (cdsDetail_TOTAL_WORK_HOURS.AsVariant / cdsDetailEFFECTIVE_EMP_WORKHOURS.AsVariant),
                cdsDetail_TOTAL_OPERATOR_EARNING.AsVariant,
                cdsDetailOCCUPATION_DEPT_IDENTIFIER.AsVariant
              ]);
            end;

          cdsDetail.Next;
        end;  { while }

      cdsGridData.First;
      cdsDetail.MasterSource:= dsGridData;
      cdsDetail.MasterFields:= 'OPERATOR_IS_TEAM; OPERATOR_NO';
      cdsDetail.First;
    finally
      cdsGridData.EnableControls;
    end;  { try }
  finally
    cdsDetail.EnableControls;
  end;  { try }

  // d7 bug workaround - za da se izchisliat pravilno calc-fieldovete varhu agregatite, sled kato e zakachen handlera
  cdsGridData.Last;
  cdsGridData.First;
end;

procedure TfmWorkHours.RefreshDataSets;
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

procedure TfmWorkHours.actFilterExecute(Sender: TObject);
begin
  if TfmWorkHoursFilter.ShowForm(dmDocClient, pdsGridDataParams) then
    RefreshDataSets;
end;

procedure TfmWorkHours.actFormUpdate(Sender: TObject);
var
  i: Integer;
begin
  inherited;

  for i:= 6 to 10 do
    grdData.Columns[i].Visible:= FShowManhours;

  for i:= 11 to 15 do
    grdData.Columns[i].Visible:= not FShowManhours;

  grdDetail.Columns[13].Visible:= FShowManhours;
  grdDetail.Columns[14].Visible:= not FShowManhours;
end;

procedure TfmWorkHours.actEditDetailRecordExecute(Sender: TObject);
begin
  if cdsDetailIS_SETUP.AsBoolean then
    TfmMLMSOperationSetup.ShowForm(dmDocClient, cdsDetail, emReadOnly)
  else
    TfmOperationMovement.ShowForm(dmDocClient, cdsDetail, emReadOnly);
end;

procedure TfmWorkHours.pdsGridDataParamsGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmWorkHours.pdsGridDataParams_TEAM_NOChange(Sender: TField);
var
  v: Variant;
begin
  inherited;
  v:= cdsTeams.Lookup('TEAM_NO', pdsGridDataParams_TEAM_NO.AsVariant, 'TEAM_CODE');

  if (VarIsNullOrEmpty(v) and not pdsGridDataParamsTEAM_CODE.IsNull) or
     (not VarIsNullOrEmpty(v) and pdsGridDataParamsTEAM_CODE.IsNull) or
     (pdsGridDataParamsTEAM_CODE.AsVariant <> v) then
    pdsGridDataParamsTEAM_CODE.AsVariant:= v;
end;

procedure TfmWorkHours.pdsGridDataParams_TEAM_NOValidate(Sender: TField);
begin
  inherited;

  if (not Sender.IsNull) and
     VarIsNullOrEmpty(cdsTeams.Lookup('TEAM_NO', Sender.AsVariant, 'TEAM_CODE')) then
    raise Exception.Create(SNoSuchTeam);
end;

procedure TfmWorkHours.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;

  if pdsGridDataParamsBEGIN_DATE.IsNull or pdsGridDataParamsEND_DATE.IsNull then
    pdsGridDataParams_WORKDAY_COUNT.Clear
  else
    pdsGridDataParams_WORKDAY_COUNT.AsInteger:=
      dmMain.CountWorkdays(
        pdsGridDataParamsBEGIN_DATE.AsDateTime,
        pdsGridDataParamsEND_DATE.AsDateTime
      );
end;

procedure TfmWorkHours.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;

  CheckRequiredFields([pdsGridDataParamsBEGIN_DATE, pdsGridDataParamsEND_DATE]);
  CheckDatePeriod(pdsGridDataParamsBEGIN_DATE, pdsGridDataParamsEND_DATE);

  if (pdsGridDataParamsEND_DATE.AsDateTime > ContextDate) then
    begin
      pdsGridDataParamsEND_DATE.FocusControl;
      raise Exception.Create(SFututeDatesNotAllowed);
    end;  { if }
end;

procedure TfmWorkHours.pdsGridDataParamsDEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(pdsGridDataParamsDEPT_CODE,
    pdsGridDataParamsDEPT_NAME, pdsGridDataParamsDEPT_IDENTIFIER);
end;

procedure TfmWorkHours.pdsGridDataParamsGetShortText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  AllWhenNullGetText(Sender, Text, DisplayText, True);
end;

procedure TfmWorkHours.pdsGridDataParamsTEAM_CODEChange(Sender: TField);
var
  v: Variant;
begin
  inherited;

  v:= cdsTeams.Lookup('TEAM_CODE', pdsGridDataParamsTEAM_CODE.AsVariant, 'TEAM_NO');

  if (VarIsNullOrEmpty(v) and not pdsGridDataParams_TEAM_NO.IsNull) or
     (not VarIsNullOrEmpty(v) and pdsGridDataParams_TEAM_NO.IsNull) or
     (pdsGridDataParams_TEAM_NO.AsVariant <> v) then
    pdsGridDataParams_TEAM_NO.AsVariant:= v;
end;

procedure TfmWorkHours.actToggleDateFormatExecute(Sender: TObject);
begin
  inherited;
  pdsGridDataParams.Last;
  pdsGridDataParams.First;
end;

procedure TfmWorkHours.actToggleShowHoursExecute(Sender: TObject);
begin
  inherited;
  FShowManhours:= not FShowManhours;
end;

procedure TfmWorkHours.pdsGridDataParamsBEGIN_DATEChange(Sender: TField);
begin
  inherited;
  pdsGridDataParams_BEGIN_DATE.Assign(pdsGridDataParamsBEGIN_DATE);
end;

procedure TfmWorkHours.pdsGridDataParams_BEGIN_DATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;

  if pdsGridDataParamsBEGIN_DATE.IsNull or pdsGridDataParamsEND_DATE.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsShortString(pdsGridDataParams_BEGIN_DATE.AsDateTime, pdsGridDataParamsEND_DATE.AsDateTime);
end;

procedure TfmWorkHours.grdDetailGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.Field = cdsDetailLATE_DAYS) and (cdsDetailLATE_DAYS.AsInteger < 0) then
    begin
      if (Abs(cdsDetailLATE_DAYS.AsInteger) > LoginContext.ProductionOrderLateDays) then
        Background:= ccTooLateProductionOrder
      else
        Background:= ccRiskLateProductionOrder;
    end;
end;

procedure TfmWorkHours.HoursFieldsGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  HoursFieldGetText(Sender, Text, DisplayText);
end;

function TfmWorkHours.GetInsertDetailRecordEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmWorkHours.FormShow(Sender: TObject);
begin
  inherited;
  grdData.Columns[17].Title.Caption:= Format(SOperatorEarning, [LoginContext.BaseCurrencyAbbrev]);
  grdDetail.Columns[15].Title.Caption:= Format(SOperatorEarning, [LoginContext.BaseCurrencyAbbrev]);
end;

procedure TfmWorkHours.cdsDetailTECH_MEASURE_ABBREVGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (cdsDetailIS_SETUP.AsInteger = 1) then
    Text:= STechMeasureAbbrev
  else
    Text:= cdsDetailTECH_MEASURE_ABBREV.AsString;
end;

end.
