unit fCapacityAbstractFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvButtons, ActnList, JvDBLookup, Buttons, StdCtrls, ExtCtrls, ComCtrls,
  Mask, JvToolEdit, JvDBControls, DBCtrls, fBaseFrame, fDBFrame, dDocClient,
  fFieldEditFrame, fTreeNodeFilter, fDeptFilter, fProductFilter, uClientTypes,
  fParamProductFilter, fDateUnitsIntervalEditFrame, JvComponent, uAspectTypes,
  JvCaptionButton, JvExControls, JvComponentBase, AbmesDBCheckBox, JvExStdCtrls,
  JvDBCombobox, JvCombobox, fFilterFrame, fTreeNodeGridFilter;

type
  TfmCapacityAbstractFilter = class(TFilterForm)
    actPrev: TAction;
    actNext: TAction;
    actPrevFine: TAction;
    actNextFine: TAction;
    pnlParRelProduct: TPanel;
    gbParRelProductStatus: TGroupBox;
    lblBetweenParRelProductStatuses: TLabel;
    cbMinParRelProductStatus: TJvDBLookupCombo;
    cbMaxParRelProductStatus: TJvDBLookupCombo;
    pnlMain: TPanel;
    frDeptFilter: TfrDeptFilter;
    frDeptProductFilter: TfrParamProductFilter;
    rgCapacityLimitLevel: TDBRadioGroup;
    gbCalcAllLimitLevels: TGroupBox;
    chkCalcAllLimitLevels: TAbmesDBCheckBox;
    frDateUnitsInterval: TfrDateUnitsIntervalEditFrame;
    cdsParRelProductStatuses: TAbmesClientDataSet;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    dsParRelProductStatuses: TDataSource;
    gbProductCommonLevel: TGroupBox;
    cbProductCommonLevel: TJvDBComboBox;
    gbPartnerCommonLevel: TGroupBox;
    cbPartnerCommonLevel: TJvDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FOriginalFormCaption: string;
    FOriginalFormHeight: Integer;
    FAspectType: TAspectType;
  protected
    function GetOriginalFormCaption: string; override;
    property AspectType: TAspectType read FAspectType;
  public
    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AAspectType: TAspectType); reintroduce; virtual;

    class function ShowForm(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AAspectType: TAspectType): Boolean;

    procedure Initialize; override;

    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

  TfmCapacityAbstractFilterClass = class of TfmCapacityAbstractFilter;

implementation

uses
  uClientUtils, uCapacityClient;

{$R *.dfm}

{ TfmCapacityAbstractFilter }

procedure TfmCapacityAbstractFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  pnlParRelProduct.Visible:= (FAspectType = atEstimation);

  if (FAspectType = atEstimation) then
    Height:= FOriginalFormHeight
  else
    Height:= (FOriginalFormHeight - pnlParRelProduct.Height);
end;

procedure TfmCapacityAbstractFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDeptFilter.FieldNames:= 'CHOSEN_DEPTS';
  frDeptProductFilter.FieldNames:= 'CHOSEN_DEPT_PRODUCTS';
end;

procedure TfmCapacityAbstractFilter.FormShow(Sender: TObject);
begin
  inherited;
  FOriginalFormHeight:= Height;
  actForm.Update;
end;

function TfmCapacityAbstractFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmCapacityAbstractFilter.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  MsgParams:= CreateCommonMsgParams(LoginContext, FAspectType);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmCapacityAbstractFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AAspectType: TAspectType);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FAspectType:= AAspectType;
end;

class function TfmCapacityAbstractFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AAspectType: TAspectType): Boolean;
var
  f: TfmCapacityAbstractFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(
      AdmDocClient,
      ADataSet,
      AEditMode,
      ADefaultsOrigin,
      AAspectType);

    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmCapacityAbstractFilter.OpenDataSets;
begin
  cdsParRelProductStatuses.Open;
  inherited OpenDataSets;
end;

procedure TfmCapacityAbstractFilter.CloseDataSets;
begin
  inherited CloseDataSets;
  cdsParRelProductStatuses.Close;
end;

end.
