unit fMonthTeam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDualGridForm, Menus, JvButtons, ImgList, ParamDataSet,
  ActnList, DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, ComCtrls, JvDBLookup,
  AbmesFields, Mask, fBaseFrame, fDBFrame, fMonth, DBCtrlsEh, ToolWin,
  fEditForm, fDualGridFrame, JvExControls, JvComponent, JvCaptionButton,
  JvComponentBase;

type
  TfmMonthTeam = class(TEditForm)
    cdsDataTEAM_CODE: TAbmesFloatField;
    cdsDataTHE_MONTH_DATE: TAbmesSQLTimeStampField;
    cdsDataYEAR: TAbmesFloatField;
    cdsDataMONTH: TAbmesFloatField;
    cdsDataqryMonthTeamEmployees: TDataSetField;
    cdsTeamMembers: TAbmesClientDataSet;
    cdsTeamNotMembers: TAbmesClientDataSet;
    cdsTeams: TAbmesClientDataSet;
    cdsTeamsTEAM_CODE: TAbmesFloatField;
    cdsTeamsTEAM_NAME: TAbmesWideStringField;
    dsTeams: TDataSource;
    pnlStuff: TPanel;
    lblYear: TLabel;
    lblBaseTeam: TLabel;
    cbTeam: TJvDBLookupCombo;
    frMonth: TfrMonth;
    edtYear: TDBNumberEditEh;
    frMonthTeamEmployees: TDualGridFrame;
    cdsMonthTeamEmployees: TAbmesClientDataSet;
    cdsMonthTeamNotEmployees: TAbmesClientDataSet;
    cdsMonthTeamEmployeesTEAM_CODE: TAbmesFloatField;
    cdsMonthTeamEmployeesTHE_MONTH_DATE: TAbmesSQLTimeStampField;
    cdsMonthTeamEmployeesEMPLOYEE_CODE: TAbmesFloatField;
    cdsMonthTeamEmployeesEMPLOYEE_NAME: TAbmesWideStringField;
    cdsMonthTeamEmployeesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsMonthTeamEmployeesDOC_CODE: TAbmesFloatField;
    cdsMonthTeamEmployeesHAS_DOCUMENTATION: TAbmesFloatField;
    cdsMonthTeamEmployeesEFFICIENCY_COEF: TAbmesFloatField;
    cdsMonthTeamNotEmployeesTEAM_CODE: TAbmesFloatField;
    cdsMonthTeamNotEmployeesEMPLOYEE_CODE: TAbmesFloatField;
    cdsMonthTeamNotEmployeesEMPLOYEE_NAME: TAbmesWideStringField;
    cdsMonthTeamNotEmployeesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsMonthTeamNotEmployeesDOC_CODE: TAbmesFloatField;
    cdsMonthTeamNotEmployeesHAS_DOCUMENTATION: TAbmesFloatField;
    actEditMonthTeamEmployee: TAction;
    btnEditMonthTeamEmployee: TBitBtn;
    tlbMonthTeamEmployeeDocs: TToolBar;
    btnMonthTeamEmployeeDocs: TSpeedButton;
    tlbMonthTeamNotEmployeeDocs: TToolBar;
    btnMonthTeamNotEmployeeDocs: TSpeedButton;
    cdsMonthTeamEmployees_SUM_EMPLOYEE_PART: TAggregateField;
    cdsMonthTeamEmployees_EMPLOYEE_EARNINGS: TAbmesFloatField;
    cdsDataMONTH_TEAM_EARNINGS: TAbmesFloatField;
    cdsTeamsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsTeamsDOC_CODE: TAbmesFloatField;
    cdsData_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsData_DOC_CODE: TAbmesFloatField;
    tlbTeamDocs: TToolBar;
    btnTeamDocs: TSpeedButton;
    cdsData_MONTH_WORKDAY_COUNT: TAbmesFloatField;
    edtMonthWorkdayCount: TDBEdit;
    lblMonthWorkdayCount: TLabel;
    cdsTeamsTEAM_NO: TAbmesFloatField;
    edtTeamNo: TDBEdit;
    cdsDataTEAM_NO: TAbmesFloatField;
    cdsMonthTeamEmployeesSHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsMonthTeamNotEmployeesSHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsTeamMembersTEAM_CODE: TAbmesFloatField;
    cdsTeamMembersEMPLOYEE_CODE: TAbmesFloatField;
    cdsTeamMembersEMPLOYEE_NAME: TAbmesWideStringField;
    cdsTeamMembersDOC_BRANCH_CODE: TAbmesFloatField;
    cdsTeamMembersDOC_CODE: TAbmesFloatField;
    cdsTeamMembersHAS_DOCUMENTATION: TAbmesFloatField;
    cdsTeamMembersOCCUPATION_NAME: TAbmesWideStringField;
    cdsTeamMembersSHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsTeamNotMembersTEAM_CODE: TAbmesFloatField;
    cdsTeamNotMembersEMPLOYEE_CODE: TAbmesFloatField;
    cdsTeamNotMembersEMPLOYEE_NAME: TAbmesWideStringField;
    cdsTeamNotMembersDOC_BRANCH_CODE: TAbmesFloatField;
    cdsTeamNotMembersDOC_CODE: TAbmesFloatField;
    cdsTeamNotMembersHAS_DOCUMENTATION: TAbmesFloatField;
    cdsTeamNotMembersSHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsTeamNotMembersOCCUPATION_NAME: TAbmesWideStringField;
    cdsTeamMembersDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsMonthTeamNotEmployeesOCCUPATION_NAME: TAbmesWideStringField;
    cdsMonthTeamEmployeesOCCUPATION_NAME: TAbmesWideStringField;
    lblTeamDoc: TLabel;
    sepBeforeTeamDoc: TToolButton;
    lblMonthTeamNotEmployeeDocs: TLabel;
    sepBeforeExcluded: TToolButton;
    cdsMonthTeamEmployeesEMPLOYEE_NO: TAbmesFloatField;
    cdsMonthTeamNotEmployeesEMPLOYEE_NO: TAbmesFloatField;
    cdsTeamMembersEMPLOYEE_NO: TAbmesFloatField;
    cdsTeamNotMembersEMPLOYEE_NO: TAbmesFloatField;
    cdsDataOVERRIDING_TEAM_EARNING: TAbmesFloatField;
    edtMonthTeamEarnings: TDBEdit;
    lblBaseCurrencyAbbrev1: TLabel;
    lblMonthTeamEarnings: TLabel;
    edtOverridingTeamEarning: TDBEdit;
    lblOverridingTeamEarning: TLabel;
    lblBaseCurrencyAbbrev2: TLabel;
    cdsData_EFFECTIVE_TEAM_EARNING: TAbmesFloatField;
    cdsDataDEFINED_EMPLOYEE_COUNT: TAbmesFloatField;
    cdsDataEMP_WORKDAY_DURATION_HOURS: TAbmesFloatField;
    cdsDataEMP_WORKDAY_DENSITY_PERCENT: TAbmesFloatField;
    cdsData_EMP_WORKDAY_EFFECTIVE_HOURS: TAbmesFloatField;
    lblEmpWorkdayDurationHours: TLabel;
    edtEmpWorkdayDurationHours: TDBEdit;
    lblHours: TLabel;
    lblEmpWorkdayDensity: TLabel;
    edtEmpWorkdayDensity: TDBEdit;
    lblPercents: TLabel;
    edtDefinedEmployeeCount: TDBEdit;
    lblDefinedEmployeeCount: TLabel;
    lblEmpWorkdayEffectiveHours: TLabel;
    edtEmpWorkdayEffectiveHours: TDBEdit;
    lblHoursADay: TLabel;
    lblEffectiveEarning: TLabel;
    edtEffectiveTeamEarning: TDBEdit;
    lblBaseCurrencyAbbrev3: TLabel;
    cdsMonthTeamEmployeesWORKDAY_COUNT: TAbmesFloatField;
    procedure DateChange(Sender: TField);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataTEAM_CODEChange(Sender: TField);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure frMonthTeamEmployeesgrdIncludedDblClick(Sender: TObject);
    procedure cdsMonthTeamNotEmployeesBeforeOpen(DataSet: TDataSet);
    procedure actEditMonthTeamEmployeeUpdate(Sender: TObject);
    procedure actEditMonthTeamEmployeeExecute(Sender: TObject);
    procedure cdsMonthTeamEmployeesNewRecord(DataSet: TDataSet);
    procedure btnMonthTeamEmployeeDocsClick(Sender: TObject);
    procedure btnMonthTeamNotEmployeeDocsClick(Sender: TObject);
    procedure cdsMonthTeamEmployeesCalcFields(DataSet: TDataSet);
    procedure btnTeamDocsClick(Sender: TObject);
    procedure cdsDataTHE_MONTH_DATEChange(Sender: TField);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsDataTEAM_NOChange(Sender: TField);
    procedure cdsDataTEAM_NOValidate(Sender: TField);
    procedure cdsDataOVERRIDING_TEAM_EARNINGChange(Sender: TField);
    procedure cdsDataEMP_WORKDAY_DENSITY_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDataEMP_WORKDAY_DENSITY_PERCENTSetText(Sender: TField;
      const Text: string);
    procedure FormCreate(Sender: TObject);
  private
    FDateChanging: Boolean;
    procedure SetMonthTeamEarnings;
    procedure RefreshEmployeeEarnings;
  protected
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure DoApplyUpdates; override;    
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, fMonthTeamEmployee, uUtils, uClientTypes, uClientUtils, uDocUtils,
  uClientDateTime;

