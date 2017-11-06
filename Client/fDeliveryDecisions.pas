unit fDeliveryDecisions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh,
  DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, Menus;

type
  TfmDeliveryDecisions = class(TBottomButtonGridForm)
    cdsGridDataDELIVERY_DECISION_CODE: TAbmesFloatField;
    cdsGridDataDELIVERY_DECISION_ABBREV: TAbmesWideStringField;
    cdsGridDataDELIVERY_DECISION_NAME: TAbmesWideStringField;
    cdsGridDataDELIVERY_DECISION_NO: TAbmesFloatField;
    cdsGridDataALLOWS_DELIVERY_CONTRACT: TAbmesFloatField;
    cdsGridDataIS_ESTIMATION_BOUND: TAbmesFloatField;
    cdsGridDataIS_REALIZATION_BOUND: TAbmesFloatField;
    cdsGridData_MAX_DELIVERY_DECISION_NO: TAggregateField;
    cdsGridDataREQUIRES_FINISHING: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataIS_REALIZATION_BOUNDChange(Sender: TField);
    procedure cdsGridDataREQUIRES_FINISHINGChange(Sender: TField);
    procedure cdsGridDataALLOWS_DELIVERY_CONTRACTChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  fDeliveryDecision, dMain, uUtils;

{$R *.dfm}

{ TfmDeliveryDecisions }

procedure TfmDeliveryDecisions.cdsGridDataALLOWS_DELIVERY_CONTRACTChange(Sender: TField);
begin
  inherited;
  if cdsGridDataALLOWS_DELIVERY_CONTRACT.AsBoolean then
    cdsGridDataREQUIRES_FINISHING.AsBoolean:= False;
end;

procedure TfmDeliveryDecisions.cdsGridDataIS_REALIZATION_BOUNDChange(
  Sender: TField);
begin
  inherited;
  cdsGridDataALLOWS_DELIVERY_CONTRACT.AsBoolean:= False;
end;

procedure TfmDeliveryDecisions.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataDELIVERY_DECISION_CODE.AsInteger:= dmMain.SvrDeliveries.GetNewDeliveryDecisionCode;
  cdsGridDataDELIVERY_DECISION_NO.AsInteger:= VarToInt(cdsGridData_MAX_DELIVERY_DECISION_NO.AsVariant) + 1;
  cdsGridDataIS_ESTIMATION_BOUND.AsBoolean:= False;
  cdsGridDataIS_REALIZATION_BOUND.AsBoolean:= False;
  cdsGridDataALLOWS_DELIVERY_CONTRACT.AsBoolean:= False;
end;

procedure TfmDeliveryDecisions.cdsGridDataREQUIRES_FINISHINGChange(Sender: TField);
begin
  inherited;
  if cdsGridDataREQUIRES_FINISHING.AsBoolean then
    cdsGridDataALLOWS_DELIVERY_CONTRACT.AsBoolean:= False;
end;

procedure TfmDeliveryDecisions.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmDeliveryDecision;
end;

end.
