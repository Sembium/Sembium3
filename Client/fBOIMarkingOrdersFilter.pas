unit fBOIMarkingOrdersFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBOIOrdersFilter, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, StdCtrls, AbmesDBCheckBox,
  fTreeNodeFilter, fProductFilter, fParamProductFilter, fProductFieldEditFrame,
  fDeptFieldEditFrameBald, fDateIntervalFrame, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameLabeled, Mask, DBCtrls, JvExStdCtrls, JvDBCombobox,
  JvExControls, JvDBLookup, Buttons, ExtCtrls;

type
  TfmBOIMarkingOrdersFilter = class(TfmBOIOrdersFilter)
    gbDelivery: TGroupBox;
    pnlDelivery: TPanel;
    lblDeliveryDealType: TLabel;
    lblDeliveryDCDBranch: TLabel;
    lblDeliveryDCDCode: TLabel;
    lblDeliveryProjectCode: TLabel;
    cbDeliveryDealType: TJvDBLookupCombo;
    edtDeliveryDCDBranch: TJvDBLookupCombo;
    edtDeliveryDCDCode: TDBEdit;
    edtDeliveryProjectCode: TDBEdit;
    cdsDeliveryDealTypes: TAbmesClientDataSet;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    dsDeliveryDealTypes: TDataSource;
  private
    { Private declarations }
  protected
    function GetBudgetOrderItemTypeReadOnly: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TfmBOIMarkingOrdersFilter }


function TfmBOIMarkingOrdersFilter.GetBudgetOrderItemTypeReadOnly: Boolean;
begin
  Result:= False;
end;

procedure TfmBOIMarkingOrdersFilter.OpenDataSets;
begin
  cdsDeliveryDealTypes.Open;
  inherited;
end;

procedure TfmBOIMarkingOrdersFilter.CloseDataSets;
begin
  inherited;
  cdsDeliveryDealTypes.Close;
end;

end.
