unit fFinancialRelationsTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame, fDateIntervalFrame, PrnDbgeh,
  Menus, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmFinancialRelationsTable = class(TGridForm)
    pnlHeader: TPanel;
    lblPartner: TLabel;
    lblDateUnit: TLabel;
    lblDateUnitCount: TLabel;
    lblDatePeriod: TLabel;
    pnlDateUnit: TPanel;
    pnlDateUnitCount: TPanel;
    frDateInterval: TfrDateIntervalFrame;
    pnlHeaderSeparator: TPanel;
    pnlPartnerOuter: TPanel;
    pnlPartnerName: TPanel;
    pnlPartnerNo: TPanel;
    pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDATE_UNIT_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsFIN_PROCESS_CODE: TAbmesFloatField;
    pdsGridDataParamsHAS_DOCUMENT_IDENTIFIER: TAbmesFloatField;
    cdsTimeUnits: TAbmesClientDataSet;
    cdsTimeUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsTimeUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsTimeUnitsTABLE_NAME: TAbmesWideStringField;
    cdsTimeUnitsKEY_FIELD_NAME: TAbmesWideStringField;
    cdsTimeUnitsYEAR_UNIT_NO_NAME: TAbmesWideStringField;
    cdsTimeUnitsDEFAULT_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsMIN_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsMAX_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsTHE_DATE_UNIT_NAME_PLURAL: TAbmesWideStringField;
    cdsFinProcesses: TAbmesClientDataSet;
    cdsFinProcessesPROCESS_CODE: TAbmesFloatField;
    cdsFinProcessesPROCESS_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParams_COMPANY_SHORT_NAME: TAbmesWideStringField;
    pdsGridDataParams_COMPANY_NO: TAbmesFloatField;
    pdsGridDataParams_FIN_PROCESS_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsDATE_UNIT_COUNT: TAbmesFloatField;
    tlbToggles: TToolBar;
    actRealAndPotential: TAction;
    btnRealAndPotential: TToolButton;
    pgdData: TPrintDBGridEh;
    cdsFinProcessesPROCESS_NAME: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsCHOSEN_COMPANIESChange(Sender: TField);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure actRealAndPotentialExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    procedure UpdateHeader;
    procedure ChosenCompaniesChange;
    procedure InitializeFields;
    procedure InitializeColumns;
    function DateUnitAsString(ADateUnitNo: Integer): string;
    procedure SetVisibleColumns;
    function GetRepeatableColumnNo(FieldName: string): Integer;
    procedure CalcAggregates;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses
  fFinancialRelationsTableFilter, dMain, uCompanyClientUtils, uClientUtils,
  uPeriods, uClientPeriods, StrUtils, JclStrings, PrViewEh, Printers,
  rBaseReport, uClientDateTime, fEditForm, PrvFrmEh, fDBDataForm, uClientApp;

{$R *.dfm}

resourcestring
  SPartnerNameCaption = 'Партньор|Име';
  SPartnerNoCaption = 'Партньор|Номер';
  SPartnerOtchTensionCaption = '%s|Отчет|Кредит';
  SOurOtchTensionCaption = '%s|Отчет|Дебит';
  SOtchTensionCaption = '%s|Отчет|Баланс';
  SPartnerPlanRealTensionCaption = '%s|План|Кредит|Реални';
  SPartnerPlanPotentialTensionCaption = '%s|План|Кредит|Очакв.';
  SPartnerPlanTensionCaption = '%s|План|Кредит';
  SOurPlanRealTensionCaption = '%s|План|Дебит|Реални';
  SOurPlanPotentialTensionCaption = '%s|План|Дебит|Очакв.';
  SOurPlanTensionCaption = '%s|План|Дебит';
  SPlanTensionCaption = '%s|План|Баланс';

  plblPartner = 'Партньор';
  plblDateUnit = 'Времева стъпка';
  plblDateUnitCount = 'Брой стъпки';
  plblDateInterval = 'ВрмИнт';

