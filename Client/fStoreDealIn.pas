unit fStoreDealIn;

interface
                               
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fStoreDeal, Db, DBClient, ImgList, ActnList, fProcessBindingFrame,
  fStoreDealProcessBinding, fBaseFrame, fDBFrame, fFieldEditFrame,
  DBCtrls, StdCtrls, Mask, JvDBLookup,
  Buttons, ExtCtrls, JvToolEdit, JvDBControls, AbmesClientDataSet, AbmesFields,
  Menus, JvButtons, AbmesReport, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDeptFieldEditFrameBald, fProductFieldEditFrame,
  JvComponent, JvCaptionButton, JvExControls, fDateFieldEditFrame, ToolWin,
  ComCtrls, JvComponentBase, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, uUtils, uSection, System.Actions;

type
  TfmStoreDealIn = class(TfmStoreDeal)
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsCurrenciesSCALE: TAbmesFloatField;
    cdsCurrenciesROUNDER: TAbmesFloatField;
    cdsData_CURRENCY_NAME: TAbmesWideStringField;
    cbCurrency: TJvDBLookupCombo;
    lblCurrency: TLabel;
    lblTotalPrice: TLabel;
    edtTotalPrice: TDBEdit;
    lblSinglePrice: TLabel;
    edtSinglePrice: TDBEdit;
    lblAccountQuantityReadOnly: TLabel;
    edtAccountQuantityReadOnly: TDBEdit;
    procedure btnStornoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataACCOUNT_QUANTITYChange(Sender: TField);
    procedure cdsDataTOTAL_PRICEChange(Sender: TField);
    procedure cdsDataPRODUCT_CODEChange(Sender: TField);
    procedure cdsDataSINGLE_PRICEChange(Sender: TField);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataTOTAL_PRICEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDataSINGLE_PRICEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    FCalculatingPrice: TTrySinglePassSection;
    FBoundProcessCode: Integer;
    FHasShowDeliveryPricesActivity: Boolean;
    procedure PriceFieldGetText(Sender: TField; var Text: String; DisplayText: Boolean);
  protected
    procedure SetReadOnly(b: Boolean); override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure CheckBoundObject; override;
  public
    procedure Initialize; override;
  end;

  
implementation

uses
  uDealTypes, dMain, uProcesses, Math, uClientUtils, uClientTypes,
  uUserActivityConsts, uProducts;

{$R *.DFM}

resourcestring
  SCannotConcludeSaleWithoutManufactureQuantity = 'Не можете да отчетете постъпление без количество за ОПВ';
  SProductPriceIsEmpty = ' Не е въведена цена на този Управляем Обект!';

procedure TfmStoreDealIn.FormCreate(Sender: TObject);
begin
  inherited;
  FStoreDealTypeCode:= sdtIn;
  FInOut:= ioIn;
  FDefaultProcessCode:= pPD;

  RegisterFieldTextVisibility(IsLevelOneInvestedValueVisible, cdsData_CURRENCY_NAME);
end;

procedure TfmStoreDealIn.Initialize;
begin
  if (FProductClass = pcNormal) then
    Height:= 471
  else
    Height:= 519;

  if (FProductClass = pcNormal) then
    FDefaultProcessCode:= pPD
  else
    FDefaultProcessCode:= pFinPrdUobZd;

  FHasShowDeliveryPricesActivity:= LoginContext.HasUserActivity(uaShowLevelOneInvestedValues);

  inherited Initialize;
end;

procedure TfmStoreDealIn.PriceFieldGetText(Sender: TField; var Text: String; DisplayText: Boolean);
var
  FormatString: string;
begin
  if DisplayText then
    FormatString:= (Sender as TNumericField).DisplayFormat
  else
    FormatString:= (Sender as TNumericField).EditFormat;

  if (FBoundProcessCode = pPD) and
     not FHasShowDeliveryPricesActivity and
     not Sender.IsNull then
    Text:= SNotAvailable
  else
    if Sender.IsNull then
      Text:= ''
    else
      Text:= FormatFloat(FormatString, Sender.Value);
end;

