unit fStructurePartNeedsBySale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, JvButtons, ParamDataSet, ActnList,
  DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, dDocClient,
  AbmesFields, fBaseFrame, fDBFrame, fFieldEditFrame, fNeedsCommonHeader,
  JvComponent, JvCaptionButton, JvComponentBase, uClientTypes, uNeeds;

type
  TfmStructurePartNeedsBySale = class(TGridForm)
    cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataSALE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataCLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataCLIENT_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataSHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataQUANTITY: TAbmesFloatField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    btnEditRecord: TBitBtn;
    frNeedsCommonHeader: TfrNeedsCommonHeader;
    cdsGridDataREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataREQUEST_NO: TAbmesFloatField;
    cdsGridDataCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    tbRightTop: TToolBar;
    btnToggleProductDisplay: TSpeedButton;
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
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnProductDocClick(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
  private
    FOriginalFormCaption: string;
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
      AStructurePartKind: TStructurePartKind): Boolean;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AFilterFormEnabled: Boolean;
      AStructurePartKind: TStructurePartKind); reintroduce; virtual;

    procedure Initialize; override;
  end;

implementation

uses
  dMain, uSalesClientUtils, rStructurePartNeedsBySale, uDocUtils, uClientUtils,
  uAspectTypes, rNeedsAbstract;

{$R *.dfm}

{ TfmStructurePartNeedsBySale }

class function TfmStructurePartNeedsBySale.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmStructurePartNeedsBySale.cdsGridDataBeforeOpen(DataSet: TDataSet);
const
  ProviderNames: array[TStructurePartKind] of string =
    ('', 'prvResultProductRealNeedsBySale', 'prvDetailRealNeedsBySale', 'prvMaterialRealNeedsBySale');
begin
  inherited;
  cdsGridData.ProviderName:= ProviderNames[FStructurePartKind];
end;

procedure TfmStructurePartNeedsBySale.FormCreate(Sender: TObject);
begin
  inherited;
  RegisterDateFields(cdsGridData);
  ReportClass:= TrptStructurePartNeedsBySale;
end;

procedure TfmStructurePartNeedsBySale.FormShow(Sender: TObject);
begin
  inherited;
  frNeedsCommonHeader.dsData.DataSet:= dsData.DataSet;
end;

function TfmStructurePartNeedsBySale.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmStructurePartNeedsBySale.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  MsgParams:= CreateCommonMsgParams(LoginContext, atRealization, FStructurePartKind);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmStructurePartNeedsBySale.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AStructurePartKind: TStructurePartKind);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FStructurePartKind:= AStructurePartKind;
end;

class function TfmStructurePartNeedsBySale.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AStructurePartKind: TStructurePartKind): Boolean;
var
  f: TfmStructurePartNeedsBySale;
begin
  f:= CreateEx;
  try
    f.SetDataParams(
      AdmDocClient,
      ADataSet,
      AEditMode,
      ADefaultsOrigin,
      AFilterFormEnabled,
      AStructurePartKind);

    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmStructurePartNeedsBySale.actFormUpdate(Sender: TObject);
begin
  inherited;
  EditFormClass:= GetSaleEditFormClass(cdsGridDataSALE_ORDER_TYPE_CODE.AsInteger);

  grdData.Columns[3].Visible:= not btnToggleProductDisplay.Down;
  grdData.Columns[4].Visible:= btnToggleProductDisplay.Down;

  btnProductDoc.ImageIndex:=
    cdsGridDataHAS_DOC.AsInteger;

  btnProductDoc.Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmStructurePartNeedsBySale.actPrintExecute(Sender: TObject);
begin
  if ReportClass.InheritsFrom(TrptNeedsAbstract) then
    begin
      TrptNeedsAbstractClass(ReportClass).PrintReport(cdsGridData, dsData.DataSet, atRealization, FStructurePartKind);
    end
  else
    inherited;
end;

procedure TfmStructurePartNeedsBySale.btnProductDocClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TControl),
    dotProduct,
    cdsGridData);
end;

end.
