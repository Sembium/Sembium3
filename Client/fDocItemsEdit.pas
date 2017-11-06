unit fDocItemsEdit;

{$WARN UNIT_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  fEditForm, DB, AbmesFields, Dialogs, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateFieldEditFrame, ComCtrls, ToolWin, StdCtrls,
  AbmesDBCheckBox, JvExStdCtrls, JvDBCombobox, JvExControls, JvComponent,
  JvDBLookup, DBCtrls, Buttons, Mask, JvExMask, JvToolEdit, JvDBControls,
  DBClient, AbmesClientDataSet, JvCaptionButton, ActnList, ExtCtrls,
  fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald, JvComponentBase, Menus,
  JvCombobox, JvDragDrop, System.Actions;

type
  TfmDocItemsEdit = class(TEditForm)
    pnlStorageInfo: TPanel;
    pnlStorageType: TPanel;
    lblDocItemStorageType: TLabel;
    pnlExternalFileStorage: TPanel;
    lblFileName: TLabel;
    lblRelativePath: TLabel;
    edtFileName: TJvDBComboEdit;
    edtRelativePath: TJvDBComboEdit;
    pnlInternalFileStorage: TPanel;
    lblFileExtension: TLabel;
    edtFileExtension: TDBEdit;
    edtIsStoredFileChanged: TDBEdit;
    lblIsStoredFileDataChanged: TLabel;
    btnImportFromFile: TSpeedButton;
    btnExportToFile: TSpeedButton;
    actImportFromFile: TAction;
    actExportToFile: TAction;
    cbDocItemStorageType: TJvDBLookupCombo;
    btnEditStoredFileData: TSpeedButton;
    actEditStoredFileData: TAction;
    OpenDialog: TOpenDialog;
    cdsDocItemPatterns: TAbmesClientDataSet;
    dsDocItemPatterns: TDataSource;
    cdsDocItemPatternsDOC_ITEM_PATTERN_CODE: TAbmesFloatField;
    cdsDocItemPatternsDOC_ITEM_PATTERN_NAME: TAbmesWideStringField;
    cbPattern: TJvDBLookupCombo;
    lblPattern: TLabel;
    grpDocItem: TGroupBox;
    lblDocItemType: TLabel;
    cbDocItemType: TJvDBLookupCombo;
    lblDocItemName: TLabel;
    edtDocItemName: TDBEdit;
    lblNotes: TLabel;
    edtNotes: TDBEdit;
    grpPhase: TGroupBox;
    actDevelop: TAction;
    actAuthorize: TAction;
    actApprove: TAction;
    actImportFromTemplate: TAction;
    btnImportFromTemplate: TSpeedButton;
    edtDocItemNo: TDBEdit;
    lblDocItemNo: TLabel;
    chkIsInactive: TAbmesDBCheckBox;
    actClearStoredFile: TAction;
    btnClearStoredFile: TSpeedButton;
    frDevelopDate: TfrDateFieldEditFrame;
    frAuthorizeDate: TfrDateFieldEditFrame;
    frApproveDate: TfrDateFieldEditFrame;
    actConvertExternalDocItemToInternal: TAction;
    pnlConvertExternalDocItemToInternal: TPanel;
    btnConvertExternalDocItemToInternal: TSpeedButton;
    frDevelopEmployee: TfrEmployeeFieldEditFrameBald;
    frAuthorizeEmployee: TfrEmployeeFieldEditFrameBald;
    frApproveEmployee: TfrEmployeeFieldEditFrameBald;
    btnDocItemAccess: TButton;
    actDocItemSysRoles: TAction;
    cdsEmployeeFrameAllEmployees: TAbmesClientDataSet;
    pnlIsDocItemSysRolesDefault: TPanel;
    chkIsMirrored: TAbmesDBCheckBox;
    pnlMirroredDocItemPaths: TPanel;
    lblMirroredFileName: TLabel;
    edtMirroredFileName: TJvDBComboEdit;
    lblMirroredRelativePath: TLabel;
    edtMirroredRelativePath: TJvDBComboEdit;
    edtDocsLocalRootPath: TEdit;
    edtDocItemMirrorsRootPath: TEdit;
    pnlIsMirrored: TPanel;
    btnExternalFileOpen: TBitBtn;
    actExternalFileOpen: TAction;
    lblChangeDate: TLabel;
    edtExternalFileChangeDate: TDBEdit;
    btnExternalFileDelete: TBitBtn;
    actExternalFileDelete: TAction;
    btnExternalFileExport: TBitBtn;
    actExternalFileExport: TAction;
    sdExternalFileExport: TSaveDialog;
    btnExternalFileImport: TBitBtn;
    actExternalFileImport: TAction;
    odExternalFileImport: TOpenDialog;
    btnExternalFileNewFromTemplate: TBitBtn;
    actExternalFileNewFromTemplate: TAction;
    cdsExtFileChangeDate: TAbmesClientDataSet;
    dsExtFileChangeDate: TDataSource;
    cdsExtFileChangeDateEXT_FILE_CHANGE_DATE: TAbmesSQLTimeStampField;
    frStoredFileChangeEmployee: TfrEmployeeFieldEditFrameBald;
    lblStoredFileChangeEmployee: TLabel;
    frStoredFileChangeDate: TfrDateFieldEditFrame;
    btnOpenStoredFileReadOnly: TSpeedButton;
    actOpenStoredFileReadOnly: TAction;
    btnExternalFileEdit: TBitBtn;
    actExternalFileEdit: TAction;
    pnlDevelop: TPanel;
    btnApprove: TSpeedButton;
    btnAuthorize: TSpeedButton;
    btnDevelop: TSpeedButton;
    pnlExternalDocStorage: TPanel;
    lblExternalStorageDocId: TLabel;
    btnExternalDocStorageView: TBitBtn;
    actExternalDocStorageView: TAction;
    imgDevelopTime: TImage;
    imgAuthorizeTime: TImage;
    imgApproveTime: TImage;
    drpImportFromFile: TJvDropTarget;
    btnExternalDocStorageEdit: TBitBtn;
    actExternalDocStorageEdit: TAction;
    actExternalDocStorageSelect: TAction;
    actClearExternalStorageDocId: TAction;
    pnlExternalStorageDocIdButtons: TPanel;
    btnClearExternalStorageDocId: TSpeedButton;
    btnExternalDocStorageSelect: TSpeedButton;
    edtExternalStorageDocId: TDBEdit;
    cdsExternalStorageDocId: TAbmesClientDataSet;
    cdsExternalStorageDocIdDOC_ID: TAbmesWideStringField;
    pnlContentStorage: TPanel;
    lblContentStorageFileExtention: TLabel;
    btnContentStorageFileImport: TSpeedButton;
    btnContentStorageFileExport: TSpeedButton;
    btnContentStorageFileOpen: TSpeedButton;
    lblContentStoragePattern: TLabel;
    btnContentStorageFileImportFromTemplate: TSpeedButton;
    btnContentStorageFileDelete: TSpeedButton;
    lblContentStorageChangeEmployee: TLabel;
    btnContentStorageFileOpenReadOnly: TSpeedButton;
    edtContentStorageFileExtention: TDBEdit;
    cbContentStoragePattern: TJvDBLookupCombo;
    frContentStorageFileChangeEmployee: TfrEmployeeFieldEditFrameBald;
    frContentStorageFileChangeDate: TfrDateFieldEditFrame;
    actContentStorageFileOpenReadOnly: TAction;
    actContentStorageFileOpen: TAction;
    actContentStorageFileDelete: TAction;
    actContentStorageFileImportFromTemplate: TAction;
    actContentStorageFileImport: TAction;
    actContentStorageFileExport: TAction;
    procedure edtMirroredRelativePathButtonClick(Sender: TObject);
    procedure edtMirroredFileNameButtonClick(Sender: TObject);
    procedure actDocItemSysRolesExecute(Sender: TObject);
    procedure edtFileNameButtonClick(Sender: TObject);
    procedure edtRelativePathButtonClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actImportFromFileExecute(Sender: TObject);
    procedure actExportToFileExecute(Sender: TObject);
    procedure actEditStoredFileDataExecute(Sender: TObject);
    procedure actDevelopExecute(Sender: TObject);
    procedure actDevelopUpdate(Sender: TObject);
    procedure actAuthorizeExecute(Sender: TObject);
    procedure actAuthorizeUpdate(Sender: TObject);
    procedure actApproveExecute(Sender: TObject);
    procedure actApproveUpdate(Sender: TObject);
    procedure actImportFromTemplateExecute(Sender: TObject);
    procedure actEditStoredFileDataUpdate(Sender: TObject);
    procedure actImportFromFileUpdate(Sender: TObject);
    procedure actImportFromTemplateUpdate(Sender: TObject);
    procedure actExportToFileUpdate(Sender: TObject);
    procedure actClearStoredFileExecute(Sender: TObject);
    procedure actClearStoredFileUpdate(Sender: TObject);
    procedure cbDocItemStorageTypeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actConvertExternalDocItemToInternalExecute(Sender: TObject);
    procedure actConvertExternalDocItemToInternalUpdate(Sender: TObject);
    procedure actExternalFileOpenUpdate(Sender: TObject);
    procedure actExternalFileOpenExecute(Sender: TObject);
    procedure actExternalFileDeleteUpdate(Sender: TObject);
    procedure actExternalFileDeleteExecute(Sender: TObject);
    procedure actExternalFileExportUpdate(Sender: TObject);
    procedure actExternalFileExportExecute(Sender: TObject);
    procedure actExternalFileImportUpdate(Sender: TObject);
    procedure actExternalFileImportExecute(Sender: TObject);
    procedure actExternalFileNewFromTemplateUpdate(Sender: TObject);
    procedure actExternalFileNewFromTemplateExecute(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure actOpenStoredFileReadOnlyExecute(Sender: TObject);
    procedure actOpenStoredFileReadOnlyUpdate(Sender: TObject);
    procedure actExternalFileEditUpdate(Sender: TObject);
    procedure actExternalFileEditExecute(Sender: TObject);
    procedure actExternalDocStorageViewUpdate(Sender: TObject);
    procedure actExternalDocStorageViewExecute(Sender: TObject);
    procedure imgTimeMouseLeave(Sender: TObject);
    procedure imgTimeMouseEnter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure drpImportFromFileDragAccept(Sender: TJvDropTarget; var Accept: Boolean);
    procedure drpImportFromFileDragDrop(Sender: TJvDropTarget; var Effect: TJvDropEffect; Shift: TShiftState; X, Y: Integer);
    procedure actExternalDocStorageEditUpdate(Sender: TObject);
    procedure actExternalDocStorageEditExecute(Sender: TObject);
    procedure actClearExternalStorageDocIdUpdate(Sender: TObject);
    procedure actExternalDocStorageSelectUpdate(Sender: TObject);
    procedure actClearExternalStorageDocIdExecute(Sender: TObject);
    procedure actExternalDocStorageSelectExecute(Sender: TObject);
    procedure actContentStorageFileOpenReadOnlyUpdate(Sender: TObject);
    procedure actContentStorageFileOpenUpdate(Sender: TObject);
    procedure actContentStorageFileExportExecute(Sender: TObject);
    procedure actContentStorageFileDeleteUpdate(Sender: TObject);
    procedure actContentStorageFileImportFromTemplateExecute(Sender: TObject);
    procedure actContentStorageFileImportUpdate(Sender: TObject);
    procedure actContentStorageFileOpenReadOnlyExecute(Sender: TObject);
    procedure actContentStorageFileOpenExecute(Sender: TObject);
    procedure actContentStorageFileDeleteExecute(Sender: TObject);
    procedure actContentStorageFileImportExecute(Sender: TObject);
    procedure actContentStorageFileExportUpdate(Sender: TObject);
    procedure actContentStorageFileImportFromTemplateUpdate(Sender: TObject);
  private
    FSaveApplicationHintPause: Integer;
    procedure ChooseRelativePath(ARootPath: string; ARelativePathField: TField);
    procedure ChooseFileName(ARootPath: string; AFileNameField, ARelativePathField: TField);
    function IsDocItemSysRolesDefault: Boolean;
    function ExternalFileName: string;
    function IsInDevelopPhase: Boolean;
    procedure UpdateExtFileChangeDateField;
    function IsAllowedFileType(const AFileName: string): Boolean;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
    function IsDocModifiedHere: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  FileCtrl, Consts, uUtils, uClientTypes, uClientUtils, StrUtils,
  dMain, dDocClient, uDocUtils, uUserActivityConsts, fDocItemSysRoles,
  uClientConsts, uLoginContext, fBaseForm, AbmesDialogs,
  fSelectDocItemTemplate, DateUtils, fDBDataForm, uClientDateTime,
  uSysRoleClientUtils, uDocItemStorageTypes, uDocClientUtils, fExternalDocStorageDocId,
  uDocItemStorageBaseTypes;

{$R *.dfm}

resourcestring
  SFileNotInLocalRoot = 'Избраният файл не е в конфигурираният Локален път за ИИО (%s)!';
  SDirNotInLocalRoot = 'Избраният път не е в конфигурираният път за ИИО (%s)!';
  SDocItemSysRolesDefault = 'ИИО без специални Информационни Отговорности за достъп';
  SDocItemSysRolesChanged = 'ИИО със специални Информационни Отговорности за достъп';
  SDeleteExternalFileQuestion = 'Потвърдете изтриването на файл!';
  SExternalFileCouldNotBeDeleted = 'Външният файл не съществува или не може да бъде изтрит.';
  SCouldNotCreateFile = 'Файлът %s не може да бъде създаден.';
  SExternalFileDoesNotExist = 'Външният файл не съществува.';
  SExternalFileExists = 'Външният файл трбва да бъде изтрит преди %s.';
  SImport = 'Импорт';
  SNewFromTemplate = 'създаване на нов';
  SAuthorizeFileNameAndPathRequired = 'При Авторизиране полетата "Име на файл" и "Релативен път" трябва да имат стойност.';
  SAuthorizeExternalDocIdRequired = 'При Авторизиране полето "Външен Идентификатор" трябва да има стойност.';
  SConfirmClearingExternalDocStorageDocId = 'Потвърдете изчистването на Външен Идентификатор!';

{ TfmDocItemsEdit }

procedure TfmDocItemsEdit.OpenDataSets;
begin
  inherited;
  cdsDocItemPatterns.Params.ParamByName('DOC_ITEM_TEMPLATE_TYPE_CODE').AsInteger:=
    DocItemTemplateTypeToInt(GetDocOwnerTypeTemplateType(dmDocClient.OpenDocOwnerType));
  cdsDocItemPatterns.Open;
  cdsExtFileChangeDate.CreateDataSet;
end;

procedure TfmDocItemsEdit.CloseDataSets;
begin
  inherited;
  cdsExtFileChangeDate.Close;
  cdsDocItemPatterns.Close;
end;

procedure TfmDocItemsEdit.DoApplyUpdates;
begin
  inherited DoApplyUpdates;
  Assert(Assigned(dsData.DataSet));

  if Assigned(dsData.DataSet.DataSetField) and
     (dsData.DataSet.DataSetField.DataSet.State in dsEditModes) then
    begin
      try
        dsData.DataSet.DataSetField.DataSet.Post;
      except
        CheckEditMode(dsData.DataSet);
        raise;
      end;  { try }
    end;  { if }
end;

procedure TfmDocItemsEdit.DoCancelUpdates;
begin
  inherited DoCancelUpdates;
  Assert(Assigned(dsData.DataSet));

  if Assigned(dsData.DataSet.DataSetField) and
     (dsData.DataSet.DataSetField.DataSet.State in dsEditModes) then
    dsData.DataSet.DataSetField.DataSet.Cancel;
end;

function TfmDocItemsEdit.IsAllowedFileType(const AFileName: string): Boolean;
var
  AllowedFileExtensions: TStringList;
  FileExtension: string;
  Extension: string;
begin
  Result:= False;

  FileExtension:= ExtractFileExt(AFileName);
  FileExtension:= RightStr(FileExtension, Length(FileExtension)-1);

  AllowedFileExtensions:= TStringList.Create;
  try
    AllowedFileExtensions.Delimiter:= ';';
    AllowedFileExtensions.DelimitedText:= dsData.DataSet.FieldByName('_DOC_ITEM_TYPE_FILE_EXTENSIONS').AsString;
    for Extension in AllowedFileExtensions do
      if SameText(FileExtension, Extension) then
        Exit(True);
  finally
    FreeAndNil(AllowedFileExtensions);
  end;
end;

procedure TfmDocItemsEdit.drpImportFromFileDragAccept(Sender: TJvDropTarget; var Accept: Boolean);
begin
  inherited;
  Accept:=
    ( (actImportFromFile.Enabled and pnlInternalFileStorage.Visible) or
      (actContentStorageFileImport.Enabled and pnlContentStorage.Visible) ) and
    Sender.IsSingleFile and
    IsAllowedFileType(Sender.SingleFileName);
end;

procedure TfmDocItemsEdit.drpImportFromFileDragDrop(Sender: TJvDropTarget; var Effect: TJvDropEffect; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  if pnlInternalFileStorage.Visible then
    dmDocClient.DoImportInternalDocItemDataFromFile(Sender.SingleFileName);

  if pnlContentStorage.Visible then
    dmDocClient.SetContentStorageFile(Sender.SingleFileName);
end;

procedure TfmDocItemsEdit.dsDataDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Assigned(Field) and
     ((Field.FieldName = 'FILE_NAME') or (Field.FieldName = 'RELATIVE_PATH')) and
     (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtExternal) then
    UpdateExtFileChangeDateField;

  imgDevelopTime.Hint:= dsData.DataSet.FieldByName('DEVELOP_TIME').DisplayText;
  imgAuthorizeTime.Hint:= dsData.DataSet.FieldByName('AUTHORIZE_TIME').DisplayText;
  imgApproveTime.Hint:= dsData.DataSet.FieldByName('APPROVE_TIME').DisplayText;
end;

function TfmDocItemsEdit.IsDocModifiedHere: Boolean;
begin
  Assert(Assigned(dsData.DataSet.DataSetField));
  Result:= (dsData.DataSet.DataSetField.DataSet.State in dsEditModes);
end;

procedure TfmDocItemsEdit.ChooseFileName(ARootPath: string; AFileNameField, ARelativePathField: TField);

  function GetChosenFileExtension(AFileName: string): string;
  begin
    Result:= '.' + dsData.DataSet.FieldByName('_FILE_EXTENSION_ABBREV').AsString;

    if (Result = '.') then
      Result:= ExtractFileExt(AFileName);
  end;

var
  s: string;
  p: Integer;
begin
  OpenDialog.Filter:=
    dmMain.SvrDoc.GetDocItemTypeFileDialogFilter(dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').AsInteger);

  OpenDialog.FileName:= AFileNameField.AsString;
  OpenDialog.InitialDir:=
    ExcludeTrailingPathDelimiter(ARootPath) +
    ARelativePathField.AsString;

  if OpenDialog.Execute then
    begin
      OpenDialog.FileName:=
        ChangeFileExt(OpenDialog.FileName, GetChosenFileExtension(OpenDialog.FileName));

      s:= ExtractFilePath(OpenDialog.FileName);
      if (s[Length(s)-1] <> ':') then
        SetLength(s, Length(s)-1);

      p:= Pos(UpperCase(ExcludeTrailingPathDelimiter(ARootPath)), UpperCase(s));
      if (p = 1) then
        begin
          s:= RightStr(s, Length(s)-Length(ExcludeTrailingPathDelimiter(ARootPath)));

          if (s = '') then
            s:= '\';
        end  { if }
      else
        raise Exception.CreateFmt(SFileNotInLocalRoot, [ARootPath]);

      CheckEditMode(dsData.DataSet);

      AFileNameField.AsString:=
        ExtractFileName(OpenDialog.FileName);
      ARelativePathField.AsString:= s;
    end;   { if }
end;

procedure TfmDocItemsEdit.edtFileNameButtonClick(Sender: TObject);
begin
  inherited;

  if (EditMode <> emReadOnly) and not edtFileName.ReadOnly then
    ChooseFileName(
      LoginContext.DocsLocalRootPath,
      dsData.DataSet.FieldByName('FILE_NAME'),
      dsData.DataSet.FieldByName('RELATIVE_PATH'));
end;

procedure TfmDocItemsEdit.edtMirroredFileNameButtonClick(Sender: TObject);
begin
  inherited;

  if (EditMode <> emReadOnly) and not edtMirroredFileName.ReadOnly then
    ChooseFileName(
      LoginContext.DocItemMirrorsRootPath,
      dsData.DataSet.FieldByName('MIRRORED_FILE_NAME'),
      dsData.DataSet.FieldByName('MIRRORED_RELATIVE_PATH'));
end;

procedure TfmDocItemsEdit.ChooseRelativePath(ARootPath: string; ARelativePathField: TField);
var
  DirName: string;
  p: Integer;
begin
  DirName:=
    ExcludeTrailingPathDelimiter(ARootPath) +
    ARelativePathField.AsString;

  if SelectDirectory(SSelectDirCap, '', DirName) then
    begin
      p:= Pos(UpperCase(ARootPath), UpperCase(DirName));
      if (p = 1) then
        begin
          DirName:= RightStr(DirName, Length(DirName)-Length(ARootPath));

          if (DirName = '') then
            DirName:= PathDelim;

          if (DirName[1] <> PathDelim) then
            DirName:= PathDelim + DirName;
            
        end  { if }
      else
        raise Exception.CreateFmt(SDirNotInLocalRoot, [ARootPath]);

      CheckEditMode(dsData.DataSet);
      ARelativePathField.AsString:= DirName;
    end;   { if }
end;

procedure TfmDocItemsEdit.edtRelativePathButtonClick(Sender: TObject);
begin
  inherited;

  if (EditMode <> emReadOnly) and not edtRelativePath.ReadOnly then
    ChooseRelativePath(
      LoginContext.DocsLocalRootPath,
      dsData.DataSet.FieldByName('RELATIVE_PATH'));
end;

procedure TfmDocItemsEdit.edtMirroredRelativePathButtonClick(Sender: TObject);
begin
  inherited;

  if (EditMode <> emReadOnly) and not edtMirroredRelativePath.ReadOnly then
    ChooseRelativePath(
      LoginContext.DocItemMirrorsRootPath,
      dsData.DataSet.FieldByName('MIRRORED_RELATIVE_PATH'));
end;

procedure TfmDocItemsEdit.Initialize;
begin
  inherited;
  RegisterDateFields(cdsExtFileChangeDate);
  UpdateExtFileChangeDateField;
  drpImportFromFile.Control:= Self;
end;

function TfmDocItemsEdit.IsDocItemSysRolesDefault: Boolean;
begin
  Result:=
    (dmDocClient.cdsDocItemSysRoles.RecordCount = 1) and
    (dmDocClient.cdsDocItemSysRolesSYS_ROLE_CODE.AsInteger = DefaultSysRoleCode) and
    (dmDocClient.cdsDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE.AsInteger = Ord(dialEdit));
end;

function TfmDocItemsEdit.IsInDevelopPhase: Boolean;
begin
  Result:=
    not dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull;
end;

procedure TfmDocItemsEdit.actFormUpdate(Sender: TObject);
var
  c: TColor;
  DocItemStorageBaseType: TDocItemStorageBaseType;
  ExternalFileStorageControlsEnabled: Boolean;
  ExternalFileStorageControlsReadOnly: Boolean;
  ExternalDocStorageControlsEnabled: Boolean;
  ExternalDocStorageControlsReadOnly: Boolean;
begin
  inherited;
  c:= ReadOnlyColors[EditMode = emReadOnly];

  edtDocItemNo.Color:= c;
  cbDocItemType.Color:= c;
  edtDocItemName.Color:= c;
  edtNotes.Color:= c;
  cbPattern.Color:= c;

  SetControlReadOnly(
    (EditMode = emReadOnly) or not dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull,
    cbDocItemStorageType);

  DocItemStorageBaseType:=
    dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType;

  pnlConvertExternalDocItemToInternal.Visible:=
    LoginContext.AllowInternallyStoredDoc and
    (EditMode <> emInsert) and
    (DocItemStorageBaseType = disbtExternal);

  pnlExternalFileStorage.Visible:= (DocItemStorageBaseType = disbtExternal);
  pnlInternalFileStorage.Visible:= (DocItemStorageBaseType = disbtInternal);
  pnlExternalDocStorage.Visible:= (DocItemStorageBaseType = disbtCommandStorage);
  pnlContentStorage.Visible:= (DocItemStorageBaseType = disbtContentStorage);

  chkIsMirrored.Visible:= (DocItemStorageBaseType = disbtInternal);

  chkIsMirrored.Enabled:=
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull and
    GetDocOwnerCanMirrorStoredFiles(dmDocClient.OpenDocOwnerType);

  pnlMirroredDocItemPaths.Visible:= chkIsMirrored.Checked;
  cbPattern.Visible:= not chkIsMirrored.Checked;
  lblPattern.Visible:= not chkIsMirrored.Checked;

  ExternalFileStorageControlsEnabled:=
    not dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').IsNull and
    not dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull;

  ExternalFileStorageControlsReadOnly:=
    not dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull;

  edtFileName.Enabled:= ExternalFileStorageControlsEnabled;
  edtFileName.ReadOnly:= ExternalFileStorageControlsReadOnly;
  edtRelativePath.Enabled:= ExternalFileStorageControlsEnabled;
  edtRelativePath.ReadOnly:= ExternalFileStorageControlsReadOnly;
  edtMirroredFileName.Enabled:= ExternalFileStorageControlsEnabled;
  edtMirroredFileName.ReadOnly:= ExternalFileStorageControlsReadOnly;
  edtMirroredRelativePath.Enabled:= ExternalFileStorageControlsEnabled;
  edtMirroredRelativePath.ReadOnly:= ExternalFileStorageControlsReadOnly;

  edtFileName.Color:= ReadOnlyColors[ExternalFileStorageControlsReadOnly];
  edtRelativePath.Color:= ReadOnlyColors[ExternalFileStorageControlsReadOnly];
  edtMirroredFileName.Color:= ReadOnlyColors[ExternalFileStorageControlsReadOnly];
  edtMirroredRelativePath.Color:= ReadOnlyColors[ExternalFileStorageControlsReadOnly];

  ExternalDocStorageControlsEnabled:= ExternalFileStorageControlsEnabled;
  ExternalDocStorageControlsReadOnly:=
    ExternalFileStorageControlsReadOnly or
    not ExternalDocStorageControlsEnabled or
    (dsData.DataSet.FieldByName('_DI_STORAGE_TYPE_SELECT_COMMAND').AsString <> '');

  edtExternalStorageDocId.Enabled:= ExternalDocStorageControlsEnabled;
  SetControlReadOnly(ExternalDocStorageControlsReadOnly, edtExternalStorageDocId);

  btnExternalDocStorageEdit.Visible:= (dsData.DataSet.FieldByName('_DI_STORAGE_TYPE_EDIT_COMMAND').AsString <> '');
  pnlExternalStorageDocIdButtons.Visible:= (dsData.DataSet.FieldByName('_DI_STORAGE_TYPE_SELECT_COMMAND').AsString <> '');

  if IsDocItemSysRolesDefault then
    begin
      pnlIsDocItemSysRolesDefault.Hint:= SDocItemSysRolesDefault;
      pnlIsDocItemSysRolesDefault.Color:= clSilver;
    end
  else
    begin
      pnlIsDocItemSysRolesDefault.Hint:= SDocItemSysRolesChanged;
      pnlIsDocItemSysRolesDefault.Color:= clRed;
    end;

  pnlDevelop.Enabled:= (EditMode <> emReadOnly);
end;

procedure TfmDocItemsEdit.actEditStoredFileDataExecute(Sender: TObject);
begin
  inherited;

  with dsData.DataSet do
    if State in dsEditModes then
      UpdateRecord;

  dmDocClient.ExecInternalDocItemData(dietOpenForEdit);
end;

procedure TfmDocItemsEdit.actEditStoredFileDataUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').IsNull and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtInternal) and
    not dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull and
    not dsData.DataSet.FieldByName('FILE_EXTENSION_CODE').IsNull;
end;

procedure TfmDocItemsEdit.actImportFromTemplateExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.ImportInternalDocItemDataFromTemplate;
end;

procedure TfmDocItemsEdit.actImportFromTemplateUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').IsNull and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtInternal) and
    dsData.DataSet.FieldByName('FILE_EXTENSION_CODE').IsNull and
    not dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull;
end;

procedure TfmDocItemsEdit.actOpenStoredFileReadOnlyExecute(Sender: TObject);
begin
  inherited;

  with dsData.DataSet do
    if State in dsEditModes then
      UpdateRecord;

  dmDocClient.ExecDocItemDataReadOnly;
end;

procedure TfmDocItemsEdit.actOpenStoredFileReadOnlyUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').IsNull and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtInternal);
end;

procedure TfmDocItemsEdit.actExternalDocStorageEditExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.ExecExternalDocStorage(edscEdit);
end;

procedure TfmDocItemsEdit.actExternalDocStorageEditUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtCommandStorage) and
    not dsData.DataSet.FieldByName('FILE_NAME').IsNull and
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull;
end;

procedure TfmDocItemsEdit.actExternalDocStorageSelectExecute(Sender: TObject);
begin
  inherited;

  if ControlIsPressed or ShiftIsPressed then
    cdsExternalStorageDocId.TempCreateDataSet/
      procedure begin
        cdsExternalStorageDocId.SafeAppend/
          cdsExternalStorageDocIdDOC_ID.AssignProc(dsData.DataSet.FieldByName('FILE_NAME'));

        TfmExternalDocStorageDocId.ShowForm(nil, cdsExternalStorageDocId, emReadOnly);
      end
  else
    dmDocClient.ExecExternalDocStorage(edscSelect);
end;

procedure TfmDocItemsEdit.actExternalDocStorageSelectUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtCommandStorage) and
    not dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull;
end;

procedure TfmDocItemsEdit.actExternalDocStorageViewExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.ExecExternalDocStorage(edscView);
end;

procedure TfmDocItemsEdit.actExternalDocStorageViewUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtCommandStorage) and
    not dsData.DataSet.FieldByName('FILE_NAME').IsNull;
end;

procedure TfmDocItemsEdit.actImportFromFileExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.ImportInternalDocItemDataFromFile;
end;

procedure TfmDocItemsEdit.actImportFromFileUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').IsNull and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtInternal) and
    dsData.DataSet.FieldByName('FILE_EXTENSION_CODE').IsNull and
    not dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull;
end;

procedure TfmDocItemsEdit.actExportToFileExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.ExportInternalDocItemDataToFile;
end;

procedure TfmDocItemsEdit.actExportToFileUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').IsNull and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtInternal) and
    not dsData.DataSet.FieldByName('FILE_EXTENSION_CODE').IsNull;
end;

function TfmDocItemsEdit.ExternalFileName: string;
var
  RelativePath: string;
begin
  RelativePath:= dsData.DataSet.FieldByName('RELATIVE_PATH').AsString;

  if (Length(RelativePath) = 0) or (RelativePath[1] <> PathDelim) then
    RelativePath:= PathDelim + RelativePath;

  Result:=
    MakeFileName(
      ExcludeTrailingPathDelimiter(LoginContext.DocsLocalRootPath) + RelativePath,
      dsData.DataSet.FieldByName('FILE_NAME').AsString);
end;

procedure TfmDocItemsEdit.actExternalFileDeleteExecute(Sender: TObject);
begin
  inherited;

  if (MessageDlgEx(SDeleteExternalFileQuestion, mtConfirmation, mbOKCancel, 0) = mrOk) then
    begin
      if (dsData.DataSet.State in dsEditModes) then
        dsData.DataSet.UpdateRecord;

      if not DeleteFile(ExternalFileName) then
        raise Exception.Create(SExternalFileCouldNotBeDeleted);

      UpdateExtFileChangeDateField;
    end;  { if }
end;

procedure TfmDocItemsEdit.actExternalFileDeleteUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtExternal) and
    IsInDevelopPhase;