procedure TfmStoreDealIn.btnStornoClick(Sender: TObject);
const
  NewStoreDealInActivities: array[TProductClass] of Integer = (0, uaNewStoreDealIn, uaNewFinStoreDealIn, 0);
  NewWorkStoreDealInActivities: array[TProductClass] of Integer = (0, uaNewWorkStoreDealIn, uaNewFinWorkStoreDealIn, 0);
begin
  if not LoginContext.HasUserActivity(NewStoreDealInActivities[FProductClass]) then
    begin
      LoginContext.CheckUserActivity(NewWorkStoreDealInActivities[FProductClass]);
      LoginContext.CheckUserWorkDept(cdsDataSTORE_CODE.AsInteger);
    end;  { if }

  inherited;
end;

procedure TfmStoreDealIn.cdsDataACCOUNT_QUANTITYChange(Sender: TField);
begin
  inherited;
  FCalculatingPrice.TempEnter/
    procedure begin
      if cdsDataACCOUNT_QUANTITY.IsNull then
        cdsDataTOTAL_PRICE.Clear
      else
        begin
          if (not cdsDataTOTAL_PRICE.IsNull) then
            begin
              if (not cdsDataSINGLE_PRICE.IsNull) then
                cdsDataTOTAL_PRICE.AsFloat:=
                  cdsDataSINGLE_PRICE.AsFloat * cdsDataACCOUNT_QUANTITY.AsFloat
              else
                cdsDataSINGLE_PRICE.AsFloat:=
                  cdsDataTOTAL_PRICE.AsFloat / cdsDataACCOUNT_QUANTITY.AsFloat;
            end
          else
            cdsDataTOTAL_PRICE.AsFloat:=
              cdsDataSINGLE_PRICE.AsFloat * cdsDataACCOUNT_QUANTITY.AsFloat;
        end;
    end;
end;

procedure TfmStoreDealIn.cdsDataTOTAL_PRICEChange(Sender: TField);
begin
  inherited;
  FCalculatingPrice.TempEnter/
    procedure begin
      if cdsDataTOTAL_PRICE.IsNull or cdsDataACCOUNT_QUANTITY.IsNull then
        cdsDataSINGLE_PRICE.Clear
      else
        cdsDataSINGLE_PRICE.AsFloat:=
          cdsDataTOTAL_PRICE.AsFloat / cdsDataACCOUNT_QUANTITY.AsFloat;
    end;
end;

procedure TfmStoreDealIn.cdsDataTOTAL_PRICEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PriceFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmStoreDealIn.cdsDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;

  if (FProductClass = pcNormal) and
     not cdsDataPRODUCT_CODE.IsNull and
     cdsDataPRODUCT_ESTIMATED_SEC_PRICE.IsNull then
    begin
      cdsDataSINGLE_PRICE.Clear;
      raise Exception.Create(SProductPriceIsEmpty);
    end;

  cdsDataSINGLE_PRICE.AsFloat:=
    cdsDataPRODUCT_ESTIMATED_SEC_PRICE.AsFloat;
  cdsDataCURRENCY_CODE.AsInteger:=
    LoginContext.SecondaryCurrencyCode;
end;

procedure TfmStoreDealIn.cdsDataSINGLE_PRICEChange(Sender: TField);
begin
  inherited;
  FCalculatingPrice.TempEnter/
    procedure begin
      if not cdsDataSINGLE_PRICE.IsNull and not cdsDataACCOUNT_QUANTITY.IsNull then
        cdsDataTOTAL_PRICE.AsFloat:=
          cdsDataSINGLE_PRICE.AsFloat * cdsDataACCOUNT_QUANTITY.AsFloat
      else
        cdsDataTOTAL_PRICE.Clear;
    end;
end;

procedure TfmStoreDealIn.cdsDataSINGLE_PRICEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PriceFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmStoreDealIn.SetReadOnly(b: Boolean);
begin
  inherited;
  b:=
    b or
    ( (FBoundProcessCode = pOPWithSale) and
      frStoreDealProcessBinding.frPPProcessObject.pdsProcessObjectParamsHAS_MATERIAL_LIST.AsBoolean
    ) or
    (FBoundProcessCode = pNKT) or
    ( (FBoundProcessCode = pPD) and
      (not FHasShowDeliveryPricesActivity)
    );

  SetControlsReadOnly(b, [edtSinglePrice, edtTotalPrice, cbCurrency]);