type
  TColumnDesc = record
    FieldName: string;
    Caption: string;
    Width: Integer;
    Alignment: TAlignment;
    Visible: Boolean;
  end;

type
  TColumnTitle = record
    Key: string;
    Caption: string;
  end;

const
  DefaultPeriod: TPeriod = perMonth;
  DefaultDateUnitCount = 12;

  TensionFieldNamePart = '_TNSN';

  FrozenColumns = 2;

  PartnerNameCaption = '#SPartnerNameCaption#';
  PartnerNoCaption = '#SPartnerNoCaption#';
  PartnerOtchTensionCaption = '#SPartnerOtchTensionCaption#';
  OurOtchTensionCaption = '#SOurOtchTensionCaption#';
  OtchTensionCaption = '#SOtchTensionCaption#';
  PartnerPlanRealTensionCaption = '#SPartnerPlanRealTensionCaption#';
  PartnerPlanPotentialTensionCaption = '#SPartnerPlanPotentialTensionCaption#';
  OurPlanRealTensionCaption = '#SOurPlanRealTensionCaption#';
  OurPlanPotentialTensionCaption = '#SOurPlanPotentialTensionCaption#';
  PartnerPlanTensionCaption = '#SPartnerPlanTensionCaption#';
  OurPlanTensionCaption = '#SOurPlanTensionCaption#';
  PlanTensionCaption = '#SPlanTensionCaption#';

  ColumnTitles: array[1..12] of TColumnTitle = (
    (Key: PartnerNameCaption; Caption: SPartnerNameCaption),
    (Key: PartnerNoCaption; Caption: SPartnerNoCaption),
    (Key: PartnerOtchTensionCaption; Caption: SPartnerOtchTensionCaption),
    (Key: OurOtchTensionCaption; Caption: SOurOtchTensionCaption),
    (Key: OtchTensionCaption; Caption: SOtchTensionCaption),
    (Key: PartnerPlanRealTensionCaption; Caption: SPartnerPlanRealTensionCaption),
    (Key: PartnerPlanPotentialTensionCaption; Caption: SPartnerPlanPotentialTensionCaption),
    (Key: OurPlanRealTensionCaption; Caption: SOurPlanRealTensionCaption),
    (Key: OurPlanPotentialTensionCaption; Caption: SOurPlanPotentialTensionCaption),
    (Key: PartnerPlanTensionCaption; Caption: SPartnerPlanTensionCaption),
    (Key: OurPlanTensionCaption; Caption: SOurPlanTensionCaption),
    (Key: PlanTensionCaption; Caption: SPlanTensionCaption)
  );

  PartnerNameColumnWidth = 150;
  PartnerNoColumnWidth = 50;
  RepeatableColumnWidth = 45;

  ColumnDescs: array[1..13] of TColumnDesc =
    ( (FieldName: '<default>'; Caption: ''; Width: 10; Alignment: taLeftJustify; Visible: False),
      (FieldName: 'PARTNER_SHORT_NAME'; Caption: PartnerNameCaption; Width: PartnerNameColumnWidth; Alignment: taLeftJustify; Visible: True),
      (FieldName: 'PARTNER_NO'; Caption: PartnerNoCaption; Width: PartnerNoColumnWidth; Alignment: taLeftJustify; Visible: True),
      (FieldName: 'PARTNER_OTCH_TNSN_'; Caption: PartnerOtchTensionCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'OUR_OTCH_TNSN_'; Caption: OurOtchTensionCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'OTCH_TNSN_'; Caption: OtchTensionCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'PARTNER_PLAN_REAL_TNSN_'; Caption: PartnerPlanRealTensionCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'PARTNER_PLAN_POTENTIAL_TNSN_'; Caption: PartnerPlanPotentialTensionCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'OUR_PLAN_REAL_TNSN_'; Caption: OurPlanRealTensionCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'OUR_PLAN_POTENTIAL_TNSN_'; Caption: OurPlanPotentialTensionCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'PARTNER_PLAN_TNSN_'; Caption: PartnerPlanTensionCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'OUR_PLAN_TNSN_'; Caption: OurPlanTensionCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'PLAN_TNSN_'; Caption: PlanTensionCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True)
    );

