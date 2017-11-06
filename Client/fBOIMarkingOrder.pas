unit fBOIMarkingOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBOIOrder, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, fProductFieldEditFrame,
  fProductFieldEditFrameLabeled, fDateIntervalFrame, fDateFieldEditFrame,
  fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald,
  fDeptFieldEditFrameLabeled, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls,
  fProcessObjectFrame, fDeliveryProcessObject, System.Actions, fProductFieldEditFrameBald;

type
  TfmBOIMarkingOrder = class(TfmBOIOrder)
    pnlPrices: TPanel;
    gbReal: TGroupBox;
    lblBOIOrderAccountTotalPrice: TLabel;
    lblAccountDate: TLabel;
    lblBaseCurrency4: TLabel;
    edtBOIOrderAccountTotalPrice: TDBEdit;
    frAccountDate: TfrDateFieldEditFrame;
    gbPlan: TGroupBox;
    lblPlanTotalPrice: TLabel;
    lblPlanDate: TLabel;
    lblBudgetOrderPlanPercents: TLabel;
    lblBaseCurrency1: TLabel;
    lblPercents4: TLabel;
    edtPlanTotalPrice: TDBEdit;
    frPlanDate: TfrDateFieldEditFrame;
    edtBOITotalPricePercent: TDBEdit;
    pnlDelivery: TPanel;
    cdsBOIOrderDeliveryData: TAbmesClientDataSet;
    cdsBOIOrderDeliveryDataPLAN_TOTAL_PRICE: TAbmesFloatField;
    cdsBOIOrderDeliveryDataPLAN_DATE: TAbmesSQLTimeStampField;
    cdsBOIOrderDeliveryDataACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    cdsBOIOrderDeliveryDataACCOUNT_DATE: TAbmesSQLTimeStampField;
    pnlDeliveryPrices: TPanel;
    gbDeliveryReal: TGroupBox;
    lblDeliveryAccountTotalPrice: TLabel;
    lblDeliveryAccountDate: TLabel;
    lblBaseCurrency6: TLabel;
    edtDeliveryAccountTotalPrice: TDBEdit;
    frDeliveryAccountDate: TfrDateFieldEditFrame;
    gbDeliveryPlan: TGroupBox;
    lblDeliveryPlanTotalPrice: TLabel;
    lblDeliveryPlanDate: TLabel;
    lblDeliveryBudgetOrderPlanPercents: TLabel;
    lblBaseCurrency5: TLabel;
    lblPercents5: TLabel;
    edtDeliveryPlanTotalPrice: TDBEdit;
    frDeliveryPlanDate: TfrDateFieldEditFrame;
    edtDeliveryBOITotalPricePercent: TDBEdit;
    dsBOIOrderDeliveryData: TDataSource;
    cdsBOIOrderDeliveryData_BOI_PRICE_PERCENT: TAbmesFloatField;
    cdsPrintDataPLAN_DATE: TAbmesSQLTimeStampField;
    cdsPrintDataPLAN_TOTAL_PRICE: TAbmesFloatField;
    cdsPrintDataACCOUNT_DATE: TAbmesSQLTimeStampField;
    cdsPrintDataACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    cdsPrintDataDESCRIPTION: TAbmesWideStringField;
    cdsPrintData_BOI_PRICE_PERCENT: TAbmesFloatField;
    cdsPrintDataDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsPrintDataDCD_CODE: TAbmesFloatField;
    cdsPrintData_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsPrintDataDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    edtDeliveryRealQuantity: TDBEdit;
    lblDeliveryRealQuantity: TLabel;
    dbtDeliveryRealQuantityMeasureAbbrev: TDBText;
    edtDeliveryPlanQuantity: TDBEdit;
    lblDeliveryPlanQuantity: TLabel;
    dbtDeliveryPlanQuantityMeasureAbbrev: TDBText;
    cdsBOIOrderDeliveryDataPRODUCT_CODE: TAbmesFloatField;
    cdsBOIOrderDeliveryDataPLAN_QUANTITY: TAbmesFloatField;
    cdsBOIOrderDeliveryDataMEASURE_ABBREV: TAbmesWideStringField;
    gbDescription: TGroupBox;
    edtDescription: TDBEdit;
    gbDelivery: TGroupBox;
    frDelivery: TfrDeliveryProcessObject;
    frDeliveryProduct: TfrProductFieldEditFrameBald;
    lblDeliveryProduct: TLabel;
    cdsBOIOrderDeliveryDataREAL_QUANTITY: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure frDeliveryExit(Sender: TObject);
    procedure cdsDataBND_PROCESS_OBJECT_CODEChange(Sender: TField);
    procedure cdsDataBND_PROCESS_OBJECT_BRANCH_CODEChange(Sender: TField);
    procedure cdsBOIOrderDeliveryDataBeforeOpen(DataSet: TDataSet);
    procedure cdsBOIOrderDeliveryData_BOI_PRICE_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsBOIOrderDeliveryDataCalcFields(DataSet: TDataSet);
    procedure cdsPrintData_BOI_PRICE_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    FChangingBndProcessObject: Boolean;
    FOriginalBottomPanelsTop: Integer;
    FOriginalBOIOrderStuffGroupBoxHeight: Integer;
    procedure OnBndProcessObjectChange;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function RequiredFieldsNotNull: Boolean; override;
    function AccountDateField: TAbmesSQLTimeStampField; override;
    function AccountTotalPriceField: TAbmesFloatField; override;
    function PlanDateField: TAbmesSQLTimeStampField; override;
    function PlanTotalPriceField: TAbmesFloatField; override;
    procedure AssignPrintFields; override;
  public
    { Public declarations }
  end;

