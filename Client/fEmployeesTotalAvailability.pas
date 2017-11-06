unit fEmployeesTotalAvailability;
 
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponent, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, Mask, fDateIntervalFrame, fBaseFrame,
  fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  JvComponentBase, PrnDbgeh, dDocClient, uClientTypes, Menus, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL,
  DBAxisGridsEh;

type
  TfmEmployeesTotalAvailability = class(TGridForm)
    cdsGridDataEMPLOYEE_COUNT_AT_BEGIN_DATE: TAbmesFloatField;
    cdsGridDataEMPLOYEE_COUNT_AT_END_DATE: TAbmesFloatField;
    cdsGridDataOFFICIAL_PRESENCE_DAYS: TAbmesFloatField;
    cdsGridDataOFFICIAL_ABSENCE_DAYS_1: TAbmesFloatField;
    cdsGridDataOFFICIAL_ABSENCE_DAYS_2: TAbmesFloatField;
    cdsGridDataOFFICIAL_ABSENCE_DAYS_3: TAbmesFloatField;
    cdsGridDataOFFICIAL_ABSENCE_DAYS_4: TAbmesFloatField;
    cdsGridDataOFFICIAL_ABSENCE_DAYS_5: TAbmesFloatField;
    cdsGridDataOFFICIAL_ABSENCE_DAYS_6: TAbmesFloatField;
    cdsGridDataOFFICIAL_DAYS_OFF: TAbmesFloatField;
    cdsGridDataOFFICIAL_TOTAL_DAYS: TAbmesFloatField;
    cdsGridDataOFFICIAL_PRESENCE_HOURS: TAbmesFloatField;
    cdsGridDataOFFICIAL_APP_OVERTIME_HOURS: TAbmesFloatField;
    cdsGridDataREAL_T_PRESENCE_DAYS: TAbmesFloatField;
    cdsGridDataREAL_T_ABSENCE_DAYS_1: TAbmesFloatField;
    cdsGridDataREAL_T_ABSENCE_DAYS_2: TAbmesFloatField;
    cdsGridDataREAL_T_ABSENCE_DAYS_3: TAbmesFloatField;
    cdsGridDataREAL_T_ABSENCE_DAYS_4: TAbmesFloatField;
    cdsGridDataREAL_T_ABSENCE_DAYS_5: TAbmesFloatField;
    cdsGridDataREAL_T_ABSENCE_DAYS_6: TAbmesFloatField;
    cdsGridDataREAL_T_DAYS_OFF: TAbmesFloatField;
    cdsGridDataREAL_T_TOTAL_DAYS: TAbmesFloatField;
    cdsGridDataREAL_T_PRESENCE_HOURS: TAbmesFloatField;
    cdsGridDataREAL_T_APP_OVERTIME_HOURS: TAbmesFloatField;
    cdsGridDataREAL_W_PRESENCE_DAYS: TAbmesFloatField;
    cdsGridDataREAL_W_ABSENCE_DAYS_1: TAbmesFloatField;
    cdsGridDataREAL_W_ABSENCE_DAYS_2: TAbmesFloatField;
    cdsGridDataREAL_W_ABSENCE_DAYS_3: TAbmesFloatField;
    cdsGridDataREAL_W_ABSENCE_DAYS_4: TAbmesFloatField;
    cdsGridDataREAL_W_ABSENCE_DAYS_5: TAbmesFloatField;
    cdsGridDataREAL_W_ABSENCE_DAYS_6: TAbmesFloatField;
    cdsGridDataREAL_W_DAYS_OFF: TAbmesFloatField;
    cdsGridDataREAL_W_TOTAL_DAYS: TAbmesFloatField;
    cdsGridDataREAL_W_PRESENCE_HOURS: TAbmesFloatField;
    cdsGridDataREAL_W_APP_OVERTIME_HOURS: TAbmesFloatField;
    cdsGridDataREAL_O_PRESENCE_DAYS: TAbmesFloatField;
    cdsGridDataREAL_O_ABSENCE_DAYS_1: TAbmesFloatField;
    cdsGridDataREAL_O_ABSENCE_DAYS_2: TAbmesFloatField;
    cdsGridDataREAL_O_ABSENCE_DAYS_3: TAbmesFloatField;
    cdsGridDataREAL_O_ABSENCE_DAYS_4: TAbmesFloatField;
    cdsGridDataREAL_O_ABSENCE_DAYS_5: TAbmesFloatField;
    cdsGridDataREAL_O_ABSENCE_DAYS_6: TAbmesFloatField;
    cdsGridDataREAL_O_DAYS_OFF: TAbmesFloatField;
    cdsGridDataREAL_O_TOTAL_DAYS: TAbmesFloatField;
    cdsGridDataREAL_O_PRESENCE_HOURS: TAbmesFloatField;
    cdsGridDataREAL_O_APP_OVERTIME_HOURS: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsOCCUPATION_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsINCLUDE_DEPT_DESCENDANTS: TAbmesFloatField;
    pdsGridDataParamsSHIFT_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_EXTERNAL: TAbmesFloatField;
    pdsGridDataParamsGROUPING_TYPE: TAbmesFloatField;
    cdsGridDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataEMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataCRAFT_TYPE_NAME: TAbmesWideStringField;
    cdsShifts: TAbmesClientDataSet;
    cdsShiftsSHIFT_CODE: TAbmesFloatField;
    cdsShiftsSHIFT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_SHIFT_IDENTIFIER: TAbmesWideStringField;
    pnlTop: TPanel;
    frOccupationDept: TfrDeptFieldEditFrame;
    gbDatePeriod: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    gbIncludeDeptDescendants: TGroupBox;
    edtIncludeDeptDescendants: TDBEdit;
    pdsGridDataParams_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParams_END_DATE: TAbmesSQLTimeStampField;
    actShowOfficialTotals: TAction;
    actShowRealTotals: TAction;
    actShowRealTotalsByDayKind: TAction;
    sepBeforeShowOfficialTotals: TToolButton;
    btnShowOfficialTotals: TToolButton;
    btnShowRealTotals: TToolButton;
    btnShowRealTotalsByDayKind: TToolButton;
    gbShift: TGroupBox;
    edtShift: TDBEdit;
    btnEmployeesAvailability: TBitBtn;
    actEmployeesAvailability: TAction;
    cdsGridDataOCCUPATION_DEPT_CODE: TAbmesFloatField;
    cdsGridDataCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsEmployeesAvailabilityParams: TAbmesClientDataSet;
    cdsEmployeesAvailabilityParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsEmployeesAvailabilityParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsEmployeesAvailabilityParamsOCCUPATION_DEPT_CODE: TAbmesFloatField;
    cdsEmployeesAvailabilityParamsINCLUDE_DEPT_DESCENDANTS: TAbmesFloatField;
    cdsEmployeesAvailabilityParamsSHIFT_CODE: TAbmesFloatField;
    cdsEmployeesAvailabilityParamsEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeesAvailabilityParamsCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsEmployeesAvailabilityParamsCRAFT_CODE: TAbmesFloatField;
    cdsEmployeesAvailabilityParamsIS_EXTERNAL: TAbmesFloatField;
    cdsGridDataOCCUPATION_DEPT_NAME: TAbmesWideStringField;
    pdsGridDataParams_INCLUDE_DEPT_DESCENDANTS: TAbmesWideStringField;
    cdsGridDataOFFICIAL_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    cdsGridDataOFFICIAL_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    cdsGridDataREAL_T_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    cdsGridDataREAL_T_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    cdsGridDataREAL_W_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    cdsGridDataREAL_W_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    cdsGridDataREAL_O_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    cdsGridDataREAL_O_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    cdsGridDataEMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataOFFICIAL_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    cdsGridDataREAL_T_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    cdsGridDataREAL_W_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    cdsGridDataREAL_O_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    actToggleUnapprovedAbsenceHours: TAction;
    pgdTotals: TPrintDBGridEh;
    actToggleUnapprovedOvertimeHours: TAction;
    actToggleOfftimePresenceHours: TAction;
    sepToggleUnapprovedOvertimeHours: TToolButton;
    btnToggleUnapprovedOvertimeHours: TToolButton;
    btnToggleOfftimePresenceHours: TToolButton;
    btnToggleUnapprovedAbsenceHours: TToolButton;
    procedure actPrintExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure actShowTotalsExecute(Sender: TObject);
    procedure actEmployeesAvailabilityExecute(Sender: TObject);
    procedure HoursFieldGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actEmployeesAvailabilityUpdate(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure actToggleHoursExecute(Sender: TObject);
    procedure actToggleHoursUpdate(Sender: TObject);
  private
    procedure SetVisibleColumns;
    procedure CalcAggregates;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True): Boolean;
  end;

