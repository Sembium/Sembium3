unit fModelsInvestedValuesFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvButtons, ActnList, JvDBLookup, Buttons, StdCtrls, ExtCtrls, JvDBCombobox,
  fEmployeeFieldEditFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  DBCtrls, JvToolEdit, JvDBControls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFilter, fProductFilter, fParamProductFilter, Mask, DBCtrlsEh,
  fDateIntervalFrame, fPartnerFieldEditFrame, fEmployeeFieldEditFrameBald,
  fPartnerFieldEditFrameBald, JvExStdCtrls, JvComponent, JvCaptionButton,
  JvExControls, JvExExtCtrls, JvDBRadioPanel, fPriorityIntervalEditFrame,
  JvComponentBase, JvExtComponent, JvCombobox;

type
  TfmModelsInvestedValuesFilter = class(TFilterForm)
    gbFinal: TGroupBox;
    frParamProductFilter: TfrParamProductFilter;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    dsSaleTypes: TDataSource;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    gbInvestedValue: TGroupBox;
    edtShowInvestedValue: TDBEdit;
    edtInvestedValueCurrency: TDBEdit;
    lblShowInvestedValue: TLabel;
    lblInvestedValueCurrency: TLabel;
    actInvestedValueFilter: TAction;
    btnInvestedValueFilter: TBitBtn;
    lblEnterShipmentStoreDateInterval: TLabel;
    frEnterShipmentStoreDateInterval: TfrDateIntervalFrame;
    gbMLState: TGroupBox;
    lblMinMlState: TLabel;
    cbMinMlState: TDBComboBoxEh;
    cbMaxMlState: TDBComboBoxEh;
    gbProductionOrderIdentification: TGroupBox;
    lblProductionOrderType: TLabel;
    lblBranch: TLabel;
    lblNo: TLabel;
    lblType: TLabel;
    lblPriorityInterval: TLabel;
    cbProductionOrderType: TJvDBLookupCombo;
    cbBranch: TJvDBLookupCombo;
    edtNo: TDBEdit;
    cbType: TJvDBLookupCombo;
    frPriorityInterval: TfrPriorityIntervalEditFrame;
    gbSaleIdentification: TGroupBox;
    pnlOwnerEmployeeOrCompany: TPanel;
    pnlOwnerEmployee: TPanel;
    lblOwnerEmployee: TLabel;
    frOwnerEmployee: TfrEmployeeFieldEditFrameBald;
    pnlOwnerCompany: TPanel;
    lblPartner: TLabel;
    lblSaleExpDateInterval: TLabel;
    frOwnerCompany: TfrPartnerFieldEditFrameBald;
    frSaleExpDateInterval: TfrDateIntervalFrame;
    cbSaleState: TJvDBComboBox;
    gbWastingSale: TGroupBox;
    rgIsWasteCompensatorStatus: TJvDBRadioPanel;
    rgHasWasteStatus: TDBRadioGroup;
    gbEngineering: TGroupBox;
    lblModelDevelopmentType: TLabel;
    lblOkidu: TLabel;
    frOkidu: TfrEmployeeFieldEditFrameBald;
    gbStart: TGroupBox;
    lblProdStartDateInterval: TLabel;
    frProdStartDateInterval: TfrDateIntervalFrame;
    cdsProductionOrderTypes: TAbmesClientDataSet;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_NAME: TAbmesWideStringField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_TEXT: TAbmesWideStringField;
    cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_NO: TAbmesFloatField;
    cdsProductionOrderTypesIS_REVERSIBLE: TAbmesFloatField;
    dsProductionOrderTypes: TDataSource;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    dsBranches: TDataSource;
    lblWastingSaleBranch: TLabel;
    cbWastingSaleBranch: TJvDBLookupCombo;
    edtWastingSaleNo: TDBEdit;
    lblWastingSaleNo: TLabel;
    cbModelDevelopmentType: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure cbSaleStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actInvestedValueFilterExecute(Sender: TObject);
    procedure cdsProductionOrderTypesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actFormUpdate(Sender: TObject);
  private
    FProductionOrderBaseTypeCode: Integer;
    procedure UpdateBoundObjectPanel;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetFilterFormVariantCode: Integer; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uUtils, uComboBoxUtils,  // reda na tezi dwete e wajen, zaradi TWinControlHelper
  uModelUtils, fModelsInvestedValuesIVFilter, uClientTypes, uCompanyKinds,
  uProductionOrderTypes, uClientUtils;

{$R *.dfm}

resourcestring
  SModelInvestedValuesFilter = 'Филтър на Регистър на Инженерни Организационно-Стойностни Анализи по ОПВ %s';

{ TfmModelsInvestedValuesFilter }

