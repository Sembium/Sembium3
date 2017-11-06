unit fEstQuantitiesFilterAbstract;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvComponent,
  JvDBLookup, Buttons, StdCtrls, ExtCtrls, fDateUnitsIntervalEditFrame,
  fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFilter, fProductFilter,
  fParamProductFilter, JvExExtCtrls, JvDBRadioPanel, DBCtrls, JvExtComponent,
  uProducts, uClientTypes,  dDocClient, JvExStdCtrls, JvDBCombobox, JvCombobox,
  AbmesDBCheckBox, fDateFieldEditFrame;

type
  TfmEstQuantitiesFilterAbstract = class(TFilterForm)
    frParamProductFilter: TfrParamProductFilter;
    frDateUnitsInterval: TfrDateUnitsIntervalEditFrame;
    gbParRelProductStatus: TGroupBox;
    lblBetweenParRelProductStatuses: TLabel;
    cbMinParRelProductStatus: TJvDBLookupCombo;
    cbMaxParRelProductStatus: TJvDBLookupCombo;
    cdsParRelProductStatuses: TAbmesClientDataSet;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    dsParRelProductStatuses: TDataSource;
    gbProductCommonLevel: TGroupBox;
    cbProductCommonLevel: TJvDBComboBox;
    gbPartnerCommonLevel: TGroupBox;
    cbPartnerCommonLevel: TJvDBComboBox;
    gbBase: TGroupBox;
    frBaseDate: TfrDateFieldEditFrame;
    lblBaseDate: TLabel;
    rgIncludeProjectQuantities: TJvDBRadioPanel;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
  protected
    function GetOriginalFormCaption: string; override;
  public
    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AProductClass: TProductClass); reintroduce; virtual;

    class function ShowForm(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AProductClass: TProductClass): Boolean;

    procedure Initialize; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

  TfmEstQuantitiesFilterAbstractClass = class of TfmEstQuantitiesFilterAbstract;

resourcestring
  SInvalidBaseDate = 'Реализационните наличности трябва да са към дата преди началото на ВрмИнт';

implementation

uses
  uProductClientUtils, uClientUtils, uComboBoxUtils;

{$R *.dfm}

{ TfmEstQuantitiesFilterAbstract }

procedure TfmEstQuantitiesFilterAbstract.actFormUpdate(Sender: TObject);
begin
  inherited;
  ReplacedDBComboBox(cbProductCommonLevel).Enabled:= False;
  ReplacedDBComboBox(cbPartnerCommonLevel).Enabled:= False;
end;

procedure TfmEstQuantitiesFilterAbstract.CloseDataSets;
begin
  inherited;
  cdsParRelProductStatuses.Close;
end;

procedure TfmEstQuantitiesFilterAbstract.FormCreate(Sender: TObject);
begin
  inherited;
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frDateUnitsInterval.FieldNames:= 'DATE_UNIT_CODE; BEGIN_DATE; DATE_UNIT_COUNT';
  frBaseDate.FieldNames:= 'BASE_DATE';
end;

function TfmEstQuantitiesFilterAbstract.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmEstQuantitiesFilterAbstract.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  frParamProductFilter.ProductClass:= FProductClass;

  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(
      LoginContext,
      FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmEstQuantitiesFilterAbstract.OpenDataSets;
begin
  cdsParRelProductStatuses.Open;
  inherited;
end;

procedure TfmEstQuantitiesFilterAbstract.SetDataParams(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProductClass:= AProductClass;
end;

class function TfmEstQuantitiesFilterAbstract.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AProductClass: TProductClass): Boolean;
var
  f: TfmEstQuantitiesFilterAbstract;
begin
  f:= CreateEx;
  try
    f.SetDataParams(
      AdmDocClient,
      ADataSet,
      AEditMode,
      ADefaultsOrigin,
      AProductClass);

    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

end.