implementation

uses
  uClientUtils, uUtils, uClientTypes, uBudgetClientUtils, uBudgetUtils,
  rBOIMarkingOrder, Math;

{$R *.dfm}

procedure TfmBOIMarkingOrder.FormCreate(Sender: TObject);
begin
  inherited;
  frPlanDate.FieldNames:= 'PLAN_DATE';
  frAccountDate.FieldNames:= 'ACCOUNT_DATE';
  frDelivery.SetDataSet(dsData.DataSet);
  frDelivery.FieldNames:= 'DELIVERY_OBJECT_BRANCH_CODE; DELIVERY_OBJECT_CODE';

  frDeliveryPlanDate.SetDataSet(cdsBOIOrderDeliveryData);
  frDeliveryPlanDate.FieldNames:= 'PLAN_DATE';
  frDeliveryAccountDate.SetDataSet(cdsBOIOrderDeliveryData);
  frDeliveryAccountDate.FieldNames:= 'ACCOUNT_DATE';

  frDeliveryProduct.SetDataSet(cdsBOIOrderDeliveryData);

  ReportClass:= TrptBOIMarkingOrder;
end;

procedure TfmBOIMarkingOrder.FormShow(Sender: TObject);
begin
  inherited;
  frDelivery.ShowFrame;
  FOriginalBottomPanelsTop:= pnlPrices.Top;
  FOriginalBOIOrderStuffGroupBoxHeight:= gbBOIOrderStuff.Height;
end;

procedure TfmBOIMarkingOrder.frDeliveryExit(Sender: TObject);
begin
  inherited;
  if (EditMode <> emReadOnly) then
    frDelivery.DoApplyUpdates;
end;

function TfmBOIMarkingOrder.RequiredFieldsNotNull: Boolean;
begin
  Result:=
    not cdsDataCONSUMER_DEPT_CODE.IsNull and
    not cdsDataDESCRIPTION.IsNull and
    ( ( not cdsDataPLAN_TOTAL_PRICE.IsNull and
        not cdsDataPLAN_DATE.IsNull
      ) or
      ( not cdsDataDELIVERY_OBJECT_BRANCH_CODE.IsNull and
        not cdsDataDELIVERY_OBJECT_CODE.IsNull
      )
    );
end;

procedure TfmBOIMarkingOrder.actFormUpdate(Sender: TObject);
var
  IsDeliveriesIntroducing: Boolean;
  BottomPanelsTop: Integer;