implementation

uses
  dMain, fEmployeesTotalAvailabilityFilter, uClientUtils, StrUtils,
  fEmployeesAvailability, uEmployeeAvailability, uUtils,
  rBaseReport, Printers, PrViewEh, PrvFrmEh;

resourcestring
  SMax31DaysAllowed = 'Максималният допустим Времеви Интервал е 31 календарни дни!';
  SOccupationDeptRequired = 'Трябва да зададете ''%s''';
  SAssignedEmployeesInDept = 'Служители на Длъжности от избрани ОрЧ БЕЗ структурни части';
  SAssignedEmployeesInDeptAndDescendants = 'Служители на Длъжности от избрани ОрЧ СЪС структурни части';
  SNotAssignedEmployees = 'Служители НЕназначени на Длъжност';

  plblTitle = 'Обобщение на Присъствия и Отсъствия на Служители';
  plblDept = 'ОрЧ на Длъжностно Назначение - Основно';
  plblShiftAbbrev = 'Организационна Смяна';
  plblDateInterval = 'Времеви Интервал';

{$R *.dfm}

type
  TGroupingType = (gtNone, gtEmployee, gtOccupationDept, gtCraftType);

function GroupingTypeToInt(Value: TGroupingType): Integer;
begin
  Result:= Ord(Value);
