unit fFilterVariant;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, ParamDataSet, ActnList, DB,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, Mask,
  JvDBLookup, AbmesArrow, AbmesFields, dDocClient, uClientTypes,
  AbmesDBCheckBox, JvExControls, JvComponent, JvCaptionButton,
  JvComponentBase, Menus, JvExExtCtrls, JvRadioGroup, JvExtComponent,
  JvDBRadioPanel, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmFilterVariant = class(TGridForm)
    pnlFilterVariantItemProperties: TPanel;
    pnlValue: TPanel;
    pnlTop: TPanel;
    lblFilterVariantName: TLabel;
    pnlValueAsDateDelta: TPanel;
    lblTimeUnits: TLabel;
    edtTimeUnits: TDBEdit;
    lblTimeUnit: TLabel;
    cbTimeUnit: TJvDBLookupCombo;
    cdsTimeUnits: TAbmesClientDataSet;
    cdsTimeUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsTimeUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    dsTimeUnits: TDataSource;
    cdsGridDataFILTER_CODE: TAbmesFloatField;
    cdsGridDataFILTER_VARIANT_CODE: TAbmesFloatField;
    cdsGridDataFILTER_VARIANT_FIELD_CODE: TAbmesFloatField;
    cdsGridDataFIELD_NAME: TAbmesWideStringField;
    cdsGridDataVALUE_AS_NUMBER: TAbmesFloatField;
    cdsGridDataVALUE_AS_STRING: TAbmesWideStringField;
    cdsGridDataTIME_UNIT_COUNT: TAbmesFloatField;
    cdsGridDataTIME_UNIT_CODE: TAbmesFloatField;
    cdsGridDataTIME_UNIT_POSITION: TAbmesFloatField;
    cbFilterVariantName: TDBComboBox;
    cdsGridData_FIELD_DISPLAY_LABEL: TAbmesWideStringField;
    cdsGridDataFIELD_DISPLAY_LABEL: TAbmesWideStringField;
    cdsGridDataFIELD_TYPE: TAbmesFloatField;
    cdsGridDataIS_FIELD_EMPTY: TAbmesFloatField;
    chkIsFieldEmpty: TAbmesDBCheckBox;
    chkShowAllFields: TCheckBox;
    lblCurrentDateLabel: TLabel;
    lblCurrentDate: TLabel;
    lblResultDateLabel: TLabel;
    lblResultDate: TLabel;
    cdsGridDataTIME_UNIT_READ_ONLY: TAbmesFloatField;
    pnlTimeUnitHit: TPanel;
    lblUnitPosition: TLabel;
    shpUnitPosition: TShape;
    saSlider: TAbmesArrow;
    Arrow1: TAbmesArrow;
    Arrow2: TAbmesArrow;
    cdsGridData_TIME_UNIT_NAME: TAbmesWideStringField;
    gbTimeUnitPosition: TJvDBRadioPanel;
    cdsGridDataSAVE_FIELD: TAbmesFloatField;
    cdsGridDataHAS_DEFAULT_VALUE: TAbmesFloatField;
    cdsGridData_HAS_MODIFIED_VALUE: TAbmesFloatField;
    cdsGridData_MAX_SAVE_FIELD: TAggregateField;
    pnlTopSeparator: TPanel;
    cdsGridDataDEPENDS_ON_FIELD_NAME: TAbmesWideStringField;
    cdsGridDataTIME_UNIT_IS_WORKDAY: TAbmesFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataIS_FIELD_EMPTYChange(Sender: TField);
    procedure dsGridDataDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure grdDataCellClick(Column: TColumnEh);
    procedure grdDataKeyPress(Sender: TObject; var Key: Char);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsTimeUnitsAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
  private
    procedure ValidateData;
    procedure UpdateStuff;
    procedure SetDependantSaveField;
    procedure ToggleSaveField;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses
  dMain, uUtils, uPeriods, AbmesDialogs, uClientUtils, uClientDateTime;

{$R *.dfm}

