unit fDocItemTemplate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields, Mask, DBCtrls,
  AbmesDBCheckBox, JvComponent, JvCaptionButton, JvComponentBase, JvExControls, JvDBLookup,
  fRightFlatButtonGridForm, DBGridEhGrouping, Menus, ParamDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, ColorNavigator, fGridForm,
  fRightButtonGridForm, uClientTypes, System.Actions, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TfmDocItemTemplate = class(TRightFlatButtonGridForm)
    cdsDataDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField;
    cdsDataDOC_ITEM_TEMPLATE_NAME: TAbmesWideStringField;
    cdsDataDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataIS_PATTERN: TAbmesFloatField;
    cdsDocItemTemplateTypes: TAbmesClientDataSet;
    cdsDocItemTemplateTypesDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField;
    cdsDocItemTemplateTypesDOC_ITEM_TEMPLATE_TYPE_NAME: TAbmesWideStringField;
    cdsDocItemTypes: TAbmesClientDataSet;
    cdsDocItemTypesDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsDocItemTypesDOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    dsDocItemTemplateTypes: TDataSource;
    dsDocItemTypes: TDataSource;
    pnlData: TPanel;
    lblName: TLabel;
    lblDocItemTemplateType: TLabel;
    lblDocItemType: TLabel;
    edtName: TDBEdit;
    cbDocItemTemplateType: TJvDBLookupCombo;
    cbDocItemType: TJvDBLookupCombo;
    edtNotes: TDBMemo;
    lblNotes: TLabel;
    edtCode: TDBEdit;
    lblCode: TLabel;
    chkIsPattern: TAbmesDBCheckBox;
    dsDocItems: TDataSource;
    cdsDataDOC_ITEM_CODE: TAbmesFloatField;
    pnlInternalStorage: TPanel;
    lblFileExtension: TLabel;
    lblIsStoredFileDataChanged: TLabel;
    btnImportFromFile: TSpeedButton;
    btnExportToFile: TSpeedButton;
    btnEdit: TSpeedButton;
    edtFileExtension: TDBEdit;
    edtIsStoredFileChanged: TDBEdit;
    actImportFromFile: TAction;
    actExportToFile: TAction;
    actEditStoredFileData: TAction;
    cdsDataIS_CHANGED: TAbmesFloatField;
    chkIsInactive: TAbmesDBCheckBox;
    actClearStoredFile: TAction;
    btnClearStoredFile: TSpeedButton;
    cdsDocItemTypesDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDocItemTypesDOC_ITEM_BASE_TYPE_NAME: TAbmesWideStringField;
    cdsDocItemTypesDOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField;
    cdsDocItemTypes_DOC_ITEM_TYPE_EXTENDED_NAME: TAbmesWideStringField;
    cdsDocItemTemplateTypesDOC_ITEM_TEMPLATE_TYPE_NO: TAbmesFloatField;
    gbDefaultDocItems: TGroupBox;
    cdsGridDataDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField;
    cdsGridDataDEFAULT_DOC_ITEM_CODE: TAbmesFloatField;
    cdsGridDataDOC_ITEM_NAME: TAbmesWideStringField;
    cdsGridDataDOC_ITEM_STATE_CODE: TAbmesFloatField;
    cdsGridData_MAX_DEFAULT_DOC_ITEM_CODE: TAggregateField;
    cdsDocItemStates: TAbmesClientDataSet;
    cdsDocItemStatesDOC_ITEM_STATE_CODE: TAbmesFloatField;
    cdsDocItemStatesDOC_ITEM_STATE_NAME: TAbmesWideStringField;
    cdsGridData_DOC_ITEM_STATE_NAME: TAbmesWideStringField;
    cdsDataqryDefaultDocItems: TDataSetField;
    procedure cdsDataBeforeOpen(DataSet: TDataSet);
    procedure cdsDataAfterClose(DataSet: TDataSet);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure dsDocItemsStateChange(Sender: TObject);
    procedure actImportFromFileExecute(Sender: TObject);
    procedure actExportToFileExecute(Sender: TObject);
    procedure actEditStoredFileDataExecute(Sender: TObject);
    procedure actEditStoredFileDataUpdate(Sender: TObject);
    procedure actImportFromFileUpdate(Sender: TObject);
    procedure actExportToFileUpdate(Sender: TObject);
    procedure actClearStoredFileExecute(Sender: TObject);
    procedure actClearStoredFileUpdate(Sender: TObject);
    procedure cdsDocItemTypesCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsDocItemTemplateTypesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actInsertRecordExecute(Sender: TObject);
    procedure cdsDataDOC_ITEM_TEMPLATE_TYPE_CODEChange(Sender: TField);
  private
    { Private declarations }
    function HasDocItem: Boolean;
  protected
    class function CanUseDocs: Boolean; override;
    procedure SaveDocsSavePoint; override;
    procedure RevertDocsToSavePoint; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uUtils, uDocUtils, uUserActivityConsts,
  uDocItemStorageTypes, dDocClient, fDefaultDocItem, uDocItemStorageBaseTypes;

