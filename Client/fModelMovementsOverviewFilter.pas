unit fModelMovementsOverviewFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, DBClient, AbmesClientDataSet, JvButtons,
  ImgList, ActnList, fBaseFrame, fDBFrame, fFieldEditFrame,
  StdCtrls, Buttons, ExtCtrls, Mask,
  DBCtrls, JvDBCombobox, JvToolEdit, JvDBControls, JvDBLookup, AbmesFields,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fDeptFieldEditFrame, fEmployeeFieldEditFrame, fPriorityIntervalEditFrame,
  fDateIntervalFrame, fPartnerFieldEditFrame, fEmployeeFieldEditFrameBald,
  fPartnerFieldEditFrameBald, JvComponent, JvCaptionButton, JvExControls,
  fFilterForm, fTreeNodeFilter, fProductFilter, fParamProductFilter,
  fDeptFilter, JvExStdCtrls, JvComponentBase;

type
  TfmModelMovementsOverviewFilter = class(TFilterForm)
    gbMMIdentification: TGroupBox;
    lblOMBranchCode: TLabel;
    edtOMNo: TDBEdit;
    lblOMNo: TLabel;
    gbDates: TGroupBox;
    rgIsStorno: TDBRadioGroup;
    cbOMBranchCode: TJvDBLookupCombo;
    bgMLLIdentification: TGroupBox;
    edtMllNoAsText: TDBEdit;
    lblMllNoAsText: TLabel;
    edtMllForkNo: TDBEdit;
    lblMllForkNo: TLabel;
    gbProductionOrder: TGroupBox;
    lblSaleBranch: TLabel;
    cbSaleBranch: TJvDBLookupCombo;
    lblSaleNo: TLabel;
    edtSaleNo: TDBEdit;
    lblSaleType: TLabel;
    cbSaleType: TJvDBLookupCombo;
    lblPriorityCode: TLabel;
    frPriorityInterval: TfrPriorityIntervalEditFrame;
    frDateInterval: TfrDateIntervalFrame;
    frResultProduct: TfrParamProductFilter;
    frDetail: TfrParamProductFilter;
    gbFrom: TGroupBox;
    pnlFromStage: TPanel;
    lblFromStageNo: TLabel;
    edtFromStageNo: TDBEdit;
    frFromStageDept: TfrDeptFilter;
    gbTo: TGroupBox;
    pnlToStage: TPanel;
    lblToStageNo: TLabel;
    edtToStageNo: TDBEdit;
    pnlToWaste: TPanel;
    frToWasteDept: TfrDeptFilter;
    pnlToOperationOrWaste: TPanel;
    lblToStageOrWaste: TLabel;
    cbToStageOrWaste: TJvDBComboBox;
    frToStageDept: TfrDeptFilter;
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
    cbProductionOrderType: TJvDBLookupCombo;
    lblProductionOrderType: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cbToStageOrWasteChange(Sender: TObject);
    procedure cdsProductionOrderTypesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetFilterFormVariantCode: Integer; override;
  public
    procedure Initialize; override;
  end;

const
  toStage = 1;
  toWaste = 2;

implementation

uses
  uProductionOrderTypes, uComboBoxUtils;

{$R *.DFM}

resourcestring
  SModelMovementsOverviewFilter = 'Филтър на Регистър на Етапни Движения по ОПВ %s';

{ TfmModelMovementsOverviewFilter }

procedure TfmModelMovementsOverviewFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDateInterval.FieldNames:= 'START_PERIOD_DATE;END_PERIOD_DATE';
  frResultProduct.FieldNames:= 'RESULT_PRODUCT_CHOSEN_PRODUCTS';
  frDetail.FieldNames:= 'DETAIL_CHOSEN_PRODUCTS';
  frFromStageDept.FieldNames:= 'FROM_STAGE_CHOSEN_DEPTS';
  frToStageDept.FieldNames:= 'TO_STAGE_CHOSEN_DEPTS';
  frToWasteDept.FieldNames:= 'TO_WASTE_CHOSEN_DEPTS';
end;

function TfmModelMovementsOverviewFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger;
end;

procedure TfmModelMovementsOverviewFilter.OpenDataSets;
begin
  inherited;
  cdsProductionOrderTypes.Open;
end;

procedure TfmModelMovementsOverviewFilter.CloseDataSets;
begin
  cdsProductionOrderTypes.Close;
  inherited;
end;

procedure TfmModelMovementsOverviewFilter.Initialize;
var
  ProductionOrderBaseTypeCode: Integer;
begin
  inherited;

  cbToStageOrWaste.ItemIndex:= cbToStageOrWaste.Field.AsInteger;

  ProductionOrderBaseTypeCode:= dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger;
  Caption:= Format(SModelMovementsOverviewFilter, [ProductionOrderBaseTypes[ProductionOrderBaseTypeCode].CoveringAbbrevPlural]);
end;

procedure TfmModelMovementsOverviewFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  pnlToStage.Visible:=
    dsData.DataSet.Active and
    (dsData.DataSet.FieldByName('TO_STAGE_OR_WASTE').AsInteger = toStage);

  pnlToWaste.Visible:=
    dsData.DataSet.Active and
    (dsData.DataSet.FieldByName('TO_STAGE_OR_WASTE').AsInteger = toWaste);
end;

procedure TfmModelMovementsOverviewFilter.cbToStageOrWasteChange(
  Sender: TObject);
begin
  inherited;
  ReplacedDBComboBox(cbToStageOrWaste).XField.DataSet.UpdateRecord;
end;

procedure TfmModelMovementsOverviewFilter.cdsProductionOrderTypesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));
  Accept:=
    (dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger = 0) or
    (cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE.AsInteger = dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger);
end;

end.