{$R *.dfm}

resourcestring
  SNoSuchTeam = 'Не съществува Екип с такъв номер!';

{ TfmMonthTeam }

class function TfmMonthTeam.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmMonthTeam.OpenDataSets;
begin
  cdsTeams.Open;
  inherited;
  cdsMonthTeamNotEmployees.Open;
end;

procedure TfmMonthTeam.CloseDataSets;
begin
  cdsMonthTeamNotEmployees.Close;
  inherited;
  cdsTeams.Close;
end;

procedure TfmMonthTeam.DateChange(Sender: TField);
begin
  inherited;

  if FDateChanging then
    Exit;

  cdsDataTHE_MONTH_DATE.AsDateTime:=
    EncodeDate(cdsDataYEAR.AsInteger, cdsDataMONTH.AsInteger, 1);
end;

procedure TfmMonthTeam.DoApplyUpdates;
begin
  CheckRequiredFields([
    cdsDataDEFINED_EMPLOYEE_COUNT,
    cdsDataEMP_WORKDAY_DURATION_HOURS,
    cdsDataEMP_WORKDAY_DENSITY_PERCENT]);
  inherited;
end;

procedure TfmMonthTeam.FormCreate(Sender: TObject);
begin
  inherited;
  MaximizeStyle:= msVertical;

  RegisterFieldsTextVisibility(
    IsHighLevelInvestedValueVisible,
    [ cdsDataMONTH_TEAM_EARNINGS,
      cdsData_EFFECTIVE_TEAM_EARNING,
      cdsDataOVERRIDING_TEAM_EARNING]);