end;

function IntToGroupingType(Value: Integer): TGroupingType;
begin
  Result:= TGroupingType(Value);
end;

procedure TfmEmployeesTotalAvailability.FormCreate(Sender: TObject);

begin
  inherited;

  FilterFormClass:= TfmEmployeesTotalAvailabilityFilter;
  ReportClass:= TBaseReport;

  frOccupationDept.FieldNames:= 'OCCUPATION_DEPT_CODE';
  frOccupationDept.ShowAllWhenEmpty:= True;
  frDateInterval.FieldNames:= '_BEGIN_DATE; _END_DATE';
end;

procedure TfmEmployeesTotalAvailability.OpenDataSets;
begin
  cdsShifts.Open;
  inherited;
end;

procedure TfmEmployeesTotalAvailability.CloseDataSets;
begin
  cdsShifts.Close;
  inherited;
end;

procedure TfmEmployeesTotalAvailability.pdsGridDataParamsGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesTotalAvailability.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
const
  IncludeDeptDescendants: array[0..2] of string = (
    SAssignedEmployeesInDept, SAssignedEmployeesInDeptAndDescendants, SNotAssignedEmployees);
begin
  inherited;
  pdsGridDataParams_BEGIN_DATE.Assign(pdsGridDataParamsBEGIN_DATE);
  pdsGridDataParams_END_DATE.Assign(pdsGridDataParamsEND_DATE);

  pdsGridDataParams_INCLUDE_DEPT_DESCENDANTS.AsString:=
    IncludeDeptDescendants[pdsGridDataParamsINCLUDE_DEPT_DESCENDANTS.AsInteger];
end;

procedure TfmEmployeesTotalAvailability.SetDBFrameReadOnly(
  AFrame: TDBFrame);
