unit fVIMQuantityFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFilterForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  Mask, JvToolEdit, JvDBControls, fBaseFrame, fDBFrame, fFieldEditFrame,
  DBCtrls, ComCtrls, fVIMQuantity,
  AbmesClientDataSet, AbmesDBCheckBox, JvDBLookup, Menus, JvButtons,
  dDocClient, AbmesFields, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fProductFieldEditFrame, JvExMask, JvComponent, JvCaptionButton,                               
  JvExControls, fDateUnitsIntervalEditFrame, fTreeNodeFilter,
  fProductFilter, fParamProductFilter, fDeptFilter, JvExExtCtrls,
  JvDBRadioPanel, JvComponentBase, JvExtComponent, uProducts, uClientTypes;

type
  TfmVIMQuantityFilter = class(TFilterForm)
    actPrev: TAction;
    actNext: TAction;
    actFinePrev: TAction;
    actFineNext: TAction;
    gbRounders: TGroupBox;
    gbPlannedSecondLevel: TGroupBox;
    cbQuantitiesOut: TAbmesDBCheckBox;
    frDateUnitsInterval: TfrDateUnitsIntervalEditFrame;
    frParamProductFilter: TfrParamProductFilter;
    frDeptFilter: TfrDeptFilter;
    lblRounderQuantity: TLabel;
    cbRounderQuantity: TJvDBLookupCombo;
    lblRounderPrice: TLabel;
    cbRounderPrice: TJvDBLookupCombo;
    rpIsAutoRounder: TJvDBRadioPanel;
    lblRounderAccountQuantity: TLabel;
    cbRounderAccountQuantity: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure rpIsAutoRounderChange(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
  protected
    function GetOriginalFormCaption: string; override;
    function GetFilterFormVariantCode: Integer; override;
    procedure DoApplyUpdates; override;
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
  uPeriods, fTreeSelectForm, uTreeNodes, uUtils, fDBDataForm,
  uClientUtils, uProductClientUtils;

{$R *.DFM}

resourcestring
  SRounderStepRequired = 'Ръчният вариант на закръгляне изисква да изберете стъпка на закръглянето за цени и количества.';

procedure TfmVIMQuantityFilter.DoApplyUpdates;
begin
  with dsData.DataSet do
    if not FieldByName('IS_AUTO_ROUNDER').AsBoolean then
      if FieldByName('ROUNDER_PRICE').IsNull or
         FieldByName('ROUNDER_QUANTITY').IsNull or
         FieldByName('ROUNDER_ACCOUNT_QUANTITY').IsNull then
        raise Exception.Create(SRounderStepRequired);
  inherited;
end;

procedure TfmVIMQuantityFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frDeptFilter.FieldNames:= 'CHOSEN_DEPTS';
end;

function TfmVIMQuantityFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= ProductClassToInt(FProductClass);
end;

function TfmVIMQuantityFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmVIMQuantityFilter.Initialize;
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

procedure TfmVIMQuantityFilter.rpIsAutoRounderChange(Sender: TObject);
var
  en: Boolean;
begin
  inherited;
  en:=  not (rpIsAutoRounder.Value = 'True');
  cbRounderQuantity.Enabled:= en;
  cbRounderAccountQuantity.Enabled:= en;
  cbRounderPrice.Enabled:= en;
  if not en then
    begin
      cbRounderQuantity.Color:= clBtnFace;
      cbRounderAccountQuantity.Color:= clBtnFace;
      cbRounderPrice.Color:= clBtnFace;
      if dsData.State = dsEdit then
        begin
          dsData.DataSet.FieldByName('ROUNDER_QUANTITY').Clear;
          dsData.DataSet.FieldByName('ROUNDER_ACCOUNT_QUANTITY').Clear;
          dsData.DataSet.FieldByName('ROUNDER_PRICE').Clear;
        end;
    end
  else
    begin
      cbRounderQuantity.Color:= clWindow;
      cbRounderAccountQuantity.Color:= clWindow;
      cbRounderPrice.Color:= clWindow;
    end;
end;

procedure TfmVIMQuantityFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass);
begin
  FProductClass:= AProductClass;
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
end;

class function TfmVIMQuantityFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass): Boolean;
var
  f: TfmVIMQuantityFilter;
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

