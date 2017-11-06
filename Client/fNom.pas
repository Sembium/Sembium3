unit fNom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient, GridsEh,
  StdCtrls, Mask, DBCtrls, AbmesClientDataSet, DBGridEh, AbmesDBGrid,
  ColorNavigator, Buttons, ExtCtrls, AbmesFields, Menus, JvButtons,
  ComCtrls, ToolWin, JvComponent, JvCaptionButton, JvComponentBase, dDocClient,
  uClientTypes, uProducts, DBGridEhGrouping, fBaseForm, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions;

type
  [CanUseDocs]
  TfmNom = class(TGridForm)
    pnlNom: TPanel;
    cdsGridDataNOM_CODE: TAbmesFloatField;
    cdsGridDataNOM_ITEM_CODE: TAbmesFloatField;
    cdsGridDataNOM_ITEM_NAME: TAbmesWideStringField;
    edtName: TDBEdit;
    lblName: TLabel;
    pdsGridDataParamsNOM_CODE: TAbmesFloatField;
    cdsDataNOM_CODE: TAbmesFloatField;
    cdsDataNOM_NAME: TAbmesWideStringField;
    cdsDataqryNomItemsEdit: TDataSetField;
    cdsGridDataNOM_ITEM_DESCRIPTION: TAbmesWideStringField;
    cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsEmployees: TAbmesClientDataSet;
    cdsEmployeesEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeesEMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataCHANGE_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField;
    cdsEmployeesEMPLOYEE_NAME: TAbmesWideStringField;
    cdsEmployees_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField;
    cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsDataNOM_NO: TAbmesFloatField;
    lblNo: TLabel;
    edtNo: TDBEdit;
    cdsGridDataNOM_ITEM_NO: TAbmesFloatField;
    cdsGridData_MAX_NOM_ITEM_CODE: TAggregateField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    tlbNomItemDocs: TToolBar;
    sepNomItemDocs: TToolButton;
    tlbNomDocs: TToolBar;
    actNomDocs: TAction;
    actNomItemDocs: TAction;
    btnNomDocs: TToolButton;
    btnNomItemDocs: TToolButton;
    cdsGridData_MAX_NOM_ITEM_NO: TAggregateField;
    cdsGridDataIS_NOT_PART_OF_NAME: TAbmesFloatField;
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataCHANGE_EMPLOYEE_CODEChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure cdsEmployeesCalcFields(DataSet: TDataSet);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure actNomItemDocsUpdate(Sender: TObject);
    procedure actNomDocsUpdate(Sender: TObject);
    procedure actNomItemDocsExecute(Sender: TObject);
    procedure actNomDocsExecute(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure alActionsUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    procedure dmDocClientOnDataChanged(Sender: TObject);
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetOriginalFormCaption: string; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone): Boolean;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  dMain, fDBDataForm, uProductClientUtils, uClientUtils, uClientDateTime,
  uUtils, uDocUtils;

{$R *.DFM}

{ TfmNom }

procedure TfmNom.actNomDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, (Sender as TAction).ActionComponent as TControl,
    dotNom, cdsData);
end;

procedure TfmNom.actNomDocsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= cdsDataHAS_DOC_ITEMS.AsInteger;
end;

procedure TfmNom.actNomItemDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, (Sender as TAction).ActionComponent as TControl,
    dotNomItem, cdsGridData);
end;

procedure TfmNom.actNomItemDocsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsGridDataHAS_DOC_ITEMS.AsInteger;
end;

procedure TfmNom.alActionsUpdate(Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  SetControlsReadOnly((EditMode = emReadOnly), [edtNo, edtName]);
end;

class function TfmNom.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmNom.OpenDataSets;
begin
  cdsEmployees.Open;
  inherited;
end;

procedure TfmNom.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProductClass:= AProductClass;
end;

class function TfmNom.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass): Boolean;
var
  f: TfmNom;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmNom.CloseDataSets;
begin
  inherited;
  cdsEmployees.Close;
end;

procedure TfmNom.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(cdsDataHAS_DOC_ITEMS);
  dmDocClient.SetHasDocItemsField(cdsGridDataHAS_DOC_ITEMS);
end;

procedure TfmNom.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataCHANGE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsGridDataCHANGE_DATE.AsDateTime:= ContextDate;
  cdsGridDataCHANGE_TIME.AsDateTime:= ContextTime;
end;

procedure TfmNom.cdsGridDataCHANGE_EMPLOYEE_CODEChange(Sender: TField);
begin
  inherited;
  cdsGridDataCHANGE_EMPLOYEE_ABBREV_NAME.AsVariant:=
    cdsEmployees.Lookup('EMPLOYEE_CODE', Sender.AsInteger, '_EMPLOYEE_ABBREV_NAME');
end;

procedure TfmNom.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataPRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
  cdsGridDataNOM_ITEM_CODE.AsInteger:= VarToInt(cdsGridData_MAX_NOM_ITEM_CODE.AsVariant) + 1;
  cdsGridDataNOM_ITEM_NO.AsInteger:= VarToInt(cdsGridData_MAX_NOM_ITEM_NO.AsVariant) + 1;
  cdsGridDataIS_NOT_PART_OF_NAME.AsBoolean:= False;

  dmDocClient.DSInitDoc(dotNomItem, cdsGridData);
end;

procedure TfmNom.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  FOlddmDocClientOnDataChanged:= nil;
end;

procedure TfmNom.FormCreate(Sender: TObject);
begin
  inherited;
  RegisterDateField(cdsGridDataCHANGE_DATE);
end;

function TfmNom.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmNom.Initialize;
var
  MsgParams: TStrings;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  MsgParams:=
    CreateCommonMsgParams(
      LoginContext,
      FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;

  grdData.ReadOnly:= (EditMode = emReadOnly);

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotNom, dsData.DataSet);
end;

procedure TfmNom.navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  if (Button in [nbInsert, nbEdit, nbDelete]) and (EditMode = emReadOnly) then
    Abort;

  inherited;
end;

procedure TfmNom.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmNom.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataNOM_CODE.AsInteger:= 1;
  cdsDataPRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmNom.cdsEmployeesCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsEmployees_EMPLOYEE_ABBREV_NAME.AsString:=
    StringOfChar(' ', 5) +
    cdsEmployeesEMPLOYEE_ABBREV.AsString +
    StringOfChar(' ', 10) +
    cdsEmployeesEMPLOYEE_NAME.AsString;
end;

end.
