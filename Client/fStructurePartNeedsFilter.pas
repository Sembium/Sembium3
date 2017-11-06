unit fStructurePartNeedsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, DBClient, AbmesClientDataSet, Menus, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fParamProductFilter, JvToolEdit, JvDBControls, Mask, DBCtrls,
  fCompanyFilter, fTreeNodeFilter, fProductFilter, fDateIntervalFrame,
  AbmesFields, JvDBLookup, JvComponent, JvCaptionButton, JvExControls,
  JvComponentBase, uClientTypes, dDocClient, uAspectTypes, uNeeds, JvExStdCtrls,
  JvDBCombobox, JvCombobox;

type
  TfmStructurePartNeedsFilter = class(TFilterForm)
    frResultProductFilter: TfrParamProductFilter;
    gbPeriod: TGroupBox;
    frStructurePartProductFilter: TfrParamProductFilter;
    rgIsUsed: TDBRadioGroup;
    rgSelfExistent: TDBRadioGroup;
    rgIsProductionProduct: TDBRadioGroup;
    frCompanyFilter: TfrCompanyFilter;
    frDateInterval: TfrDateIntervalFrame;
    cdsParRelProductStatuses: TAbmesClientDataSet;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    dsParRelProductStatuses: TDataSource;
    gbParRelProductStatus: TGroupBox;
    lblBetweenParRelProductStatuses: TLabel;
    cbMinParRelProductStatus: TJvDBLookupCombo;
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
    FStructurePartKind: TStructurePartKind;
  protected
    function GetOriginalFormCaption: string; override;
    function GetFilterFormVariantCode: Integer; override;
  public
    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AAspectType: TAspectType;
      AStructurePartKind: TStructurePartKind); reintroduce; virtual;

    class function ShowForm(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AAspectType: TAspectType;
      AStructurePartKind: TStructurePartKind): Boolean;

    procedure Initialize; override;

    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

  TfmStructurePartNeedsFilterClass = class of TfmStructurePartNeedsFilter;

implementation

uses
  uClientUtils;

{$R *.dfm}

{ TfmStructurePartNeedsFilter }

procedure TfmStructurePartNeedsFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  gbParRelProductStatus.Visible:= (FAspectType = atEstimation);
  gbProductCommonLevel.Visible:= (FAspectType = atEstimation);
  gbPartnerCommonLevel.Visible:= (FAspectType = atEstimation);
end;

procedure TfmStructurePartNeedsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frResultProductFilter.FieldNames:= 'CHOSEN_RESULT_PRODUCTS';
  frStructurePartProductFilter.FieldNames:= 'CHOSEN_STRUCT_PART_PRODUCTS';
  frCompanyFilter.FieldNames:= 'CHOSEN_COMPANIES';
end;

function TfmStructurePartNeedsFilter.GetFilterFormVariantCode: Integer;
begin
  Result:=
    AspectTypeToInt(FAspectType) * 10 +
    StructurePartKindToInt(FStructurePartKind);
end;

function TfmStructurePartNeedsFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmStructurePartNeedsFilter.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  MsgParams:= CreateCommonMsgParams(LoginContext, FAspectType, FStructurePartKind);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmStructurePartNeedsFilter.OpenDataSets;
begin
  inherited;
  cdsParRelProductStatuses.Open;
end;

procedure TfmStructurePartNeedsFilter.CloseDataSets;
begin
  cdsParRelProductStatuses.Close;
  inherited;
end;

procedure TfmStructurePartNeedsFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AAspectType: TAspectType; AStructurePartKind: TStructurePartKind);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FAspectType:= AAspectType;
  FStructurePartKind:= AStructurePartKind;
end;

class function TfmStructurePartNeedsFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AAspectType: TAspectType; AStructurePartKind: TStructurePartKind): Boolean;
var
  f: TfmStructurePartNeedsFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(
      AdmDocClient,
      ADataSet,
      AEditMode,
      ADefaultsOrigin,
      AAspectType,
      AStructurePartKind);

    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

end.
