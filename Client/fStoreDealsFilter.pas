unit fStoreDealsFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFilterForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  fBevelFilterForm, Mask, DBCtrls, JvDBLookup, JvToolEdit, JvDBControls,
  AbmesClientDataSet, fBaseFrame, fDBFrame,
  fFieldEditFrame, AbmesFields,
  AbmesDBCheckBox, Menus, JvButtons, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fProductFieldEditFrame, fDateIntervalFrame,
  fDateFieldEditFrame, fPartnerFieldEditFrame, fPartnerFieldEditFrameBald,
  JvComponent, JvCaptionButton, JvExControls, fDeptFieldEditFrameBald,
  fProductFieldEditFrameLabeled, JvExStdCtrls, JvDBCombobox,
  fTreeNodeFilter, fDeptFilter, fProductFilter, fParamProductFilter,
  JvComponentBase, fStoreDealBindingFilter, uClientTypes, dDocClient, uProducts,
  fFilterFrame, fTreeNodeGridFilter, System.Actions;

type
  TfmStoreDealsFilter = class(TFilterForm)
    gbMovementType: TGroupBox;
    chkIn: TAbmesDBCheckBox;
    chkOut: TAbmesDBCheckBox;
    gbFlags: TGroupBox;
    chkNotStorno: TAbmesDBCheckBox;
    chkStorno: TAbmesDBCheckBox;
    gbDates: TGroupBox;
    gbStoreRequest: TGroupBox;
    lblStoreRequestNo: TLabel;
    edtStoreRequestNo: TDBEdit;
    frDateInterval: TfrDateIntervalFrame;
    frOtherDept: TfrDeptFieldEditFrame;
    lblStoreRequestBranch: TLabel;
    cbStoreRequestBranch: TJvDBLookupCombo;
    frStore: TfrDeptFilter;
    frProduct: TfrParamProductFilter;
    gbStoreDealID: TGroupBox;
    lblStoreDealNo: TLabel;
    edtStoreDealNo: TDBEdit;
    frBndProcess: TfrStoreDealBindingFilter;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    dsBranches: TDataSource;
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
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses
  dMain,
  uProductClientUtils,
  uClientUtils,
  uScalingUtils;

{$R *.DFM}

{ TfmStoreMovementsFilter }

procedure TfmStoreDealsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frStore.FieldNames:= 'CHOSEN_DEPTS';
  frProduct.FieldNames:= 'CHOSEN_PRODUCTS';
  frOtherDept.FieldNames:= 'OTHER_DEPT_CODE';
  frDateInterval.FieldNames:= 'START_DATE;END_DATE';
end;

function TfmStoreDealsFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= ProductClassToInt(FProductClass);
end;

function TfmStoreDealsFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmStoreDealsFilter.Initialize;
var
  MsgParams: TStrings;
begin
  frBndProcess.FieldNames:= 'BND_PROCESS;BND_PROCESS_CODE';
  frBndProcess.IsInboundProcess:= True;
  frBndProcess.IsOutboundProcess:= True;
  frBndProcess.IsRealStoreDealProcess:= True;
  frBndProcess.IsFinancialProcess:= (FProductClass = pcFinancial);

  inherited Initialize;

  frProduct.ProductClass:= FProductClass;
  
  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);

  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmStoreDealsFilter.OpenDataSets;
begin
  inherited;
  cdsBranches.Open;
end;

procedure TfmStoreDealsFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass);
begin
  FProductClass:= AProductClass;
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
end;

class function TfmStoreDealsFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass): Boolean;
var
  f: TfmStoreDealsFilter;
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

procedure TfmStoreDealsFilter.actFormUpdate(Sender: TObject);
const
  FormHeights: array[Boolean] of Integer = (525, 525+88);
begin
  inherited;
  Height:= ScalePixels(FormHeights[frBndProcess.IsFinancialProcess]);
end;

procedure TfmStoreDealsFilter.CloseDataSets;
begin
  cdsBranches.Close;
  inherited;
end;

end.