end;

procedure TfmDocItemsEdit.actExternalFileEditExecute(Sender: TObject);
begin
  inherited;
  if (dsData.DataSet.State in dsEditModes) then
    dsData.DataSet.UpdateRecord;

  if not FileExists(ExternalFileName) then
    raise Exception.Create(SExternalFileDoesNotExist);

  dmDocClient.ExecExternalDocItemData(True);
end;

procedure TfmDocItemsEdit.actExternalFileEditUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtExternal) and
    not dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull;
end;

procedure TfmDocItemsEdit.actExternalFileExportExecute(Sender: TObject);
var
  FileExtension: string;
begin
  inherited;

  if (dsData.DataSet.State in dsEditModes) then
    dsData.DataSet.UpdateRecord;

  if not FileExists(ExternalFileName) then
    raise Exception.Create(SExternalFileDoesNotExist);

  FileExtension:= ExtractFileExt(dsData.DataSet.FieldByName('FILE_NAME').AsString);
  FileExtension:= Copy(FileExtension, 2, Length(FileExtension) - 1);

  sdExternalFileExport.DefaultExt:= FileExtension;

  sdExternalFileExport.Filter:=
    dmMain.SvrDoc.GetDocItemTypeFileDialogFilter(dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').AsInteger);

  if sdExternalFileExport.Execute then
    if not CopyFile(PChar(ExternalFileName), PChar(sdExternalFileExport.FileName), False) then
      raise Exception.CreateFmt(SCouldNotCreateFile, [sdExternalFileExport.FileName]);
end;

procedure TfmDocItemsEdit.actExternalFileExportUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtExternal);
end;

