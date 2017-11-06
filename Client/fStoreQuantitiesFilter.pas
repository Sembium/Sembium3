unit fStoreQuantitiesFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFilterForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  fBevelFilterForm, JvDBLookup, JvToolEdit, JvDBControls, Mask, DBCtrls,
  AbmesClientDataSet, fBaseFrame, fDBFrame,
  fFieldEditFrame, AbmesFields, 
  Menus, JvButtons, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fProductFieldEditFrame, fDateFieldEditFrame, JvComponent,
  JvCaptionButton, JvExControls, JvComponentBase, fTreeNodeFilter,
  fProductFilter, fParamProductFilter, fDeptFilter,
  uProducts, uClientTypes, dDocClient;

type
  TfmStoreQuantitiesFilter = class(TBevelFilterForm)
    lblStoreDealDate: TLabel;
    frStoreDealDate: TfrDateFieldEditFrame;
    rgIsGroupedByStore: TDBRadioGroup;
    frParamProductFilter: TfrParamProductFilter;
    frDeptFilter: TfrDeptFilter;
    procedure FormCreate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
  protected
    function GetOriginalFormCaption: string; override;
    function GetFilterFormVariantCode: Integer; override;
  public
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;

    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone): Boolean;

    procedure Initialize; override;      
  end;

implementation

uses
  uTreeClientUtils, fTreeSelectForm, uProductClientUtils, uClientUtils;

{$R *.DFM}

{ TfmStoreQuantitiesFilter }

procedure TfmStoreQuantitiesFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frStoreDealDate.FieldNames:= 'STORE_DEAL_DATE';
  frDeptFilter.FieldNames:= 'CHOSEN_DEPTS';
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
end;

function TfmStoreQuantitiesFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= ProductClassToInt(FProductClass);
end;

function TfmStoreQuantitiesFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmStoreQuantitiesFilter.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  frParamProductFilter.ProductClass:= FProductClass;

  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);

  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmStoreQuantitiesFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass);
begin
  FProductClass:= AProductClass;
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
end;

class function TfmStoreQuantitiesFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass): Boolean;
var
  f: TfmStoreQuantitiesFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

end.
