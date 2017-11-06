unit fBOIWasteOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBOIOrder, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields,
  fDateFieldEditFrame, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, fDeptFieldEditFrameLabeled, ToolWin,
  ComCtrls, fDateIntervalFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, Mask, DBCtrls, JvComponentBase,
  fTreeOnlyNodeFieldEditFrame, fProductFieldEditFrame,                   
  fProductFieldEditFrameLabeled, rBOIWasteOrder;

type
  TfmBOIWasteOrder = class(TfmBOIOrder)
    gbPlan: TGroupBox;
    lblPlanTotalPrice: TLabel;
    lblPlanDate: TLabel;
    lblBudgetOrderPlanPercents: TLabel;
    lblBaseCurrency1: TLabel;
    edtPlanTotalPrice: TDBEdit;
    frPlanDate: TfrDateFieldEditFrame;
    edtBOITotalPricePercent: TDBEdit;
    gbReal: TGroupBox;
    lblBOIOrderAccountTotalPrice: TLabel;
    lblAccountDate: TLabel;
    lblBaseCurrency4: TLabel;
    edtBOIOrderAccountTotalPrice: TDBEdit;
    frAccountDate: TfrDateFieldEditFrame;
    gbDescription: TGroupBox;
    edtDescription: TDBEdit;
    lblPercents4: TLabel;
    cdsPrintDataPLAN_DATE: TAbmesSQLTimeStampField;
    cdsPrintDataPLAN_TOTAL_PRICE: TAbmesFloatField;
    cdsPrintDataACCOUNT_DATE: TAbmesSQLTimeStampField;
    cdsPrintDataACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    cdsPrintDataDESCRIPTION: TAbmesWideStringField;
    cdsPrintData_BOI_PRICE_PERCENT: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsPrintData_BOI_PRICE_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function RequiredFieldsNotNull: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses uClientUtils, uUtils, uClientTypes;

{$R *.dfm}

procedure TfmBOIWasteOrder.FormCreate(Sender: TObject);
begin
  inherited;
  frPlanDate.FieldNames:= 'PLAN_DATE';
  frAccountDate.FieldNames:= 'ACCOUNT_DATE';
  ReportClass:= TrptBOIWasteOrder;
end;

function TfmBOIWasteOrder.RequiredFieldsNotNull: Boolean;
begin
  Result:=
    not cdsDataCONSUMER_DEPT_CODE.IsNull and
    not cdsDataDESCRIPTION.IsNull and
    not cdsDataPLAN_TOTAL_PRICE.IsNull and
    not cdsDataPLAN_DATE.IsNull;
end;

procedure TfmBOIWasteOrder.actFormUpdate(Sender: TObject);
begin
  inherited;
  edtDescription.ReadOnly:= IsReadOnly;
  edtDescription.Color:= ReadOnlyColors[edtDescription.ReadOnly];
  edtPlanTotalPrice.ReadOnly:= IsReadOnly;
  edtPlanTotalPrice.Color:= ReadOnlyColors[edtPlanTotalPrice.ReadOnly];

  edtBOIOrderAccountTotalPrice.ReadOnly:=
    (EditMode = emReadOnly) or
    not cdsDataCLOSE_EMPLOYEE_CODE.IsNull or
    not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
    not cdsDataIS_CONFIRMED.AsBoolean;
  edtBOIOrderAccountTotalPrice.Color:= ReadOnlyColors[edtBOIOrderAccountTotalPrice.ReadOnly];
end;

procedure TfmBOIWasteOrder.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  CheckRequiredField(cdsDataDESCRIPTION);

  if not cdsDataACCOUNT_TOTAL_PRICE.IsNull or not cdsDataACCOUNT_DATE.IsNull then
    CheckRequiredFields([cdsDataACCOUNT_TOTAL_PRICE, cdsDataACCOUNT_DATE]);
end;

procedure TfmBOIWasteOrder.cdsPrintData_BOI_PRICE_PERCENTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIWasteOrder.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frAccountDate) then
    AFrame.ReadOnly:=
      not cdsDataCLOSE_EMPLOYEE_CODE.IsNull or
      not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
      not cdsDataIS_CONFIRMED.AsBoolean
  else
    inherited;
end;

end.
