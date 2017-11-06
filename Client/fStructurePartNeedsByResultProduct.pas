unit fStructurePartNeedsByResultProduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, JvButtons, ParamDataSet, ActnList,
  DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, dDocClient,
  AbmesFields, fBaseFrame, fDBFrame, fFieldEditFrame, fNeedsCommonHeader,
  JvComponent, JvCaptionButton, JvComponentBase, uAspectTypes, uClientTypes,
  uNeeds;

type
  TfmStructurePartNeedsByResultProduct = class(TGridForm)
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataSALE_COUNT: TAbmesFloatField;
    cdsGridDataQUANTITY: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;                                    
    frNeedsCommonHeader: TfrNeedsCommonHeader;
    tbRightTop: TToolBar;
    btnToggleProductDisplay: TSpeedButton;
    cdsGridDataPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC: TAbmesFloatField;
    tlbTopButtons: TToolBar;
    sepBeforeProductDoc: TToolButton;
    lblProductDoc: TLabel;
    btnProductDoc: TToolButton;
    cdsGridDataSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField;
    cdsGridDataSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField;
    cdsGridDataSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure btnProductDocClick(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
  private
    FOriginalFormCaption: string;
    FAspectType: TAspectType;
    FStructurePartKind: TStructurePartKind;
  protected
    class function CanUseDocs: Boolean; override;
    function GetOriginalFormCaption: string; override;
  public
    class function ShowForm(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AFilterFormEnabled: Boolean;
      AAspectType: TAspectType;
      AStructurePartKind: TStructurePartKind): Boolean;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AFilterFormEnabled: Boolean;
      AAspectType: TAspectType;
      AStructurePartKind: TStructurePartKind); reintroduce; virtual;

    procedure Initialize; override;
  end;

implementation

uses
  dMain, rStructurePartNeedsByResultProduct, uDocUtils, uClientUtils, rNeedsAbstract;

{$R *.dfm}

{ TfmStructurePartNeedsByResultProduct }

class function TfmStructurePartNeedsByResultProduct.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmStructurePartNeedsByResultProduct.cdsGridDataBeforeOpen(
  DataSet: TDataSet);
const
  ProviderNames: array[TAspectType, TStructurePartKind] of string = (
    ('', '', '', ''),
    ('', '', 'prvDetailEstNeedsByResultProduct', 'prvMaterialEstNeedsByResultProduct'),
    ('', '', 'prvDetailRealNeedsByResultProduct', 'prvMaterialRealNeedsByResultProduct')
  );
begin
  inherited;
  cdsGridData.ProviderName:= ProviderNames[FAspectType, FStructurePartKind];
end;

procedure TfmStructurePartNeedsByResultProduct.FormCreate(Sender: TObject);
begin
  inherited;
  ReportClass:= TrptStructurePartNeedsByResultProduct;
end;

procedure TfmStructurePartNeedsByResultProduct.FormShow(Sender: TObject);
begin
  inherited;
  frNeedsCommonHeader.dsData.DataSet:= dsData.DataSet;
end;

function TfmStructurePartNeedsByResultProduct.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmStructurePartNeedsByResultProduct.Initialize;
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

procedure TfmStructurePartNeedsByResultProduct.SetDataParams(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean; AAspectType: TAspectType;
  AStructurePartKind: TStructurePartKind);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FAspectType:= AAspectType;
  FStructurePartKind:= AStructurePartKind;
end;

class function TfmStructurePartNeedsByResultProduct.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean; AAspectType: TAspectType;
  AStructurePartKind: TStructurePartKind): Boolean;
var
  f: TfmStructurePartNeedsByResultProduct;
begin
  f:= CreateEx;
  try
    f.SetDataParams(
      AdmDocClient,
      ADataSet,
      AEditMode,
      ADefaultsOrigin,
      AFilterFormEnabled,
      AAspectType,
      AStructurePartKind);

    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmStructurePartNeedsByResultProduct.actFormUpdate(Sender: TObject);
begin
  inherited;
  grdData.Columns[0].Visible:= not btnToggleProductDisplay.Down;
  grdData.Columns[1].Visible:= not btnToggleProductDisplay.Down;
  grdData.Columns[2].Visible:= btnToggleProductDisplay.Down;

  btnProductDoc.ImageIndex:=
    cdsGridDataHAS_DOC.AsInteger;

  btnProductDoc.Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmStructurePartNeedsByResultProduct.actPrintExecute(Sender: TObject);
begin
  if ReportClass.InheritsFrom(TrptNeedsAbstract) then
    begin
      TrptNeedsAbstractClass(ReportClass).PrintReport(cdsGridData, dsData.DataSet, FAspectType, FStructurePartKind);
    end
  else
    inherited;
end;

procedure TfmStructurePartNeedsByResultProduct.btnProductDocClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TControl),
    dotProduct,
    cdsGridData);
end;

end.
