unit fUncoveredPSDSingleFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  fBaseFrame, fDBFrame, fFieldEditFrame, 
  StdCtrls, Buttons, ExtCtrls, DBCtrls, AbmesDBCheckBox, JvToolEdit,
  JvDBControls, Mask, JvDBCombobox, JvDBLookup, Menus, JvButtons, ComCtrls,
  AbmesFields, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fProductFieldEditFrame, JvExMask, JvComponent,
  JvCaptionButton, JvExControls, fDateUnitsIntervalEditFrame, JvExStdCtrls,
  JvComponentBase, fFilterForm, fTreeNodeFilter, fDeptFilter,
  fProductFilter, fParamProductFilter, fStoreDealBindingFilter, uProducts,
  dDocClient, uClientTypes, fFilterFrame, fTreeNodeGridFilter, JvCombobox,
  System.Actions;

type
  TfmUncoveredPSDSingleFilter = class(TFilterForm)
    gbPlannedSecondLevel: TGroupBox;
    cbIsTowardsReserve: TJvDBComboBox;
    rgIncludePlanSecondLevel: TDBRadioGroup;
    frDeptFilter: TfrDeptFilter;
    frParamProductFilter: TfrParamProductFilter;
    frDateUnits: TfrDateUnitsIntervalEditFrame;
    frBndProcess: TfrStoreDealBindingFilter;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
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
  uProcesses,
  uClientUtils,
  uProductClientUtils,
  uScalingUtils;

{$R *.DFM}

{ TfmUncoveredPSDSingleFilter }

procedure TfmUncoveredPSDSingleFilter.actFormUpdate(Sender: TObject);
const
  FormHeights: array[Boolean] of Integer = (541, 541+88);
begin
  inherited;
  Height:= ScalePixels(FormHeights[frBndProcess.IsFinancialProcess]);
end;

procedure TfmUncoveredPSDSingleFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDateUnits.IsBeginDateOriginOnIntervalChange:= True;
  frDeptFilter.FieldNames:= 'CHOSEN_DEPTS';
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
end;

function TfmUncoveredPSDSingleFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= ProductClassToInt(FProductClass);
end;

function TfmUncoveredPSDSingleFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmUncoveredPSDSingleFilter.Initialize;
var
  MsgParams: TStrings;
begin
  frBndProcess.FieldNames:= 'BND_PROCESS';
  frBndProcess.IsOutboundProcess:= True;
  frBndProcess.IsPlanStoreDealProcess:= True;
  frBndProcess.IsProjStoreDealProcess:= True;
  frBndProcess.IsFinancialProcess:= (FProductClass = pcFinancial);

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

procedure TfmUncoveredPSDSingleFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass);
begin
  FProductClass:= AProductClass;
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
end;

class function TfmUncoveredPSDSingleFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass): Boolean;
var
  f: TfmUncoveredPSDSingleFilter;
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
