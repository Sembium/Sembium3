unit fDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, ExtCtrls, GridsEh, DBGridEh,
  AbmesDBGrid, DBClient, AbmesClientDataSet, AbmesFields, StdCtrls, Mask,
  DBCtrls, Buttons, JvToolEdit, uDocUtils, JvExMask, JvDBControls,
  DBGridEhGrouping, ComCtrls, ToolWin, Menus, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh, System.Actions;

type
  TfrDoc = class(TFieldEditFrame)
    pnlMain: TPanel;
    pnlTop: TPanel;
    pnlBottom: TPanel;
    pnlGrid: TPanel;
    grdClonedDocItems: TAbmesDBGrid;
    cdsClonedDocs: TAbmesClientDataSet;
    cdsClonedDocItems: TAbmesClientDataSet;
    dsClonedDocItems: TDataSource;
    dsClonedDocs: TDataSource;
    cdsClonedDocsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsClonedDocsDOC_CODE: TAbmesFloatField;
    cdsClonedDocsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsClonedDocsIS_COMPLETE: TAbmesFloatField;
    cdsClonedDocsRECORD_STATUS: TAbmesFloatField;
    cdsClonedDocItemsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsClonedDocItemsDOC_CODE: TAbmesFloatField;
    cdsClonedDocItemsDOC_ITEM_CODE: TAbmesFloatField;
    cdsClonedDocItemsDOC_ITEM_NO: TAbmesFloatField;
    cdsClonedDocItemsDOC_ITEM_NAME: TAbmesWideStringField;
    cdsClonedDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsClonedDocItemsIS_INACTIVE: TAbmesFloatField;
    cdsClonedDocItemsNOTES: TAbmesWideStringField;
    cdsClonedDocItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsClonedDocItemsCREATE_DATE: TAbmesSQLTimeStampField;
    cdsClonedDocItemsCREATE_TIME: TAbmesSQLTimeStampField;
    cdsClonedDocItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsClonedDocItemsCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsClonedDocItemsCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsClonedDocItemsDEVELOP_EMPLOYEE_CODE: TAbmesFloatField;
    cdsClonedDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField;
    cdsClonedDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField;
    cdsClonedDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsClonedDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField;
    cdsClonedDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField;
    cdsClonedDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsClonedDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField;
    cdsClonedDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField;
    cdsClonedDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField;
    cdsClonedDocItemsRELATIVE_PATH: TAbmesWideStringField;
    cdsClonedDocItemsFILE_NAME: TAbmesWideStringField;
    cdsClonedDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField;
    cdsClonedDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField;
    cdsClonedDocItemsSTORED_FILE_CODE: TAbmesFloatField;
    cdsClonedDocItemsFILE_EXTENSION_CODE: TAbmesFloatField;
    cdsClonedDocItemsSTORED_FILE_DATA: TBlobField;
    cdsClonedDocItemsIS_STORED_FILE_CHANGED: TAbmesFloatField;
    cdsClonedDocItemsRECORD_STATUS: TAbmesFloatField;
    cdsClonedDocItems_DOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    cdsClonedDocItems_DEVELOP_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsClonedDocItems_AUTHORIZE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsClonedDocItems_APPROVE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    actEditDocItem: TAction;
    actDelDocItem: TAction;
    actInsertDocItem: TAction;
    btnInsertDocItem: TSpeedButton;
    btnDelDocItem: TSpeedButton;
    btnEditDocItem: TSpeedButton;
    actSetComplete: TAction;
    cdsClonedDocs_DOC_EMPTINESS_REQUIREMENT_NAME: TAbmesWideStringField;
    actEditDocEmptinessRequirement: TAction;
    edtDocEmptinessRequirementName: TJvDBComboEdit;
    actToggleShowInactiveDocItems: TAction;
    pnlCount: TPanel;
    lblCount: TLabel;
    edtCount: TDBEdit;
    btnSetComplete: TSpeedButton;
    tmrResyncClonedDatasets: TTimer;
    actExecDocItemData: TAction;
    Bevel1: TBevel;
    btnExecDocItemData: TSpeedButton;
    Bevel2: TBevel;
    cdsClonedDocsINACTIVE_DOC_ITEM_COUNT: TAbmesFloatField;
    cdsClonedDocsAPPROVED_ACTIVE_DOC_ITEM_COUNT: TAbmesFloatField;
    cdsClonedDocsACTIVE_DOC_ITEM_COUNT: TAbmesFloatField;
    cdsClonedDocsDOC_ITEM_COUNT_STATUS: TAbmesWideStringField;
    cdsClonedDocsAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    edtDocStatus: TDBEdit;
    edtDocItemCountStatus: TDBEdit;
    cdsClonedDocItemsDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField;
    cdsClonedDocItems_AUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsClonedDocItems_DEVELOP_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsClonedDocItems_APPROVE_EMPLOYEE_NAME: TAbmesWideStringField;
    actMaximize: TAction;
    pnlTopRight: TPanel;
    pnlTopRightClient: TPanel;
    pnlToggleShowInactiveDocItems: TPanel;
    btnToggleShowInactiveDocItems: TSpeedButton;
    tlbMaximize: TToolBar;
    btnMaximize: TSpeedButton;
    actCreateLikeDocItem: TAction;
    actInsertMenu: TAction;
    pmInsert: TPopupMenu;
    miInsertDocItem: TMenuItem;
    miCreateLikeDocItem: TMenuItem;
    actLoadFromDocProfile: TAction;
    miLoadFromDocProfile: TMenuItem;
    cdsDocProfileDoc: TAbmesClientDataSet;
    cdsDocProfileDocDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDocProfileDocDOC_CODE: TAbmesFloatField;
    cdsDocProfileDocDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField;
    procedure cdsClonedDocItemsBeforeOpen(DataSet: TDataSet);
    procedure cdsClonedDocsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actInsertDocItemExecute(Sender: TObject);
    procedure actInsertDocItemUpdate(Sender: TObject);
    procedure actDelDocItemExecute(Sender: TObject);
    procedure actDelDocItemUpdate(Sender: TObject);
    procedure actEditDocItemExecute(Sender: TObject);
    procedure actEditDocItemUpdate(Sender: TObject);
    procedure actSetCompleteExecute(Sender: TObject);
    procedure actSetCompleteUpdate(Sender: TObject);
    procedure actEditDocEmptinessRequirementExecute(Sender: TObject);
    procedure actEditDocEmptinessRequirementUpdate(Sender: TObject);
    procedure actFrameUpdate(Sender: TObject);
    procedure edtDocEmptinessRequirementNameButtonClick(Sender: TObject);
    procedure actToggleShowInactiveDocItemsExecute(Sender: TObject);
    procedure actToggleShowInactiveDocItemsUpdate(Sender: TObject);
    procedure cdsClonedDocItemsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure grdClonedDocItemsDblClick(Sender: TObject);
    procedure FrameResize(Sender: TObject);
    procedure grdClonedDocItemsGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure cdsClonedDocItems_DEVELOP_EMPLOYEE_ABBREVGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsClonedDocItems_AUTHORIZE_EMPLOYEE_ABBREVGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsClonedDocItems_APPROVE_EMPLOYEE_ABBREVGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure tmrResyncClonedDatasetsTimer(Sender: TObject);
    procedure actExecDocItemDataExecute(Sender: TObject);
    procedure actExecDocItemDataUpdate(Sender: TObject);
    procedure cdsClonedDocItems_COUNT_ACTIVE_DOC_ITEMSGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsClonedDocsDOC_EMPTINESS_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure actMaximizeUpdate(Sender: TObject);
    procedure actMaximizeExecute(Sender: TObject);
    procedure actCreateLikeDocItemUpdate(Sender: TObject);
    procedure actInsertMenuUpdate(Sender: TObject);
    procedure actInsertMenuExecute(Sender: TObject);
    procedure actCreateLikeDocItemExecute(Sender: TObject);
    procedure actLoadFromDocProfileUpdate(Sender: TObject);
    procedure actLoadFromDocProfileExecute(Sender: TObject);
  private
    FClosing: Boolean;
    FIsInDelayedResync: Boolean;
    FImmediatelyApplyUpdates: Boolean;
    FMustFireDataChanged: Boolean;
    FShowInactiveDocItems: Boolean;
    FDocBranchCode: Integer;
    FDocCode: Integer;
    FDocOwnerType: TDocOwnerType;
    FIsExecEnabledOnlyForApprovedItems: Boolean;
    FOlddmDocClientcdsDocItemsAPPROVE_EMPLOYEE_CODEChange: TFieldNotifyEvent;
    FDocItemApprovedBeforeEdit: Boolean;
    FDocItemUnapprovedDuringEdit: Boolean;
    FMaximized: Boolean;
    FBeforeMaximizeHeight: Integer;
    procedure OpenClonedDataSets;
    procedure CloseClonedDataSets;
    procedure DelayedResyncClonedDataSets;
    procedure ResyncClonedDataSets;
    procedure ResizeColumns;
    procedure CheckNotInDelayedResync;
    function GetEmployeeFieldText(AField: TField): string;
    procedure dmDocClientcdsDocItemsAPPROVE_EMPLOYEE_CODEChange(Sender: TField);
    function GetInsertDocItemEnabled: Boolean;
    function GetCreateLikeDocItemEnabled: Boolean;
    function GetEditDocItemEnabled: Boolean;
  protected
    procedure UpdateData(Sender: TObject); override;
    procedure DataChange(Sender: TObject); override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Initialize; override;
    procedure Finalize; override;
    procedure CloseDataSets; override;
    procedure FormClose(ModalResult: Integer); override;
    procedure FormCloseFailed;
    property ImmediatelyApplyUpdates: Boolean read FImmediatelyApplyUpdates write FImmediatelyApplyUpdates default True;
    property MustFireDataChanged: Boolean read FMustFireDataChanged write FMustFireDataChanged default True;
    property DocOwnerType: TDocOwnerType read FDocOwnerType write FDocOwnerType;
    property IsExecEnabledOnlyForApprovedItems: Boolean read FIsExecEnabledOnlyForApprovedItems write FIsExecEnabledOnlyForApprovedItems;
    property IsInDelayedResync: Boolean read FIsInDelayedResync;
  end;