begin
  if (AFrame = frOccupationDept) or
     (AFrame = frDateInterval) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmEmployeesTotalAvailability.SetVisibleColumns;

  function FindMatchingVisibleColumn(ACol: Integer): TColumnEh;
  var
    TotalKind, tk: TTotalKind;
    fn: string;
    i: Integer;
  begin
    Result:= nil;

    TotalKind:= tkNone;
    for tk:= Succ(Low(TotalFieldNamePreffixes)) to High(TotalFieldNamePreffixes) do
      if AnsiStartsStr(TotalFieldNamePreffixes[tk], grdData.Columns[ACol-1].FieldName) then
        TotalKind:= tk;

    if (TotalKind <> tkNone) then
      begin
        for tk:= Succ(Low(TotalFieldNamePreffixes)) to High(TotalFieldNamePreffixes) do
          begin
            fn:= StringReplace(grdData.Columns[ACol-1].FieldName, TotalFieldNamePreffixes[TotalKind], TotalFieldNamePreffixes[tk], []);

            for i:= 0 to grdData.Columns.Count - 1 do
              if (grdData.Columns[i].FieldName = fn) and grdData.Columns[i].Visible then
                begin
                  Result:= grdData.Columns[i];
                  Exit;
                end;
          end;

        if AnsiEndsStr('_HOURS', grdData.Columns[ACol-1].FieldName) or
           AnsiEndsStr('_HRS', grdData.Columns[ACol-1].FieldName) then
          for i:= grdData.Columns.Count - 1 downto 0 do
            if (AnsiEndsStr('_HOURS', grdData.Columns[i].FieldName) or
                AnsiEndsStr('_HRS', grdData.Columns[i].FieldName)) and
               grdData.Columns[i].Visible then
              begin
                if (i > 0) and
                   grdData.Columns[i-1].Visible and
                   (Pos('_O_', grdData.Columns[ACol-1].FieldName) = 0) and
                   (Pos('_O_', grdData.Columns[i].FieldName) > 0) and
                   (grdData.Columns[i-1].FieldName = StringReplace(grdData.Columns[i].FieldName, '_O_', '_W_', [])) then
                  Result:= grdData.Columns[i-1]
                else
                  Result:= grdData.Columns[i];

                Exit;
              end;
      end;
  end;

var
  GroupingType: TGroupingType;
  i: Integer;
  v: Boolean;
  TotalFieldNamePreffix: string;
  Col: Integer;
  MatchingVisibleColumn: TColumnEh;
begin
  cdsGridData.DisableControls;
  try
    Col:= grdData.Col;

    grdData.DataSource:= nil;
    try
      grdData.Columns.BeginUpdate;
      try
        GroupingType:= IntToGroupingType(pdsGridDataParamsGROUPING_TYPE.AsInteger);

        grdData.Columns[0].Visible:= (GroupingType = gtEmployee);
        grdData.Columns[1].Visible:= (GroupingType = gtEmployee);
        grdData.Columns[2].Visible:= (GroupingType = gtOccupationDept);
        grdData.Columns[3].Visible:= (GroupingType = gtOccupationDept);
        grdData.Columns[4].Visible:= (GroupingType = gtCraftType);

        for i:= 0 to grdData.Columns.Count - 1 do
          begin
            v:= grdData.Columns[i].Visible;

            if AnsiStartsStr(OfficialTotalFieldNamePrefix, grdData.Columns[i].FieldName) then
              v:= actShowOfficialTotals.Checked;

            if AnsiStartsStr(RealTTotalFieldNamePrefix, grdData.Columns[i].FieldName) then
              v:= actShowRealTotals.Checked;

            if AnsiStartsStr(RealWTotalFieldNamePrefix, grdData.Columns[i].FieldName) then
              v:= actShowRealTotalsByDayKind.Checked;

            if AnsiStartsStr(RealOTotalFieldNamePrefix, grdData.Columns[i].FieldName) then
              v:= actShowRealTotalsByDayKind.Checked;

            for TotalFieldNamePreffix in TotalFieldNamePreffixes do
              begin
                if (grdData.Columns[i].FieldName = TotalFieldNamePreffix + ApprovedOvertimeHoursAfterSuffix) then
                  v:= v and actShowOfficialTotals.Checked;

                if (grdData.Columns[i].FieldName = TotalFieldNamePreffix + UnapprovedOvertimeHoursAfterSuffix) then
                  v:= v and (not actShowOfficialTotals.Checked) and actToggleUnapprovedOvertimeHours.Checked;

                if (grdData.Columns[i].FieldName = TotalFieldNamePreffix + OfftimePresenceHoursAfterSuffix) then
                  v:= v and (not actShowOfficialTotals.Checked) and actToggleOfftimePresenceHours.Checked;

                if (grdData.Columns[i].FieldName = TotalFieldNamePreffix + UnapprovedAbsenceHoursAfterSuffix) then
                  v:= v and (not actShowOfficialTotals.Checked) and actToggleUnapprovedAbsenceHours.Checked;
              end;

            grdData.Columns[i].Visible:= v;
          end;

        grdData.VTitleMargin:= 14 - 9 * Ord(actShowRealTotalsByDayKind.Checked)
      finally
        grdData.Columns.EndUpdate;
      end;  { try }
    finally
      grdData.DataSource:= dsGridData;
    end;  { try }

    if not grdData.Columns[Col-1].Visible then
      begin
        MatchingVisibleColumn:= FindMatchingVisibleColumn(Col);
        if Assigned(MatchingVisibleColumn) and MatchingVisibleColumn.Visible then
          grdData.Col:= MatchingVisibleColumn.Index + 1;
      end;
  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