resourcestring
  SInitialDocItemStateRequired = 'При празен ИИО Източник %s трябва да е "%s"';
  SInitialDocItemStateNotAllowed = '%s "%s" е допустима само за празен ИИО Източник';
  SDefaultDocItemInsertNotAllowed = 'Не може да задавате %s за избраното %s';

{$R *.dfm}

{ TfmDocItemTemplate }

class function TfmDocItemTemplate.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

class function TfmDocItemTemplate.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmDocItemTemplate.RevertDocsToSavePoint;
begin
  // Do nothing, do not call inherited
end;

procedure TfmDocItemTemplate.SaveDocsSavePoint;
begin
  // Do nothing, do not call inherited
end;

function TfmDocItemTemplate.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  if (dsDocItems.DataSet.State in dsEditModes) then
    dsDocItems.DataSet.UpdateRecord;
  CheckRequiredField(dsDocItems.DataSet.FieldByName('DOC_ITEM_TYPE_CODE'));

  if (cdsData.State in dsEditModes) then
    cdsData.UpdateRecord;
  CheckRequiredFields(cdsData);

  Result:= inherited ShowEditForm(AEditMode);
end;

procedure TfmDocItemTemplate.cdsDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsDocItemTemplateTypes.Open;
  cdsDocItemTypes.Open;
end;

procedure TfmDocItemTemplate.cdsDataDOC_ITEM_TEMPLATE_TYPE_CODEChange(
  Sender: TField);
begin
  inherited;
  cdsGridData.TempDisableControls/
    procedure begin
      while not cdsGridData.IsEmpty do
        cdsGridData.Delete;
    end;
end;

procedure TfmDocItemTemplate.cdsDataAfterClose(DataSet: TDataSet);
begin
  cdsDocItemTypes.Close;
  cdsDocItemTemplateTypes.Close;
  inherited;
end;

procedure TfmDocItemTemplate.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dmDocClient.SetOpenDocOwnerType(dotDocItemTemplate);
  dsDocItems.DataSet:= dmDocClient.cdsDocItems;

  if not cdsData.IsEmpty then
    begin
      if not dmDocClient.LoadDoc(cdsDataDOC_BRANCH_CODE.AsInteger, cdsDataDOC_CODE.AsInteger) then
        raise Exception.Create('dmDocClient.LoadDoc() did not load anything');
    end;  { if }
end;

procedure TfmDocItemTemplate.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataIS_PATTERN.AsBoolean:= False;
  cdsDataIS_CHANGED.AsBoolean:= True;
  dmDocClient.DSNewTemplateDoc(cdsDataDOC_BRANCH_CODE, cdsDataDOC_CODE, cdsDataDOC_ITEM_CODE);
end;

procedure TfmDocItemTemplate.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmDocItemTemplate.dsDocItemsStateChange(Sender: TObject);
begin
  inherited;
  if Assigned(dsDocItems.DataSet) and (dsDocItems.DataSet.State in dsEditModes) then
    begin
      CheckEditMode(cdsData);
      cdsDataIS_CHANGED.AsBoolean:= True;
    end;  { if }
end;

procedure TfmDocItemTemplate.FormCreate(Sender: TObject);
begin
  inherited;
  pnlMain.Parent:= gbDefaultDocItems;
  pnlMain.Align:= alClient;
  EditFormClass:= TfmDefaultDocItem;
end;