end;

procedure TfmStoreDealIn.CheckBoundObject;
var
  ProductCode: Integer;
  AccountSinglePrice: Double;
  CurrencyCode: Integer;
  DeptCode: Integer;
begin
  inherited;

  if ( (FBoundProcessCode = pOPWithSale) or
       (FBoundProcessCode = pNKT) ) and
     cdsData.CanModify and
     FClientPanelEnabled then
    begin
      CheckEditMode(cdsData);
      cdsDataPRODUCT_CODE.Clear;
//      cdsDataSINGLE_PRICE.Clear;
//      cdsDataCURRENCY_CODE.Clear;
    end;

  FBoundProcessCode:= cdsDataBND_PROCESS_CODE.AsInteger;
  ProductCode:= 0;
  AccountSinglePrice:= 0;
  CurrencyCode:= 0;
  DeptCode:= 0;

  if (FBoundProcessCode = pOPWithSale) then
    begin
      dmMain.SvrStore.GetModelProductAndSinglePrice(
        cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger,
        cdsDataBND_PROCESS_OBJECT_CODE.AsInteger,
        ProductCode,
        AccountSinglePrice,
        DeptCode);
      CurrencyCode:= LoginContext.BaseCurrencyCode;
    end;

  if (FBoundProcessCode = pNKT) then
    dmMain.SvrStore.GetStoreDealOutData(
      cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger,
      cdsDataBND_PROCESS_OBJECT_CODE.AsInteger,
      ProductCode,
      AccountSinglePrice,
      CurrencyCode);

  if (FBoundProcessCode = pPD) then
    dmMain.SvrStore.GetDeliveryData(
      cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger,
      cdsDataBND_PROCESS_OBJECT_CODE.AsInteger,
      ProductCode,
      AccountSinglePrice,
      CurrencyCode);

  if (FBoundProcessCode in
       [pFinPrdUobZd, pFinPrdUobNl, pFinDstUOb, pFinPrdFOb, pFinDstFOb, pFinDstPrc, pFinAdm, pFinVtrRF, pFinVtrOF]) then
    dmMain.SvrStore.GetRFMLStoreDealData(
      cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger,
      cdsDataBND_PROCESS_OBJECT_CODE.AsInteger,
      ProductCode);

  if cdsData.CanModify and FClientPanelEnabled then
    begin
      if (ProductCode <> 0) then
        begin
          CheckEditMode(cdsData);
          cdsDataPRODUCT_CODE.AsInteger:= ProductCode;
        end;  { if }

      if (AccountSinglePrice <> 0) then
        begin
          CheckEditMode(cdsData);
          cdsDataSINGLE_PRICE.AsFloat:= AccountSinglePrice;
        end;  { if }

      if (CurrencyCode <> 0) then
        begin
          CheckEditMode(cdsData);
          cdsDataCURRENCY_CODE.AsInteger:= CurrencyCode;
        end;  { if }

      if (DeptCode <> 0) then
        begin
          CheckEditMode(cdsData);
          cdsDataDEPT_CODE.AsInteger:= DeptCode;
        end;  { if }
    end;  { if }
end;

procedure TfmStoreDealIn.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProduct) then
    AFrame.ReadOnly:=
      (EditMode = emReadOnly) or
      (not FClientPanelEnabled) or
      (FBoundProcessCode = pOPWithSale) or
      (FBoundProcessCode = pNKT)
  else
    inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmStoreDealIn.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (FBoundProcessCode = pOPWithSale) and
     (dmMain.SvrStore.GetSaleManufactureQuantity(
       cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger,
       cdsDataBND_PROCESS_OBJECT_CODE.AsInteger) <= 0) then
    raise Exception.Create(SCannotConcludeSaleWithoutManufactureQuantity);
end;

end.

