unit fStoreDealOut;

interface
                          
uses                       
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fStoreDeal, Db, DBClient, ImgList, ActnList, fProcessBindingFrame,
  fStoreDealProcessBinding, fBaseFrame, fDBFrame, fFieldEditFrame,
  DBCtrls, StdCtrls, Mask, JvDBLookup,
  Buttons, ExtCtrls, JvToolEdit, JvDBControls, AbmesClientDataSet, AbmesFields,
  Menus, JvButtons, AbmesReport, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDeptFieldEditFrameBald, fProductFieldEditFrame,
  fDateFieldEditFrame, JvComponent, JvCaptionButton, JvExControls, ToolWin,
  ComCtrls, JvComponentBase, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, System.Actions;

type
  TfmStoreDealOut = class(TfmStoreDeal)
    lblWantedQuantity: TLabel;
    edtWantedQuantity: TDBEdit;                           
    dbtMeasure2: TDBText;                                                                         
    cdsProductQuantityAndPrice: TAbmesClientDataSet;
    cdsProductQuantityAndPriceQUANTITY: TAbmesFloatField;
    cdsProductQuantityAndPriceACCOUNT_QUANTITY: TAbmesFloatField;
    cdsProductQuantityAndPriceTOTAL_PRICE: TAbmesFloatField;
    lblBaseCurrency: TLabel;
    edtTotalPrice: TDBEdit;
    lblTotalPrice: TLabel;
    edtSinglePrice: TDBEdit;
    lblSinglePrice: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cdsDataSTORE_DEAL_DATEChange(Sender: TField);
    procedure cdsDataSTORE_DEAL_NOChange(Sender: TField);
    procedure cdsDataPRODUCT_CODEChange(Sender: TField);
    procedure cdsDataQUANTITYChange(Sender: TField);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure btnStornoClick(Sender: TObject);
    procedure cdsDataACCOUNT_QUANTITYChange(Sender: TField);
    procedure FormShow(Sender: TObject);
  private
    FAccountWorkQuantityRatio: Double;
    FProductSinglePrice: Double;
    FQuantityChanging: Boolean;
    procedure UpdateAccountWorkQuantityRatioAndPrice;
    procedure UpdateAccountQuantityAndPrice;
    procedure UpdateQuantityAndPrice;
    procedure UpdatePrice;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure SetReadOnly(b: Boolean); override;
    procedure CheckBoundObject; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uDealTypes, dMain, uProcesses, uClientTypes, uUserActivityConsts,
  uMessageDecodingUtils, uProducts, uUtils;

{$R *.DFM}

resourcestring
  SZeroSaldoInStore = 'В това ТП Задържащо няма наличност от Управляемия Обект за датата на движението!';
  SQuantitiesMustBePositive = 'Количествата не могат да бъдат отрицателни или нула';

procedure TfmStoreDealOut.FormCreate(Sender: TObject);
begin
  inherited;
  FStoreDealTypeCode:= sdtOut;
  FInOut:= ioOut;
end;

procedure TfmStoreDealOut.FormShow(Sender: TObject);
begin
  inherited;
  lblBaseCurrency.Caption:= LoginContext.BaseCurrencyAbbrev;
end;

procedure TfmStoreDealOut.Initialize;
begin
  if (FProductClass = pcNormal) then
    Height:= 464
  else
    Height:= 512;

  if (FProductClass = pcNormal) then
    FDefaultProcessCode:= pOPWithMLL
  else
    FDefaultProcessCode:= pFinDstUOb;

  FQuantityChanging:= True;
  try
    inherited Initialize;
  finally
    FQuantityChanging:= False;
  end;

  cdsProductQuantityAndPrice.Params.ParamByName('STORE_CODE').Value:=
    cdsDataSTORE_CODE.Value;
  cdsProductQuantityAndPrice.Params.ParamByName('STORE_DEAL_DATE').Value:=
    cdsDataSTORE_DEAL_DATE.AsDateTime;

  if cdsDataPRODUCT_CODE.IsNull then
    cdsProductQuantityAndPrice.Params.ParamByName('PRODUCT_CODE').Clear
  else
    cdsProductQuantityAndPrice.Params.ParamByName('PRODUCT_CODE').Value:=
      cdsDataPRODUCT_CODE.Value;

  if cdsDataSTORE_DEAL_NO.IsNull then
    cdsProductQuantityAndPrice.Params.ParamByName('STORE_DEAL_NO').Clear
  else
    cdsProductQuantityAndPrice.Params.ParamByName('STORE_DEAL_NO').Value:=
      cdsDataSTORE_DEAL_NO.Value;

  if (DefaultsOrigin = doDataset) then
    UpdateAccountWorkQuantityRatioAndPrice
