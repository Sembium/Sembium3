unit fEmployeeEarnings;

interface                         

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  Mask, fBaseFrame, fDBFrame, fFieldEditFrame, fDateIntervalFrame,
  JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmEmployeeEarnings = class(TGridForm)
    cdsGridDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataEMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataEMPLOYEE_PERSONAL_EARNINGS: TAbmesFloatField;
    cdsGridDataEMPLOYEE_TEAM_EARNINGS: TAbmesFloatField;
    cdsGridDataEMPLOYEE_TOTAL_EARNINGS: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsDEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsTEAM_CODE: TAbmesFloatField;
    pdsGridDataParamsDEPT_NAME: TAbmesWideStringField;
    pdsGridDataParamsDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsTeams: TAbmesClientDataSet;
    cdsTeamsTEAM_CODE: TAbmesFloatField;
    cdsTeamsTEAM_NO: TAbmesFloatField;
    cdsTeamsTEAM_NAME: TAbmesWideStringField;
    pdsGridDataParams_TEAM_NO: TAbmesFloatField;
    pdsGridDataParams_TEAM_NAME: TAbmesWideStringField;
    cdsGridDataEARNING_TYPE: TAbmesFloatField;
    pnlPeriod: TPanel;
    lblPeriod: TLabel;
    cdsGridData_SUM_EMPLOYEE_PERSONAL_EARNINGS: TAggregateField;
    cdsGridData_SUM_EMPLOYEE_TEAM_EARNINGS: TAggregateField;
    cdsGridData_SUM_EMPLOYEE_TOTAL_EARNINGS: TAggregateField;
    cdsGridDataEMPLOYEE_WASTE_HOURS: TAbmesFloatField;
    cdsGridDataEMPLOYEE_TOTAL_WORK_HOURS: TAbmesFloatField;
    cdsGridDataEMPLOYEE_AVG_DAY_HOURS: TAbmesFloatField;
    cdsGridData_SUM_EMPLOYEE_SETUP_HOURS: TAggregateField;
    cdsGridData_SUM_EMPLOYEE_NONWASTE_HOURS: TAggregateField;
    cdsGridData_SUM_EMPLOYEE_WASTE_HOURS: TAggregateField;
    cdsGridData_SUM_EMPLOYEE_TEAM_HOURS: TAggregateField;
    cdsGridData_SUM_EMPLOYEE_TOTAL_WORK_HOURS: TAggregateField;
    cdsGridData_AVG_EMPLOYEE_AVG_DAY_HOURS: TAggregateField;
    cdsGridData_AVG_EMPLOYEE_WORK_HOUR_DENSITY: TAggregateField;
    cdsGridDataEMPLOYEE_WORK_HOUR_DENSITY: TAbmesFloatField;
    lblEmployeeCount: TLabel;
    edtEmployeeCount: TDBEdit;
    cdsGridData_EMPLOYEE_COUNT: TAggregateField;
    cdsGridDataOCCUPATION_NAME: TAbmesWideStringField;
    cdsGridDataSHIFT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParamsHAS_OCCUPATION: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_OCCUPATION_WORK_DEPTS: TAbmesWideStringField;
    frDateInterval: TfrDateIntervalFrame;
    pdsGridDataParams_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParams_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataEMPLOYEE_SETUP_HOURS: TAbmesFloatField;
    cdsGridDataEMPLOYEE_NONWASTE_HOURS: TAbmesFloatField;
    cdsGridDataEMPLOYEE_TEAM_HOURS: TAbmesFloatField;
    cdsGridDataEMP_MAIN_SHIFT_WORKDAY_COUNT: TAbmesFloatField;
    cdsGridDataEMP_MAIN_SHIFT_EFF_WORKHOURS: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsDEPT_CODEChange(Sender: TField);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParamsGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsTEAM_CODEChange(Sender: TField);
    procedure pdsGridDataParams_TEAM_NOChange(Sender: TField);
    procedure pdsGridDataParams_TEAM_NOValidate(Sender: TField);
    procedure cdsNumericFieldGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cdsGridDataEARNING_TYPEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsBEGIN_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure pdsGridDataParamsDEPT_IDENTIFIERGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure HoursFieldsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    procedure SetGridColumnCaptions;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fEmployeeEarningsFilter, uTreeClientUtils, uClientUtils,
  uUtils, rEmployeeEarnings, uEarningTypes, uClientEarningTypes, uClientDateTime;

