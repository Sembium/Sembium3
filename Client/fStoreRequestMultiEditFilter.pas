unit fStoreRequestMultiEditFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, DBClient,
  AbmesClientDataSet, JvButtons, ImgList, ActnList, StdCtrls,
  JvToolEdit, fBaseFrame, fDBFrame, fFieldEditFrame,
  Mask, DBCtrls, Buttons,
  ComCtrls, ExtCtrls, AbmesFields, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fProductFieldEditFrame, fDateIntervalFrame,
  AbmesDBCheckBox, fPartnerFieldEditFrame, fDateFieldEditFrame,
  JvComponent, JvCaptionButton, JvExControls, JvDBLookup,
  fPartnerFieldEditFrameBald, fProductFieldEditFrameBald, JvComponentBase,
  fFilterForm, fStoreDealBindingFilter, uProducts, dDocClient, fEditForm,
  uClientTypes, System.Actions;

type
  TfmStoreRequestMultiEditFilter = class(TFilterForm)
    frProduct: TfrProductFieldEditFrame;
    frStore: TfrDeptFieldEditFrame;
    frDept: TfrDeptFieldEditFrame;
    gbPlanPeriod: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    frBndProcess: TfrStoreDealBindingFilter;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FProductClass: TProductClass;
    FInOut: Integer;
    FOriginalFormCaption: string;
    FDeliveryProcessAndIdentifierSelected: Boolean;
  protected
    function GetFilterFormVariantCode: Integer; override;
    function GetFormCaption: string; override;
    property InOut: Integer read FInOut;
    function GetOriginalFormCaption: string; override;
  public
    procedure Initialize; override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ADeliveryProcessAndIdentifierSelected: PBoolean = nil): Boolean;
  end;

resourcestring
  SInPSDs = 'Постъпления';
  SOutPSDs = 'Тегления';
  SInDept = ' ТП Постъпващо ';
  SOutDept = ' ТП Теглещо ';

implementation

{$R *.DFM}

uses
  uUtils,
  uProductClientUtils,
  uClientUtils,
  fStoreRequest,
  uProcesses,
  uScalingUtils;

{ TfmStoreRequestMultiEditFilter }

procedure TfmStoreRequestMultiEditFilter.actFormUpdate(Sender: TObject);
const
  FormHeights: array[Boolean] of Integer = (269, 269+88);
begin
  inherited;
  Height:= ScalePixels(FormHeights[frBndProcess.IsFinancialProcess]);
end;

procedure TfmStoreRequestMultiEditFilter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModalResult = mrOK) then
    ActiveControl:= btnOK;

  FDeliveryProcessAndIdentifierSelected:=
    (frBndProcess.cdsBindingBND_PROCESS_CODE.AsInteger = pPD) and
    (not frBndProcess.cdsBindingDCD_CODE.IsNull);

  inherited;
end;

procedure TfmStoreRequestMultiEditFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frStore.FieldNames:= 'STORE_CODE';
  frDateInterval.FieldNames:= 'STORE_DEAL_BEGIN_DATE;STORE_DEAL_END_DATE';
end;

function TfmStoreRequestMultiEditFilter.GetFilterFormVariantCode: Integer;
begin
  if (FProductClass = pcNormal) then
    Result:= ((dsData.DataSet.FieldByName('IN_OUT').AsInteger + 1) div 2) + 1       // (-1, 1) -> (1, 2)
  else
    Result:= 3;
end;

function TfmStoreRequestMultiEditFilter.GetFormCaption: string;
var
  s: string;
begin
  if (FProductClass = pcFinancial) then
    s:= SMovements
  else
    begin
      if (InOut = 1) then
        s:= SInPSDs
      else
        s:= SOutPSDs;
    end;

  Result:= Format(OriginalFormCaption, [s]);
end;

function TfmStoreRequestMultiEditFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmStoreRequestMultiEditFilter.Initialize;
var
  MsgParams: TStrings;
begin
  FProductClass:=
    IntToProductClass(dsData.DataSet.FieldByName('_PRODUCT_CLASS_CODE').AsInteger);

  FInOut:= dsData.DataSet.FieldByName('IN_OUT').AsInteger;

  frProduct.ProductClass:= FProductClass;

  frBndProcess.FieldNames:= 'BND_PROCESS';
  frBndProcess.IsPlanStoreDealProcess:= True;
  frBndProcess.IsInboundProcess:= (FProductClass = pcFinancial) or (InOut > 0);
  frBndProcess.IsOutboundProcess:= (FProductClass = pcFinancial) or (InOut < 0);
  frBndProcess.IsFinancialProcess:= (FProductClass = pcFinancial);

  inherited;

  if (InOut < 0) then
    frDept.gbTreeNode.Caption:= SOutDept
  else
    frDept.gbTreeNode.Caption:= SInDept;

  MsgParams:=
    CreateCommonMsgParams(
      LoginContext,
      FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

class function TfmStoreRequestMultiEditFilter.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  ADeliveryProcessAndIdentifierSelected: PBoolean): Boolean;
var
  f: TfmStoreRequestMultiEditFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
    f.InternalShowForm;
    Result:= f.IsDataModified;

    if Result and Assigned(ADeliveryProcessAndIdentifierSelected) then
      ADeliveryProcessAndIdentifierSelected^:= f.FDeliveryProcessAndIdentifierSelected;
  finally
    f.ReleaseForm;
  end;
end;

end.