implementation

uses
  dMain, dDocClient, uUtils, uClientUtils, AbmesDialogs, fDocItemsEdit,
  uClientTypes, fDocEmptinessRequirement, uUserActivityConsts, fEditForm,
  uDocClientUtils, uClientConsts, uToolbarUtils, fDocProfileSelector,
  uScalingUtils;

{$R *.dfm}

resourcestring
  SShowInactiveDocItemsButtonCaption = 'П';
  SConfirmDocIsComplete = 'Потвърдете крайна определеност на МИИО';

const
  ReadOnlyEditModes: array[Boolean] of TEditMode = (emEdit, emReadOnly);

{ TfrDoc }

constructor TfrDoc.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FImmediatelyApplyUpdates:= True;
  FMustFireDataChanged:= True;
  FIsExecEnabledOnlyForApprovedItems:= True;
  FieldNames:= 'DOC_BRANCH_CODE;DOC_CODE';
end;

procedure TfrDoc.Initialize;
begin
  inherited Initialize;
  ResizeColumns;
  // slednite redove sa tuka, zashtoto OpenDataSets moje i da ne se vika,
  // ako freima e slojen v DataForm
  OpenClonedDataSets;
end;

procedure TfrDoc.Finalize;
begin
  // slednite redove sa tuka, zashtoto CloseDataSets moje i da ne se vika,
  // ako freima e slojen v DataForm
  tmrResyncClonedDatasets.Enabled:= False;
  FIsInDelayedResync:= False;
  CloseClonedDataSets;
  inherited Finalize;
