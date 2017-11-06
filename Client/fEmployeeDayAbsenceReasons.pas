unit fEmployeeDayAbsenceReasons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, JvComponent, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, Buttons, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, StdCtrls;

type
  TfmEmployeeDayAbsenceReasons = class(TMasterDetailForm)
    cdsGridDataEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    cdsGridDataEMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField;
    cdsDetailEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    cdsDetailEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField;
    cdsDetailEMP_DAY_ABSENCE_DOC_TYPE_NAME: TAbmesWideStringField;
    cdsDetail_MAX_EMP_DAY_ABSENCE_D_T_CODE: TAggregateField;
    cdsGridDataqryEmpDayAbsenceDocTypes: TDataSetField;
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsDetailAfterPost(DataSet: TDataSet);
    procedure cdsDetailAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    function GetInsertDetailRecordEnabled: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uUtils, fEmployeeDayAbsenceDocType;

{$R *.dfm}

procedure TfmEmployeeDayAbsenceReasons.cdsDetailNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsDetailEMP_DAY_ABSENCE_DOC_TYPE_CODE.AsInteger:=
    VarToInt(cdsDetail_MAX_EMP_DAY_ABSENCE_D_T_CODE.AsVariant) + 1;
end;

procedure TfmEmployeeDayAbsenceReasons.FormCreate(Sender: TObject);
begin
  inherited;
  DetailEditFormClass:= TfmEmployeeDayAbsenceDocType;
end;

procedure TfmEmployeeDayAbsenceReasons.cdsDetailAfterPost(
  DataSet: TDataSet);
begin
  inherited;

  try
    DoApplyUpdates;
  except
    DoCancelUpdates;
    raise;
  end;  { try }
end;

procedure TfmEmployeeDayAbsenceReasons.cdsDetailAfterDelete(
  DataSet: TDataSet);
begin
  inherited;

  try
    DoApplyUpdates;
  except
    DoCancelUpdates;
    raise;
  end;  { try }
end;

function TfmEmployeeDayAbsenceReasons.GetInsertDetailRecordEnabled: Boolean;
begin
  Result:=
    (inherited GetInsertDetailRecordEnabled) and
    (cdsGridDataEMP_DAY_ABSENCE_REASON_CODE.AsInteger <> 1);
end;

end.
