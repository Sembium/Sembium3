unit fFailedEmployeeMovements;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, fGridForm;

type
  TfmFailedEmployeeMovements = class(TGridForm)
    cdsGridDataFAILED_EMP_MOVEMENT_CODE: TAbmesFloatField;
    cdsGridDataIN_OUT: TAbmesFloatField;
    cdsGridDataEMP_MOVEMENT_DATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataEXCEPTION_MESSAGE: TAbmesWideStringField;
    cdsGridData_EMP_MOVEMENT_DATE: TAbmesSQLTimeStampField;
    cdsGridData_EMP_MOVEMENT_TIME: TAbmesSQLTimeStampField;
    cdsGridDataEMPLOYEE_NO: TAbmesFloatField;
    btnDeleteRecord: TBitBtn;
    actRetry: TAction;
    actRetryAll: TAction;
    btnRetry: TBitBtn;
    btnRetryAll: TBitBtn;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_EMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataCREATE_EMPLOYEE_NAME: TAbmesWideStringField;
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridData_EMP_MOVEMENT_TIMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actRetryExecute(Sender: TObject);
    procedure actRetryAllExecute(Sender: TObject);
    procedure actRetryUpdate(Sender: TObject);
    procedure actRetryAllUpdate(Sender: TObject);
    procedure cdsGridDataCREATE_TIMEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  protected
    function GetApplyKind: TApplyKind; override;
  public
    { Public declarations }
  end;

implementation

uses
  DateUtils, uClientUtils, dMain;

{$R *.dfm}

{ TfmFailedEmployeeMovements }

procedure TfmFailedEmployeeMovements.actRetryExecute(Sender: TObject);
begin
  inherited;
  dmMain.SvrEmployeeAvailability.RetryAddEmployeeMovement(
    cdsGridDataFAILED_EMP_MOVEMENT_CODE.AsInteger);
    
  RefreshDataSet(cdsGridData);
end;

procedure TfmFailedEmployeeMovements.actRetryAllExecute(Sender: TObject);
begin
  inherited;
  dmMain.SvrEmployeeAvailability.RetryAddAllEmployeeMovements;
  RefreshDataSet(cdsGridData);
end;

procedure TfmFailedEmployeeMovements.actRetryUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (cdsGridData.RecordCount > 0);
end;

procedure TfmFailedEmployeeMovements.actRetryAllUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (cdsGridData.RecordCount > 0);
end;

procedure TfmFailedEmployeeMovements.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridData_EMP_MOVEMENT_DATE.AsDateTime:= DateOf(cdsGridDataEMP_MOVEMENT_DATE_TIME.AsDateTime);
  cdsGridData_EMP_MOVEMENT_TIME.AsDateTime:= TimeOf(cdsGridDataEMP_MOVEMENT_DATE_TIME.AsDateTime);
end;

procedure TfmFailedEmployeeMovements.cdsGridDataCREATE_TIMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmFailedEmployeeMovements.cdsGridData_EMP_MOVEMENT_TIMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

function TfmFailedEmployeeMovements.GetApplyKind: TApplyKind;
begin
  Result:= akSingle;
end;

end.
