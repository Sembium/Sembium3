unit fQuickSale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, JvDBControls, JvDBLookup, JvToolEdit, Mask, AbmesClientDataSet, AbmesFields,
  Menus, JvButtons, fBaseFrame, fDBFrame, fFieldEditFrame,
  JvDBCombobox, fEditForm,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  fProductFieldEditFrame, fDateFieldEditFrame, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameBald, JvExControls, JvComponent, JvCaptionButton,
  JvComponentBase;

type
  TfmQuickSale = class(TEditForm)
    pnlCorrections: TPanel;
    btnCorrections: TBitBtn;
    cdsBranches: TAbmesClientDataSet;
    dsBranches: TDataSource;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsSaleTypes: TAbmesClientDataSet;
    dsSaleTypes: TDataSource;
    cdsCurrencies: TAbmesClientDataSet;
    dsCurrencies: TDataSource;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsMeasures: TAbmesClientDataSet;
    cdsData_PRODUCT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsSecCurRates: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    gbID: TGroupBox;
    edtSaleNo: TDBEdit;
    lblKlon: TLabel;
    lblSaleNo: TLabel;
    lblSaleType: TLabel;
    lblSaleDate: TLabel;
    gbNotes: TGroupBox;
    mNotes: TDBMemo;
    gbInfo: TGroupBox;
    edtInvoiceNo: TDBEdit;
    lblInvoiceNo: TLabel;
    lblInvoiceDate: TLabel;
    edtQuantity: TDBEdit;
    lblQuantity: TLabel;
    edtSinglePrice: TDBEdit;
    edtTotalPrice: TDBEdit;
    edtTotalPriceDEM: TDBEdit;
    lblTotalPriceDEM: TLabel;
    lblTotalPrice: TLabel;
    lblSinglePrice: TLabel;
    lblCurrency: TLabel;
    dbtMeasure: TDBText;
    lblClient: TLabel;
    lblShipmentStore: TLabel;
    actAnnul: TAction;
    actCorrections: TAction;
    actFinish: TAction;
    pnlFinish: TPanel;
    btnFinish: TBitBtn;
    pnlAnnul: TPanel;
    btnAnnulSale: TBitBtn;
    pnlFinishedChb: TPanel;
    pnlFinishedChbFrame: TPanel;
    chbFinished: TCheckBox;
    pnlAnnuledChb: TPanel;
    pnlAnnuledChbFrame: TPanel;
    chbAnnuled: TCheckBox;
    cdsDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsDataSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    cdsDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsDataCLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataQUANTITY: TAbmesFloatField;
    cdsDataCURRENCY_CODE: TAbmesFloatField;
    cdsDataSINGLE_PRICE: TAbmesFloatField;
    cdsDataRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDataNOTES: TAbmesWideStringField;
    cdsDataSALE_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_NO: TAbmesFloatField;
    cdsDataSALE_TYPE_CODE: TAbmesFloatField;
    cdsDataSHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsDataSHIPMENT_STORE_CODE: TAbmesFloatField;
    cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsDataFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataFINISH_DATE: TAbmesSQLTimeStampField;
    cdsDataFINISH_TIME: TAbmesSQLTimeStampField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataTOTAL_PRICE: TAbmesFloatField;
    cdsDataTOTAL_PRICE_DEM: TAbmesFloatField;
    cdsDataPRODUCT_NAME: TAbmesWideStringField;
    cdsDataPRODUCT_MEASURE_CODE: TAbmesFloatField;
    cdsDataINVOICE_NO: TAbmesFloatField;
    cdsDataINVOICE_DATE: TAbmesSQLTimeStampField;
    cdsDataCURRENCY_ABBREV: TAbmesWideStringField;
    cdsDataCORRECTION: TAbmesFloatField;
    cdsSecCurRatesCURRENCY_CODE: TAbmesFloatField;
    cdsSecCurRatesRATE_DATE: TAbmesSQLTimeStampField;
    cdsSecCurRatesFIXING: TAbmesFloatField;
    cdsDataPRODUCT_MARKET_SEC_PRICE: TAbmesFloatField;
    cdsDataPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsCurrenciesCURRENCY_NAME: TAbmesWideStringField;
    cdsCurrenciesSCALE: TAbmesFloatField;
    cdsCurrenciesROUNDER: TAbmesFloatField;
    cdsCurrenciesORDER_NO: TAbmesFloatField;
    cdsCurrenciesTODAY_FIXING: TAbmesFloatField;
    cdsCurrenciesTODAY_SECONDARY_FIXING: TAbmesFloatField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsDataPRODUCT_NO: TAbmesFloatField;
    lcbBranch: TJvDBLookupCombo;
    lcbSaleType: TJvDBLookupCombo;
    lcbCurrency: TJvDBLookupCombo;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    cdsDataACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDataACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    edtAccountQuantity: TDBEdit;
    lblAccountQuantity: TLabel;
    dbtAccountMeasure: TDBText;
    cdsDataPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    edtAccountSinglePrice: TDBEdit;
    lblAccountSinglePrice: TLabel;
    cdsData_SALE_BRANCH_NAME: TAbmesWideStringField;
    cdsData_SALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsData_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsData_LBL_SINGLE_PRICE_MEASURE: TAbmesWideStringField;
    cdsData_LBL_SINGLE_PRICE_ACC_MEASURE: TAbmesWideStringField;
    cdsData_LBL_ANNUL_FINISH_STATUS: TAbmesWideStringField;
    pnlPrintButton: TPanel;
    pnlPrintCheckbox: TPanel;
    chkPrint: TCheckBox;
    bntPrint: TBitBtn;
    cdsData_SECONDARY_CURRENCY_ABBREV: TAbmesWideStringField;
    frShipmentStore: TfrDeptFieldEditFrameBald;
    frProduct: TfrProductFieldEditFrame;
    frSaleDate: TfrDateFieldEditFrame;
    frInvoiceDate: TfrDateFieldEditFrame;
    frClient: TfrPartnerFieldEditFrameBald;
    cdsDataCLIENT_COMPANY_NAME: TAbmesWideStringField;
    cdsDataSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField;
    procedure FormShow(Sender: TObject);
    procedure cdsSecCurRatesBeforeOpen(DataSet: TDataSet);
    procedure cdsDataSHIPMENT_DATEChange(Sender: TField);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataSALE_BRANCH_CODEChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure actCorrectionsExecute(Sender: TObject);
    procedure actAnnulExecute(Sender: TObject);
    procedure actFinishExecute(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsDataPRODUCT_CODEChange(Sender: TField);
    procedure cdsDataQUANTITYChange(Sender: TField);
    procedure cdsDataACCOUNT_QUANTITYChange(Sender: TField);
    procedure cdsDataSINGLE_PRICEChange(Sender: TField);
    procedure cdsDataCURRENCY_CODEChange(Sender: TField);
    procedure cdsDataACCOUNT_SINGLE_PRICEChange(Sender: TField);
    procedure cdsDataTOTAL_PRICEChange(Sender: TField);
    procedure cdsDataTOTAL_PRICE_DEMChange(Sender: TField);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsDataCLIENT_COMPANY_CODEChange(Sender: TField);
    procedure cdsDataSHIPMENT_STORE_CODEChange(Sender: TField);
  private
    FWasAnnuled: Boolean;
    FCanAnnul: Boolean;
    FWasFinished: Boolean;
    FChanging: Boolean;
    FFramesReadOnly: Boolean;

    function SecCurFixing: Real;
    function SecCurDate: TDateTime; 
    procedure CalcQuantitiesAndPrices;
  protected
    function GetFormCaption: string; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    class function CanUseDocs: Boolean; override;
  public
    class function CanEditOuterDataSet: Boolean; override;

    procedure SetGroupBoxesEnableStatus(Enable: Boolean);
  end;

implementation

uses
  Variants, dMain, uSaleOrderTypes, uSaleChangeTypes, uUtils,
  AbmesDialogs, Math, uTreeCLientUtils, fDataForm, uCompanyKinds,
  uCompanyClientUtils, uClientDateTime;

{$R *.DFM}

resourcestring
  SCaptionNew = 'Нова Продажба по съкратена процедура';
  SCaptionEdit = 'Информация/Редактиране на Продажба по съкратена процедура';
  SCaptionReadOnly = 'Информация за Продажба по съкратена процедура';

  SSaleHasBeenSaved = 'Продажбата беше записана под номер';
  SWannaAnnul = 'Анулиране на Продажба "%s"?';
  SPPAnnuled = 'Продажбата "%s" е анулирана.';
  SWannaFinish = 'Приключване на Продажба "%s"?';
  SPPFinished = 'Продажбата "%s" е приключена.';

  SCannotAnnul =
    'Не можете да анулирате настоящата продажба,' + SLineBreak +
    'защото по нея има осъществени реални' + SLineBreak +
    'тегления на Управляем Обект!';

  SRequiredAccountCoefAndSecMarketPrice = 'Не са въведени счет. коефициент и/или пазарна цена за Управляемия Обект';
  STotalValue = 'Обща ст-т';
  SSinglePriceLabel = 'Ед. цена за %s';

procedure TfmQuickSale.FormShow(Sender: TObject);
begin
  inherited;

  cdsBranches.Filtered:= (EditMode = emInsert);

  lblTotalPriceDEM.Caption:=
    STotalValue + ' /' + LoginContext.SecondaryCurrencyAbbrev + '/';

  case EditMode of
    emInsert:
      begin
        // код на тип "ОПП по съкратена процедура"
        with dsData.Dataset do
          begin
            FieldByName('SALE_ORDER_TYPE_CODE').AsInteger:=
              sotQuickSaleOrder;

            FieldByName('SHIPMENT_DATE').AsDateTime:= ContextDate;
            FieldByName('REQUEST_REGISTER_DATE').AsDateTime:= ContextDate;
          end;

        // нарочно изброявам всички panel-и, защото всички имат някаква
        // стойност на Align и е важен реда на показване
        pnlCorrections.Visible:= False;
        pnlFinish.Visible:= True;
        pnlAnnul.Visible:= False;
        pnlAnnuledChb.Visible:= False;
        pnlFinishedChb.Visible:= False;

        lcbBranch.ReadOnly:= False;
      end;

    emEdit:
      begin
        with dsData.DataSet do
          begin
            // действия, свързани с анулиране на "бърза" продажба
            FWasAnnuled:=
              not FieldByName('ANNUL_EMPLOYEE_CODE').IsNull;

            if not FWasAnnuled then
              begin
                Assert(not FieldByName('SALE_OBJECT_BRANCH_CODE').IsNull,
                       'SALE_OBJECT_BRANCH_CODE should not be null when in edit mode');
                Assert(not FieldByName('SALE_OBJECT_CODE').IsNull,
                       'SALE_OBJECT_CODE should not be null when in edit mode');

                try
                  FCanAnnul:=
                    dmMain.SvrSales.QuickSaleCanAnnul(
                      FieldByName('SALE_OBJECT_BRANCH_CODE').AsInteger,
                      FieldByName('SALE_OBJECT_CODE').AsInteger);
                except
                  FCanAnnul:= False;
                  raise;
                end;
              end;

            // действия, свързани с приключване на "бърза" продажба
            FWasFinished:=
              not FieldByName('FINISH_EMPLOYEE_CODE').IsNull;
          end;

        // настройка на контролите по формата
        lcbBranch.ReadOnly:= True;

        // нарочно изброявам всички panel-и, защото всички имат някаква
        // стойност на Align и е важен редът на показване
        pnlCorrections.Visible:=
          (not FWasAnnuled) and (not FWasFinished);
        pnlFinish.Visible:=
          (not FWasAnnuled) and (not FWasFinished);
        pnlAnnul.Visible:= not FWasAnnuled;
        pnlFinishedChb.Visible:= FWasFinished;
        pnlAnnuledChb.Visible:= FWasAnnuled;
        pnlOKCancel.Visible:= False;
        pnlClose.Visible:= True;

        SetGroupBoxesEnableStatus(False);

        lcbBranch.ReadOnly:= True;
      end;
    emReadOnly:
      begin
        pnlCorrections.Visible:= False;
        pnlFinish.Visible:= False;
        pnlAnnul.Visible:= False;
        pnlAnnuledChb.Visible:= False;
        pnlFinishedChb.Visible:= False;
        SetGroupBoxesEnableStatus(False);

        lcbBranch.ReadOnly:= True;
      end;
  end;
end;

procedure TfmQuickSale.cdsSecCurRatesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsSecCurRates.Params.ParamByName('RATE_DATE').AsDateTime:= SecCurDate;
end;

procedure TfmQuickSale.cdsDataSHIPMENT_DATEChange(Sender: TField);
begin
  inherited;

  dsData.DataSet.FieldByName('RECEIVE_DATE').AsVariant:=
    Sender.AsVariant;

  cdsSecCurRates.Close;
  cdsSecCurRates.Open;
  CalcQuantitiesAndPrices;
end;

function TfmQuickSale.SecCurFixing: Real;
var
  v: Variant;
begin
  Assert(cdsSecCurRates.Active, 'cdsSecCurRates not active!');
  Assert(not dsData.DataSet.FieldByName('CURRENCY_CODE').IsNull,
    'CURRENCY_CODE should not be null!');

  v:= cdsSecCurRates.Lookup(
    'CURRENCY_CODE',
    dsData.DataSet.FieldByName('CURRENCY_CODE').AsInteger,
    'FIXING');

  if not(VarIsNull(v) or VarIsEmpty(v)) then
    Result:= v
  else
    Result:= 0;
end;

procedure TfmQuickSale.CalcQuantitiesAndPrices;
var
  Fixing: Real;
begin
  if not dsData.DataSet.Active then Exit;

  if cdsDataQUANTITY.IsNull or cdsDataPRODUCT_ACCOUNT_MEASURE_COEF.IsNull then
    cdsDataACCOUNT_QUANTITY.Clear
  else
    cdsDataACCOUNT_QUANTITY.AsFloat:=
      cdsDataQUANTITY.AsFloat * cdsDataPRODUCT_ACCOUNT_MEASURE_COEF.AsFloat;

  if cdsDataSINGLE_PRICE.IsNull or cdsDataPRODUCT_ACCOUNT_MEASURE_COEF.IsNull then
    cdsDataACCOUNT_SINGLE_PRICE.Clear
  else
    cdsDataACCOUNT_SINGLE_PRICE.AsFloat:=
      cdsDataSINGLE_PRICE.AsFloat / cdsDataPRODUCT_ACCOUNT_MEASURE_COEF.AsFloat;

  if cdsDataQUANTITY.IsNull or cdsDataSINGLE_PRICE.IsNull then
    cdsDataTOTAL_PRICE.Clear
  else
    cdsDataTOTAL_PRICE.AsFloat:=
      cdsDataQUANTITY.AsFloat * cdsDataSINGLE_PRICE.AsFloat;

  Fixing:= SecCurFixing;
  if cdsDataCURRENCY_CODE.IsNull or
     cdsDataTOTAL_PRICE.IsNull or
     (Fixing = 0) then
    cdsDataTOTAL_PRICE_DEM.Clear
  else
    cdsDataTOTAL_PRICE_DEM.AsFloat:= cdsDataTOTAL_PRICE.AsFloat * Fixing;
end;

procedure TfmQuickSale.actApplyUpdatesExecute(Sender: TObject);
var
  SaleNo: Integer;
begin
  SaleNo:= cdsDataSALE_NO.AsInteger;

  inherited;

  if (SaleNo <> cdsDataSALE_NO.AsInteger) then
    ShowMessageEx(SSaleHasBeenSaved + ' ' + IntToStr(cdsDataSALE_NO.AsInteger) + '.');
end;

class function TfmQuickSale.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

function TfmQuickSale.GetFormCaption: string;
begin
  case EditMode of
    emEdit:
      Result:= SCaptionEdit;
    emInsert:
      Result:= SCaptionNew;
    emReadOnly:
      Result:= SCaptionReadOnly;
  else
    Result:= inherited GetFormCaption;
  end;
end;

procedure TfmQuickSale.OpenDataSets;
begin
  inherited;

  cdsBranches.Open;
  cdsSaleTypes.Open;
  cdsCurrencies.Open;
  cdsMeasures.Open;
  cdsSecCurRates.Open;
end;

procedure TfmQuickSale.CloseDataSets;
begin
  cdsSecCurRates.Close;
  cdsMeasures.Close;
  cdsBranches.Close;
  cdsSaleTypes.Close;
  cdsCurrencies.Close;

  inherited;
end;


procedure TfmQuickSale.SetGroupBoxesEnableStatus(Enable: Boolean);
var
  r: Boolean;
begin
  r:= not Enable;
  FFramesReadOnly:= r;

  lcbSaleType.ReadOnly:= r;

  edtQuantity.ReadOnly:= r;
  edtAccountQuantity.ReadOnly:= r;
  lcbCurrency.ReadOnly:= r;
  edtSinglePrice.ReadOnly:= r;
  edtAccountSinglePrice.ReadOnly:= r;
  edtTotalPrice.ReadOnly:= r;
  edtTotalPriceDEM.ReadOnly:= r;
  edtInvoiceNo.ReadOnly:= r;

  mNotes.ReadOnly:= r;

  edtQuantity.Color:= IfThen(edtQuantity.ReadOnly, clBtnFace, clWindow);
  edtAccountQuantity.Color:= IfThen(edtAccountQuantity.ReadOnly, clBtnFace, clWindow);
  edtSinglePrice.Color:= IfThen(edtSinglePrice.ReadOnly, clBtnFace, clWindow);
  edtAccountSinglePrice.Color:= IfThen(edtAccountSinglePrice.ReadOnly, clBtnFace, clWindow);
  edtTotalPrice.Color:= IfThen(edtTotalPrice.ReadOnly, clBtnFace, clWindow);
  edtTotalPriceDEM.Color:= IfThen(edtTotalPriceDEM.ReadOnly, clBtnFace, clWindow);
  edtInvoiceNo.Color:= IfThen(edtInvoiceNo.ReadOnly, clBtnFace, clWindow);

  mNotes.Color:= IfThen(mNotes.ReadOnly, clBtnFace, clWindow);
end;

procedure TfmQuickSale.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  
  with DataSet do
    if (FieldByName('NOTES').AsString = '') then
      FieldByName('NOTES').Clear;
end;

procedure TfmQuickSale.cdsDataSALE_BRANCH_CODEChange(Sender: TField);
begin
  inherited;

  with dsData.DataSet do
    if FieldByName('SALE_BRANCH_CODE').IsNull then
      FieldByName('SALE_NO').Clear
    else
      FieldByName('SALE_NO').AsInteger:=
        dmMain.SvrSales.GetNewSaleNo(FieldByName('SALE_BRANCH_CODE').AsInteger);
end;

procedure TfmQuickSale.FormCreate(Sender: TObject);
begin
  inherited;

  FWasAnnuled:= False;
  FCanAnnul:= True;
  FWasFinished:= False;
  FChanging:= False;

  frShipmentStore.FieldNames:= 'SHIPMENT_STORE_CODE';
  frShipmentStore.SelectStore:= True;
  frSaleDate.FieldNames:= 'SHIPMENT_DATE';
  frInvoiceDate.FieldNames:= 'INVOICE_DATE';
  frClient.FieldNames:= 'CLIENT_COMPANY_CODE';
  frClient.FilterCompanyKind:= ckClient;
end;

procedure TfmQuickSale.actCorrectionsExecute(Sender: TObject);
begin
  inherited;

  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('CORRECTION').AsInteger:= sctCorrections;

  SetGroupBoxesEnableStatus(True);
  pnlCorrections.Visible:= False;
  pnlAnnul.Visible:= False;
  pnlClose.Visible:= False;
  pnlOKCancel.Visible:= True;
end;

procedure TfmQuickSale.actAnnulExecute(Sender: TObject);
var
  PPID: String;
begin
  inherited;

  if (not FCanAnnul) then
    MessageDlgEx(SCannotAnnul, mtError, [mbOk], 0)
  else
    begin
      cdsBranches.Locate('BRANCH_CODE', cdsDataSALE_BRANCH_CODE.AsInteger, []);
      cdsSaleTypes.Locate('SALE_TYPE_CODE', cdsDataSALE_TYPE_CODE.AsInteger, []);
      PPID:= cdsBranchesBRANCH_NO.AsString + '/' +
             cdsSaleTypesSALE_TYPE_ABBREV.AsString + '/' +
             cdsDataSALE_NO.AsString;

      if (MessageDlgFmtEx(SWannaAnnul, [PPID], mtConfirmation, mbOkCancel, 0) = mrOk) then
        begin
          with dsData.DataSet do
            begin
              CheckEditMode(dsData.DataSet);

              FieldByName('ANNUL_EMPLOYEE_CODE').AsInteger:=
                LoginContext.UserCode;
              FieldByName('ANNUL_DATE').AsDateTime:= ContextDate;
              FieldByName('ANNUL_TIME').AsDateTime:= ContextTime;
            end;

          actApplyUpdates.Execute;

          pnlCorrections.Visible:= False;
          pnlAnnul.Visible:= False;
          pnlFinish.Visible:= False;
          pnlAnnuledChb.Visible:= True;
          SetGroupBoxesEnableStatus(False);

          ShowMessageFmtEx(SPPAnnuled, [PPID]);
        end;
    end;
end;

procedure TfmQuickSale.actFinishExecute(Sender: TObject);
var
  PPID: String;
begin
  inherited;

  CheckRequiredFields([
    cdsDataSALE_BRANCH_CODE,
    cdsDataSALE_TYPE_CODE,
    cdsDataSHIPMENT_DATE,
    cdsDataCLIENT_COMPANY_CODE,
    cdsDataPRODUCT_CODE,
    cdsDataQUANTITY,
    cdsDataCURRENCY_CODE,
    cdsDataSINGLE_PRICE,
    cdsDataTOTAL_PRICE
  ]);

  cdsBranches.Locate('BRANCH_CODE', cdsDataSALE_BRANCH_CODE.AsInteger, []);
  cdsSaleTypes.Locate('SALE_TYPE_CODE', cdsDataSALE_TYPE_CODE.AsInteger, []);
  PPID:= cdsBranchesBRANCH_NO.AsString + '/' +
         cdsSaleTypesSALE_TYPE_ABBREV.AsString + '/' +
         cdsDataSALE_NO.AsString;

  if (MessageDlgFmtEx(SWannaFinish, [PPID], mtConfirmation, mbOkCancel, 0) = mrOk) then
    begin
      with dsData.DataSet do
        begin
          CheckEditMode(dsData.DataSet);

          FieldByName('FINISH_EMPLOYEE_CODE').AsInteger:=
            LoginContext.UserCode;
          FieldByName('FINISH_DATE').AsDateTime:= ContextDate;
          FieldByName('FINISH_TIME').AsDateTime:= ContextTime;
        end;

      actApplyUpdates.Execute;

      pnlOKCancel.Visible:= False;
      pnlClose.Visible:= True;
      pnlCorrections.Visible:= False;
      pnlFinish.Visible:= False;
      pnlFinishedChb.Visible:= True;
      pnlAnnul.Visible:= True;

      SetGroupBoxesEnableStatus(False);

      ShowMessageFmtEx(SPPFinished, [PPID]);
    end;
end;

procedure TfmQuickSale.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataCURRENCY_CODE.AsInteger:= LoginContext.BaseCurrencyCode;
end;

procedure TfmQuickSale.cdsDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;

  DoProductFieldChanged(
    cdsDataPRODUCT_CODE,
    cdsDataPRODUCT_NAME,
    cdsDataPRODUCT_NO,
    cdsDataPRODUCT_MEASURE_CODE,
    cdsDataPRODUCT_ACCOUNT_MEASURE_CODE,
    cdsDataPRODUCT_ACCOUNT_MEASURE_COEF);

  if (cdsDataPRODUCT_ACCOUNT_MEASURE_COEF.AsFloat = 0) then
    cdsDataPRODUCT_MARKET_SEC_PRICE.Clear
  else
    cdsDataPRODUCT_MARKET_SEC_PRICE.AsVariant:=
      dmMain.SvrProductsTree.GetProductSaleAcquireSinglePrice(
        cdsDataPRODUCT_CODE.AsInteger, LoginContext.SecondaryCurrencyCode, cdsDataRECEIVE_DATE.AsDateTime,
        cdsDataCLIENT_COMPANY_CODE.AsInteger) /
      cdsDataPRODUCT_ACCOUNT_MEASURE_COEF.AsFloat;

  if not cdsDataPRODUCT_CODE.IsNull then
    begin
      if cdsDataPRODUCT_MARKET_SEC_PRICE.IsNull or
         cdsDataPRODUCT_ACCOUNT_MEASURE_COEF.IsNull then
        begin
          cdsDataPRODUCT_CODE.Clear;

          MessageDlgEx(SRequiredAccountCoefAndSecMarketPrice, mtError, [mbOK], 0);
        end;
    end;

  if (SecCurFixing > 0) and
     (not cdsDataPRODUCT_MARKET_SEC_PRICE.IsNull) and
     (not cdsDataPRODUCT_ACCOUNT_MEASURE_COEF.IsNull) then
    cdsDataSINGLE_PRICE.AsFloat:=
      cdsDataPRODUCT_MARKET_SEC_PRICE.AsFloat *
      cdsDataPRODUCT_ACCOUNT_MEASURE_COEF.AsFloat /
      SecCurFixing
  else
    cdsDataSINGLE_PRICE.Clear;
end;

function TfmQuickSale.SecCurDate: TDateTime;
begin
  if (not cdsDataSHIPMENT_DATE.IsNull) and
     (cdsDataSHIPMENT_DATE.AsDateTime <= ContextDate) then
    Result:= cdsDataSHIPMENT_DATE.AsDateTime
  else
    Result:= ContextDate;
end;

procedure TfmQuickSale.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  //inherited;
  AFrame.ReadOnly:= (EditMode = emReadOnly) or FFramesReadOnly;
end;

procedure TfmQuickSale.cdsDataQUANTITYChange(Sender: TField);
begin
  inherited;

  if FChanging then Exit;
  FChanging:= True;
  try
    CalcQuantitiesAndPrices;
  finally
    FChanging:= False;
  end;
end;

procedure TfmQuickSale.cdsDataACCOUNT_QUANTITYChange(Sender: TField);
begin
  inherited;

  if FChanging then Exit;
  FChanging:= True;
  try
    if cdsDataACCOUNT_QUANTITY.IsNull or
       cdsDataPRODUCT_ACCOUNT_MEASURE_COEF.IsNull then
      cdsDataQUANTITY.Clear
    else
      cdsDataQUANTITY.AsFloat:=
        cdsDataACCOUNT_QUANTITY.AsFloat / cdsDataPRODUCT_ACCOUNT_MEASURE_COEF.AsFloat;
    CalcQuantitiesAndPrices;
  finally
    FChanging:= False;
  end;
end;

procedure TfmQuickSale.cdsDataSINGLE_PRICEChange(Sender: TField);
begin
  inherited;

  if FChanging then Exit;
  FChanging:= True;
  try
    CalcQuantitiesAndPrices;
  finally
    FChanging:= False;
  end;
end;

procedure TfmQuickSale.cdsDataCURRENCY_CODEChange(Sender: TField);
begin
  inherited;

  if FChanging then Exit;
  FChanging:= True;
  try
    CalcQuantitiesAndPrices;
  finally
    FChanging:= False;
  end;
end;

procedure TfmQuickSale.cdsDataACCOUNT_SINGLE_PRICEChange(Sender: TField);
begin
  inherited;

  if FChanging then Exit;
  FChanging:= True;
  try
    if cdsDataACCOUNT_SINGLE_PRICE.IsNull or
       cdsDataPRODUCT_ACCOUNT_MEASURE_COEF.IsNull then
      cdsDataSINGLE_PRICE.Clear
    else
      cdsDataSINGLE_PRICE.AsFloat:=
        cdsDataACCOUNT_SINGLE_PRICE.AsFloat * cdsDataPRODUCT_ACCOUNT_MEASURE_COEF.AsFloat;
    CalcQuantitiesAndPrices;
  finally
    FChanging:= False;
  end;
end;

procedure TfmQuickSale.cdsDataTOTAL_PRICEChange(Sender: TField);
begin
  inherited;

  if FChanging then Exit;
  FChanging:= True;
  try
    if cdsDataTOTAL_PRICE.IsNull or
       cdsDataSINGLE_PRICE.IsNull or
       cdsDataQUANTITY.IsNull then
      begin
        cdsDataSINGLE_PRICE.Clear;
        cdsDataQUANTITY.Clear;
      end
    else
      cdsDataSINGLE_PRICE.AsFloat:=
        cdsDataTOTAL_PRICE.AsFloat / cdsDataQUANTITY.AsFloat;

    CalcQuantitiesAndPrices;
  finally
    FChanging:= False;
  end;
end;

procedure TfmQuickSale.cdsDataTOTAL_PRICE_DEMChange(Sender: TField);
begin
  inherited;
  if FChanging then Exit;
  if cdsDataTOTAL_PRICE_DEM.IsNull then
    cdsDataTOTAL_PRICE.Clear
  else
    cdsDataTOTAL_PRICE.AsFloat:=
      cdsDataTOTAL_PRICE_DEM.AsFloat / SecCurFixing; 
end;

procedure TfmQuickSale.actFormUpdate(Sender: TObject);
begin
  inherited;

  if cdsDataPRODUCT_MEASURE_CODE.IsNull then
    lblSinglePrice.Caption:= ''
  else
    lblSinglePrice.Caption:=
      Format(SSinglePriceLabel, [cdsData_PRODUCT_MEASURE_ABBREV.AsString]);

  if cdsDataPRODUCT_ACCOUNT_MEASURE_CODE.IsNull then
    lblAccountSinglePrice.Caption:= ''
  else
    lblAccountSinglePrice.Caption:=
      Format(SSinglePriceLabel, [cdsData_ACCOUNT_MEASURE_ABBREV.AsString]);

  pnlPrintCheckbox.Visible:= GetApplyUpdatesEnabled and not FWasAnnuled and not FWasFinished;
  pnlPrintButton.Visible:= not GetApplyUpdatesEnabled and not FWasAnnuled and not FWasFinished;
end;

procedure TfmQuickSale.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsData_LBL_SINGLE_PRICE_MEASURE.AsString:= lblSinglePrice.Caption;
  cdsData_LBL_SINGLE_PRICE_ACC_MEASURE.AsString:= lblAccountSinglePrice.Caption;
  cdsData_SECONDARY_CURRENCY_ABBREV.AsString:= LoginContext.SecondaryCurrencyAbbrev;

  if not cdsDataANNUL_EMPLOYEE_CODE.IsNull then
    cdsData_LBL_ANNUL_FINISH_STATUS.AsString:= chbAnnuled.Caption
  else
    begin
      if not cdsDataFINISH_EMPLOYEE_CODE.IsNull then
        cdsData_LBL_ANNUL_FINISH_STATUS.AsString:= chbFinished.Caption
      else
        cdsData_LBL_ANNUL_FINISH_STATUS.AsString:= '';
    end;
end;

procedure TfmQuickSale.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  if (ModalResult = mrOk) and (pnlPrintCheckbox.Visible) and (chkPrint.Checked) then
    actPrint.Execute;
end;

class function TfmQuickSale.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmQuickSale.cdsDataCLIENT_COMPANY_CODEChange(Sender: TField);
begin
  inherited;
  GetCompanyInfo(cdsDataCLIENT_COMPANY_CODE, cdsDataCLIENT_COMPANY_NAME);
end;

procedure TfmQuickSale.cdsDataSHIPMENT_STORE_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsDataSHIPMENT_STORE_CODE, nil, cdsDataSHIPMENT_STORE_IDENTIFIER);
end;

end.