procedure TfmDocItemsEdit.actExternalFileImportExecute(Sender: TObject);
var
  FileExtension: string;
begin
  inherited;

  if (dsData.DataSet.State in dsEditModes) then
    dsData.DataSet.UpdateRecord;

  if FileExists(ExternalFileName) then
    raise Exception.CreateFmt(SExternalFileExists, [SImport]);

  FileExtension:= ExtractFileExt(dsData.DataSet.FieldByName('FILE_NAME').AsString);
  FileExtension:= Copy(FileExtension, 2, Length(FileExtension) - 1);

  odExternalFileImport.DefaultExt:= FileExtension;

  odExternalFileImport.Filter:=
    dmMain.SvrDoc.GetDocItemTypeFileDialogFilter(dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').AsInteger);

  if odExternalFileImport.Execute then
    if not CopyFile(PChar(odExternalFileImport.FileName), PChar(ExternalFileName), False) then
      raise Exception.CreateFmt(SCouldNotCreateFile, [ExternalFileName]);

  UpdateExtFileChangeDateField;
end;

procedure TfmDocItemsEdit.actExternalFileImportUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtExternal) and
    IsInDevelopPhase;
end;

procedure TfmDocItemsEdit.UpdateExtFileChangeDateField;
var
  ExternalFileChangeDate: TDateTime;