resourcestring
  SNoSuchTeam = 'Не съществува Екип с такъв код!';
  SEmployeePersonalEarnings = 'Оценка на Труда (%s)|Индив.';
  SEmployeeTeamEarnings = 'Оценка на Труда (%s)|Екип.';
  SEmployeeTotalEarnings = 'Оценка на Труда (%s)|Общо';
  SFututeDatesNotAllowed = 'ВрмИнт не трябва да включва бъдещи дати';

{$R *.dfm}

{ TfmEmployeeEarnings }

procedure TfmEmployeeEarnings.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmEmployeeEarningsFilter;
  ReportClass:= TrptEmployeeEarnings;
  frDateInterval.FieldNames:= '_BEGIN_DATE;_END_DATE';

  RegisterFieldsTextVisibility(
    IsHighLevelInvestedValueVisible,
    [ cdsGridDataEMPLOYEE_PERSONAL_EARNINGS,
      cdsGridData_SUM_EMPLOYEE_PERSONAL_EARNINGS,
      cdsGridDataEMPLOYEE_TEAM_EARNINGS,
      cdsGridData_SUM_EMPLOYEE_TEAM_EARNINGS,
      cdsGridDataEMPLOYEE_TOTAL_EARNINGS,
      cdsGridData_SUM_EMPLOYEE_TOTAL_EARNINGS]);
end;

procedure TfmEmployeeEarnings.pdsGridDataParamsDEPT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(pdsGridDataParamsDEPT_CODE,
    pdsGridDataParamsDEPT_NAME, pdsGridDataParamsDEPT_IDENTIFIER);
end;

procedure TfmEmployeeEarnings.pdsGridDataParamsDEPT_IDENTIFIERGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeeEarnings.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  CheckDatePeriod(pdsGridDataParamsBEGIN_DATE, pdsGridDataParamsEND_DATE);

  if (pdsGridDataParamsEND_DATE.AsDateTime > ContextDate) then
    begin
      pdsGridDataParamsEND_DATE.FocusControl;
      raise Exception.Create(SFututeDatesNotAllowed);
    end;  { if }
end;

procedure TfmEmployeeEarnings.pdsGridDataParamsBEGIN_DATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:=
    dmMain.GetDateIntervalAsString(
      pdsGridDataParamsBEGIN_DATE.AsDateTime, pdsGridDataParamsEND_DATE.AsDateTime)
end;

procedure TfmEmployeeEarnings.pdsGridDataParamsGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeeEarnings.pdsGridDataParamsTEAM_CODEChange(
  Sender: TField);
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

procedure TfmEmployeeEarnings.pdsGridDataParams_TEAM_NOChange(
  Sender: TField);
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

procedure TfmEmployeeEarnings.pdsGridDataParams_TEAM_NOValidate(
  Sender: TField);
begin
  inherited;

  if (not Sender.IsNull) and
     VarIsNullOrEmpty(cdsTeams.Lookup('TEAM_NO', Sender.AsVariant, 'TEAM_CODE')) then
    raise Exception.Create(SNoSuchTeam);
end;

procedure TfmEmployeeEarnings.cdsNumericFieldGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeeEarnings.SetGridColumnCaptions;
begin
  grdData.Columns[13].Title.Caption:= Format(SEmployeePersonalEarnings, [LoginContext.BaseCurrencyAbbrev]);
  grdData.Columns[14].Title.Caption:= Format(SEmployeeTeamEarnings, [LoginContext.BaseCurrencyAbbrev]);
  grdData.Columns[15].Title.Caption:= Format(SEmployeeTotalEarnings, [LoginContext.BaseCurrencyAbbrev]);
end;

procedure TfmEmployeeEarnings.FormShow(Sender: TObject);
begin
  inherited;
  SetGridColumnCaptions;
end;

procedure TfmEmployeeEarnings.HoursFieldsGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  HoursFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeeEarnings.cdsGridDataEARNING_TYPEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= EarningTypes[IntToEarningType(cdsGridDataEARNING_TYPE.AsInteger)];
end;

procedure TfmEmployeeEarnings.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDateInterval) then
    AFrame.ReadOnly:= True
  else
    inherited;
end;

procedure TfmEmployeeEarnings.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  // begin/end_date sa required. ako gi izchistish vyv filterformata i se opita da gi validira pyrvo se opitva
  // da fokusira kontrola v taia forma, koiato gi izobraziava, no formata vse oshte e skrita
  // zatui kontrola na taia forma bachka s kopia na poletata
  pdsGridDataParams_BEGIN_DATE.Assign(pdsGridDataParamsBEGIN_DATE);
  pdsGridDataParams_END_DATE.Assign(pdsGridDataParamsEND_DATE);
end;

end.