end;

procedure TfrDoc.CloseDataSets;
begin
  tmrResyncClonedDatasets.Enabled:= False;
  FIsInDelayedResync:= False;
  inherited CloseDataSets;
end;

procedure TfrDoc.FormCloseFailed;
begin
  FClosing:= False;
end;

procedure TfrDoc.FormClose(ModalResult: Integer);
begin
  FClosing:= True;
  inherited;
end;

procedure TfrDoc.ResizeColumns;
begin
  ResizeGridColumns(grdClonedDocItems, 'DOC_ITEM_NAME');
end;

procedure TfrDoc.FrameResize(Sender: TObject);
begin
  inherited;
  ResizeColumns;
end;

procedure TfrDoc.OpenClonedDataSets;
begin
  Assert(Assigned(dmDocClient));

  cdsClonedDocs.CreateDataSet;
  cdsClonedDocItems.CreateDataSet;

  if (FDocBranchCode <> 0) and (FDocCode <> 0) then
    begin
      if dmDocClient.LoadDoc(FDocBranchCode, FDocCode) then
        begin
          cdsClonedDocs.Append;
          try
            AssignFields(dmDocClient.cdsDocs, cdsClonedDocs);
            cdsClonedDocsINACTIVE_DOC_ITEM_COUNT.AsVariant:= IntToVar(VarToInt(dmDocClient.cdsDocItems_INACTIVE_DOC_ITEM_COUNT.AsVariant));
            cdsClonedDocsACTIVE_DOC_ITEM_COUNT.AsVariant:= IntToVar(VarToInt(dmDocClient.cdsDocItems_ACTIVE_DOC_ITEM_COUNT.AsVariant));
            cdsClonedDocsAUTHORIZED_ACTIVE_DI_COUNT.AsVariant:= dmDocClient.cdsDocItems_AUTHORIZED_ACTIVE_DI_COUNT.AsVariant;
            cdsClonedDocsAPPROVED_ACTIVE_DOC_ITEM_COUNT.AsVariant:= dmDocClient.cdsDocItems_APPROVED_ACTIVE_DOC_ITEM_COUNT.AsVariant;

            cdsClonedDocsDOC_ITEM_COUNT_STATUS.AsString:=
              DocItemsUnauthorizedStatus(
                (cdsClonedDocsACTIVE_DOC_ITEM_COUNT.AsInteger - cdsClonedDocsAUTHORIZED_ACTIVE_DI_COUNT.AsInteger),
                cdsClonedDocsACTIVE_DOC_ITEM_COUNT.AsInteger);

            cdsClonedDocs.Post;
          except
            cdsClonedDocs.Cancel;
            raise;
          end;  { try }

          dmDocClient.cdsDocItems.First;
          while not dmDocClient.cdsDocItems.Eof do
            begin
              cdsClonedDocItems.Append;
              try
                cdsClonedDocItems.AssignFields(dmDocClient.cdsDocItems);
                cdsClonedDocItems.Post;
              except
                cdsClonedDocItems.Cancel;
                raise;
              end;  { try }

              dmDocClient.cdsDocItems.Next;
            end;  { while }

          cdsClonedDocItems.First;
        end;  { if }
    end;  { if }
end;

procedure TfrDoc.CloseClonedDataSets;
begin
  cdsClonedDocItems.Close;
  cdsClonedDocs.Close;
end;

procedure TfrDoc.ResyncClonedDataSets;
var
  OldDocBranchCode: Integer;
  OldDocCode: Integer;
  OldDocItemCode: Integer;
begin
  cdsClonedDocs.TempDisableControls/
    cdsClonedDocItems.TempDisableControls/
      procedure begin
        OldDocBranchCode:= cdsClonedDocItemsDOC_BRANCH_CODE.AsInteger;
        OldDocCode:= cdsClonedDocItemsDOC_CODE.AsInteger;
        OldDocItemCode:= cdsClonedDocItemsDOC_ITEM_CODE.AsInteger;

        CloseClonedDataSets;
        OpenClonedDataSets;

        cdsClonedDocItems.Locate(
          'DOC_BRANCH_CODE;DOC_CODE;DOC_ITEM_CODE',
          VarArrayOf([OldDocBranchCode, OldDocCode, OldDocItemCode]),
          []);
      end;
end;