procedure TfmDocItemTemplate.actInsertRecordExecute(Sender: TObject);
begin
  CheckRequiredField(cdsDataDOC_ITEM_TEMPLATE_TYPE_CODE);
  if not (IntToDocItemTemplateType(cdsDataDOC_ITEM_TEMPLATE_TYPE_CODE.AsInteger) in
            [ dittInvoice,
              dittEmployee,
              dittTeam,
              dittProfession,
              dittOccupation,
              dittOccupationEmployee,
              dittOrgTaskProposal,
              dittCompany,
              dittParRelPeriod,
              dittEngineeringOrder,
              dittFinanceClass,
              dittNom,
              dittNomItem,
              dittProductParam,
              dittProductStore,
              dittEmpAvailModifier,
              dittEmployeeDisciplineEvent,
              dittDiscEventType,
              dittExceptEvent,
              dittExceptEventTask,
              dittBudgetOrder,
              dittBudgetOrderItem,
              dittSaleRequestGroup,
              dittSale,
              dittSaleShipment,
              dittDeficitCoverDecision,
              dittDelivery,
              dittOperationMovement
            ]) then
    raise Exception.CreateFmt(SDefaultDocItemInsertNotAllowed, [gbDefaultDocItems.Caption, lblDocItemTemplateType.Caption]);

  inherited;
end;

function TfmDocItemTemplate.HasDocItem: Boolean;
begin
  Result:=
    (dsDocItems.DataSet.FieldByName('DOC_ITEM_STORAGE_TYPE_CODE').AsInteger = distcInternal) and
    ( (not dsDocItems.DataSet.FieldByName('FILE_EXTENSION_CODE').IsNull) or
      (not dsDocItems.DataSet.FieldByName('FILE_NAME').IsNull));
end;

procedure TfmDocItemTemplate.Initialize;
begin
  inherited;

  if (EditMode = emInsert) then
    cdsDataDOC_ITEM_TEMPLATE_CODE.AsInteger:=
      OuterDataSet.FieldByName('_MAX_DOC_ITEM_TEMPLATE_CODE').AsVarInteger + 1;
end;

procedure TfmDocItemTemplate.OpenDataSets;
begin
  cdsDocItemStates.Open;
  inherited;
end;

procedure TfmDocItemTemplate.actImportFromFileExecute(Sender: TObject);
begin
  inherited;

  case dsDocItems.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType of
    disbtInternal:
      dmDocClient.ImportInternalDocItemDataFromFile;
    disbtContentStorage:
      dmDocClient.ImportContentStorageFromFile;
  end;

  cdsGridData.TempDisableControls/
    cdsGridData.PreserveRecNo/
      cdsGridData.ForEach/
        procedure begin
          if (IntToDocItemState(cdsGridDataDOC_ITEM_STATE_CODE.AsInteger) = disInitial) then
            cdsGridData.SafeEdit/
              procedure begin
                cdsGridDataDOC_ITEM_STATE_CODE.AsInteger:= DocItemStateToInt(disDeveloped);
              end;
        end;
end;

procedure TfmDocItemTemplate.actImportFromFileUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsDocItems.DataSet));

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not cdsDataDOC_ITEM_TEMPLATE_TYPE_CODE.IsNull and
    (dsDocItems.DataSet.FieldByName('DOC_ITEM_STORAGE_TYPE_CODE').AsInteger = distcInternal);
end;

procedure TfmDocItemTemplate.actExportToFileExecute(Sender: TObject);
begin
  inherited;
  case dsDocItems.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType of
    disbtInternal:
      dmDocClient.ExportInternalDocItemDataToFile;
    disbtContentStorage:
      dmDocClient.ExportContentStorageFile;
  end;
end;

procedure TfmDocItemTemplate.actExportToFileUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsDocItems.DataSet));

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not cdsDataDOC_ITEM_TEMPLATE_TYPE_CODE.IsNull and
    HasDocItem;
end;

procedure TfmDocItemTemplate.actEditStoredFileDataExecute(Sender: TObject);
begin
  inherited;

  case dsDocItems.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType of
    disbtInternal:
      dmDocClient.ExecInternalDocItemData(dietOpenForEdit, IntToDocItemTemplateType(cdsDataDOC_ITEM_TEMPLATE_TYPE_CODE.AsInteger));
    disbtContentStorage:
      dmDocClient.ExecContentStorage(dietOpenForEdit, IntToDocItemTemplateType(cdsDataDOC_ITEM_TEMPLATE_TYPE_CODE.AsInteger));
  end;