procedure TfmModelsInvestedValuesFilter.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;

  frOwnerEmployee.FieldNames:= 'OWNER_EMPLOYEE_CODE';
  frOwnerEmployee.EmployeeTypeName:= lblOwnerEmployee.Caption;
  frOwnerCompany.FieldNames:= 'OWNER_COMPANY_CODE';
  frOwnerCompany.ShowCurrentEmployee:= True;
  frOwnerCompany.FilterCompanyKind:= ckClient;

  frOkidu.FieldNames:= 'OKIDU_EMPLOYEE_CODE';
  frOkidu.SpecialProffesionEmployee:= speOkidu;
  frOkidu.DocButtonVisible:= False;

  frSaleExpDateInterval.FieldNames:= 'SALE_SHIPMENT_BEGIN_DATE; SALE_SHIPMENT_END_DATE';
  frProdStartDateInterval.FieldNames:= 'PROD_START_PLAN_BEGIN_DATE; PROD_START_PLAN_END_DATE';
  frEnterShipmentStoreDateInterval.FieldNames:= 'ENTER_SH_STORE_BEGIN_DATE; ENTER_SH_STORE_END_DATE';

  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';

  InitializeComboBoxWithMLStates(cbMinMLState, True);
  InitializeComboBoxWithMLStates(cbMaxMLState, True);

  for i:= 1 to 3 do
    begin
      cbMinMLState.Items.Delete(0);
      cbMinMLState.KeyItems.Delete(0);

      cbMaxMLState.Items.Delete(0);
      cbMaxMLState.KeyItems.Delete(0);
    end;

  for i:= 1 to 2 do
    begin
      cbMinMLState.Items.Delete(cbMinMLState.Items.Count-1);
      cbMinMLState.KeyItems.Delete(cbMinMLState.KeyItems.Count-1);

      cbMaxMLState.Items.Delete(cbMaxMLState.Items.Count-1);
      cbMaxMLState.KeyItems.Delete(cbMaxMLState.KeyItems.Count-1);
    end;
end;

procedure TfmModelsInvestedValuesFilter.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Assigned(Field) and (Field.FieldName = 'IS_SALE_STATE') then
    with dsData.DataSet do
      case Field.AsInteger of
        0: begin
             FieldByName('OWNER_EMPLOYEE_CODE').Clear;
             FieldByName('OWNER_COMPANY_CODE').Clear;
             FieldByName('PRODUCTION_ORDER_TYPE_CODE').Clear;
           end;
        1: FieldByName('OWNER_COMPANY_CODE').Clear;
        2: begin
             FieldByName('OWNER_EMPLOYEE_CODE').Clear;
             FieldByName('PRODUCTION_ORDER_TYPE_CODE').Clear;
           end;
      end;
end;

procedure TfmModelsInvestedValuesFilter.UpdateBoundObjectPanel;
var
  i: Integer;
begin
  with ReplacedDBComboBox(cbSaleState) do
    i:= StrToInt(XValues[XItemIndex]);

  pnlOwnerCompany.Visible:= (i = 1);
  pnlOwnerEmployee.Visible:= (i = 2);
end;

procedure TfmModelsInvestedValuesFilter.cbSaleStateChange(Sender: TObject);
begin
  inherited;
  UpdateBoundObjectPanel;
end;

procedure TfmModelsInvestedValuesFilter.cdsProductionOrderTypesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));
  Accept:=
    (dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger = 0) or
    (cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE.AsInteger = dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger);
end;

procedure TfmModelsInvestedValuesFilter.FormShow(Sender: TObject);
begin
  inherited;
  UpdateBoundObjectPanel;
end;

function TfmModelsInvestedValuesFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if ((AWinControl = cbWastingSaleBranch) or (AWinControl = edtWastingSaleNo)) and
     not rgIsWasteCompensatorStatus.Buttons[2].Checked then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

function TfmModelsInvestedValuesFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger;
end;

procedure TfmModelsInvestedValuesFilter.Initialize;
begin
  inherited;
  FProductionOrderBaseTypeCode:= dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger;
  Caption:= Format(SModelInvestedValuesFilter, [ProductionOrderBaseTypes[FProductionOrderBaseTypeCode].CoveringAbbrevPlural]);
end;

procedure TfmModelsInvestedValuesFilter.OpenDataSets;
begin
  cdsSaleTypes.Open;
  cdsProductionOrderTypes.Open;
  cdsBranches.Open;
  inherited;
end;

procedure TfmModelsInvestedValuesFilter.CloseDataSets;
begin
  inherited;
  cdsBranches.Open;
  cdsProductionOrderTypes.Close;
  cdsSaleTypes.Close;
end;

procedure TfmModelsInvestedValuesFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  gbSaleIdentification.Visible:= (IntToProdOrderBaseType(FProductionOrderBaseTypeCode) in SaleBoundProdOrderBaseTypes);
  ReplacedDBComboBox(cbSaleState).Visible:= gbSaleIdentification.Visible;
end;

procedure TfmModelsInvestedValuesFilter.actInvestedValueFilterExecute(
  Sender: TObject);
begin
  inherited;
  TfmModelsInvestedValuesIVFilter.ShowForm(nil, dsData.DataSet, emEdit);
end;

end.