resourcestring
  SCannotOverrideDefaultVariant = 'Не можете да презаписвате варианта "%s"';
  SConfirmFilterVariantOverwrite = 'Вариантът "%s" вече съществува. Желаете ли презапис?';
  SUnitPosition = 'Попадение в %s след отместване';
  SNoSaveFields = 'Не са посочени полета за запис';
  SCalendarDay = 'Календарен ден';
  SWorkday = 'Работен ден';

{ TfmFilterVariant }

procedure TfmFilterVariant.FormShow(Sender: TObject);
var
  cds: TClientDataSet;
begin
  inherited;

  cds:= TClientDataSet.Create(Self);
  try
    cds.CloneCursor(dsData.DataSet as TAbmesClientDataSet, False, True);
    with cds do
      begin
        First;
        cbFilterVariantName.Items.Clear;
        while not Eof do
          begin
            if not FieldByName('FILTER_VARIANT_CODE').IsNull and
               (FieldByName('FILTER_VARIANT_CODE').AsInteger <> 1) then
              cbFilterVariantName.Items.Add(FieldByName('FILTER_VARIANT_NAME').AsString);

            Next;
          end;
      end;

  finally
    FreeAndNil(cds);
  end;  { try }

  lblCurrentDate.Caption:= FormatDateTime(FormatSettings.ShortDateFormat, ContextDate);
end;

procedure TfmFilterVariant.grdDataCellClick(Column: TColumnEh);
begin
  inherited;

  if (Column.Index = 2) then
    ToggleSaveField;
end;

procedure TfmFilterVariant.grdDataKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #32) then
    ToggleSaveField;
end;

procedure TfmFilterVariant.CloseDataSets;
begin
  cdsTimeUnits.Close;
  inherited;
end;

procedure TfmFilterVariant.SetDependantSaveField;
begin
  Screen.TempCursor(crHourGlass)/
    cdsGridData.TempDisableControls/
      cdsGridData.PreserveRecNo/
        cdsGridData.TempUnfilter/
          cdsGridData.ForEach/
            procedure
            var
              DependantSaveField: Variant;
            begin
              if (cdsGridDataDEPENDS_ON_FIELD_NAME.AsString <> '') then
                begin
                  DependantSaveField:= cdsGridData.Lookup('FIELD_NAME', cdsGridDataDEPENDS_ON_FIELD_NAME.AsString, 'SAVE_FIELD');
                  if (cdsGridDataSAVE_FIELD.AsInteger <> VarToInt(DependantSaveField)) then
                    cdsGridData.SafeEdit/
                      procedure begin
                        cdsGridDataSAVE_FIELD.AsInteger:= VarToInt(DependantSaveField);
                      end;
                end;
            end;
end;

procedure TfmFilterVariant.ToggleSaveField;
begin
  if (cdsGridData.RecordCount > 0) then
    cdsGridData.SafeEdit /
      procedure begin
        cdsGridDataSAVE_FIELD.AsBoolean:= not cdsGridDataSAVE_FIELD.AsBoolean;
      end;
end;

procedure TfmFilterVariant.OpenDataSets;
begin
  cdsGridData.DataSetField:= (dsData.DataSet.FieldByName('qryFilterVariantFields') as TDataSetField);
  inherited;
  cdsTimeUnits.Open;
end;

procedure TfmFilterVariant.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModalResult = mrOk) then
    begin
      ValidateData;
      SetDependantSaveField;
    end;

  inherited;
end;

procedure TfmFilterVariant.FormCreate(Sender: TObject);
begin
  inherited;
  gbTimeUnitPosition.Values.Add(IntToStr(tupBegin));
  gbTimeUnitPosition.Values.Add(IntToStr(tupExact));
  gbTimeUnitPosition.Values.Add(IntToStr(tupEnd));
end;

procedure TfmFilterVariant.ValidateData;
var
  cds: TAbmesClientDataSet;
