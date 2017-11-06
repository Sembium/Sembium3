unit fResultProductNeedsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, DBClient, AbmesClientDataSet, Menus, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fParamProductFilter, JvToolEdit, JvDBControls, Mask, DBCtrls,
  fCompanyFilter, fTreeNodeFilter, fProductFilter, AbmesFields, JvDBLookup,
  fDateIntervalFrame, JvComponent, JvCaptionButton, JvExControls,
  JvComponentBase, dDocClient, uClientTypes, uAspectTypes, JvExStdCtrls,
  JvDBCombobox, JvCombobox;

type
  TfmResultProductNeedsFilter = class(TFilterForm)
    gbPeriod: TGroupBox;
    frResultProductFilter: TfrParamProductFilter;
    frCompanyFilter: TfrCompanyFilter;
    frDateInterval: TfrDateIntervalFrame;
    cdsParRelProductStatuses: TAbmesClientDataSet;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    dsParRelProductStatuses: TDataSource;
    gbParRelProductStatus: TGroupBox;
    cbMinParRelProductStatus: TJvDBLookupCombo;
    lblBetweenParRelProductStatuses: TLabel;
    cbMaxParRelProductStatus: TJvDBLookupCombo;
    gbProductCommonLevel: TGroupBox;
    cbProductCommonLevel: TJvDBComboBox;
    gbPartnerCommonLevel: TGroupBox;
    cbPartnerCommonLevel: TJvDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    FOriginalFormCaption: string;
    FAspectType: TAspectType;
  protected
    function GetOriginalFormCaption: string; override;
    function GetFilterFormVariantCode: Integer; override;
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

  TfmResultProductNeedsFilterClass = class of TfmResultProductNeedsFilter;

implementation

uses
  uNeeds, uClientUtils;

{$R *.dfm}

{ TfmResultProductNeedsFilter }

class function TfmResultProductNeedsFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AAspectType: TAspectType): Boolean;
var
  f: TfmResultProductNeedsFilter;
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

procedure TfmResultProductNeedsFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AAspectType: TAspectType);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FAspectType:= AAspectType;
end;

procedure TfmResultProductNeedsFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  gbParRelProductStatus.Visible:= (FAspectType = atEstimation);
  gbProductCommonLevel.Visible:= (FAspectType = atEstimation);
  gbPartnerCommonLevel.Visible:= (FAspectType = atEstimation);
end;

procedure TfmResultProductNeedsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frResultProductFilter.FieldNames:= 'CHOSEN_RESULT_PRODUCTS';
  frCompanyFilter.FieldNames:= 'CHOSEN_COMPANIES';
end;

function TfmResultProductNeedsFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= AspectTypeToInt(FAspectType);
end;

function TfmResultProductNeedsFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmResultProductNeedsFilter.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  MsgParams:= CreateCommonMsgParams(LoginContext, FAspectType, spkResultProduct);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmResultProductNeedsFilter.OpenDataSets;
begin
  inherited;
  cdsParRelProductStatuses.Open;
end;

procedure TfmResultProductNeedsFilter.CloseDataSets;
begin
  cdsParRelProductStatuses.Close;
  inherited;
end;

end.
