unit fFinModelLineReasons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh,
  DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls;

type
  TfmFinModelLineReasons = class(TBottomButtonGridForm)
    cdsGridDataFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField;
    cdsGridDataFIN_MODEL_LINE_REASON_NO: TAbmesFloatField;
    cdsGridDataFIN_MODEL_LINE_REASON_NAME: TAbmesWideStringField;
    cdsGridDataFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField;
    cdsGridData_MAX_FIN_MODEL_LINE_REASON_CODE: TAggregateField;
    cdsGridData_MAX_FIN_MODEL_LINE_REASON_NO: TAggregateField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  fFinModelLineReason, dMain, uUtils;

{$R *.dfm}

{ TfmFinModelLineReasons }

procedure TfmFinModelLineReasons.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmFinModelLineReason;
end;

procedure TfmFinModelLineReasons.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsGridDataFIN_MODEL_LINE_REASON_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_FIN_MODEL_LINE_REASON_CODE.AsVariant) + 1;

  cdsGridDataFIN_MODEL_LINE_REASON_NO.AsInteger:=
    VarToInt(cdsGridData_MAX_FIN_MODEL_LINE_REASON_NO.AsVariant) + 1;
end;

end.