function GetColumnDesc(AFieldName: string): TColumnDesc;
var
  i: Integer;
begin
  for i:= Low(ColumnDescs) to High(ColumnDescs) do
    if StartsStr(ColumnDescs[i].FieldName, AFieldName) then
      begin
        Result:= ColumnDescs[i];
        Exit;
      end;

  Result:= ColumnDescs[1];  // default
end;

{ TfmFinancialRelationsTable}

procedure TfmFinancialRelationsTable.actPrintExecute(Sender: TObject);
var
  SaveCursor: TCursor;
  SavePage: TPrinterPage;
begin
//  inherited;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsGridData.DisableControls;
    try
      pgdData.PageFooter.LeftText.Text:= uClientApp.ReplaceAppParams(SPrintGridPageFooterLeftText);
      pgdData.PageFooter.RightText.Text:= uClientApp.ReplaceAppParams(SPrintGridPageFooterRightText);
      pgdData.PageFooter.CenterText.Text:= LoginContext.CompanyShortName;

      pgdData.SetSubstitutes([
        'PARTNER_NAME', pnlPartnerName.Caption,
        'PARTNER_NO', pnlPartnerNo.Caption,
        'DATE_UNIT_COUNT', pnlDateUnitCount.Caption,
        'DATE_UNIT', pnlDateUnit.Caption,
        'DATE_INTERVAL', frDateInterval.edtInterval.Text,
        'FormCaption', Caption,
        'plblPartner', plblPartner,
        'plblDateUnit', plblDateUnit,
        'plblDateUnitCount', plblDateUnitCount,
        'plblDateInterval', plblDateInterval
      ]);

      SavePage:= SetUpPrinter(0, poLandscape, PrinterPreview.Printer);
      try
        pgdData.PreviewModal;
      finally
        SetUpPrinter(SavePage.PaperSize, SavePage.Orientation, PrinterPreview.Printer);
      end;   { try }
    finally
      cdsGridData.EnableControls;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmFinancialRelationsTable.actRealAndPotentialExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleColumns;
end;

procedure TfmFinancialRelationsTable.CalcAggregates;
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
          if (Pos('_TNSN', grdData.Columns[i].FieldName) > 0) then
            begin
              if cdsGridData.IsEmpty then
                grdData.Columns[i].Footer.Value:= ''
              else
                begin
                  aggr:= cdsGridData.Aggregates.Add;
                  try
                    aggr.Expression:= Format('Sum(%s)', [grdData.Columns[i].FieldName]);
                    aggr.Active:= True;

                    grdData.Columns[i].Footer.ValueType:= fvtStaticText;

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

procedure TfmFinancialRelationsTable.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  UpdateHeader;
  InitializeFields;
  InitializeColumns;
  CalcAggregates;
end;

procedure TfmFinancialRelationsTable.ChosenCompaniesChange;
begin
  pdsGridDataParams_COMPANY_CODE.Clear;
  pdsGridDataParams_COMPANY_SHORT_NAME.Clear;
  pdsGridDataParams_COMPANY_NO.Clear;

  if (pdsGridDataParamsCHOSEN_COMPANIES.AsString <> '') then
    begin
      if IsSingleChosenCompany(pdsGridDataParamsCHOSEN_COMPANIES.AsString) then
        begin
          pdsGridDataParams_COMPANY_CODE.AsInteger:=
            SingleChosenCompanyCode(pdsGridDataParamsCHOSEN_COMPANIES.AsString);

          GetCompanyInfo(
            pdsGridDataParams_COMPANY_CODE,
            nil, nil, nil, nil, nil, nil, nil,
            pdsGridDataParams_COMPANY_SHORT_NAME,
            nil, nil, nil, nil, nil, nil, nil,
            pdsGridDataParams_COMPANY_NO);
        end
      else
        pdsGridDataParams_COMPANY_SHORT_NAME.AsString:= CompaniesSet;
    end
  else
    pdsGridDataParams_COMPANY_SHORT_NAME.AsString:= SAllInBrackets;
