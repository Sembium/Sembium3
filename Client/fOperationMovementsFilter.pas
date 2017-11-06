unit fOperationMovementsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls, JvToolEdit, JvDBControls,
  Mask, JvDBLookup, fBaseFrame, fDBFrame, fFieldEditFrame,
  JvDBCombobox, AbmesFields,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fPriorityIntervalEditFrame,
  fDateIntervalFrame, JvExStdCtrls, JvComponent, JvCaptionButton,
  JvExControls, fProductFieldEditFrame, fProductFieldEditFrameLabeled,
  fTreeNodeFilter, fDeptFilter, JvComponentBase, JvCombobox, fFilterFrame, fTreeNodeGridFilter, System.Actions;

type
  TfmOperationMovementsFilter = class(TFilterForm)
    gbMovementIdentification: TGroupBox;
    cbOperationMovementBranch: TJvDBLookupCombo;
    lblOperationMovementBranch: TLabel;
    edtOperationMovementNo: TDBEdit;
    lblOperationMovementNo: TLabel;
    gbDates: TGroupBox;
    rgIsStorno: TDBRadioGroup;
    gbProductionOrder: TGroupBox;
    lblProductionOrderBranch: TLabel;
    cbProductionOrderBranch: TJvDBLookupCombo;
    lblProductionOrderNo: TLabel;
    edtProductionOrderNo: TDBEdit;
    gbMaterialListLineNo: TGroupBox;
    edtMllNoAsText: TDBEdit;
    edtForkNo: TDBEdit;
    lblMllNoAsText: TLabel;
    lblForkNo: TLabel;
    gbFrom: TGroupBox;
    pnlToOperationOrWaste: TPanel;
    lblToOperationOrWaste: TLabel;
    cbToOperationOrWaste: TJvDBComboBox;
    lblPriority: TLabel;
    frPriorityInterval: TfrPriorityIntervalEditFrame;
    frDateInterval: TfrDateIntervalFrame;
    gbTo: TGroupBox;
    pnlToOperation: TPanel;
    lblToStageNo: TLabel;
    lblToOperationNo: TLabel;
    lblToOperationVariantNo: TLabel;
    edtToStageNo: TDBEdit;
    edtToOperationNo: TDBEdit;
    edtToOperationVariantNo: TDBEdit;
    pnlToWaste: TPanel;
    pnlFromOperation: TPanel;
    lblFromStageNo: TLabel;
    lblFromOperationNo: TLabel;
    lblFromOperationVariantNo: TLabel;
    edtFromStageNo: TDBEdit;
    edtFromOperationNo: TDBEdit;
    edtFromOperationVariantNo: TDBEdit;
    frDetail: TfrProductFieldEditFrameLabeled;
    cbProductionOrderType: TJvDBLookupCombo;
    lblProductionOrderType: TLabel;
    lblSaleTypeAbbrev: TLabel;
    cbSaleTypeAbbrev: TJvDBLookupCombo;
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
    frFromMlmsoDept: TfrDeptFilter;
    frToMlmsoDept: TfrDeptFilter;
    frToWasteDept: TfrDeptFilter;
    frResultProduct: TfrProductFieldEditFrameLabeled;
    gbOperationMovementType: TGroupBox;
    cbOperationMovementType: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cbToOperationOrWasteChange(Sender: TObject);
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
  toOperation = 1;
  toWaste = 2;

implementation

uses
  uUtils, fTreeSelectForm, uProductionOrderTypes, uComboBoxUtils;

{$R *.dfm}

resourcestring
  SOperationMovementsFilter = 'Филтър на Регистър на Операционни Движения по ОПВ %s';

{ TfmOperationMovementsFilter }

procedure TfmOperationMovementsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDateInterval.FieldNames:= 'OM_BEGIN_DATE;OM_END_DATE';
  frResultProduct.FieldNames:= 'RESULT_PRODUCT_CODE';
  frDetail.FieldNames:= 'DETAIL_CODE';
  frFromMlmsoDept.FieldNames:= 'FROM_MLMSO_CHOSEN_DEPTS';
  frToMlmsoDept.FieldNames:= 'TO_MLMSO_CHOSEN_DEPTS';
  frToWasteDept.FieldNames:= 'TO_WASTE_CHOSEN_DEPTS';
end;

function TfmOperationMovementsFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger;
end;

procedure TfmOperationMovementsFilter.OpenDataSets;
begin
  inherited;
  cdsProductionOrderTypes.Open;
end;

procedure TfmOperationMovementsFilter.CloseDataSets;
begin
  cdsProductionOrderTypes.Close;
  inherited;
end;

procedure TfmOperationMovementsFilter.Initialize;
var
  ProductionOrderBaseTypeCode: Integer;
begin
  inherited;

  cbToOperationOrWaste.ItemIndex:= cbToOperationOrWaste.Field.AsInteger;

  ProductionOrderBaseTypeCode:= dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger;
  Caption:= Format(SOperationMovementsFilter, [ProductionOrderBaseTypes[ProductionOrderBaseTypeCode].CoveringAbbrevPlural]);
end;

procedure TfmOperationMovementsFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  pnlToOperation.Visible:=
    dsData.DataSet.Active and
    (dsData.DataSet.FieldByName('TO_OPERATION_OR_WASTE').AsInteger = toOperation);

  pnlToWaste.Visible:=
    dsData.DataSet.Active and
    (dsData.DataSet.FieldByName('TO_OPERATION_OR_WASTE').AsInteger = toWaste);
end;

procedure TfmOperationMovementsFilter.cbToOperationOrWasteChange(
  Sender: TObject);
begin
  inherited;
  ReplacedDBComboBox(cbToOperationOrWaste).XField.DataSet.UpdateRecord;
end;

procedure TfmOperationMovementsFilter.cdsProductionOrderTypesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));
  Accept:=
    (dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger = 0) or
    (cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE.AsInteger = dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger);
end;

end.