end;

procedure TfmMonthTeam.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  ro:= (EditMode <> emInsert);
  edtTeamNo.ReadOnly:= ro;
  cbTeam.ReadOnly:= ro;
  edtYear.ReadOnly:= ro;

  edtTeamNo.Color:= ReadOnlyColors[ro];
  cbTeam.Color:= ReadOnlyColors[ro];
  edtYear.Color:= ReadOnlyColors[ro];
  frMonth.cbMonth.Color:= ReadOnlyColors[frMonth.ReadOnly];

  btnMonthTeamEmployeeDocs.Enabled:=
    cdsMonthTeamEmployees.Active and
    cdsMonthTeamEmployeesHAS_DOCUMENTATION.AsBoolean;

  btnMonthTeamNotEmployeeDocs.Enabled:=
    cdsMonthTeamNotEmployees.Active and
    cdsMonthTeamNotEmployeesHAS_DOCUMENTATION.AsBoolean;
end;

procedure TfmMonthTeam.cdsDataTEAM_CODEChange(Sender: TField);
var
  SaveCursor: TCursor;
  v: Variant;
begin
  inherited;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    v:= cdsTeams.Lookup('TEAM_CODE', cdsDataTEAM_CODE.AsVariant, 'TEAM_NO');

    if (VarIsNullOrEmpty(v) and not cdsDataTEAM_NO.IsNull) or
       (not VarIsNullOrEmpty(v) and cdsDataTEAM_NO.IsNull) or
       (cdsDataTEAM_NO.AsVariant <> v) then
      cdsDataTEAM_NO.AsVariant:= v;

    SetMonthTeamEarnings;

    cdsMonthTeamEmployees.DisableControls;
    cdsMonthTeamNotEmployees.DisableControls;
    try
      SetParams(cdsTeamMembers.Params, cdsData);
      cdsTeamMembers.Open;
      try
        //cdsGridData.EmptyDataSet; ne raboti v master/detail, stranno
        cdsMonthTeamEmployees.First;
        while not cdsMonthTeamEmployees.Eof do
          cdsMonthTeamEmployees.Delete;

        while not cdsTeamMembers.Eof do
          begin
            cdsMonthTeamEmployees.Append;
            try
              AssignFields(cdsTeamMembers, cdsMonthTeamEmployees, '', True);
              cdsMonthTeamEmployees.Post;
            except
              cdsMonthTeamEmployees.Cancel;
              raise;
            end;  { try }

            cdsTeamMembers.Next;
          end;
      finally
        cdsTeamMembers.Close;
      end;   { try }

      SetParams(cdsTeamNotMembers.Params, cdsData);
      cdsTeamNotMembers.Open;
      try
        cdsMonthTeamNotEmployees.EmptyDataSet;
        while not cdsTeamNotMembers.Eof do
          begin
            cdsMonthTeamNotEmployees.Append;
            try
              AssignFields(cdsTeamNotMembers, cdsMonthTeamNotEmployees);
              cdsMonthTeamNotEmployees.Post;
            except
              cdsMonthTeamNotEmployees.Cancel;
              raise;
            end;  { try }

            cdsTeamNotMembers.Next;
          end;
      finally
        cdsTeamNotMembers.Close;
      end;   { try }

      cdsMonthTeamEmployees.First;
      cdsMonthTeamNotEmployees.First;
    finally
      cdsMonthTeamEmployees.EnableControls;
      cdsMonthTeamNotEmployees.EnableControls;
    end;   { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try }