end;

procedure TfmFinancialRelationsTable.CloseDataSets;
begin
  inherited;
  cdsFinProcesses.Close;
  cdsTimeUnits.Close;
end;

function TfmFinancialRelationsTable.DateUnitAsString(
  ADateUnitNo: Integer): string;
var
  Period: TPeriod;
  DateUnitFirstDate: TDateTime;
begin
  Period:= GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger);

  DateUnitFirstDate:=
    IncDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, Period, ADateUnitNo - 1);

  Result:= GetPeriodLabel(DateUnitFirstDate, Period);
end;

procedure TfmFinancialRelationsTable.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmFinancialRelationsTableFilter;
  ReportClass:= TBaseReport;
  MaximizeStyle:= msStandard;
end;

function TfmFinancialRelationsTable.GetRepeatableColumnNo(
  FieldName: string): Integer;
begin
  Result:= StrToIntDef(Copy(FieldName, CharLastPos(FieldName, '_') + 1, 100), 0)
end;

procedure TfmFinancialRelationsTable.InitializeColumns;

  function NormalizeColumnCaption(const ACaption: string): string;

    function KeyCaption(AKey: string): string;
    var
      ColumnTitle: TColumnTitle;
    begin
      Result:= '';
      for ColumnTitle in ColumnTitles do
        if (ColumnTitle.Key = AKey) then
          begin
            Result:= ColumnTitle.Caption;
            Exit;
          end;
    end;  { KeyTitle }

  const
    DelimiterChar = '#';
  var
    i: Integer;
    key: string;
    InKey: Boolean;
  begin
    Result:= '';
    InKey:= False;
    for i:= 1 to Length(ACaption) do
      if InKey then
        begin
          key:= key + ACaption[i];
          if (ACaption[i] = DelimiterChar) then
            begin
              InKey:= False;
              Result:= Result + KeyCaption(key);
            end;
        end
      else
        begin
          if (ACaption[i] = DelimiterChar) then
            begin
              InKey:= True;
              key:= DelimiterChar;
            end
          else
            Result:= Result + ACaption[i];
        end;
  end;  { NormalizeColumnCaption }

var
  SaveDataSource: TDataSource;
  i: Integer;
  Column: TColumnEh;
  ColumnDesc: TColumnDesc;
  RepeatableColumnNo: Integer;
  ColumnCaption: string;
begin
  grdData.DataSource.DataSet.DisableControls;
  try
    SaveDataSource:= grdData.DataSource;
    grdData.DataSource:= nil;
    try
      grdData.Columns.BeginUpdate;
      try
        grdData.FrozenCols:= 0;
        grdData.Columns.Clear;
        for i:= 0 to cdsGridData.FieldCount - 1 do
          if GetColumnDesc(cdsGridData.Fields[i].FieldName).Visible then
            grdData.Columns.Add.FieldName:= cdsGridData.Fields[i].FieldName;

        for i:= 0 to grdData.Columns.Count - 1 do
          begin
            Column:= grdData.Columns[i];
            ColumnDesc:= GetColumnDesc(Column.FieldName);

            ColumnCaption:= NormalizeColumnCaption(ColumnDesc.Caption);

            RepeatableColumnNo:= GetRepeatableColumnNo(Column.FieldName);
            if (RepeatableColumnNo > 0) then
              ColumnCaption:= Format(ColumnCaption, [DateUnitAsString(RepeatableColumnNo)]);

            Column.Title.Caption:= ColumnCaption;
            Column.Width:= ColumnDesc.Width;
            Column.Alignment:= ColumnDesc.Alignment;
            Column.Visible:= ColumnDesc.Visible;
          end;

        SetVisibleColumns;
      finally
        grdData.Columns.EndUpdate;
      end;  { try }
    finally
      grdData.DataSource:= SaveDataSource;
    end;  { try }
  finally
    grdData.DataSource.DataSet.EnableControls;
  end;  { try }

  grdData.FrozenCols:= FrozenColumns;

  InitializeAbmesDBGrid(grdData);
