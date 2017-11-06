unit fUncoveredModelsFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, DBClient, AbmesClientDataSet, fFilterForm, fTreeNodeFilter,
  fProductFilter, fParamProductFilter, fPriorityIntervalEditFrame,
  StdCtrls, Mask, DBCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, ExtCtrls, AbmesFields,
  JvComponent, JvCaptionButton, ActnList, JvExControls, JvDBLookup, Buttons,
  fDateIntervalFrame, JvComponentBase;

type
  TfmUncoveredModelsFilter = class(TFilterForm)
    rgStatus: TDBRadioGroup;
    frMainDept: TfrDeptFieldEditFrame;
    gbProductionOrder: TGroupBox;
    lblSaleBranch: TLabel;
    cbSaleBranch: TJvDBLookupCombo;
    lblSaleNo: TLabel;
    edtSaleNo: TDBEdit;
    lblSaleTypeAbbrev: TLabel;
    cbSaleTypeAbbrev: TJvDBLookupCombo;
    frPriorityInterval: TfrPriorityIntervalEditFrame;
    lblPriorityInterval: TLabel;
    frParamProductFilter: TfrParamProductFilter;
    rgIsWasteCompensatorStatus: TDBRadioGroup;
    rgHasWasteStatus: TDBRadioGroup;
    gbModelStartDate: TGroupBox;
    lblModelStartDateInterval: TLabel;
    edtModelStartMinReserve: TDBEdit;
    edtModelStartMaxReserve: TDBEdit;
    lblModelStartReserve: TLabel;
    lblModelStartReserveDelimiter: TLabel;
    frModelStartDateInterval: TfrDateIntervalFrame;
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
    rgIsTowardsReserve: TDBRadioGroup;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

{ TfmUncoveredModelsFilter }

procedure TfmUncoveredModelsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frModelStartDateInterval.FieldNames:= 'MODEL_START_BEGIN_DATE;MODEL_START_END_DATE';
end;

procedure TfmUncoveredModelsFilter.OpenDataSets;
begin
  inherited;
  cdsProductionOrderTypes.Open;
end;

procedure TfmUncoveredModelsFilter.CloseDataSets;
begin
  cdsProductionOrderTypes.Close;
  inherited;
end;

end.
