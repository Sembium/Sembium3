unit fMonthTeams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, JvButtons, ImgList, ParamDataSet,
  ActnList, DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, fDualGridForm,
  AbmesFields, uClientTypes, ComCtrls, ToolWin, JvComponent,
  JvCaptionButton, JvComponentBase, fBottomButtonGridForm;

type
  TfmMonthTeams = class(TBottomButtonGridForm)
    cdsGridDataTEAM_CODE: TAbmesFloatField;
    cdsGridDataTEAM_NAME: TAbmesWideStringField;
    cdsGridDataTHE_MONTH_DATE: TAbmesSQLTimeStampField;
    cdsGridDataTEAM_NO: TAbmesFloatField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDEPT_NAME: TAbmesWideStringField;
    cdsGridDataEMPLOYEE_COUNT: TAbmesFloatField;
    cdsGridDataTEAM_EARNINGS: TAbmesFloatField;
    cdsGridDataHAS_EMPLOYEE_WORK_HOURS: TAbmesFloatField;
    pdsGridDataParamsBEGIN_MONTH_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_MONTH_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsTEAM_CODE: TAbmesFloatField;                                      
    pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField;
    cdsTeams: TAbmesClientDataSet;
    cdsTeamsTEAM_CODE: TAbmesFloatField;
    cdsTeamsTEAM_NO: TAbmesFloatField;
    cdsTeamsTEAM_NAME: TAbmesWideStringField;
    cdsTeamsDEPT_CODE: TAbmesFloatField;
    cdsTeamsDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsTeamsDEPT_NAME: TAbmesWideStringField;
    cdsTeamsIS_ACTIVE: TAbmesFloatField;
    cdsTeamsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsTeamsDOC_CODE: TAbmesFloatField;
    cdsTeamsHAS_DOC: TAbmesFloatField;
    cdsTeamsEMPLOYEE_COUNT: TAbmesFloatField;
    cdsTeamsTEAM_PROFESSIONS: TAbmesWideStringField;
    pdsGridDataParams_TEAM_NO: TAbmesFloatField;
    pdsGridDataParams_TEAM_NAME: TAbmesWideStringField;
    cdsGridDataTEAM_WASTE_HOURS: TAbmesFloatField;
    cdsGridDataWORKDAY_COUNT: TAbmesFloatField;
    cdsGridDataTEAM_TOTAL_WORK_HOURS: TAbmesFloatField;
    cdsGridDataTEAM_AVG_DAY_HOURS: TAbmesFloatField;
    cdsGridDataTEAM_WORK_HOUR_DENSITY: TAbmesFloatField;
    cdsGridData_SUM_EMPLOYEE_COUNT: TAggregateField;
    cdsGridData_SUM_TEAM_EARNINGS: TAggregateField;
    cdsGridData_SUM_TEAM_SETUP_HOURS: TAggregateField;
    cdsGridData_SUM_TEAM_NONWASTE_HOURS: TAggregateField;
    cdsGridData_SUM_TEAM_WASTE_HOURS: TAggregateField;
    cdsGridData_SUM_TEAM_TOTAL_WORK_HOURS: TAggregateField;
    cdsGridData_AVG_TEAM_AVG_DAY_HOURS: TAggregateField;
    cdsGridData_AVG_TEAM_WORK_HOUR_DENSITY: TAggregateField;
    cdsGridDataOVERRIDING_TEAM_EARNING: TAbmesFloatField;
    cdsGridDataEFFECTIVE_TEAM_EARNING: TAbmesFloatField;
    cdsGridData_SUM_EFFECTIVE_TEAM_EARNING: TAggregateField;
    cdsGridDataDEFINED_EMPLOYEE_COUNT: TAbmesFloatField;
    cdsGridDataEMP_WORKDAY_DURATION_HOURS: TAbmesFloatField;
    cdsGridDataEMP_WORKDAY_DENSITY_PERCENT: TAbmesFloatField;
    cdsGridDataEMP_WORKDAY_EFFECTIVE_HOURS: TAbmesFloatField;
    cdsGridData_SUM_DEFINED_EMPLOYEE_COUNT: TAggregateField;
    cdsGridDataTEAM_WASTE_OPHOURS: TAbmesFloatField;
    cdsGridDataTEAM_TOTAL_WORK_OPHOURS: TAbmesFloatField;
    cdsGridDataTEAM_AVG_DAY_OPHOURS: TAbmesFloatField;
    actToggleShowHours: TAction;
    btnToggleShowHours: TSpeedButton;
    cdsGridDataTEAM_SETUP_HOURS: TAbmesFloatField;
    cdsGridDataTEAM_NONWASTE_HOURS: TAbmesFloatField;
    cdsGridDataTEAM_SETUP_OPHOURS: TAbmesFloatField;
    cdsGridDataTEAM_NONWASTE_OPHOURS: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsTEAM_CODEChange(Sender: TField);
    procedure pdsGridDataParams_TEAM_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParams_TEAM_NOChange(Sender: TField);
    procedure pdsGridDataParamsBeforeOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsAfterClose(DataSet: TDataSet);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure cdsNumericFieldGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure HoursFieldsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataEMP_WORKDAY_DENSITY_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actToggleShowHoursExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    FShowManhours: Boolean;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fMonthTeam, fMonthTeamsFilter, DateUtils, uUtils, uClientUtils,
  rMonthTeams, uClientDateTime;