end;

procedure TfmMonthTeam.cdsDataNewRecord(DataSet: TDataSet);
var
  y, m, d: Word;
begin
  inherited;
  DecodeDate(ContextDate, y, m, d);
  edtYear.MinValue:= y - 20;
  edtYear.MaxValue:= y + 20;
  FDateChanging:= True;
  try
    cdsDataYEAR.AsInteger:= y;
  finally
    FDateChanging:= False;
  end;   { try }

  cdsDataMONTH.AsInteger:= m;
end;

procedure TfmMonthTeam.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frMonth) then
    AFrame.ReadOnly:= (EditMode <> emInsert)
  else
    inherited;
end;

procedure TfmMonthTeam.frMonthTeamEmployeesgrdIncludedDblClick(
  Sender: TObject);
begin
  actEditMonthTeamEmployee.Execute;
end;

procedure TfmMonthTeam.cdsMonthTeamNotEmployeesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsMonthTeamNotEmployees.Params.ParamByName('TEAM_CODE').Value:=
    cdsDataTEAM_CODE.AsVariant;
  cdsMonthTeamNotEmployees.Params.ParamByName('THE_MONTH_DATE').Value:=
    cdsDataTHE_MONTH_DATE.AsVariant;
end;

procedure TfmMonthTeam.actEditMonthTeamEmployeeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsMonthTeamEmployees.Active and
    (cdsMonthTeamEmployees.RecordCount > 0);
end;

procedure TfmMonthTeam.actEditMonthTeamEmployeeExecute(Sender: TObject);
var
  AEditMode: TEditMode;
begin
  inherited;

  if (EditMode = emReadOnly) then
    AEditMode:= emReadOnly
  else
    AEditMode:= emEdit;

  TfmMonthTeamEmployee.ShowForm(dmDocClient, cdsMonthTeamEmployees, AEditMode);
end;

procedure TfmMonthTeam.cdsMonthTeamEmployeesNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsMonthTeamEmployeesEFFICIENCY_COEF.AsFloat:= 1;
end;

procedure TfmMonthTeam.btnMonthTeamEmployeeDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnMonthTeamEmployeeDocs, dotEmployee, cdsMonthTeamEmployees);
end;

procedure TfmMonthTeam.btnMonthTeamNotEmployeeDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnMonthTeamNotEmployeeDocs, dotEmployee, cdsMonthTeamNotEmployees);
end;

class function TfmMonthTeam.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmMonthTeam.cdsMonthTeamEmployeesCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsMonthTeamEmployeesEFFICIENCY_COEF.IsNull or
     cdsMonthTeamEmployeesWORKDAY_COUNT.IsNull or
     (VarToFloat(cdsMonthTeamEmployees_SUM_EMPLOYEE_PART.Value) = 0) then
    cdsMonthTeamEmployees_EMPLOYEE_EARNINGS.Clear
  else
    cdsMonthTeamEmployees_EMPLOYEE_EARNINGS.AsFloat:=
      cdsData_EFFECTIVE_TEAM_EARNING.AsFloat *
      ((cdsMonthTeamEmployeesEFFICIENCY_COEF.AsFloat *
        cdsMonthTeamEmployeesWORKDAY_COUNT.AsFloat) /
       VarToFloat(cdsMonthTeamEmployees_SUM_EMPLOYEE_PART.Value))
