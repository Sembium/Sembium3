unit fProductParamsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeNodeParamsTreeFilterForm, DB, AbmesFields, Menus, DBClient,
  AbmesClientDataSet, JvButtons, ImgList, ActnList, GridsEh, DBGridEh,
  AbmesDBGrid, DBCtrls, ColorNavigator, StdCtrls, Buttons, ExtCtrls,
  fTreeNodeParamFilterForm, JvComponent, JvCaptionButton, JvExControls,
  JvDBLookup, uProducts, uClientTypes, uTreeNodeParams, dDocClient,
  JvComponentBase, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL,
  DBAxisGridsEh, Vcl.ComCtrls, Vcl.ToolWin;

type
  TfmProductParamsFilter = class(TTreeNodeParamsTreeFilterForm)
    frCommonProduct: TfrProductFieldEditFrame;
    procedure actClearExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
  protected
    function GetOriginalFormCaption: string; override;
    function GetClearEnabled: Boolean; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ATreeNodeParams: TTreeNodeParams = nil;
      ATreeNodeCode: Integer = 0;
      AProductClass: TProductClass = pcNormal): Boolean; reintroduce; virtual;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ATreeNodeParams: TTreeNodeParams = nil;
      ATreeNodeCode: Integer = 0;
      AProductClass: TProductClass = pcNormal); reintroduce; virtual;
    procedure Initialize; override;
  end;

type
  TfmProductParamsFilterClass = class of TfmProductParamsFilter;

implementation

uses
  dMain,
  uProductClientUtils,
  uClientUtils,
  uUtils,
  ParamDataSet,
  uScalingUtils;

{$R *.dfm}

{ TfmProductParamsFilter }

procedure TfmProductParamsFilter.actClearExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('COMMON_PRODUCT_CODE').Clear;
end;

procedure TfmProductParamsFilter.FormShow(Sender: TObject);
var
  ProductsDataSet: TDataSet;
  CommonProductCode: Integer;
  NodeID: Integer;
begin
  inherited;

  if ShiftIsPressed and
     (FProductClass <> pcBudget) and
     Assigned(dsData.DataSet) and
     (dsData.DataSet is TParamDataSet) then
    Screen.TempCursor(crSQLWait) /
      procedure begin
        ProductsDataSet:= TParamDataSet(dsData.DataSet).DataSet as TDataSet;
        NodeID:= ProductsDataSet.FieldByName('NODE_ID').AsInteger;

        if (ProductsDataSet.FieldByName('COMMON_STATUS_CODE').AsInteger = cscCommon) then
          CommonProductCode:= NodeID
        else
          CommonProductCode:=
            dmMain.SvrProductsTree.GetCommonProductCode(NodeID);

        CheckEditMode(dsData.DataSet);
        dsData.DataSet.FieldByName('COMMON_PRODUCT_CODE').AsVariant:= IntToVar(CommonProductCode);
      end;

  if (FProductClass = pcBudget) then
    Height:= Height - frCommonProduct.Height - ScalePixels(8);
end;

function TfmProductParamsFilter.GetClearEnabled: Boolean;
begin
  Result:=
    inherited GetClearEnabled or
    not dsData.DataSet.FieldByName('COMMON_PRODUCT_CODE').IsNull;
end;

function TfmProductParamsFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmProductParamsFilter.Initialize;
var
  MsgParams: TStrings;
begin
  if (FProductClass = pcBudget) then
    begin
      ActiveControl:= grdTreeNodeParams;
      frCommonProduct.FieldNames:= '';
      frCommonProduct.Visible:= False;
    end
  else
    frCommonProduct.FieldNames:= 'COMMON_PRODUCT_CODE';

  inherited;

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

procedure TfmProductParamsFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ATreeNodeParams: TTreeNodeParams;
  ATreeNodeCode: Integer; AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ATreeNodeParams, ATreeNodeCode);
  FProductClass:= AProductClass;
end;

class function TfmProductParamsFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ATreeNodeParams: TTreeNodeParams;
  ATreeNodeCode: Integer; AProductClass: TProductClass): Boolean;
var
  f: TfmProductParamsFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ATreeNodeParams, ATreeNodeCode,
      AProductClass);
    f.InternalShowForm;
    Result:= f.Refilter;
  finally
    f.ReleaseForm;
  end;
end;

end.