begin
  if cdsExtFileChangeDate.Active then
    cdsExtFileChangeDate.SafeEdit/
      procedure begin
        if (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtExternal) AND
           (ExtractFileName(ExternalFileName) <> '') and FileExists(ExternalFileName) then
          begin
            FileAge(ExternalFileName, ExternalFileChangeDate);
            cdsExtFileChangeDateEXT_FILE_CHANGE_DATE.AsDateTime:= DateOf(ExternalFileChangeDate);
          end
        else
          cdsExtFileChangeDateEXT_FILE_CHANGE_DATE.Clear;
      end;
end;

procedure TfmDocItemsEdit.actExternalFileNewFromTemplateExecute(
  Sender: TObject);
var
  ChosenTemplateCode: Integer;
  StoredFileBranchCode: Integer;
  StoredFileCode: Integer;
begin
  inherited;

  if (dsData.DataSet.State in dsEditModes) then
    dsData.DataSet.UpdateRecord;

  if FileExists(ExternalFileName) then
    raise Exception.CreateFmt(SExternalFileExists, [SNewFromTemplate]);

  ChosenTemplateCode:=
    TfmSelectDocItemTemplate.ShowForm(
      GetDocOwnerTypeTemplateType(dmDocClient.OpenDocOwnerType),
      dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').AsInteger);

  if (ChosenTemplateCode > 0) then
    begin
      dmMain.SvrDoc.GetDocItemTemplateStoredFile(
        ChosenTemplateCode,
        StoredFileBranchCode,
        StoredFileCode);

      WriteVarArrayToFile(
        dmDocClient.GetStoredFileData(StoredFileBranchCode, StoredFileCode),
        ExternalFileName);

      UpdateExtFileChangeDateField;
    end;  { if }
end;

procedure TfmDocItemsEdit.actExternalFileNewFromTemplateUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtExternal) and
    IsInDevelopPhase;