class function TfmEmployeesTotalAvailability.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean): Boolean;
var
  f: TfmEmployeesTotalAvailability;
  SavePage: TPrinterPage;
begin
  SavePage:= SetUpPrinter(DMPAPER_A4, poLandscape);
  try
    f:= CreateEx;
    try
      f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
      f.InternalShowForm;
      Result:= f.IsDataModified;
    finally
      f.ReleaseForm;
    end;
  finally
    SetUpPrinter(SavePage.PaperSize, SavePage.Orientation);
  end;   { try }
end;

procedure TfmEmployeesTotalAvailability.cdsGridDataAfterOpen(
  DataSet: TDataSet);
const
  GroupingIndexFieldNames: array[TGroupingType] of string =
    ('',                            // gtNone
     'EMPLOYEE_CODE',               // gtEmployee
     'OCCUPATION_DEPT_IDENTIFIER',  // gtOccupationDept
     'CRAFT_TYPE_NAME'              // gtCraftType
    );
begin
  inherited;

  cdsGridData.IndexFieldNames:=
    GroupingIndexFieldNames[IntToGroupingType(pdsGridDataParamsGROUPING_TYPE.AsInteger)];

  CalcAggregates;
  SetVisibleColumns;
end;

procedure TfmEmployeesTotalAvailability.actShowTotalsExecute(
  Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmEmployeesTotalAvailability.actToggleHoursExecute(
  Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmEmployeesTotalAvailability.actToggleHoursUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
     not actShowOfficialTotals.Checked;
end;

procedure TfmEmployeesTotalAvailability.actEmployeesAvailabilityExecute(
  Sender: TObject);               
begin
  inherited;

  cdsEmployeesAvailabilityParams.CreateDataSet;
  try
    cdsEmployeesAvailabilityParams.Append;
    try
      AssignFields(pdsGridDataParams, cdsEmployeesAvailabilityParams);

      case IntToGroupingType(pdsGridDataParamsGROUPING_TYPE.AsInteger) of
        gtEmployee:
          cdsEmployeesAvailabilityParamsEMPLOYEE_CODE.Assign(cdsGridDataEMPLOYEE_CODE);
        gtOccupationDept:
          begin
            cdsEmployeesAvailabilityParamsOCCUPATION_DEPT_CODE.Assign(cdsGridDataOCCUPATION_DEPT_CODE);

            if cdsGridDataOCCUPATION_DEPT_CODE.IsNull then
              cdsEmployeesAvailabilityParamsINCLUDE_DEPT_DESCENDANTS.AsInteger:= 2
            else
              cdsEmployeesAvailabilityParamsINCLUDE_DEPT_DESCENDANTS.AsInteger:= 0;
          end;
        gtCraftType:
          cdsEmployeesAvailabilityParamsCRAFT_TYPE_CODE.Assign(cdsGridDataCRAFT_TYPE_CODE);
      end;

      cdsEmployeesAvailabilityParams.Post;
    except
      cdsEmployeesAvailabilityParams.Cancel;
      raise;
    end;  { try }

    TfmEmployeesAvailability.ShowForm(dmDocClient, cdsEmployeesAvailabilityParams, emReadOnly, doNone, False);
  finally
    cdsEmployeesAvailabilityParams.Close;
  end;  { try }
end;

procedure TfmEmployeesTotalAvailability.CalcAggregates;
var
  i: Integer;
  aggr: TAggregate;
begin
  cdsGridData.DisableControls;
  try
    grdData.DataSource:= nil;
    try
      grdData.Columns.BeginUpdate;
      try
        for i:= 0 to grdData.Columns.Count - 1 do
          if (grdData.Columns[i].Tag = 1) then
            begin
              if cdsGridData.IsEmpty then
                grdData.Columns[i].Footer.Value:= ''
              else
                begin
                  aggr:= cdsGridData.Aggregates.Add;
                  try
                    aggr.Expression:= Format('Sum(%s)', [grdData.Columns[i].FieldName]);
                    aggr.Active:= True;

                    if VarIsNull(aggr.Value) then
                      grdData.Columns[i].Footer.Value:= ''
                    else
                      grdData.Columns[i].Footer.Value:= FormatFloat(',0', aggr.Value);
                  finally
                    FreeAndNil(aggr);
                  end;  { try }
                end;
            end;
      finally
        grdData.Columns.EndUpdate;
      end;  { try }
    finally
      grdData.DataSource:= dsGridData;
    end;  { try }
  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

procedure TfmEmployeesTotalAvailability.HoursFieldGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (Sender.AsFloat = 0) then
    Text:= ''
  else
    Text:= HoursToStr(Sender.AsFloat);
end;

procedure TfmEmployeesTotalAvailability.actEmployeesAvailabilityUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmEmployeesTotalAvailability.actPrintExecute(Sender: TObject);
var
  SavePage: TPrinterPage;
begin
//  inherited;
  SavePage:= SetUpPrinter(DMPAPER_A4, poLandscape, PrinterPreview.Printer);
  try
    pgdTotals.SetSubstitutes([
      'INCLUDE_DEPT_DESCENDANTS', pdsGridDataParams_INCLUDE_DEPT_DESCENDANTS.DisplayText,
      'DEPT_NAME', frOccupationDept.edtTreeNodeName.Text,
      'DEPT_IDENTIFIER', frOccupationDept.edtTreeNodeNo.Text,
      'SHIFT_ABBREV', pdsGridDataParams_SHIFT_IDENTIFIER.DisplayText,
      'DATE_INTERVAL', dmMain.GetDateIntervalAsString(pdsGridDataParamsBEGIN_DATE.AsDateTime, pdsGridDataParamsEND_DATE.AsDateTime),
      'plblTitle', plblTitle,
      'plblDept', plblDept,
      'plblShiftAbbrev', plblShiftAbbrev,
      'plblDateInterval', plblDateInterval
    ]);

    pgdTotals.PreviewModal;
  finally
    SetUpPrinter(SavePage.PaperSize, SavePage.Orientation, PrinterPreview.Printer);
  end;   { try }
end;

procedure TfmEmployeesTotalAvailability.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if (pdsGridDataParamsEND_DATE.AsDateTime - pdsGridDataParamsBEGIN_DATE.AsDateTime + 1 > 31) then
    raise Exception.Create(SMax31DaysAllowed);

  if (pdsGridDataParamsINCLUDE_DEPT_DESCENDANTS.AsInteger <> 2) and
     pdsGridDataParamsOCCUPATION_DEPT_CODE.IsNull then
    raise Exception.CreateFmt(SOccupationDeptRequired,
            [pdsGridDataParamsOCCUPATION_DEPT_CODE.DisplayLabel]);

  if (pdsGridDataParamsINCLUDE_DEPT_DESCENDANTS.AsInteger = 2) then
    begin
      pdsGridDataParamsOCCUPATION_DEPT_CODE.Clear;
      pdsGridDataParamsSHIFT_CODE.Clear;
    end;  { if }

end;

end.


