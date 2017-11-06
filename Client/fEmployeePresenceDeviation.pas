unit fEmployeePresenceDeviation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponent, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald, fDateIntervalFrame,
  JvComponentBase;

type
  TfmEmployeePresenceDeviation = class(TGridForm)
    cdsGridDataTHE_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsIS_NEGATIVE_DEV: TAbmesFloatField;
    pdsGridDataParamsIS_POSITIVE_DEV: TAbmesFloatField;
    pdsGridDataParamsIS_APPROVED_EXTRA_WORK_DEV: TAbmesFloatField;
    cdsGridDataTIME_CORRECTION_TYPE_CODE: TAbmesFloatField;
    cdsGridDataDURATION: TAbmesFloatField;
    cdsGridData_TIME_CORRECTION_TYPE_NAME: TAbmesWideStringField;
    cdsGridData_TIME_CORRECTION_TYPE_ABBREV: TAbmesWideStringField;
    btnEmployeeDateAvailability: TBitBtn;
    cdsGridDataEMPLOYEE_CODE: TAbmesFloatField;
    pnlParams: TPanel;
    frEmployee: TfrEmployeeFieldEditFrameBald;
    lblEmployeeNo: TLabel;
    lblDateInterval: TLabel;
    frDateInterval: TfrDateIntervalFrame;
    pdsGridDataParams_EMPLOYEE_NAME: TAbmesWideStringField;
    pdsGridDataParams_EMPLOYEE_NO: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure actEditRecordUpdate(Sender: TObject);
    procedure pdsGridDataParamsBEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataDURATIONGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  protected
    function GetGridRecordReadOnly: Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    { Public declarations }
  end;
     
implementation

uses
  fEmployeePresenceDeviationFilter, dMain, uColorConsts,
  fEmployeeDateAvailability, rEmployeePresenceDeviation, uClientUtils,
  fDBDataForm;

{$R *.dfm}

resourcestring
  SFieldValueRequired = 'Полето %s трябва да има стойност';
  SNegativeDeviation = 'Отрицателно отклонение';
  SPositiveDeviation = 'Положително отклонение';
  SOvertime = 'Извънредни';
  
procedure TfmEmployeePresenceDeviation.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmEmployeePresenceDeviationFilter;
  EditFormClass:= TfmEmployeeDateAvailability;
  ReportClass:= TrptEmployeePresenceDeviation;
  frEmployee.FieldNames:= 'EMPLOYEE_CODE';
  RegisterDateFields(cdsGridData);
end;

procedure TfmEmployeePresenceDeviation.cdsGridDataCalcFields(
  DataSet: TDataSet);
const
  TimeCorrectionNames: array [1..3] of string = (SNegativeDeviation, SPositiveDeviation, SOvertime);
  TimeCorrectionAbbrevs: array [1..3] of string = ('-', '+', '!');
begin
  inherited;

  cdsGridDataEMPLOYEE_CODE.Assign(cdsGridData.Params.ParamByName('EMPLOYEE_CODE'));
  
  if cdsGridDataTIME_CORRECTION_TYPE_CODE.IsNull then
    begin
      cdsGridData_TIME_CORRECTION_TYPE_NAME.Clear;
      cdsGridData_TIME_CORRECTION_TYPE_ABBREV.Clear;
    end
  else
    begin
      cdsGridData_TIME_CORRECTION_TYPE_NAME.AsString:= TimeCorrectionNames[cdsGridDataTIME_CORRECTION_TYPE_CODE.AsInteger];
      cdsGridData_TIME_CORRECTION_TYPE_ABBREV.AsString:= TimeCorrectionAbbrevs[cdsGridDataTIME_CORRECTION_TYPE_CODE.AsInteger];
    end;
end;

function TfmEmployeePresenceDeviation.GetGridRecordReadOnly: Boolean;
begin
  Result:= True;
end;

procedure TfmEmployeePresenceDeviation.actEditRecordUpdate(
  Sender: TObject);
begin
  // do not call inherited
  (Sender as TAction).Enabled:= GetEditRecordEnabled;
end;

procedure TfmEmployeePresenceDeviation.SetDBFrameReadOnly(
  AFrame: TDBFrame);
begin
  // do not call inherited
  AFrame.ReadOnly:= True;
end;

function TfmEmployeePresenceDeviation.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmEmployeePresenceDeviation.pdsGridDataParamsBEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= dmMain.GetDateIntervalAsString(pdsGridDataParamsBEGIN_DATE.AsDateTime, pdsGridDataParamsEND_DATE.AsDateTime);
end;

procedure TfmEmployeePresenceDeviation.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  if pdsGridDataParamsEMPLOYEE_CODE.IsNull then
    raise Exception.CreateFmt(SFieldValueRequired, [pdsGridDataParamsEMPLOYEE_CODE.DisplayLabel]);

  if pdsGridDataParamsBEGIN_DATE.IsNull or pdsGridDataParamsEND_DATE.IsNull then
    raise Exception.CreateFmt(SFieldValueRequired, [pdsGridDataParamsBEGIN_DATE.DisplayLabel]);

  inherited;
end;

procedure TfmEmployeePresenceDeviation.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  with pdsGridDataParamsEMPLOYEE_CODE do
    ReadOnly:= not IsNull;
end;

procedure TfmEmployeePresenceDeviation.cdsGridDataDURATIONGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  HoursFieldGetText(Sender, Text, DisplayText);
end;

end.

