unit fSaleDecisionTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh,
  DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, Menus;

type
  TfmSaleDecisionTypes = class(TBottomButtonGridForm)
    cdsGridDataDECISION_TYPE_CODE: TAbmesFloatField;
    cdsGridDataDECISION_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataDECISION_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataDECISION_TYPE_NO: TAbmesFloatField;
    cdsGridDataALLOWS_SALE: TAbmesFloatField;
    cdsGridDataIS_ESTIMATION_BOUND: TAbmesFloatField;
    cdsGridDataIS_REALIZATION_BOUND: TAbmesFloatField;
    cdsGridData_MAX_DECISION_TYPE_NO: TAggregateField;
    cdsGridDataREQUIRES_FINISHING: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataIS_REALIZATION_BOUNDChange(Sender: TField);
    procedure cdsGridDataREQUIRES_FINISHINGChange(Sender: TField);
    procedure cdsGridDataALLOWS_SALEChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  fSaleDecisionType, dMain, uUtils;

{$R *.dfm}

{ TfmSaleDecisionTypes }

procedure TfmSaleDecisionTypes.cdsGridDataALLOWS_SALEChange(Sender: TField);
begin
  inherited;
  if cdsGridDataALLOWS_SALE.AsBoolean then
    cdsGridDataREQUIRES_FINISHING.AsBoolean:= False;
end;

procedure TfmSaleDecisionTypes.cdsGridDataIS_REALIZATION_BOUNDChange(
  Sender: TField);
begin
  inherited;
  cdsGridDataALLOWS_SALE.AsBoolean:= False;
end;

procedure TfmSaleDecisionTypes.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataDECISION_TYPE_CODE.AsInteger:= dmMain.SvrSaleOrders.GetNewSaleDecisionTypeCode;
  cdsGridDataDECISION_TYPE_NO.AsInteger:= VarToInt(cdsGridData_MAX_DECISION_TYPE_NO.AsVariant) + 1;
  cdsGridDataIS_ESTIMATION_BOUND.AsBoolean:= False;
  cdsGridDataIS_REALIZATION_BOUND.AsBoolean:= False;
  cdsGridDataALLOWS_SALE.AsBoolean:= False;
  cdsGridDataREQUIRES_FINISHING.AsBoolean:= False;
end;

procedure TfmSaleDecisionTypes.cdsGridDataREQUIRES_FINISHINGChange(Sender: TField);
begin
  inherited;
  if cdsGridDataREQUIRES_FINISHING.AsBoolean then
    cdsGridDataALLOWS_SALE.AsBoolean:= False;
end;

procedure TfmSaleDecisionTypes.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmSaleDecisionType;
end;

end.
