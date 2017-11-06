unit fEmployeeDayAbsences;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponent, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, JvComponentBase;

type
  TfmEmployeeDayAbsences = class(TGridForm)
    cdsGridDataEMP_AVAIL_MODIFIER_CODE: TAbmesFloatField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    cdsGridDataEMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField;
    cdsGridDataEMP_DAY_ABSENCE_REASON_ABBREV: TAbmesWideStringField;
    cdsGridDataEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField;
    cdsGridDataEMP_DAY_ABSENCE_DOC_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataEMP_DAY_ABSENCE_DOC_NO: TAbmesWideStringField;
    cdsGridDataEMP_DAY_ABSENCE_DOC_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEMP_DAY_ABSENCE_DOC_ISSUER: TAbmesWideStringField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    cdsGridData_DATE_STATUS: TAbmesFloatField;
    actEmployeeDateAvailability: TAction;
    btnEmployeeDateAvailability: TBitBtn;
    cdsEmployeeDateAvailabilityParams: TAbmesClientDataSet;
    cdsEmployeeDateAvailabilityParamsEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeDateAvailabilityParamsTHE_DATE: TAbmesSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataBEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridData_DATE_STATUSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actEmployeeDateAvailabilityUpdate(Sender: TObject);
    procedure actEmployeeDateAvailabilityExecute(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fEmployeeDayAbsencesFilter, uColorConsts, Math,
  fEmployeeDateAvailability, uClientTypes, uClientDateTime;

{$R *.dfm}

resourcestring
  SOtch = 'От';
  SPlan = 'Пл';
  SPlanOtch = 'П/О';

{ TfmEmployeeDayAbsences }

procedure TfmEmployeeDayAbsences.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmEmployeeDayAbsencesFilter;
  RegisterDateFields(cdsGridData);
end;

procedure TfmEmployeeDayAbsences.cdsGridDataBEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if cdsGridDataBEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsShortString(cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime);
end;

procedure TfmEmployeeDayAbsences.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
const
  DateStatusColors: array[-1..1] of TColor = (ccOtch, ccDate, ccPlan);
begin
  inherited;

  if (Column.Field = cdsGridDataEMP_DAY_ABSENCE_REASON_ABBREV) and
     (cdsGridDataEMP_DAY_ABSENCE_REASON_CODE.AsInteger = 1) then
    AFont.Color:= clRed;

  if (Column.Field = cdsGridData_DATE_STATUS) then
    Background:= DateStatusColors[cdsGridData_DATE_STATUS.AsInteger];
end;

procedure TfmEmployeeDayAbsences.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  with pdsGridDataParamsEMPLOYEE_CODE do
    ReadOnly:= not IsNull;
end;

procedure TfmEmployeeDayAbsences.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsGridData_DATE_STATUS.AsInteger:=
    Sign(cdsGridDataBEGIN_DATE.AsDateTime - ContextDate);
end;

procedure TfmEmployeeDayAbsences.cdsGridData_DATE_STATUSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
const
  Values: array[-1..1] of string = (SOtch, SPlanOtch, SPlan);
begin
  inherited;
  if not Sender.IsNull then
    Text:= Values[Sender.AsInteger];
end;

procedure TfmEmployeeDayAbsences.actEmployeeDateAvailabilityUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmEmployeeDayAbsences.actEmployeeDateAvailabilityExecute(
  Sender: TObject);
begin
  inherited;
  cdsEmployeeDateAvailabilityParams.CreateDataSet;
  try
    cdsEmployeeDateAvailabilityParams.AppendRecord([
      pdsGridDataParamsEMPLOYEE_CODE.AsInteger, cdsGridDataBEGIN_DATE.AsDateTime]);

    TfmEmployeeDateAvailability.ShowForm(dmDocClient, cdsEmployeeDateAvailabilityParams, emReadOnly);
  finally
    cdsEmployeeDateAvailabilityParams.Close;
  end;  { try }
end;

procedure TfmEmployeeDayAbsences.grdDataDblClick(Sender: TObject);
begin
//  inherited;
  actEmployeeDateAvailability.Execute;
end;

end.