{$R *.dfm}

resourcestring
  STeamEarnings = 'Оценка на Труда по РИР (%s)';
  SEffectiveTeamEarning = 'Коригирана Оценка на Труда (%s)';

{ TfmMonthTeams }

procedure TfmMonthTeams.FormCreate(Sender: TObject);
begin
  inherited;
  
  EditFormClass:= TfmMonthTeam;
  FilterFormClass:= TfmMonthTeamsFilter;
  ReportClass:= TrptMonthTeams;

  cdsGridData.Params.ParamByName('BEGIN_MONTH_DATE').AsDateTime:= RecodeDay(ContextDate(), 1);
  cdsGridData.Params.ParamByName('END_MONTH_DATE').AsDateTime:= RecodeDay(ContextDate(), 1);

  RegisterFieldsTextVisibility(
    IsHighLevelInvestedValueVisible,
    [ cdsGridDataTEAM_EARNINGS,
      cdsGridData_SUM_TEAM_EARNINGS,
      cdsGridDataEFFECTIVE_TEAM_EARNING,
      cdsGridData_SUM_EFFECTIVE_TEAM_EARNING]);
end;

procedure TfmMonthTeams.pdsGridDataParamsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsTeams.Open;
end;

procedure TfmMonthTeams.pdsGridDataParamsAfterClose(DataSet: TDataSet);
begin
  inherited;
  cdsTeams.Close;
end;

procedure TfmMonthTeams.pdsGridDataParamsTEAM_CODEChange(Sender: TField);
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

procedure TfmMonthTeams.pdsGridDataParams_TEAM_NOChange(Sender: TField);
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

procedure TfmMonthTeams.pdsGridDataParams_TEAM_NAMEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmMonthTeams.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;
  CheckRequiredFields(
    [pdsGridDataParamsBEGIN_MONTH_DATE, pdsGridDataParamsEND_MONTH_DATE]);
end;

procedure TfmMonthTeams.actFormUpdate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  
  for i:= 7 to 11 do
    grdData.Columns[i].Visible:= FShowManhours;

  for i:= 12 to 16 do
    grdData.Columns[i].Visible:= not FShowManhours;
end;

procedure TfmMonthTeams.actToggleShowHoursExecute(Sender: TObject);
begin
  inherited;
  FShowManhours:= not FShowManhours;
end;

procedure TfmMonthTeams.cdsGridDataEMP_WORKDAY_DENSITY_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmMonthTeams.cdsNumericFieldGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmMonthTeams.FormShow(Sender: TObject);
begin
  inherited;
  grdData.Columns[18].Title.Caption:= Format(STeamEarnings, [LoginContext.BaseCurrencyAbbrev]);
  grdData.Columns[19].Title.Caption:= Format(SEffectiveTeamEarning, [LoginContext.BaseCurrencyAbbrev]);
end;

procedure TfmMonthTeams.HoursFieldsGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  HoursFieldGetText(Sender, Text, DisplayText);
end;

end.