begin
  CheckRequiredField(dsData.DataSet.FieldByName('FILTER_VARIANT_NAME'));

  if (VarToInt(cdsGridData_MAX_SAVE_FIELD.AsVariant) = 0) then
    raise Exception.Create(SNoSaveFields);

  with cdsGridData do
    begin
      try
        DisableControls;
        First;
        while not Eof do
          begin
            if cdsGridDataSAVE_FIELD.AsBoolean and
               (TFieldType(cdsGridDataFIELD_TYPE.AsInteger) = ftTimeStamp) and
               not cdsGridDataIS_FIELD_EMPTY.AsBoolean then
              begin
                CheckRequiredField(cdsGridDataTIME_UNIT_COUNT);

                if not cdsGridDataTIME_UNIT_IS_WORKDAY.AsBoolean then
                  CheckRequiredFields([cdsGridDataTIME_UNIT_CODE, cdsGridDataTIME_UNIT_POSITION]);
              end;

            Next;
          end;

      finally
        EnableControls;
      end;  { try }
    end;

  cds:= TAbmesClientDataSet.Create(Self);
  try
    cds.CloneCursor(dsData.DataSet as TAbmesClientDataSet, False, True);
    if (
        cds.Lookup(
          'FILTER_VARIANT_NAME',
          dsData.DataSet.FieldByName('FILTER_VARIANT_NAME').AsString,
          'FILTER_VARIANT_CODE') = 1
       ) then
      raise Exception.CreateFmt(SCannotOverrideDefaultVariant, [dsData.DataSet.FieldByName('FILTER_VARIANT_NAME').AsString]);

  finally
    FreeAndNil(cds);
  end;  { try }

  if (cbFilterVariantName.Items.IndexOf(dsData.DataSet.FieldByName('FILTER_VARIANT_NAME').AsString) > -1) then
    begin
      if (MessageDlgFmtEx(
          SConfirmFilterVariantOverwrite, [dsData.DataSet.FieldByName('FILTER_VARIANT_NAME').AsString],
          mtWarning,
          [mbYes,mbNo],
          0) <> mrYes) then
        Abort;
    end;
end;

procedure TfmFilterVariant.actFormUpdate(Sender: TObject);
begin
  inherited;

  if (cdsGridData.Filtered = chkShowAllFields.Checked) then
    cdsGridData.Filtered:= not chkShowAllFields.Checked;

  grdData.Visible:= not (cdsGridData.Bof and cdsGridData.Eof);
  pnlFilterVariantItemProperties.Visible:= grdData.Visible;

  pnlValueAsDateDelta.Visible:= (TFieldType(cdsGridDataFIELD_TYPE.AsInteger) = ftTimeStamp);
  pnlValue.Visible:= (TFieldType(cdsGridDataFIELD_TYPE.AsInteger) <> ftTimeStamp);

  chkIsFieldEmpty.ReadOnly:=
    cdsGridDataTIME_UNIT_READ_ONLY.AsBoolean or
    not cdsGridDataSAVE_FIELD.AsBoolean;
  edtTimeUnits.ReadOnly:=
    cdsGridDataIS_FIELD_EMPTY.AsBoolean or
    not cdsGridDataSAVE_FIELD.AsBoolean;
  cbTimeUnit.ReadOnly:=
    cdsGridDataIS_FIELD_EMPTY.AsBoolean or
    cdsGridDataTIME_UNIT_READ_ONLY.AsBoolean or
    not cdsGridDataSAVE_FIELD.AsBoolean;

  gbTimeUnitPosition.Enabled:=
    (not cdsGridDataIS_FIELD_EMPTY.AsBoolean) and
    (not cdsGridDataTIME_UNIT_READ_ONLY.AsBoolean) and
    cdsGridDataSAVE_FIELD.AsBoolean;

  edtTimeUnits.Color:= ReadOnlyColors[edtTimeUnits.ReadOnly];
  cbTimeUnit.Color:= ReadOnlyColors[cbTimeUnit.ReadOnly];
end;