procedure TfrDoc.DelayedResyncClonedDataSets;
begin
  if not FClosing then
    begin
      tmrResyncClonedDatasets.Enabled:= False;
      tmrResyncClonedDatasets.Enabled:= True;
      FIsInDelayedResync:= True;
    end;  { if }
end;

procedure TfrDoc.tmrResyncClonedDatasetsTimer(Sender: TObject);
begin
  inherited;
  try
    tmrResyncClonedDatasets.Enabled:= False;
    ResyncClonedDataSets;
  finally
    FIsInDelayedResync:= False;
  end;  { try }
end;

procedure TfrDoc.CheckNotInDelayedResync;
begin
  if IsInDelayedResync then
    Abort;
end;

procedure TfrDoc.cdsClonedDocItemsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  cdsClonedDocItems_DOC_ITEM_TYPE_NAME.LookupDataSet:= dmDocClient.cdsDocItemTypes;
  cdsClonedDocItems_DEVELOP_EMPLOYEE_ABBREV.LookupDataSet:= dmDocClient.cdsEmployees;
  cdsClonedDocItems_DEVELOP_EMPLOYEE_NAME.LookupDataSet:= dmDocClient.cdsEmployees;
  cdsClonedDocItems_AUTHORIZE_EMPLOYEE_ABBREV.LookupDataSet:= dmDocClient.cdsEmployees;
  cdsClonedDocItems_AUTHORIZE_EMPLOYEE_NAME.LookupDataSet:= dmDocClient.cdsEmployees;
  cdsClonedDocItems_APPROVE_EMPLOYEE_ABBREV.LookupDataSet:= dmDocClient.cdsEmployees;
  cdsClonedDocItems_APPROVE_EMPLOYEE_NAME.LookupDataSet:= dmDocClient.cdsEmployees;
end;

procedure TfrDoc.cdsClonedDocsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    (cdsClonedDocsRECORD_STATUS.AsInteger <> Ord(usDeleted)) and
    (cdsClonedDocsDOC_BRANCH_CODE.AsInteger = FDocBranchCode) and
    (cdsClonedDocsDOC_CODE.AsInteger = FDocCode);
end;

procedure TfrDoc.cdsClonedDocItemsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    (cdsClonedDocItemsRECORD_STATUS.AsInteger <> Ord(usDeleted)) and
    (cdsClonedDocItemsDOC_BRANCH_CODE.AsInteger = FDocBranchCode) and
    (cdsClonedDocItemsDOC_CODE.AsInteger = FDocCode) and
    (FShowInactiveDocItems or not cdsClonedDocItemsIS_INACTIVE.AsBoolean) and
    (IntToDocItemAccessLevel(cdsClonedDocItemsDOC_ITEM_ACCESS_LEVEL_CODE.AsInteger) >= dialList);
end;

procedure TfrDoc.DataChange(Sender: TObject);
begin
  inherited DataChange(Sender);
  if Assigned(dmDocClient) and
     (FieldCount = 2) and
     Assigned(Fields[0]) and
     Assigned(Fields[1]) then
    begin
      FDocBranchCode:= Fields[0].AsInteger;
      FDocCode:= Fields[1].AsInteger;
    end
  else
    begin
      FDocBranchCode:= 0;
      FDocCode:= 0;
    end;

  if cdsClonedDocs.Active then
    DelayedResyncClonedDataSets;
end;

procedure TfrDoc.UpdateData(Sender: TObject);
begin
  inherited UpdateData(Sender);

  Assert(FieldCount = 2);
  Assert(Assigned(Fields[0]));
  Assert(Assigned(Fields[1]));
  Assert(Assigned(Fields[0].DataSet));
  Assert(Assigned(Fields[1].DataSet));
  Assert(Fields[0].DataSet = Fields[1].DataSet);
  Assert(not ImmediatelyApplyUpdates);

  try
    CheckEditMode(Fields[0].DataSet);
    Fields[0].AsVariant:= IntToVar(FDocBranchCode);
    Fields[1].AsVariant:= IntToVar(FDocCode);
  except
    Reset;
    raise;
  end;  { try }
end;

procedure TfrDoc.actInsertDocItemExecute(Sender: TObject);
var
  IsFound: Boolean;
  SavedDocItemCode: Integer;
begin
  inherited;
  Assert(Assigned(dmDocClient));

  CheckNotInDelayedResync;

  LoginContext.CheckUserActivity(uaEditDoc);

  dmDocClient.SetOpenDocOwnerType(FDocOwnerType);

  if (FDocBranchCode = 0) or (FDocCode = 0) then
    begin
      dmDocClient.NewDoc(FDocBranchCode, FDocCode);
      Edit;
      Modified;
      ForceUpdateRecord;
      ResyncClonedDataSets;
    end;  { if }

  IsFound:=
    dmDocClient.LoadDoc(cdsClonedDocsDOC_BRANCH_CODE.AsInteger, cdsClonedDocsDOC_CODE.AsInteger);

  Assert(IsFound);

  if TfmDocItemsEdit.ShowForm(dmDocClient, dmDocClient.cdsDocItems, emInsert) then
    begin
      if ImmediatelyApplyUpdates then
        begin
          try
            dmDocClient.ApplyUpdates;
          except
            dmDocClient.CancelUpdates;
            raise;
          end;  { try }
        end;  { if }

      IsFound:= dmDocClient.LocateLastDocItem(FDocBranchCode, FDocCode);

      Assert(IsFound);

      SavedDocItemCode:= dmDocClient.cdsDocItemsDOC_ITEM_CODE.AsInteger;

      dmDocClient.DocItemEdited(True);

      if MustFireDataChanged then
        dmDocClient.DataChanged;

      ResyncClonedDataSets;

      if (SavedDocItemCode <> 0) then
        cdsClonedDocItems.Locate(
          'DOC_BRANCH_CODE;DOC_CODE;DOC_ITEM_CODE',
          VarArrayOf([FDocBranchCode, FDocCode, SavedDocItemCode]),
          []);
    end;  { if }