end;

procedure TfmFinancialRelationsTable.InitializeFields;
var
  i: Integer;
begin
  for i:= 0 to cdsGridData.FieldCount - 1 do
    if (Pos(TensionFieldNamePart, cdsGridData.Fields[i].FieldName) > 0) then
      (cdsGridData.Fields[i] as TAbmesFloatField).DisplayFormat:= ',0';
end;

procedure TfmFinancialRelationsTable.OpenDataSets;
begin
  cdsTimeUnits.Open;
  cdsFinProcesses.Open;
  inherited;
end;

procedure TfmFinancialRelationsTable.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;

  pdsGridDataParams.Edit;
  try
    pdsGridDataParamsDATE_UNIT_CODE.AsInteger:= GetPeriodConst(DefaultPeriod);
    pdsGridDataParamsDATE_UNIT_COUNT.AsInteger:= DefaultDateUnitCount;
    pdsGridDataParamsBEGIN_DATE.AsDateTime:=
      IncDate(GetPeriodFirstDate(ContextDate, DefaultPeriod), DefaultPeriod, -(DefaultDateUnitCount div 2));

    ChosenCompaniesChange;

    pdsGridDataParams.Post;
  except
    pdsGridDataParams.Cancel;
    raise;
  end;
end;

procedure TfmFinancialRelationsTable.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if pdsGridDataParamsBEGIN_DATE.IsNull or
     pdsGridDataParamsDATE_UNIT_CODE.IsNull or
     pdsGridDataParamsDATE_UNIT_COUNT.IsNull then
    pdsGridDataParamsEND_DATE.Clear
  else
    pdsGridDataParamsEND_DATE.AsDateTime:=
      IncDate(
        pdsGridDataParamsBEGIN_DATE.AsDateTime,
        GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger),
        pdsGridDataParamsDATE_UNIT_COUNT.AsInteger) - 1;
end;

procedure TfmFinancialRelationsTable.pdsGridDataParamsCHOSEN_COMPANIESChange(
  Sender: TField);
begin
  inherited;
  ChosenCompaniesChange;
end;

procedure TfmFinancialRelationsTable.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= True;
end;

procedure TfmFinancialRelationsTable.SetVisibleColumns;

  function FindMatchingVisibleColumn(ACol: Integer): TColumnEh;

    function ColumnByFieldName(AFieldName: string): TColumnEh;
    var
      i: Integer;
    begin
      Result:= nil;
      for i:= 0 to grdData.Columns.Count - 1 do
        if (grdData.Columns[i].FieldName = AFieldName) then
          begin
            Result:= grdData.Columns[i];
            Exit;
          end;
    end;

  var
    FieldName: string;
  begin
    Result:= grdData.Columns[ACol-1];
    FieldName:= grdData.Columns[ACol-1].FieldName;

    if (Pos('PLAN_', FieldName) > 0) then
      begin
        if (Pos('REAL_', FieldName) > 0) or
           (Pos('POTENTIAL_', FieldName) > 0) then
          begin
            FieldName:= StringReplace(FieldName, 'REAL_', '', []);
            FieldName:= StringReplace(FieldName, 'POTENTIAL_', '', []);
            Result:= ColumnByFieldName(FieldName);
            Exit;
          end;

        if (Pos('PARTNER_', FieldName) > 0) or
           (Pos('OUR_', FieldName) > 0) then
          begin
            FieldName:= StringReplace(FieldName, 'PLAN_', 'PLAN_REAL_', []);
            Result:= ColumnByFieldName(FieldName);
            Exit;
          end;
      end;
  end;

  procedure UpdateVTitleMargin;
  var
    vtm: Integer;
  begin
    if actRealAndPotential.Checked then
      vtm:= 6
    else
      vtm:= 12;

    if (grdData.VTitleMargin <> vtm) then
      grdData.VTitleMargin:= vtm;
  end;  { UpdateVTitleMargin }