end;

procedure TfmMonthTeam.Initialize;
begin
  inherited;

  frMonth.cbMonth.KeyValue:= cdsDataMONTH.AsInteger;

  lblBaseCurrencyAbbrev1.Caption:= LoginContext.BaseCurrencyAbbrev;
  lblBaseCurrencyAbbrev2.Caption:= LoginContext.BaseCurrencyAbbrev;
  lblBaseCurrencyAbbrev3.Caption:= LoginContext.BaseCurrencyAbbrev;

  RefreshEmployeeEarnings;
end;

procedure TfmMonthTeam.btnTeamDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnTeamDocs, dotTeam,
    cdsData_DOC_BRANCH_CODE, cdsData_DOC_CODE);
end;

procedure TfmMonthTeam.SetMonthTeamEarnings;
begin
  cdsDataMONTH_TEAM_EARNINGS.AsFloat:=
    dmMain.SvrHumanResource.TeamEarnings(
      cdsDataTEAM_CODE.AsInteger,
      cdsDataTHE_MONTH_DATE.AsDateTime,
      IncMonth(cdsDataTHE_MONTH_DATE.AsDateTime) - 1
    );

  RefreshEmployeeEarnings;
end;

procedure TfmMonthTeam.cdsDataTHE_MONTH_DATEChange(Sender: TField);
begin
  inherited;
  SetMonthTeamEarnings;
end;

procedure TfmMonthTeam.cdsDataOVERRIDING_TEAM_EARNINGChange(Sender: TField);
begin
  inherited;
  SetMonthTeamEarnings;
end;

procedure TfmMonthTeam.RefreshEmployeeEarnings;
var
  b: TBookmark;
begin
  with cdsMonthTeamEmployees do
    if (RecordCount > 0) then
      begin
        DisableControls;
        try
          b:= Bookmark;
          try
            First;
          finally
            Bookmark:= b;
          end;  { try }
        finally
          EnableControls;
        end;  { try }
      end;  { if }
end;

procedure TfmMonthTeam.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsDataTHE_MONTH_DATE.IsNull then
    cdsData_MONTH_WORKDAY_COUNT.Clear
  else
    cdsData_MONTH_WORKDAY_COUNT.AsInteger:=
      dmMain.CountWorkdays(
        cdsDataTHE_MONTH_DATE.AsDateTime,
        IncMonth(cdsDataTHE_MONTH_DATE.AsDateTime) - 1
      );

  if cdsDataOVERRIDING_TEAM_EARNING.IsNull then
    cdsData_EFFECTIVE_TEAM_EARNING.AsVariant:= cdsDataMONTH_TEAM_EARNINGS.AsVariant
  else
    cdsData_EFFECTIVE_TEAM_EARNING.AsVariant:= cdsDataOVERRIDING_TEAM_EARNING.AsVariant;

  cdsData_EMP_WORKDAY_EFFECTIVE_HOURS.AsVariant:=
    cdsDataEMP_WORKDAY_DURATION_HOURS.AsVariant *
    cdsDataEMP_WORKDAY_DENSITY_PERCENT.AsVariant;
end;

procedure TfmMonthTeam.cdsDataEMP_WORKDAY_DENSITY_PERCENTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmMonthTeam.cdsDataEMP_WORKDAY_DENSITY_PERCENTSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  PercentFieldSetText(Sender, Text);
end;

procedure TfmMonthTeam.cdsDataTEAM_NOChange(Sender: TField);
var
  v: Variant;
begin
  inherited;
  v:= cdsTeams.Lookup('TEAM_NO', cdsDataTEAM_NO.AsVariant, 'TEAM_CODE');

  if (VarIsNullOrEmpty(v) and not cdsDataTEAM_CODE.IsNull) or
     (not VarIsNullOrEmpty(v) and cdsDataTEAM_CODE.IsNull) or
     (cdsDataTEAM_CODE.AsVariant <> v) then
    cdsDataTEAM_CODE.AsVariant:= v;
end;

procedure TfmMonthTeam.cdsDataTEAM_NOValidate(Sender: TField);
begin
  inherited;
  if (not Sender.IsNull) and
     VarIsNullOrEmpty(cdsTeams.Lookup('TEAM_NO', Sender.AsVariant, 'TEAM_CODE')) then
    raise Exception.Create(SNoSuchTeam);
end;

end.