begin
  inherited;

  SetControlsReadOnly(IsReadOnly, [edtDescription, edtPlanTotalPrice]);

  SetControlReadOnly(
    ( (EditMode = emReadOnly) or
      not cdsDataCLOSE_EMPLOYEE_CODE.IsNull or
      not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
      not cdsDataIS_CONFIRMED.AsBoolean
    ),
    edtBOIOrderAccountTotalPrice
  );

  IsDeliveriesIntroducing:=
    (IntToBudgetOrderItemType(cdsBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_CODE.AsInteger) = boitDeliveriesIntroducing);

  pnlDelivery.Visible:= IsDeliveriesIntroducing;
  pnlDeliveryPrices.Visible:= IsDeliveriesIntroducing;
  pnlPrices.Visible:= not IsDeliveriesIntroducing;

  Height:= OriginalFormHeight - IfThen(not IsDeliveriesIntroducing, pnlDelivery.Height + 8);
  gbBOIOrderStuff.Height:= FOriginalBOIOrderStuffGroupBoxHeight - IfThen(not IsDeliveriesIntroducing, pnlDelivery.Height + 8);
  BottomPanelsTop:= FOriginalBottomPanelsTop - IfThen(not IsDeliveriesIntroducing, pnlDelivery.Height + 8);
  pnlPrices.Top:= BottomPanelsTop;
  pnlDeliveryPrices.Top:= BottomPanelsTop;
  gbDecision.Top:= BottomPanelsTop;
end;

procedure TfmBOIMarkingOrder.cdsBOIOrderDeliveryDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsBOIOrderDeliveryData.Params.ParamByName('DELIVERY_OBJECT_BRANCH_CODE').AsInteger:=
    cdsDataDELIVERY_OBJECT_BRANCH_CODE.AsInteger;

  cdsBOIOrderDeliveryData.Params.ParamByName('DELIVERY_OBJECT_CODE').AsInteger:=
    cdsDataDELIVERY_OBJECT_CODE.AsInteger;
end;

procedure TfmBOIMarkingOrder.cdsBOIOrderDeliveryData_BOI_PRICE_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIMarkingOrder.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  CheckRequiredField(cdsDataDESCRIPTION);

  if not cdsDataACCOUNT_TOTAL_PRICE.IsNull or not cdsDataACCOUNT_DATE.IsNull then
    CheckRequiredFields([cdsDataACCOUNT_TOTAL_PRICE, cdsDataACCOUNT_DATE]);
end;

procedure TfmBOIMarkingOrder.OnBndProcessObjectChange;
var
  SavedDeliveryObjectBranchCode: Variant;
  SavedDeliveryObjectCode: Variant;
begin
  if (IntToBudgetOrderitemType(cdsBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_CODE.AsInteger) <> boitDeliveriesIntroducing) then
    Exit;
    
  try
    SavedDeliveryObjectBranchCode:= cdsDataDELIVERY_OBJECT_BRANCH_CODE.AsVariant;
    cdsDataDELIVERY_OBJECT_BRANCH_CODE.Assign(cdsDataBND_PROCESS_OBJECT_BRANCH_CODE);
    try
      SavedDeliveryObjectCode:= cdsDataDELIVERY_OBJECT_CODE.AsVariant;
      cdsDataDELIVERY_OBJECT_CODE.Assign(cdsDataBND_PROCESS_OBJECT_CODE);
      try
        RefreshDataSet(cdsBOIOrderDeliveryData);
        actConfirm.Execute;
      except
        cdsDataDELIVERY_OBJECT_CODE.AsVariant:= SavedDeliveryObjectCode;
        raise;
      end;  { try }
    except
      cdsDataDELIVERY_OBJECT_BRANCH_CODE.AsVariant:= SavedDeliveryObjectBranchCode;
      raise;
    end;  { try }
  except
    RefreshDataSet(cdsBOIOrderDeliveryData);
    raise;
  end;  { try }
end;

procedure TfmBOIMarkingOrder.cdsDataBND_PROCESS_OBJECT_BRANCH_CODEChange(Sender: TField);
begin
  inherited;
  if FChangingBndProcessObject then
    begin
      FChangingBndProcessObject:= False;
      OnBndProcessObjectChange;
    end
  else
    FChangingBndProcessObject:= True;
