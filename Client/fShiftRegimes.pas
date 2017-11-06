unit fShiftRegimes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, JvButtons, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, Buttons,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  StdCtrls, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmShiftRegimes = class(TMasterDetailForm)
    cdsGridDataSHIFT_REGIME_CODE: TAbmesFloatField;
    cdsGridDataSHIFT_REGIME_NO: TAbmesFloatField;
    cdsGridDataSHIFT_REGIME_NAME: TAbmesWideStringField;
    cdsGridDataREGIME_SHIFTS: TAbmesWideStringField;
    cdsGridDataqryShiftTimedRegimes: TDataSetField;
    cdsDetailSHIFT_TIMED_REGIME_CODE: TAbmesFloatField;
    cdsDetailSHIFT_REGIME_CODE: TAbmesFloatField;
    cdsDetailBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDetailEND_DATE: TAbmesSQLTimeStampField;
    cdsDetailFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField;
    cdsDetailCYCLE_DURATION_DAYS: TAbmesFloatField;
    cdsDetailCALENDAR_DAYS: TAbmesFloatField;
    cdsDetailWORK_DAYS: TAbmesFloatField;
    cdsDetailTIMED_REGIME_SHIFTS: TAbmesWideStringField;
    lblShiftTimedRegimes: TLabel;
    cdsGridDataRESERVE_DAYS: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsDetailIS_OVERTIME: TAbmesFloatField;
    cdsDetailIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetInsertDetailRecordEnabled: Boolean; override;
    function GetDelDetailRecordEnabled: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fShiftRegime, fShiftRegimesFilter;

{$R *.dfm}

{ TfmShiftRegimes }

procedure TfmShiftRegimes.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmShiftRegimesFilter;
  EditFormClass:= TfmShiftRegime;
  DetailEditFormClass:= TfmShiftRegime;
  RegisterDateFields(cdsDetail);
end;

function TfmShiftRegimes.GetDelDetailRecordEnabled: Boolean;
begin
  Result:= False;
end;

function TfmShiftRegimes.GetInsertDetailRecordEnabled: Boolean;
begin
  Result:= False;
end;

end.
