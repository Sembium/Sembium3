unit fStoreRequestsFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  StdCtrls, Buttons, ExtCtrls, JvDBLookup, JvToolEdit, JvDBControls, Mask, DBCtrls,
  JvDBCombobox, AbmesDBCheckBox, fBaseFrame, fDBFrame, fFieldEditFrame,
  Menus, JvButtons, AbmesFields, JvComponentBase, fFilterForm,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameBald, fDeptFieldEditFrameBald,
  fEmployeeFieldEditFrame, fDateIntervalFrame, fEmployeeFieldEditFrameBald,
  JvExStdCtrls, JvComponent, JvCaptionButton, JvExControls,
  fDateFieldEditFrame, fPartnerFieldEditFrame, fPartnerFieldEditFrameBald,
  fEmployeeFieldEditFrameLabeled, fDeptFieldEditFrameLabeled,
  fProductFieldEditFrameLabeled, fStoreDealBindingFilter, uProducts, fPartnerFieldEditFrameLabeled,
  System.Actions;

type
  TfmStoreRequestsFilter = class(TFilterForm)
    gbID: TGroupBox;
    cbStoreRequestBranchNo: TJvDBLookupCombo;
    lblStoreRequestBranchNo: TLabel;
    edtStoreRequestNo: TDBEdit;
    lblStoreRequestNo: TLabel;
    gbInOut: TGroupBox;
    chkIsIn: TDBCheckBox;
    chkIsOut: TDBCheckBox;
    gbDateInterval: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    gbStatus: TGroupBox;
    cbClosed: TAbmesDBCheckBox;
    cbNotClosed: TAbmesDBCheckBox;
    cbAnnuled: TAbmesDBCheckBox;
    cbNotAnnuled: TAbmesDBCheckBox;
    frRequestEmployee: TfrEmployeeFieldEditFrameLabeled;
    frRequestDept: TfrDeptFieldEditFrameLabeled;
    frStore: TfrDeptFieldEditFrameLabeled;
    frProduct: TfrProductFieldEditFrameLabeled;
    frBndProcess: TfrStoreDealBindingFilter;
    frPartner: TfrPartnerFieldEditFrameLabeled;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
  protected
    function GetOriginalFormCaption: string; override;
    function GetFormCaption: string; override;
    function GetFilterFormVariantCode: Integer; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uProductClientUtils,
  uClientUtils,
  fStoreRequest,
  uScalingUtils;

{$R *.DFM}

{ TfmStoreRequestsFilter }

procedure TfmStoreRequestsFilter.actFormUpdate(Sender: TObject);
const
  FormHeights: array[Boolean] of Integer = (453, 453+88);
begin
  inherited;
  Height:= ScalePixels(FormHeights[frBndProcess.IsFinancialProcess]);
  gbInOut.Visible:= (FProductClass <> pcFinancial);
  frPartner.Visible:= (FProductClass = pcFinancial);
end;

procedure TfmStoreRequestsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frRequestDept.FieldNames:= 'REQUEST_DEPT_CODE';
  frStore.FieldNames:= 'PSD_STORE_CODE';
  frProduct.FieldNames:= 'PSD_PRODUCT_CODE';
  frRequestEmployee.FieldNames:= 'REQUEST_EMPLOYEE_CODE';
  frDateInterval.FieldNames:= 'REQUEST_BEGIN_DATE;REQUEST_END_DATE';
  frPartner.FieldNames:= 'PARTNER_CODE';
end;

function TfmStoreRequestsFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= ProductClassToInt(FProductClass);
end;

function TfmStoreRequestsFilter.GetFormCaption: string;
var
  s: string;
begin
  if (FProductClass = pcFinancial) then
    s:= SMovement
  else
    s:= Format('%s %s %s', [SIns, SAnd, SOuts]);

  Result:= Format(OriginalFormCaption, [SFilter, s]);
end;

function TfmStoreRequestsFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmStoreRequestsFilter.Initialize;
var
  MsgParams: TStrings;
begin
  FProductClass:=
    IntToProductClass(dsData.DataSet.FieldByName('_PRODUCT_CLASS_CODE').AsInteger);

  frBndProcess.FieldNames:= 'BND_PROCESS';
  frBndProcess.IsInboundProcess:= True;
  frBndProcess.IsOutboundProcess:= True;
  frBndProcess.IsPlanStoreDealProcess:= True;
  frBndProcess.IsFinancialProcess:= (FProductClass = pcFinancial);

  frProduct.ProductClass:= FProductClass;

  inherited Initialize;

  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }
  FOriginalFormCaption:= actForm.Caption;
end;

end.
