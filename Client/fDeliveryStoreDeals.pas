unit fDeliveryStoreDeals;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, Mask, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateFieldEditFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, uProducts, dDocClient, uClientTypes, Menus, DBGridEhGrouping;

type
  TfmDeliveryStoreDeals = class(TGridForm)
    cdsGridDataSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSTORE_DEAL_NO: TAbmesFloatField;
    cdsGridDataQUANTITY: TAbmesFloatField;
    cdsGridDataACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataSTORE_CODE: TAbmesFloatField;
    cdsGridDataSTORE_NAME: TAbmesWideStringField;
    cdsGridDataSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    cdsGridData_DEVIATION: TAbmesFloatField;
    cdsGridData_SUM_QUANITITY: TAggregateField;
    cdsGridData_SUM_ACCOUNT_QUANITTY: TAggregateField;
    cdsGridData_MIN_STORE_DEAL_DATE: TAggregateField;
    cdsGridData_MAX_STORE_DEAL_DATE: TAggregateField;
    pnlBottom: TPanel;
    lblDeviation: TLabel;
    edtDeviation: TDBEdit;
    lblDays: TLabel;
    edtTotalQuantity: TDBEdit;
    edtSDTotalAccountQuantity: TDBEdit;
    pnlTop: TPanel;
    gbPlannedStoreDeal: TGroupBox;
    lblPSDStore: TLabel;
    lblPSDQuantity: TLabel;
    lblSDDeliveryDate: TLabel;
    lblPSDAccountQuantity: TLabel;
    lblPSDQuantityMeasure: TDBText;
    lblPSDAccountQuantityMeasure: TDBText;
    edtPSDQuantity: TDBEdit;
    edtPSDAccountQuantity: TDBEdit;
    frSDDeliveryDate: TfrDateFieldEditFrame;
    frPSDStore: TfrDeptFieldEditFrameBald;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
  private
    FProductClass: TProductClass;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNone): Boolean;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses dMain, fStoreDealIn, fDBDataForm, uUtils;

{$R *.dfm}

procedure TfmDeliveryStoreDeals.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if VarIsNullOrEmpty(cdsGridData_MAX_STORE_DEAL_DATE.AsVariant) or
     VarIsNullOrEmpty(cdsGridData_MIN_STORE_DEAL_DATE.AsVariant) or
     dsData.DataSet.FieldByName('DELIVERY_DATE').IsNull then
    cdsGridData_DEVIATION.Clear
  else
    begin
      if (VarToDateTime(cdsGridData_MAX_STORE_DEAL_DATE.AsVariant) > dsData.DataSet.FieldByName('DELIVERY_DATE').AsDateTime) then
        cdsGridData_DEVIATION.AsInteger:=
          Trunc(VarToDateTime(cdsGridData_MAX_STORE_DEAL_DATE.AsVariant)) - Trunc(dsData.DataSet.FieldByName('DELIVERY_DATE').AsDateTime)
      else
        cdsGridData_DEVIATION.AsInteger:=
          Trunc(VarToDateTime(cdsGridData_MIN_STORE_DEAL_DATE.AsVariant)) - Trunc(dsData.DataSet.FieldByName('DELIVERY_DATE').AsDateTime);
    end;
end;

procedure TfmDeliveryStoreDeals.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmStoreDealIn;
  frSDDeliveryDate.FieldNames:= 'DELIVERY_DATE';
  frPSDStore.FieldNames:= 'PSD_STORE_CODE';
  RegisterDateFields(cdsGridData);
end;

procedure TfmDeliveryStoreDeals.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FProductClass:= AProductClass;
end;

procedure TfmDeliveryStoreDeals.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  // do not call inherited
  AFrame.ReadOnly:= True;
end;

function TfmDeliveryStoreDeals.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmStoreDealIn.ShowForm(dmDocClient, cdsGridData, emReadOnly, doNone, FProductClass);
end;

class function TfmDeliveryStoreDeals.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass): Boolean;
var
  f: TfmDeliveryStoreDeals;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

end.
