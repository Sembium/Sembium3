unit fSelectProduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls,
  Buttons, ExtCtrls, uClientTypes, dDocClient, uProducts, AbmesFields,
  fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fTreeSelectForm;

type
  TfmSelectProduct = class(TEditForm)
    frProduct: TfrProductFieldEditFrame;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
  private
    FOriginalFormCaption: string;
    FSelectedProductCode: Integer;
    { Private declarations }
  protected
    function GetOriginalFormCaption: string; override;
    procedure DoApplyUpdates; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNormal;
      ATreeDetailSelection: TTreeDetailSelection = tdsAll); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNormal;
      ATreeDetailSelection: TTreeDetailSelection = tdsAll): Integer;
    class function SelectProduct(AProductClass: TProductClass = pcNormal;
      ATreeDetailSelection: TTreeDetailSelection = tdsAll): Integer;
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
  end;

implementation

uses
  uProductClientUtils, uClientUtils;

{$R *.dfm}

{ TfmSelectProduct }

class function TfmSelectProduct.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmSelectProduct.DoApplyUpdates;
begin
  inherited;
  FSelectedProductCode:= cdsDataPRODUCT_CODE.AsInteger;
end;

function TfmSelectProduct.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmSelectProduct.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, frProduct.ProductClass);

  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

class function TfmSelectProduct.SelectProduct(
  AProductClass: TProductClass; ATreeDetailSelection: TTreeDetailSelection): Integer;
begin
  Result:= ShowForm(nil, nil, emInsert, doNone, AProductClass, ATreeDetailSelection);
end;

procedure TfmSelectProduct.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass; ATreeDetailSelection: TTreeDetailSelection);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  frProduct.ProductClass:= AProductClass;
  frProduct.TreeDetailSelection:= ATreeDetailSelection;
end;

class function TfmSelectProduct.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass; ATreeDetailSelection: TTreeDetailSelection): Integer;
var
  f: TfmSelectProduct;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
      AProductClass, ATreeDetailSelection);
    f.InternalShowForm;
    Result:= f.FSelectedProductCode;
  finally
    f.ReleaseForm;
  end;
end;

end.