end;

procedure TfmDocItemTemplate.actEditStoredFileDataUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsDocItems.DataSet));

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not cdsDataDOC_ITEM_TEMPLATE_TYPE_CODE.IsNull and
    HasDocItem;
end;

procedure TfmDocItemTemplate.actClearStoredFileExecute(Sender: TObject);
begin
  inherited;

  case dsDocItems.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType of
    disbtInternal:
      dmDocClient.ClearInternalDocItemData;
    disbtContentStorage:
      dmDocClient.ClearContentStorage;
  end;

  cdsGridData.TempDisableControls/
    cdsGridData.PreserveRecNo/
      cdsGridData.ForEach/
        procedure begin
          if (IntToDocItemState(cdsGridDataDOC_ITEM_STATE_CODE.AsInteger) <> disInitial) then
            cdsGridData.SafeEdit/
              procedure begin
                cdsGridDataDOC_ITEM_STATE_CODE.AsInteger:= DocItemStateToInt(disInitial);
              end;
        end;
end;

procedure TfmDocItemTemplate.actClearStoredFileUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    HasDocItem;
end;

procedure TfmDocItemTemplate.cdsDocItemTemplateTypesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (IntToDocItemTemplateType(cdsDocItemTemplateTypesDOC_ITEM_TEMPLATE_TYPE_CODE.AsInteger) <> dittInvoice) or
    LoginContext.IsInvoiceSystemVisible;
end;

procedure TfmDocItemTemplate.cdsDocItemTypesCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (cdsDocItemTypesDOC_ITEM_TYPE_FILE_EXTENSIONS.AsString = '') then
    cdsDocItemTypes_DOC_ITEM_TYPE_EXTENDED_NAME.AsString:=
      cdsDocItemTypesDOC_ITEM_TYPE_NAME.AsString
  else
    cdsDocItemTypes_DOC_ITEM_TYPE_EXTENDED_NAME.AsString:=
      cdsDocItemTypesDOC_ITEM_TYPE_NAME.AsString +
      ' (' +
      cdsDocItemTypesDOC_ITEM_TYPE_FILE_EXTENSIONS.AsString +
      ')';
end;

procedure TfmDocItemTemplate.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if not HasDocItem and
     (IntToDocItemState(cdsGridDataDOC_ITEM_STATE_CODE.AsInteger) <> disInitial) then
    begin
      cdsGridData_DOC_ITEM_STATE_NAME.FocusControl;
      raise Exception.CreateFmt(SInitialDocItemStateRequired,
        [cdsGridData_DOC_ITEM_STATE_NAME.DisplayName,
         cdsDocItemStates.Lookup(cdsDocItemStatesDOC_ITEM_STATE_CODE.FieldName, DocItemStateToInt(disInitial), cdsDocItemStatesDOC_ITEM_STATE_NAME.FieldName)]);
    end;

  if HasDocItem and
     (IntToDocItemState(cdsGridDataDOC_ITEM_STATE_CODE.AsInteger) = disInitial) then
    begin
      cdsGridData_DOC_ITEM_STATE_NAME.FocusControl;
      raise Exception.CreateFmt(SInitialDocItemStateNotAllowed,
        [cdsGridData_DOC_ITEM_STATE_NAME.DisplayName,
         cdsDocItemStates.Lookup(cdsDocItemStatesDOC_ITEM_STATE_CODE.FieldName, DocItemStateToInt(disInitial), cdsDocItemStatesDOC_ITEM_STATE_NAME.FieldName)]);
    end;

  CheckRequiredFields([cdsGridDataDOC_ITEM_NAME, cdsGridData_DOC_ITEM_STATE_NAME]);
end;

procedure TfmDocItemTemplate.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsGridDataDOC_ITEM_TEMPLATE_CODE.Assign(cdsDataDOC_ITEM_TEMPLATE_CODE);
  cdsGridDataDEFAULT_DOC_ITEM_CODE.AsInteger:=
    cdsGridData_MAX_DEFAULT_DOC_ITEM_CODE.AsVarInteger + 1;

  if not HasDocItem then
    cdsGridDataDOC_ITEM_STATE_CODE.AsInteger:= DocItemStateToInt(disInitial);
end;

procedure TfmDocItemTemplate.CloseDataSets;
begin
  inherited;
  cdsDocItemStates.Close;
end;

end.