end;

procedure TfmDocItemsEdit.actExternalFileOpenExecute(Sender: TObject);
begin
  inherited;

  if (dsData.DataSet.State in dsEditModes) then
    dsData.DataSet.UpdateRecord;

  if not FileExists(ExternalFileName) then
    raise Exception.Create(SExternalFileDoesNotExist);

  dmDocClient.ExecExternalDocItemData;
end;

procedure TfmDocItemsEdit.actExternalFileOpenUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtExternal);
end;

procedure TfmDocItemsEdit.actClearExternalStorageDocIdExecute(Sender: TObject);
begin
  inherited;
  ConfirmAction(SConfirmClearingExternalDocStorageDocId);
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('FILE_NAME').Clear;
end;

procedure TfmDocItemsEdit.actClearExternalStorageDocIdUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtCommandStorage) and
    not dsData.DataSet.FieldByName('FILE_NAME').IsNull and
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull;
end;

procedure TfmDocItemsEdit.actClearStoredFileExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.ClearInternalDocItemData;
end;

procedure TfmDocItemsEdit.actClearStoredFileUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtInternal) and
    not dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull and
    not dsData.DataSet.FieldByName('FILE_EXTENSION_CODE').IsNull;
end;

procedure TfmDocItemsEdit.actDevelopExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  if (EditMode = emReadOnly) or (Sender as TAction).Checked then
    Exit;

  LoginContext.CheckUserActivity(uaDevelopDocItem);

  if (dsData.DataSet.FieldByName('APPROVE_EMPLOYEE_CODE').AsInteger <> 0) then
    LoginContext.CheckUserActivity(uaUnapproveDocItem);

  if (dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').AsInteger <> 0) then
    LoginContext.CheckUserActivity(uaUnauthorizeDocItem);

  CheckEditMode(dsData.DataSet);
  dsData.DataSet.UpdateRecord;
  dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
  dsData.DataSet.FieldByName('DEVELOP_DATE').AsDateTime:= ContextDate();
  dsData.DataSet.FieldByName('DEVELOP_TIME').AsDateTime:= ContextTime();
  dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').Clear;
  dsData.DataSet.FieldByName('AUTHORIZE_DATE').Clear;
  dsData.DataSet.FieldByName('AUTHORIZE_TIME').Clear;
  dsData.DataSet.FieldByName('APPROVE_EMPLOYEE_CODE').Clear;
  dsData.DataSet.FieldByName('APPROVE_DATE').Clear;
  dsData.DataSet.FieldByName('APPROVE_TIME').Clear;
end;

procedure TfmDocItemsEdit.actDevelopUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Checked:=
    not dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull;

  btnDevelop.Down:= (Sender as TAction).Checked;
end;

procedure TfmDocItemsEdit.actDocItemSysRolesExecute(Sender: TObject);
var
  DocItemSysRolesEditMode: TEditMode;
begin
  inherited;

  LoginContext.CheckUserActivity(uaDocItemSysRoles);

  dmDocClient.cdsDocItems.CheckBrowseMode;
  
  if (EditMode = emInsert) then
    DocItemSysRolesEditMode:= emEdit
  else
    DocItemSysRolesEditMode:= EditMode;

  TfmDocItemSysRoles.ShowForm(dmDocClient, nil, DocItemSysRolesEditMode);
end;

procedure TfmDocItemsEdit.actAuthorizeExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  if (EditMode = emReadOnly) or (Sender as TAction).Checked then
    Exit;

  LoginContext.CheckUserActivity(uaAuthorizeDocItem);

  if (dsData.DataSet.FieldByName('APPROVE_EMPLOYEE_CODE').AsInteger <> 0) then
    LoginContext.CheckUserActivity(uaUnapproveDocItem);

  CheckEditMode(dsData.DataSet);
  dsData.DataSet.UpdateRecord;

  if ( (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtExternal) and
       ( (dsData.DataSet.FieldByName('FILE_NAME').AsString = '') or
         (dsData.DataSet.FieldByName('RELATIVE_PATH').AsString = ''))
     ) or
     ( dsData.DataSet.FieldByName('IS_MIRRORED').AsBoolean and
       ( (dsData.DataSet.FieldByName('MIRRORED_FILE_NAME').AsString = '') or
         (dsData.DataSet.FieldByName('MIRRORED_RELATIVE_PATH').AsString = ''))
     ) then
    begin
      raise Exception.Create(SAuthorizeFileNameAndPathRequired);
    end;  { if }

  if (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtCommandStorage) and
     (dsData.DataSet.FieldByName('FILE_NAME').AsString = '') then
    begin
      raise Exception.Create(SAuthorizeExternalDocIdRequired);
    end;  { if }

  dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
  dsData.DataSet.FieldByName('AUTHORIZE_DATE').AsDateTime:= ContextDate();
  dsData.DataSet.FieldByName('AUTHORIZE_TIME').AsDateTime:= ContextTime();
  dsData.DataSet.FieldByName('APPROVE_EMPLOYEE_CODE').Clear;
  dsData.DataSet.FieldByName('APPROVE_DATE').Clear;
  dsData.DataSet.FieldByName('APPROVE_TIME').Clear;
end;

procedure TfmDocItemsEdit.actAuthorizeUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull and
    ( (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType in [disbtExternal, disbtCommandStorage, disbtContentStorage]) or
      not dsData.DataSet.FieldByName('FILE_EXTENSION_CODE').IsNull );

  (Sender as TAction).Checked:=
    not dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('APPROVE_EMPLOYEE_CODE').IsNull;

  btnAuthorize.Down:= (Sender as TAction).Checked;
end;

procedure TfmDocItemsEdit.actApproveExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  if (EditMode = emReadOnly) or (Sender as TAction).Checked then
    Exit;

  LoginContext.CheckUserActivity(uaApproveDocItem);

  CheckEditMode(dsData.DataSet);
  dsData.DataSet.UpdateRecord;
  dsData.DataSet.FieldByName('APPROVE_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
  dsData.DataSet.FieldByName('APPROVE_DATE').AsDateTime:= ContextDate();
  dsData.DataSet.FieldByName('APPROVE_TIME').AsDateTime:= ContextTime();
end;

procedure TfmDocItemsEdit.actApproveUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull and
    ( (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType in [disbtExternal, disbtCommandStorage, disbtContentStorage]) or
      not dsData.DataSet.FieldByName('FILE_EXTENSION_CODE').IsNull );

  (Sender as TAction).Checked:=
    not dsData.DataSet.FieldByName('APPROVE_EMPLOYEE_CODE').IsNull;

  btnApprove.Down:= (Sender as TAction).Checked;
end;

procedure TfmDocItemsEdit.cbDocItemStorageTypeChange(Sender: TObject);
begin
  inherited;
  if Assigned(cbDocItemStorageType.DataSource) and
     Assigned(cbDocItemStorageType.DataSource.DataSet) and
     (cbDocItemStorageType.DataSource.DataSet.State in dsEditModes) then
    begin
      with cbDocItemStorageType.DataSource.DataSet do
        begin
          UpdateRecord;
          FieldByName('AUTHORIZE_EMPLOYEE_CODE').Clear;
          FieldByName('AUTHORIZE_DATE').Clear;
          FieldByName('AUTHORIZE_TIME').Clear;
          FieldByName('APPROVE_EMPLOYEE_CODE').Clear;
          FieldByName('APPROVE_DATE').Clear;
          FieldByName('APPROVE_TIME').Clear;
        end;  { with }
    end;
end;

procedure TfmDocItemsEdit.FormCreate(Sender: TObject);
begin
  inherited;

  cdsEmployeeFrameAllEmployees.Open;

  frDevelopDate.FieldNames:= 'DEVELOP_DATE';
  frAuthorizeDate.FieldNames:= 'AUTHORIZE_DATE';
  frApproveDate.FieldNames:= 'APPROVE_DATE';
  frDevelopEmployee.FieldNames:= 'DEVELOP_EMPLOYEE_CODE';
  frDevelopEmployee.DocButtonVisible:= False;
  frDevelopEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;
  frAuthorizeEmployee.FieldNames:= 'AUTHORIZE_EMPLOYEE_CODE';
  frAuthorizeEmployee.DocButtonVisible:= False;
  frAuthorizeEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;
  frApproveEmployee.FieldNames:= 'APPROVE_EMPLOYEE_CODE';
  frApproveEmployee.DocButtonVisible:= False;
  frApproveEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;

  frStoredFileChangeDate.FieldNames:= 'FILE_CHANGE_DATE';
  frStoredFileChangeEmployee.FieldNames:= 'FILE_CHANGE_EMPLOYEE_CODE';
  frStoredFileChangeEmployee.DocButtonVisible:= False;
  frStoredFileChangeEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;

  frContentStorageFileChangeDate.FieldNames:= 'FILE_CHANGE_DATE';
  frContentStorageFileChangeEmployee.FieldNames:= 'FILE_CHANGE_EMPLOYEE_CODE';
  frContentStorageFileChangeEmployee.DocButtonVisible:= False;
  frContentStorageFileChangeEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;

  edtDocsLocalRootPath.Text:= LoginContext.DocsLocalRootPath;
  edtDocItemMirrorsRootPath.Text:= LoginContext.DocItemMirrorsRootPath;

  FSaveApplicationHintPause:= Application.HintPause;
end;

procedure TfmDocItemsEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  Application.HintPause:= FSaveApplicationHintPause;
end;

procedure TfmDocItemsEdit.imgTimeMouseEnter(Sender: TObject);
begin
  inherited;
  Application.HintPause:= 0;
end;

procedure TfmDocItemsEdit.imgTimeMouseLeave(Sender: TObject);
begin
  inherited;
  Application.HintPause:= FSaveApplicationHintPause;
end;

procedure TfmDocItemsEdit.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDevelopDate) or
     (AFrame = frAuthorizeDate) or
     (AFrame = frApproveDate) or
     (AFrame = frDevelopEmployee) or
     (AFrame = frAuthorizeEmployee) or
     (AFrame = frApproveEmployee) or
     (AFrame = frStoredFileChangeEmployee) or
     (AFrame = frStoredFileChangeDate) or
     (AFrame = frContentStorageFileChangeDate) or
     (AFrame = frContentStorageFileChangeEmployee) then
    AFrame.ReadOnly:= True
  else
    inherited;
end;

procedure TfmDocItemsEdit.actContentStorageFileDeleteExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.ClearContentStorage;
end;

procedure TfmDocItemsEdit.actContentStorageFileDeleteUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').IsNull and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtContentStorage) and
    not dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull and
    not dsData.DataSet.FieldByName('FILE_NAME').IsNull;
end;

procedure TfmDocItemsEdit.actContentStorageFileExportExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.ExportContentStorageFile;
end;

procedure TfmDocItemsEdit.actContentStorageFileExportUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').IsNull and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtContentStorage) and
    not dsData.DataSet.FieldByName('FILE_NAME').IsNull;
end;

procedure TfmDocItemsEdit.actContentStorageFileImportExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.ImportContentStorageFromFile;
end;

procedure TfmDocItemsEdit.actContentStorageFileImportFromTemplateExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.ImportContentStorageFromTemplate;
end;

procedure TfmDocItemsEdit.actContentStorageFileImportFromTemplateUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').IsNull and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtContentStorage) and
    not dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull;
end;

procedure TfmDocItemsEdit.actContentStorageFileImportUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').IsNull and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtContentStorage) and
    not dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull;
end;

procedure TfmDocItemsEdit.actContentStorageFileOpenExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.ExecContentStorage(dietOpenForEdit);
end;

procedure TfmDocItemsEdit.actContentStorageFileOpenReadOnlyExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.ExecDocItemDataReadOnly;
end;

procedure TfmDocItemsEdit.actContentStorageFileOpenReadOnlyUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').IsNull and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtContentStorage) and
    not dsData.DataSet.FieldByName('FILE_NAME').IsNull;
end;

procedure TfmDocItemsEdit.actContentStorageFileOpenUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').IsNull and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtContentStorage) and
    not dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull and
    not dsData.DataSet.FieldByName('FILE_NAME').IsNull;
end;

procedure TfmDocItemsEdit.actConvertExternalDocItemToInternalExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.ConvertExternalDocItemToInternal;
end;

procedure TfmDocItemsEdit.actConvertExternalDocItemToInternalUpdate(
  Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not dsData.DataSet.FieldByName('DOC_ITEM_TYPE_CODE').IsNull and
    (dsData.DataSet.FieldByName('_DI_STORAGE_BASE_TYPE_CODE').AsDocItemStorageBaseType = disbtExternal) and
    not dsData.DataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull;
end;

end.