var
  TodayPeriodNo: Integer;
  RepeatableColumnNo: Integer;
  i: Integer;
  v: Boolean;
  LeftCol, Col: Integer;
  MatchingVisibleColumn: TColumnEh;
  MaxVisibleCols: Integer;
  VisibleCols: Integer;
  c: Integer;
begin
  TodayPeriodNo:=
    1 +
    GetTimeUnitCount(
      pdsGridDataParamsBEGIN_DATE.AsDateTime,
      GetPeriodFirstDate(ContextDate, GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger)),
      GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger)
    );

  LeftCol:= grdData.LeftCol;
  Col:= grdData.Col;

  grdData.Columns.BeginUpdate;
  try
    for i:= 0 to grdData.Columns.Count - 1 do
      begin
        RepeatableColumnNo:= GetRepeatableColumnNo(grdData.Columns[i].FieldName);

        if (RepeatableColumnNo > 0) then
          begin
            v:= True;

            if (Pos('OTCH_', grdData.Columns[i].FieldName) > 0) then
              begin
                v:= (RepeatableColumnNo <= TodayPeriodNo);
              end;

            if (Pos('PLAN_', grdData.Columns[i].FieldName) > 0) then
              begin
                v:= (RepeatableColumnNo >= TodayPeriodNo);

                if (Pos('PARTNER_', grdData.Columns[i].FieldName) > 0) or
                   (Pos('OUR_', grdData.Columns[i].FieldName) > 0) then
                  begin
                    if (Pos('REAL_', grdData.Columns[i].FieldName) > 0) or
                       (Pos('POTENTIAL_', grdData.Columns[i].FieldName) > 0) then
                      v:= v and actRealAndPotential.Checked
                    else
                      v:= v and not actRealAndPotential.Checked;
                  end;
              end;

            grdData.Columns[i].Visible:= v;
          end;
      end;  { for }

      UpdateVTitleMargin;
  finally
    grdData.Columns.EndUpdate;
  end;

  if not grdData.Columns[Col-1].Visible then
    begin
      MatchingVisibleColumn:= FindMatchingVisibleColumn(Col);
      if Assigned(MatchingVisibleColumn) and MatchingVisibleColumn.Visible then
        grdData.Col:= MatchingVisibleColumn.Index + 1;
    end;

  if not grdData.Columns[LeftCol-1].Visible then
    begin
      MatchingVisibleColumn:= FindMatchingVisibleColumn(LeftCol);
      if Assigned(MatchingVisibleColumn) and MatchingVisibleColumn.Visible then
        LeftCol:= MatchingVisibleColumn.Index + 1
      else
        LeftCol:= grdData.LeftCol;
    end;

  MaxVisibleCols:= 16; // smetni go

  VisibleCols:= 0;
  for i:= LeftCol to grdData.Col do
    Inc(VisibleCols, Ord(grdData.Columns[i-1].Visible));

  if (VisibleCols > MaxVisibleCols) then
    begin
      VisibleCols:= MaxVisibleCols;
      c:= grdData.Col + 1;
      while (c > 0) and (VisibleCols > 0) do
        begin
          Dec(c);
          if grdData.Columns[c-1].Visible then
            begin
              Dec(VisibleCols);
              LeftCol:= c;
            end;
        end;                                 
    end;                                     

  grdData.LeftCol:= LeftCol;
end;

procedure TfmFinancialRelationsTable.UpdateHeader;
begin
  pnlPartnerName.Caption:= ' ' + pdsGridDataParams_COMPANY_SHORT_NAME.DisplayText;
  pnlPartnerNo.Caption:= ' ' + pdsGridDataParams_COMPANY_NO.DisplayText;
  pnlDateUnit.Caption:= GetPeriodTypeName(GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger));
  pnlDateUnitCount.Caption:= IntToStr(pdsGridDataParamsDATE_UNIT_COUNT.AsInteger);
end;

end.