end;

procedure TfmStoreDealOut.cdsDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  if cdsDataPRODUCT_CODE.IsNull then
    cdsProductQuantityAndPrice.Params.ParamByName('PRODUCT_CODE').Clear
  else
    cdsProductQuantityAndPrice.Params.ParamByName('PRODUCT_CODE').AsInteger:=
      cdsDataPRODUCT_CODE.AsInteger;

  try
    UpdateAccountWorkQuantityRatioAndPrice;
  except
    cdsDataPRODUCT_CODE.Clear;
    frProduct.SetFocus;
//  Sledvashtia red ne znam dali triabva da go ima, ama mai kato e v except section
// cdsDataPRODUCT_CODE.Clear; ne vika cdsDataPRODUCT_CODEChange handler-a.
// Ne znam kato se vdigne exception dali ne se zabravia prisvoenata na parametara stoinost,
// shtoto mai i bez sledvashtia red Param-a si stoi Null, a ne kvoto mu e prisvoeno po-gore.
    cdsProductQuantityAndPrice.Params.ParamByName('PRODUCT_CODE').Clear;
    raise;
  end;
end;

procedure TfmStoreDealOut.cdsDataSTORE_DEAL_DATEChange(Sender: TField);
begin
  inherited;
// Tva tuk ne me kefi kak sam go napisal, ama ne me kefi i da izpolzvam AssignFieldValue
//v toia sluchai... Chudeh se dali ne moje edin ParamDataSet da sluji kato posrednik m/u
//cdsData.Fields i csProductQuantityAndPrice.Params, ama pak stava tejko...
  if cdsDataSTORE_DEAL_DATE.IsNull then
    cdsProductQuantityAndPrice.Params.ParamByName('STORE_DEAL_DATE').Clear
  else
    cdsProductQuantityAndPrice.Params.ParamByName('STORE_DEAL_DATE').AsDateTime:=
      cdsDataSTORE_DEAL_DATE.AsDateTime;

  try
    UpdateAccountWorkQuantityRatioAndPrice;
  except
    cdsDataSTORE_DEAL_DATE.Clear;
    frDealDate.SetFocus;
    cdsProductQuantityAndPrice.Params.ParamByName('STORE_DEAL_DATE').Clear;
    raise;
  end;
end;

procedure TfmStoreDealOut.cdsDataSTORE_DEAL_NOChange(Sender: TField);
begin
  inherited;
  if cdsDataSTORE_DEAL_NO.IsNull then
    cdsProductQuantityAndPrice.Params.ParamByName('STORE_DEAL_NO').Clear
  else
    cdsProductQuantityAndPrice.Params.ParamByName('STORE_DEAL_NO').AsInteger:=
      cdsDataSTORE_DEAL_NO.AsInteger;

  try
    UpdateAccountWorkQuantityRatioAndPrice;
  except
    cdsDataSTORE_DEAL_NO.Clear;
    edtDealNo.SetFocus;
    cdsProductQuantityAndPrice.Params.ParamByName('STORE_DEAL_NO').Clear;
    raise;
  end;
end;

procedure TfmStoreDealOut.UpdateAccountWorkQuantityRatioAndPrice;
var
  i: Integer;
