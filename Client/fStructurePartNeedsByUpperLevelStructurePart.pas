unit fStructurePartNeedsByUpperLevelStructurePart;

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
  TfmStructurePartNeedsByUpperLevelStructurePart = class(TGridForm)
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataQUANTITY: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    frNeedsCommonHeader: TfrNeedsCommonHeader;                                              
    cdsGridDataPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
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
  dMain, rStructurePartNeedsByUpperLevelStructurePart, uDocUtils, uClientUtils,
  rNeedsAbstract;

{$R *.dfm}

{ TfmStructurePartNeedsByUpperLevelStructurePart }

class function TfmStructurePartNeedsByUpperLevelStructurePart.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmStructurePartNeedsByUpperLevelStructurePart.cdsGridDataBeforeOpen(DataSet: TDataSet);
const
  ProviderNames: array[TAspectType, TStructurePartKind] of string = (
    ('', '', '', ''),
    ('', '', 'prvDetailEstNeedsByParentDetail', 'prvMaterialEstNeedsByDetail'),
    ('', '', 'prvDetailRealNeedsByParentDetail', 'prvMaterialRealNeedsByDetail')
  );
begin
  inherited;
  cdsGridData.ProviderName:= ProviderNames[FAspectType, FStructurePartKind];
end;

procedure TfmStructurePartNeedsByUpperLevelStructurePart.FormCreate(Sender: TObject);
begin
  inherited;
  ReportClass:= TrptStructurePartNeedsByUpperLevelStructurePart;
end;

procedure TfmStructurePartNeedsByUpperLevelStructurePart.FormShow(Sender: TObject);
begin
  inherited;
  frNeedsCommonHeader.dsData.DataSet:= dsData.DataSet;
end;

function TfmStructurePartNeedsByUpperLevelStructurePart.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmStructurePartNeedsByUpperLevelStructurePart.Initialize;
const
  HeightAdjustments: array[TStructurePartKind] of Integer = (0, 0, 0, 5);
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

  Height:= Height + HeightAdjustments[FStructurePartKind];
end;

procedure TfmStructurePartNeedsByUpperLevelStructurePart.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AAspectType: TAspectType;
  AStructurePartKind: TStructurePartKind);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FAspectType:= AAspectType;
  FStructurePartKind:= AStructurePartKind;
end;

class function TfmStructurePartNeedsByUpperLevelStructurePart.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AAspectType: TAspectType;
  AStructurePartKind: TStructurePartKind): Boolean;
var
  f: TfmStructurePartNeedsByUpperLevelStructurePart;
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

procedure TfmStructurePartNeedsByUpperLevelStructurePart.actFormUpdate(Sender: TObject);
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

procedure TfmStructurePartNeedsByUpperLevelStructurePart.actPrintExecute(Sender: TObject);
begin
  if ReportClass.InheritsFrom(TrptNeedsAbstract) then
    begin
      TrptNeedsAbstractClass(ReportClass).PrintReport(cdsGridData, dsData.DataSet, FAspectType, FStructurePartKind);
    end
  else
    inherited;
end;

procedure TfmStructurePartNeedsByUpperLevelStructurePart.btnProductDocClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TControl),
    dotProduct,
    cdsGridData);
end;

end.