procedure TfmFilterVariant.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  cdsGridDataTIME_UNIT_IS_WORKDAY.AsBoolean:=
    (cdsGridDataTIME_UNIT_CODE.AsInteger = -1);

  if cdsGridDataTIME_UNIT_IS_WORKDAY.AsBoolean then
    begin
      cdsGridDataTIME_UNIT_CODE.Clear;
      cdsGridDataTIME_UNIT_POSITION.Clear;
    end
end;

procedure TfmFilterVariant.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridData_HAS_MODIFIED_VALUE.AsBoolean:= not cdsGridDataHAS_DEFAULT_VALUE.AsBoolean;
end;

procedure TfmFilterVariant.cdsGridDataFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;

  Accept:=
    ( (cdsGridDataFIELD_TYPE.AsInteger = Integer(ftTimeStamp)) or
      (cdsGridDataFIELD_DISPLAY_LABEL.AsString <> cdsGridDataFIELD_NAME.AsString) or
      (not cdsGridDataHAS_DEFAULT_VALUE.AsBoolean) ) and
    (cdsGridDataDEPENDS_ON_FIELD_NAME.AsString = '');
end;

procedure TfmFilterVariant.cdsGridDataIS_FIELD_EMPTYChange(Sender: TField);
begin
  inherited;

  CheckEditMode(cdsGridData);  
  if cdsGridDataIS_FIELD_EMPTY.AsBoolean then
    begin
      cdsGridDataTIME_UNIT_IS_WORKDAY.AsBoolean:= False;
      cdsGridDataTIME_UNIT_COUNT.Clear;
      cdsGridDataTIME_UNIT_CODE.Clear;
      cdsGridDataTIME_UNIT_POSITION.Clear;
    end
  else
    if not cdsGridDataTIME_UNIT_READ_ONLY.AsBoolean then
      cdsGridDataTIME_UNIT_POSITION.AsInteger:= tupBegin;    
end;

procedure TfmFilterVariant.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataTIME_UNIT_IS_WORKDAY.AsBoolean:= False;
end;

procedure TfmFilterVariant.cdsTimeUnitsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Exit;  // temporary disable the workdays offset functionality
  cdsTimeUnits.First;
  cdsTimeUnits.SafeEdit/
    procedure begin
      cdsTimeUnitsTHE_DATE_UNIT_NAME.AsString:= SCalendarDay;
    end;
  cdsTimeUnits.InsertRecord([-1, SWorkday]);
end;

procedure TfmFilterVariant.UpdateStuff;
var
  TheDate: TDateTime;
  ThePeriod: TPeriod;
begin
  lblUnitPosition.Caption:= Format(SUnitPosition, [cdsGridData_TIME_UNIT_NAME.AsString]);
  pnlTimeUnitHit.Visible:= (cdsGridDataTIME_UNIT_CODE.AsInteger > 0);

  lblResultDate.Visible:=
    not cdsGridDataTIME_UNIT_COUNT.IsNull and
    not cdsGridDataTIME_UNIT_CODE.IsNull and
    not cdsGridDataTIME_UNIT_POSITION.IsNull;

  lblResultDateLabel.Visible:= lblResultDate.Visible;

  if lblResultDate.Visible then
    begin
      ThePeriod:= GetPeriodValue(cdsGridDataTIME_UNIT_CODE.AsInteger);

      TheDate:= IncDate(
        ContextDate,
        ThePeriod,
        cdsGridDataTIME_UNIT_COUNT.AsInteger);

      case cdsGridDataTIME_UNIT_POSITION.AsInteger of
        tupBegin:
          TheDate:= GetPeriodFirstDate(TheDate, ThePeriod);
        tupExact:;
          // do nothing
        tupEnd:
          TheDate:= GetPeriodLastDate(TheDate, ThePeriod);
      end;
      
      lblResultDate.Caption:= FormatDateTime(FormatSettings.ShortDateFormat, TheDate);
    end;
end;

procedure TfmFilterVariant.dsGridDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  UpdateStuff;
end;

end.