begin
  FAccountWorkQuantityRatio:= cdsDataPRODUCT_ACC_MEASURE_COEF.AsFloat;
  FProductSinglePrice:= 0;

  with cdsProductQuantityAndPrice.Params do
    begin
      i:= 0;
      while (i <= (Count -1)) and (not Items[i].IsNull) do
        Inc(i);

      if (i = Count) then
        with cdsProductQuantityAndPrice do
          begin
            Open;
            try
              if (not (BOF and EOF)) and
                 (not cdsProductQuantityAndPriceQUANTITY.IsNull) and
                 (cdsProductQuantityAndPriceQUANTITY.Value > 0) and
                 (cdsProductQuantityAndPriceACCOUNT_QUANTITY.Value > 0) then
                begin
                  FAccountWorkQuantityRatio:=
                    (cdsProductQuantityAndPriceACCOUNT_QUANTITY.AsFloat /
                    cdsProductQuantityAndPriceQUANTITY.AsFloat);

                  if (not cdsDataQUANTITY.IsNull) then
                    cdsDataACCOUNT_QUANTITY.AsFloat:=
                      (cdsDataQUANTITY.AsFloat *
                      FAccountWorkQuantityRatio);

                  FProductSinglePrice:=
                    cdsProductQuantityAndPriceTOTAL_PRICE.AsFloat /
                    cdsProductQuantityAndPriceACCOUNT_QUANTITY.AsFloat;
                end
              else
                raise Exception.Create(SZeroSaldoInStore);
            finally
              Close;
            end;
          end;

      UpdateAccountQuantityAndPrice;
    end;
end;

procedure TfmStoreDealOut.UpdatePrice;
begin
  if (FProductSinglePrice = 0) then
    begin
      cdsDataSINGLE_PRICE.Clear;
      cdsDataTOTAL_PRICE.Clear;
    end
  else
    begin
      cdsDataSINGLE_PRICE.AsFloat:= FProductSinglePrice;

      if cdsDataACCOUNT_QUANTITY.IsNull then
        cdsDataTOTAL_PRICE.Clear
      else
        cdsDataTOTAL_PRICE.AsFloat:= cdsDataACCOUNT_QUANTITY.AsFloat * FProductSinglePrice;
    end;
end;

procedure TfmStoreDealOut.UpdateAccountQuantityAndPrice;
begin
  if FQuantityChanging then
    Exit;

  FQuantityChanging:= True;
  try
    if (FAccountWorkQuantityRatio = 0) then
      cdsDataACCOUNT_QUANTITY.Clear
    else
      if (not cdsDataQUANTITY.IsNull) then
        cdsDataACCOUNT_QUANTITY.AsFloat:=
          (cdsDataQUANTITY.AsFloat * FAccountWorkQuantityRatio);

    UpdatePrice;
  finally
    FQuantityChanging:= False;
  end;
end;

procedure TfmStoreDealOut.cdsDataQUANTITYChange(Sender: TField);
begin
  inherited;
  UpdateAccountQuantityAndPrice;
end;

procedure TfmStoreDealOut.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (cdsDataWANTED_QUANTITY.AsFloat <= 0) then
    raise Exception.Create(SQuantitiesMustBePositive);
end;

procedure TfmStoreDealOut.btnStornoClick(Sender: TObject);
const
  NewStoreDealOutActivities: array[TProductClass] of Integer = (0, uaNewStoreDealOut, uaNewFinStoreDealOut, 0);
  NewWorkStoreDealOutActivities: array[TProductClass] of Integer = (0, uaNewWorkStoreDealOut, uaNewFinWorkStoreDealOut, 0);
begin
  if not LoginContext.HasUserActivity(NewStoreDealOutActivities[FProductClass]) then
    begin
      LoginContext.CheckUserActivity(NewWorkStoreDealOutActivities[FProductClass]);
      LoginContext.CheckUserWorkDept(cdsDataSTORE_CODE.AsInteger);
    end;  { if }

  inherited;

  if (cdsData.State in dsEditModes) then
    UpdateAccountWorkQuantityRatioAndPrice;
end;