end;

procedure TfrDoc.actInsertDocItemUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetInsertDocItemEnabled;
end;

procedure TfrDoc.actInsertMenuExecute(Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(((Sender as TAction).ActionComponent as TControl), pmInsert);
end;

procedure TfrDoc.actInsertMenuUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    GetInsertDocItemEnabled or
    GetCreateLikeDocItemEnabled;
end;

procedure TfrDoc.actLoadFromDocProfileExecute(Sender: TObject);
var
  DocBranchCode, DocCode: Integer;
  IsFound: Boolean;
  SavedDocItemCode: Integer;
begin
  inherited;
  cdsDocProfileDoc.TempCreateDataSet/
    procedure begin
      cdsDocProfileDoc.SafeAppend/
        procedure begin
          cdsDocProfileDocDOC_ITEM_TEMPLATE_TYPE_CODE.AsInteger:= DocItemTemplateTypeToInt(GetDocOwnerTypeTemplateType(DocOwnerType));
        end;

      if TfmDocProfileSelector.ShowForm(dmDocClient, cdsDocProfileDoc) then
        begin
          DocBranchCode:= cdsDocProfileDocDOC_BRANCH_CODE.AsInteger;
          DocCode:= cdsDocProfileDocDOC_CODE.AsInteger;
        end
      else
        Abort;
    end;


  Assert(Assigned(dmDocClient));

  CheckNotInDelayedResync;

  LoginContext.CheckUserActivity(uaEditDoc);

  dmDocClient.SetOpenDocOwnerType(FDocOwnerType);

  if (FDocBranchCode = 0) or (FDocCode = 0) then
    begin
      dmDocClient.NewDoc(FDocBranchCode, FDocCode);
      Edit;
      Modified;
      ForceUpdateRecord;
      ResyncClonedDataSets;
    end;  { if }

  IsFound:=
    dmDocClient.LoadDoc(cdsClonedDocsDOC_BRANCH_CODE.AsInteger, cdsClonedDocsDOC_CODE.AsInteger);

  Assert(IsFound);

  dmDocClient.CreateDocLike(
    DocBranchCode,
    DocCode,
    True,
    True,
    True);

  if ImmediatelyApplyUpdates then
    begin
      try
        dmDocClient.ApplyUpdates;
      except
        dmDocClient.CancelUpdates;
        raise;
      end;  { try }
    end;  { if }

  IsFound:= dmDocClient.LocateLastDocItem(FDocBranchCode, FDocCode);

  Assert(IsFound);

  SavedDocItemCode:= dmDocClient.cdsDocItemsDOC_ITEM_CODE.AsInteger;

  dmDocClient.DocItemEdited(True);

  if MustFireDataChanged then
    dmDocClient.DataChanged;

  ResyncClonedDataSets;

  if (SavedDocItemCode <> 0) then
    cdsClonedDocItems.Locate(
      'DOC_BRANCH_CODE;DOC_CODE;DOC_ITEM_CODE',
      VarArrayOf([FDocBranchCode, FDocCode, SavedDocItemCode]),
      []);
end;

procedure TfrDoc.actLoadFromDocProfileUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetInsertDocItemEnabled;
end;

procedure TfrDoc.actMaximizeExecute(Sender: TObject);
const
  RowHeight = 18;
begin
  inherited;

  if FMaximized then
    Parent.Height:= FBeforeMaximizeHeight
  else
    begin
      FBeforeMaximizeHeight:= Parent.Height;
      Parent.Height:= Parent.Height + ((ScalePixels(300) - Height) div ScalePixels(RowHeight)) * ScalePixels(RowHeight);
    end;

  FMaximized:= not FMaximized;
end;

procedure TfrDoc.actMaximizeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Caption:= IntToStr(Ord(FMaximized) + 1);
  (Sender as TAction).Hint:= IfThen(FMaximized, SRestore, SMaximize);
end;

procedure TfrDoc.actCreateLikeDocItemExecute(Sender: TObject);
var
  IsFound: Boolean;
begin
  inherited;

  CheckNotInDelayedResync;

  IsFound:=
    dmDocClient.DSLocateDocItem(cdsClonedDocItems);

  Assert(IsFound);

  dmDocClient.PrepareDocItemCreateLike;
  try
    actInsertDocItem.Execute;
  finally
    dmDocClient.UnprepareDocItemCreateLike;
  end;
end;

procedure TfrDoc.actCreateLikeDocItemUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    GetCreateLikeDocItemEnabled;
end;

procedure TfrDoc.actDelDocItemExecute(Sender: TObject);
var
  IsFound: Boolean;
  SavedDocItemCode: Integer;
begin
  inherited;
  Assert(Assigned(dmDocClient));

  CheckNotInDelayedResync;

  LoginContext.CheckUserActivity(uaEditDoc);

  dmDocClient.SetOpenDocOwnerType(FDocOwnerType);

  if not ConfirmRecordDelete then
    Abort;

  IsFound:=
    dmDocClient.DSLocateDocItem(cdsClonedDocItems);

  Assert(IsFound);

  dmDocClient.CheckUserHasAccessToDocItem(dialEdit);

  dmDocClient.DeleteDocItem;

  SavedDocItemCode:= dmDocClient.cdsDocItemsDOC_ITEM_CODE.AsInteger;

  if ImmediatelyApplyUpdates then
    begin
      try
        dmDocClient.ApplyUpdates;
      except
        dmDocClient.CancelUpdates;
        raise;
      end;  { try }
    end;  { if }

  dmDocClient.LocateDocItem(FDocBranchCode, FDocCode, SavedDocItemCode);

  if MustFireDataChanged then
    dmDocClient.DataChanged;

  ResyncClonedDataSets;

  if (SavedDocItemCode <> 0) then
    cdsClonedDocItems.Locate(
      'DOC_BRANCH_CODE;DOC_CODE;DOC_ITEM_CODE',
      VarArrayOf([FDocBranchCode, FDocCode, SavedDocItemCode]),
      []);
end;

procedure TfrDoc.actDelDocItemUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (FDocCode <> 0) and
    not ReadOnly and
    cdsClonedDocs.Active and
    not cdsClonedDocItems.IsEmpty;
end;

procedure TfrDoc.actEditDocItemExecute(Sender: TObject);
var
  IsFound: Boolean;
  SavedDocItemCode: Integer;
begin
  inherited;
  Assert(Assigned(dmDocClient));

  CheckNotInDelayedResync;

  LoginContext.CheckUserActivity(uaEditDoc);

  dmDocClient.SetOpenDocOwnerType(FDocOwnerType);

  SavedDocItemCode:= cdsClonedDocItemsDOC_ITEM_CODE.AsInteger;

  IsFound:=
    dmDocClient.DSLocateDocItem(cdsClonedDocItems);

  Assert(IsFound);

  if ReadOnly then
    dmDocClient.CheckUserHasAccessToDocItem(dialView)
  else
    dmDocClient.CheckUserHasAccessToDocItem(dialEdit);

  FDocItemApprovedBeforeEdit:=
    not dmDocClient.cdsDocItemsAPPROVE_EMPLOYEE_CODE.IsNull;
  FDocItemUnapprovedDuringEdit:= False;

  FOlddmDocClientcdsDocItemsAPPROVE_EMPLOYEE_CODEChange:= dmDocClient.cdsDocItemsAPPROVE_EMPLOYEE_CODE.OnChange;
  dmDocClient.cdsDocItemsAPPROVE_EMPLOYEE_CODE.OnChange:= dmDocClientcdsDocItemsAPPROVE_EMPLOYEE_CODEChange;
  try
    if TfmDocItemsEdit.ShowForm(dmDocClient, dmDocClient.cdsDocItems, ReadOnlyEditModes[ReadOnly]) then
      begin
        if ImmediatelyApplyUpdates then
          begin
            try
              dmDocClient.ApplyUpdates;
            except
              dmDocClient.CancelUpdates;
              raise;
            end;  { try }
          end;  { if }

        IsFound:=
          dmDocClient.LocateDocItem(FDocBranchCode, FDocCode, SavedDocItemCode);

        Assert(IsFound);

        dmDocClient.DocItemEdited(FDocItemUnapprovedDuringEdit);

        if MustFireDataChanged then
          dmDocClient.DataChanged;

        ResyncClonedDataSets;

        if (SavedDocItemCode <> 0) then
          cdsClonedDocItems.Locate(
            'DOC_BRANCH_CODE;DOC_CODE;DOC_ITEM_CODE',
            VarArrayOf([FDocBranchCode, FDocCode, SavedDocItemCode]),
            []);
      end;  { if }
  finally
    dmDocClient.cdsDocItemsAPPROVE_EMPLOYEE_CODE.OnChange:= FOlddmDocClientcdsDocItemsAPPROVE_EMPLOYEE_CODEChange;
  end;  { try }
end;

procedure TfrDoc.actEditDocItemUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetEditDocItemEnabled;

  if ReadOnly then
    (Sender as TAction).Hint:= SReadOnlyCaption
  else
    (Sender as TAction).Hint:= SEditCaption;
end;

procedure TfrDoc.actSetCompleteExecute(Sender: TObject);
var
  IsFound: Boolean;
  NewIsComplete: Boolean;
  SavedDocItemCode: Integer;
begin
  inherited;
  Assert(Assigned(dmDocClient));

  CheckNotInDelayedResync;

  LoginContext.CheckUserActivity(uaEditDoc);

  dmDocClient.SetOpenDocOwnerType(FDocOwnerType);

  SavedDocItemCode:= cdsClonedDocItemsDOC_ITEM_CODE.AsInteger;

  if (FDocBranchCode = 0) and (FDocCode = 0) then
    begin
      dmDocClient.NewDoc(FDocBranchCode, FDocCode);
      Edit;
      Modified;
      ForceUpdateRecord;
      ResyncClonedDataSets;
    end;  { if }

  case MessageDlgEx(SConfirmDocIsComplete, mtConfirmation, mbYesNoCancel, 0) of
    mrYes:
      NewIsComplete:= True;
    mrNo:
      NewIsComplete:= False;
  else
    Exit;
  end;

  IsFound:=
    dmDocClient.LoadDoc(cdsClonedDocsDOC_BRANCH_CODE.AsInteger, cdsClonedDocsDOC_CODE.AsInteger);

  Assert(IsFound);

  dmDocClient.SetDocIsComplete(NewIsComplete);

  if ImmediatelyApplyUpdates then
    begin
      try
        dmDocClient.ApplyUpdates;
      except
        dmDocClient.CancelUpdates;
        raise;
      end;  { try }
    end;  { if }

  IsFound:=
    dmDocClient.LoadDoc(cdsClonedDocsDOC_BRANCH_CODE.AsInteger, cdsClonedDocsDOC_CODE.AsInteger);

  Assert(IsFound);

  if MustFireDataChanged then
    dmDocClient.DataChanged;

  ResyncClonedDataSets;

  if (SavedDocItemCode <> 0) then
    cdsClonedDocItems.Locate(
      'DOC_BRANCH_CODE;DOC_CODE;DOC_ITEM_CODE',
      VarArrayOf([FDocBranchCode, FDocCode, SavedDocItemCode]),
      []);
end;

procedure TfrDoc.actSetCompleteUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (FDocCode <> 0) and
    not ReadOnly and
    cdsClonedDocs.Active and
    (not cdsClonedDocs.IsEmpty or not ImmediatelyApplyUpdates);
end;

procedure TfrDoc.actEditDocEmptinessRequirementExecute(Sender: TObject);
var
  IsFound: Boolean;
  SavedDocItemCode: Integer;
begin
  inherited;
  Assert(Assigned(dmDocClient));

  CheckNotInDelayedResync;

  LoginContext.CheckUserActivity(uaEditDoc);

  dmDocClient.SetOpenDocOwnerType(FDocOwnerType);

  SavedDocItemCode:= cdsClonedDocItemsDOC_ITEM_CODE.AsInteger;

  if (FDocBranchCode = 0) or (FDocCode = 0) then
    begin
      dmDocClient.NewDoc(FDocBranchCode, FDocCode);
      Edit;
      Modified;
      ForceUpdateRecord;
      ResyncClonedDataSets;
    end;  { if }

  IsFound:=
    dmDocClient.LoadDoc(FDocBranchCode, FDocCode);

  Assert(IsFound);

  cdsClonedDocs.DisableControls;
  try
    cdsClonedDocItems.DisableControls;
    try
      if TfmDocEmptinessRequirement.ShowForm(dmDocClient, dmDocClient.cdsDocs, ReadOnlyEditModes[ReadOnly]) then
        begin
          if ImmediatelyApplyUpdates then
            begin
              try
                dmDocClient.ApplyUpdates;
              except
                dmDocClient.CancelUpdates;
                raise;
              end;  { try }
            end;  { if }

          IsFound:=
            dmDocClient.LoadDoc(FDocBranchCode, FDocCode);

          Assert(IsFound);

          if MustFireDataChanged then
            dmDocClient.DataChanged;

          ResyncClonedDataSets;

          if (SavedDocItemCode <> 0) then
            cdsClonedDocItems.Locate(
              'DOC_BRANCH_CODE;DOC_CODE;DOC_ITEM_CODE',
              VarArrayOf([FDocBranchCode, FDocCode, SavedDocItemCode]),
              []);
        end;  { if }
    finally
      cdsClonedDocItems.EnableControls;
    end;  { try }
  finally
    cdsClonedDocs.EnableControls;
  end;  { try }
end;

procedure TfrDoc.actEditDocEmptinessRequirementUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (FDocCode <> 0) and
    cdsClonedDocs.Active and
    (not cdsClonedDocs.IsEmpty or not ImmediatelyApplyUpdates);
end;

procedure TfrDoc.edtDocEmptinessRequirementNameButtonClick(
  Sender: TObject);
begin
  inherited;
  actEditDocEmptinessRequirement.Execute;
end;

procedure TfrDoc.actFrameUpdate(Sender: TObject);
const
  BooleanColors: array[Boolean] of TColor = (clRed, clGreen);
begin
  inherited;
  edtDocEmptinessRequirementName.Enabled:=
    (FDocCode <> 0) and
    not ReadOnly and
    cdsClonedDocs.Active and
    (not cdsClonedDocs.IsEmpty or not ImmediatelyApplyUpdates);

  edtCount.Font.Color:= BooleanColors[cdsClonedDocsIS_COMPLETE.AsBoolean];
  edtDocStatus.Font.Color:= BooleanColors[cdsClonedDocsIS_COMPLETE.AsBoolean];

  edtDocItemCountStatus.Font.Color:=
    BooleanColors[cdsClonedDocsAPPROVED_ACTIVE_DOC_ITEM_COUNT.AsInteger = cdsClonedDocsACTIVE_DOC_ITEM_COUNT.AsInteger];

  NormalizedToolbar(tlbMaximize).Visible:= not (Parent.Parent is TForm);
end;

procedure TfrDoc.actToggleShowInactiveDocItemsExecute(Sender: TObject);
begin
  inherited;
  FShowInactiveDocItems:= not FShowInactiveDocItems;
  if not IsInDelayedResync then
    ResyncClonedDataSets;
end;

procedure TfrDoc.actToggleShowInactiveDocItemsUpdate(Sender: TObject);
begin
  inherited;
  if (cdsClonedDocsINACTIVE_DOC_ITEM_COUNT.AsInteger = 0) then
    (Sender as TAction).Caption:= SShowInactiveDocItemsButtonCaption
  else
    (Sender as TAction).Caption:=
      Format('%d ' + SShowInactiveDocItemsButtonCaption, [cdsClonedDocsINACTIVE_DOC_ITEM_COUNT.AsInteger]);

  (Sender as TAction).Checked:= FShowInactiveDocItems;
  btnToggleShowInactiveDocItems.Down:= FShowInactiveDocItems;
end;

procedure TfrDoc.actExecDocItemDataExecute(Sender: TObject);
var
  IsFound: Boolean;
begin
  inherited;
  CheckNotInDelayedResync;

  dmDocClient.SetOpenDocOwnerType(FDocOwnerType);

  IsFound:=
    dmDocClient.DSLocateDocItem(cdsClonedDocItems);

  Assert(IsFound);

  dmDocClient.ExecDocItemDataReadOnly;
end;

procedure TfrDoc.actExecDocItemDataUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (FDocCode <> 0) and
    cdsClonedDocs.Active and
    not cdsClonedDocItems.IsEmpty and
    ( not cdsClonedDocItemsAPPROVE_EMPLOYEE_CODE.IsNull or
      not IsExecEnabledOnlyForApprovedItems);
end;

procedure TfrDoc.grdClonedDocItemsDblClick(Sender: TObject);
begin
  inherited;
  if not actEditDocItem.Execute then
    actInsertDocItem.Execute;
end;

procedure TfrDoc.grdClonedDocItemsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
const
  EmployeeFieldNullColors: array[Boolean] of TColor = (clGreen, clRed);
var
  Field: TField;
begin
  inherited;
  if cdsClonedDocItems.IsEmpty then
    Exit;

  Field:= Column.Field;

  if cdsClonedDocItemsIS_INACTIVE.AsBoolean then
    AFont.Color:= clGray
  else
    begin
      if (Field = cdsClonedDocItems_DEVELOP_EMPLOYEE_ABBREV) or
         (Field = cdsClonedDocItems_AUTHORIZE_EMPLOYEE_ABBREV) or
         (Field = cdsClonedDocItems_APPROVE_EMPLOYEE_ABBREV) then
        begin
          AFont.Color:= EmployeeFieldNullColors[Field.IsNull];
        end;  { if }
    end;
end;

procedure TfrDoc.cdsClonedDocItems_DEVELOP_EMPLOYEE_ABBREVGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= Format(' %s   %s', [
    GetEmployeeFieldText(Sender),
    cdsClonedDocItems_DEVELOP_EMPLOYEE_NAME.AsString]);
end;

procedure TfrDoc.cdsClonedDocItems_AUTHORIZE_EMPLOYEE_ABBREVGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= Format(' %s   %s', [
    GetEmployeeFieldText(Sender),
    cdsClonedDocItems_AUTHORIZE_EMPLOYEE_NAME.AsString]);
end;

procedure TfrDoc.cdsClonedDocItems_APPROVE_EMPLOYEE_ABBREVGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= Format(' %s   %s', [
    GetEmployeeFieldText(Sender),
    cdsClonedDocItems_APPROVE_EMPLOYEE_NAME.AsString]);
end;

function TfrDoc.GetCreateLikeDocItemEnabled: Boolean;
begin
  Result:= GetInsertDocItemEnabled and GetEditDocItemEnabled;
end;

function TfrDoc.GetEditDocItemEnabled: Boolean;
begin
  Result:=
    (FDocCode <> 0) and
    cdsClonedDocs.Active and
    not cdsClonedDocItems.IsEmpty;
end;

function TfrDoc.GetEmployeeFieldText(AField: TField): string;
begin
  if AField.DataSet.IsEmpty then
    Result:= ''
  else
    begin
      if AField.IsNull then
        Result:= 'x'
      else
        Result:= AField.AsString;
    end;
end;

function TfrDoc.GetInsertDocItemEnabled: Boolean;
begin
  Result:=
    (FDocCode <> 0) and
    not ReadOnly and
    cdsClonedDocs.Active and
    (not cdsClonedDocs.IsEmpty or not ImmediatelyApplyUpdates);
end;

procedure TfrDoc.cdsClonedDocItems_COUNT_ACTIVE_DOC_ITEMSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if cdsClonedDocs.IsEmpty then
    Text:= ''
  else
    Text:= IntToStr(VarToInt(Sender.Value));
end;

procedure TfrDoc.cdsClonedDocsDOC_EMPTINESS_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and (not Sender.DataSet.IsEmpty) then
    Text:=
      DocEmptinessRequirementAbbrev(
        IntToDocEmptinessRequirement(Sender.AsInteger),
        cdsClonedDocsIS_COMPLETE.AsBoolean)
  else
    Text:= Sender.AsString;
end;

procedure TfrDoc.dmDocClientcdsDocItemsAPPROVE_EMPLOYEE_CODEChange(
  Sender: TField);
begin
  if Assigned(FOlddmDocClientcdsDocItemsAPPROVE_EMPLOYEE_CODEChange) then
    FOlddmDocClientcdsDocItemsAPPROVE_EMPLOYEE_CODEChange(Sender);

  if FDocItemApprovedBeforeEdit and
     dmDocClient.cdsDocItemsAPPROVE_EMPLOYEE_CODE.IsNull then
    FDocItemUnapprovedDuringEdit:= True;
end;

end.