end;

procedure TfmBOIMarkingOrder.cdsDataBND_PROCESS_OBJECT_CODEChange(Sender: TField);
begin
  inherited;
  if FChangingBndProcessObject then
    begin
      FChangingBndProcessObject:= False;
      OnBndProcessObjectChange;
    end
  else
    FChangingBndProcessObject:= True;
end;

procedure TfmBOIMarkingOrder.cdsPrintData_BOI_PRICE_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIMarkingOrder.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frAccountDate) then
    begin
      AFrame.ReadOnly:=
        not cdsDataCLOSE_EMPLOYEE_CODE.IsNull or
        not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
        not cdsDataIS_CONFIRMED.AsBoolean;

      Exit;
    end;  { if }

  if (AFrame = frDeliveryPlanDate) or
     (AFrame = frDeliveryAccountDate) or
     (AFrame = frDeliveryProduct) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  if (AFrame = frDelivery) then
    begin
      AFrame.ReadOnly:=
        IsReadOnly or
        not cdsBOIOrderInfoBOI_IS_CONFIRMED.AsBoolean;

      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmBOIMarkingOrder.OpenDataSets;
begin
  inherited OpenDataSets;
  cdsBOIOrderDeliveryData.Open;
end;

procedure TfmBOIMarkingOrder.CloseDataSets;
begin
  cdsBOIOrderDeliveryData.Close;
  inherited CloseDataSets;
end;

procedure TfmBOIMarkingOrder.cdsBOIOrderDeliveryDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsBOIOrderDeliveryDataPLAN_TOTAL_PRICE.IsNull or
     (cdsBOIOrderInfoBOI_TOTAL_PRICE.AsFloat = 0) then
    cdsBOIOrderDeliveryData_BOI_PRICE_PERCENT.Clear
  else
    cdsBOIOrderDeliveryData_BOI_PRICE_PERCENT.AsFloat:=
      cdsBOIOrderDeliveryDataPLAN_TOTAL_PRICE.AsFloat / cdsBOIOrderInfoBOI_TOTAL_PRICE.AsFloat;
end;

function TfmBOIMarkingOrder.PlanDateField: TAbmesSQLTimeStampField;
begin
  if (IntToBudgetOrderItemType(cdsBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_CODE.AsInteger) = boitDeliveriesIntroducing) then
    Result:= cdsBOIOrderDeliveryDataPLAN_DATE
  else
    Result:= inherited PlanDateField;
end;

function TfmBOIMarkingOrder.PlanTotalPriceField: TAbmesFloatField;
begin
  if (IntToBudgetOrderItemType(cdsBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_CODE.AsInteger) = boitDeliveriesIntroducing) then
    Result:= cdsBOIOrderDeliveryDataPLAN_TOTAL_PRICE
  else
    Result:= inherited PlanTotalPriceField;
end;

function TfmBOIMarkingOrder.AccountDateField: TAbmesSQLTimeStampField;
begin
  if (IntToBudgetOrderItemType(cdsBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_CODE.AsInteger) = boitDeliveriesIntroducing) then
    Result:= cdsBOIOrderDeliveryDataACCOUNT_DATE
  else
    Result:= inherited AccountDateField;
end;

function TfmBOIMarkingOrder.AccountTotalPriceField: TAbmesFloatField;
begin
  if (IntToBudgetOrderItemType(cdsBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_CODE.AsInteger) = boitDeliveriesIntroducing) then
    Result:= cdsBOIOrderDeliveryDataACCOUNT_TOTAL_PRICE
  else
    Result:= inherited AccountTOtalPriceField;
end;

procedure TfmBOIMarkingOrder.AssignPrintFields;
begin
  inherited AssignPrintFields;
  if (IntToBudgetOrderItemType(cdsBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_CODE.AsInteger) = boitDeliveriesIntroducing) then
    begin
      AssignFields(cdsBOIOrderDeliveryData, cdsPrintData);
      AssignFields(frDelivery.pdsProcessObjectParams, cdsPrintData);
    end;  { if }
end;

end.