procedure TfmStoreDealOut.SetReadOnly(b: Boolean);
begin
  inherited;
  edtWantedQuantity.ReadOnly:= b;
end;

procedure TfmStoreDealOut.CheckBoundObject;
var
  ProductCode: Integer;
  AccountSinglePrice: Double;
  CurrencyCode: Integer;
  DeptCode: Integer;
begin
  inherited;

  case cdsDataBND_PROCESS_CODE.AsInteger of
    pOPWithMLL:
      begin
        ProductCode:=
          dmMain.SvrStore.GetModelLineProduct(
            cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger,
            cdsDataBND_PROCESS_OBJECT_CODE.AsInteger
          );

        DeptCode:=
          dmMain.SvrStore.GetModelLinePSDDept(
            cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger,
            cdsDataBND_PROCESS_OBJECT_CODE.AsInteger
          );

        if cdsData.CanModify and FClientPanelEnabled then
          begin
            cdsDataPRODUCT_CODE.AsVarInteger:= ProductCode;
            cdsDataDEPT_CODE.AsVarInteger:= DeptCode;
          end;
      end;

    pEXP:
      begin
        ProductCode:=
          dmMain.SvrStore.GetSaleShipmentProduct(
            cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger,
            cdsDataBND_PROCESS_OBJECT_CODE.AsInteger
          );

        if cdsData.CanModify and FClientPanelEnabled then
          cdsDataPRODUCT_CODE.AsVarInteger:= ProductCode;
      end;

    pRPD:
      begin
        dmMain.SvrStore.GetStoreDealOutData(
          cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger,
          cdsDataBND_PROCESS_OBJECT_CODE.AsInteger,
          ProductCode,
          AccountSinglePrice,
          CurrencyCode);
          
        if cdsData.CanModify and FClientPanelEnabled then
          cdsDataPRODUCT_CODE.AsVarInteger:= ProductCode;
      end;

    pFinPrdUobZd,
    pFinPrdUobNl,
    pFinDstUOb,
    pFinPrdFOb,
    pFinDstFOb,
    pFinDstPrc,
    pFinAdm,
    pFinVtrRF,
    pFinVtrOF:
      begin
        dmMain.SvrStore.GetRFMLStoreDealData(
          cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger,
          cdsDataBND_PROCESS_OBJECT_CODE.AsInteger,
          ProductCode);

        if cdsData.CanModify and FClientPanelEnabled then
          cdsDataPRODUCT_CODE.AsVarInteger:= ProductCode;
      end;

    pBPOItem:
      begin
        dmMain.SvrStore.GetBOIOrderData(
          cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger,
          cdsDataBND_PROCESS_OBJECT_CODE.AsInteger,
          ProductCode);

        if cdsData.CanModify and FClientPanelEnabled then
          cdsDataPRODUCT_CODE.AsVarInteger:= ProductCode;
      end;
  end;  { case }
end;

procedure TfmStoreDealOut.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProduct) then
    AFrame.ReadOnly:=
      (EditMode = emReadOnly) or
      (not FClientPanelEnabled) or
      (cdsDataBND_PROCESS_CODE.AsInteger = pEXP) or
      (cdsDataBND_PROCESS_CODE.AsInteger = pRPD) 
  else
    inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmStoreDealOut.cdsDataACCOUNT_QUANTITYChange(Sender: TField);
begin
  inherited;
  UpdateQuantityAndPrice;
end;

procedure TfmStoreDealOut.UpdateQuantityAndPrice;
begin
  if FQuantityChanging then
    Exit;

  FQuantityChanging:= True;
  try
    if (FAccountWorkQuantityRatio = 0) then
      cdsDataQUANTITY.Clear
    else
      if (not cdsDataACCOUNT_QUANTITY.IsNull) then
        cdsDataQUANTITY.AsFloat:=
          (cdsDataACCOUNT_QUANTITY.AsFloat / FAccountWorkQuantityRatio);

    UpdatePrice;
  finally
    FQuantityChanging:= False;
  end;
end;

end.
