unit fDocExcelExport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls,
  Buttons, ExtCtrls, AbmesFields, fBevelEditForm, AbmesDBCheckBox, JvToolEdit,
  Mask, JvExMask, AppEvnts, uDocUtils, uUtils, fBaseFrame, fDBFrame,
  fDualGridFrame, System.Actions, JvExExtCtrls, JvExtComponent, JvDBRadioPanel;

type
  TDocExcelExportType = (deetNone, deetNormal, deetWithDocs);

  TDocItemsExportConfig = record
    DocItemStates: TDocItemStates;
    IncludeInactive: Boolean;
    DNCOnly: Boolean;
    ExcludedDocItemTypeCodes: TArray<Integer>;
    ExportForEdit: Boolean;
    IncludeFileName: Boolean;
    RelativeFilePath: Boolean;
    IncludeFileContents: Boolean;
  end;

type
  [CanEditOuterDataSet(False)]
  TfmDocExcelExport = class(TBevelEditForm)
    cdsDataFILE_NAME: TAbmesWideStringField;
    cdsDataDNC_ONLY: TAbmesFloatField;
    cdsDataINTERNAL_DOCS_DUMP_DIR: TAbmesWideStringField;
    edtXLSFileName: TJvFilenameEdit;
    lblXLSFileName: TLabel;
    cdsDataEXPORT_DOCS: TAbmesFloatField;
    gbExportDocs: TGroupBox;
    lblInternalDocsDumpDir: TLabel;
    edtInternalDocsDumpDir: TJvDirectoryEdit;
    pnlExportDocsCheckBox: TPanel;
    chbExportDocs: TAbmesDBCheckBox;
    actDumpDirAsXLSFile: TAction;
    btnDumpDirAsXLSFile: TSpeedButton;
    ApplicationEvents: TApplicationEvents;
    cdsDataDOC_ITEM_IS_DEVELOPED: TAbmesFloatField;
    cdsDataDOC_ITEM_IS_AUTHORIZED: TAbmesFloatField;
    cdsDataDOC_ITEM_IS_APPROVED: TAbmesFloatField;
    gbStates: TGroupBox;
    chbDeveloped: TAbmesDBCheckBox;
    chbAuthorized: TAbmesDBCheckBox;
    chbApproved: TAbmesDBCheckBox;
    gbDNCOnly: TGroupBox;
    chbDNCOnly: TAbmesDBCheckBox;
    gbOptions: TGroupBox;
    chbExportForEdit: TAbmesDBCheckBox;
    cdsDataEXPORT_FOR_EDIT: TAbmesFloatField;
    gbExcludedDocItemTypes: TGroupBox;
    frDocItemTypes: TDualGridFrame;
    cdsExcludedDocItemTypes: TAbmesClientDataSet;
    cdsDocItemTypes: TAbmesClientDataSet;
    cdsDocItemTypesDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsDocItemTypesDOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    cdsDocItemTypesDOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField;
    cdsExcludedDocItemTypesDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsExcludedDocItemTypesDOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    cdsExcludedDocItemTypesDOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField;
    chbIncludeFileName: TAbmesDBCheckBox;
    cdsDataINCLUDE_FILE_NAME: TAbmesFloatField;
    cdsDataINCLUDE_INACTIVE: TAbmesFloatField;
    chbIncludeInacitve: TAbmesDBCheckBox;
    gbRelativeFilePath: TGroupBox;
    rgRelativeFilePath: TJvDBRadioPanel;
    cdsDataRELATIVE_FILE_PATH: TAbmesFloatField;
    chbIncludeFileContents: TAbmesDBCheckBox;
    cdsDataINCLUDE_FILE_CONTENTS: TAbmesFloatField;
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure actDumpDirAsXLSFileExecute(Sender: TObject);
    procedure actDumpDirAsXLSFileUpdate(Sender: TObject);
    procedure ApplicationEventsMessage(var Msg: tagMSG; var Handled: Boolean);
    procedure edtXLSFileNameBeforeDialog(Sender: TObject; var AName: string;
      var AAction: Boolean);
    procedure frDocItemTypesgrdIncludedDblClick(Sender: TObject);
    procedure frDocItemTypesgrdExcludedDblClick(Sender: TObject);
  private
    FDNCOnlyDefault: Boolean;
    FFileName: string;
    FExportDocs: Boolean;
    FDocsDir: string;
    FDocItemsExportConfig: TDocItemsExportConfig;
    FAppendToFile: Boolean;
  protected
    procedure DoApplyUpdates; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure Initialize; override;
    class function ShowForm(var FileName: string; out DocsDir: string;
      out DocItemsExportConfig: TDocItemsExportConfig;
      ADNCOnlyDefault: Boolean = False): TDocExcelExportType;
  end;

implementation

uses
  dDocClient, uClientTypes, uJvComboEditFixer, uExcelExport, StrUtils, dMain,
  uDocClientUtils;

{$R *.dfm}

{ TfmDocExcelExport }

procedure TfmDocExcelExport.actDumpDirAsXLSFileExecute(Sender: TObject);
begin
  inherited;
  edtInternalDocsDumpDir.Directory:= ExtractFilePath(edtXLSFileName.FileName);
end;

procedure TfmDocExcelExport.actDumpDirAsXLSFileUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsDataEXPORT_DOCS.AsBoolean;
end;

procedure TfmDocExcelExport.actFormUpdate(Sender: TObject);
begin
  inherited;
  edtInternalDocsDumpDir.Enabled:= cdsDataEXPORT_DOCS.AsBoolean;
  chbDNCOnly.Enabled:= cdsDataEXPORT_DOCS.AsBoolean;
  chbDeveloped.Enabled:= cdsDataEXPORT_DOCS.AsBoolean;
  chbAuthorized.Enabled:= cdsDataEXPORT_DOCS.AsBoolean;
  chbApproved.Enabled:= cdsDataEXPORT_DOCS.AsBoolean;
  chbExportForEdit.Enabled:= cdsDataEXPORT_DOCS.AsBoolean;
  chbIncludeFileName.Enabled:= cdsDataEXPORT_DOCS.AsBoolean;
  chbIncludeFileContents.Enabled:= cdsDataEXPORT_DOCS.AsBoolean;
  chbIncludeInacitve.Enabled:= cdsDataEXPORT_DOCS.AsBoolean;
  rgRelativeFilePath.Enabled:= cdsDataEXPORT_DOCS.AsBoolean;
  frDocItemTypes.Enabled:= not frDocItemTypes.ReadOnly;
end;

procedure TfmDocExcelExport.ApplicationEventsMessage(var Msg: tagMSG;
  var Handled: Boolean);
begin
  inherited;
  edtXLSFileName.OnMessage(Msg, Handled);
  edtInternalDocsDumpDir.OnMessage(Msg, Handled);
end;

procedure TfmDocExcelExport.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataINTERNAL_DOCS_DUMP_DIR.AsString:= GetAppTempPath();
  cdsDataDNC_ONLY.AsBoolean:= FDNCOnlyDefault;
  cdsDataEXPORT_DOCS.AsBoolean:= False;
  cdsDataDOC_ITEM_IS_DEVELOPED.AsBoolean:= False;
  cdsDataDOC_ITEM_IS_AUTHORIZED.AsBoolean:= False;
  cdsDataDOC_ITEM_IS_APPROVED.AsBoolean:= True;
  cdsDataEXPORT_FOR_EDIT.AsBoolean:= False;
  cdsDataINCLUDE_FILE_NAME.AsBoolean:= False;
  cdsDataINCLUDE_INACTIVE.AsBoolean:= False;
  cdsDataRELATIVE_FILE_PATH.AsBoolean:= False;
  cdsDataINCLUDE_FILE_CONTENTS.AsBoolean:= False;
end;

procedure TfmDocExcelExport.CloseDataSets;
begin
  inherited;
  cdsDocItemTypes.Close;
  cdsExcludedDocItemTypes.Close;
end;

procedure TfmDocExcelExport.DoApplyUpdates;
begin
  cdsDataFILE_NAME.AsString:= edtXLSFileName.FileName;
  cdsDataINTERNAL_DOCS_DUMP_DIR.AsString:= edtInternalDocsDumpDir.Directory;

  inherited;

  FFileName:= ChangeFileExt(cdsDataFILE_NAME.AsString, LowerCase(ExtractFileExt(cdsDataFILE_NAME.AsString)));
  FExportDocs:= cdsDataEXPORT_DOCS.AsBoolean;
  FDocsDir:= cdsDataINTERNAL_DOCS_DUMP_DIR.AsString;

  FDocItemsExportConfig.DocItemStates:= [];
  if cdsDataDOC_ITEM_IS_DEVELOPED.AsBoolean then
    FDocItemsExportConfig.DocItemStates:= FDocItemsExportConfig.DocItemStates + [disDeveloped];
  if cdsDataDOC_ITEM_IS_AUTHORIZED.AsBoolean then
    FDocItemsExportConfig.DocItemStates:= FDocItemsExportConfig.DocItemStates + [disAuthorized];
  if cdsDataDOC_ITEM_IS_APPROVED.AsBoolean then
    FDocItemsExportConfig.DocItemStates:= FDocItemsExportConfig.DocItemStates + [disApproved];

  FDocItemsExportConfig.DNCOnly:= cdsDataDNC_ONLY.AsBoolean;
  FDocItemsExportConfig.ExportForEdit:= cdsDataEXPORT_FOR_EDIT.AsBoolean;
  FDocItemsExportConfig.IncludeFileName:= cdsDataINCLUDE_FILE_NAME.AsBoolean;
  FDocItemsExportConfig.IncludeFileContents:= cdsDataINCLUDE_FILE_CONTENTS.AsBoolean;
  FDocItemsExportConfig.IncludeInactive:= cdsDataINCLUDE_INACTIVE.AsBoolean;
  FDocItemsExportConfig.RelativeFilePath:= cdsDataRELATIVE_FILE_PATH.AsBoolean;

  SetLength(FDocItemsExportConfig.ExcludedDocItemTypeCodes, cdsExcludedDocItemTypes.RecordCount);
  cdsExcludedDocItemTypes.ForEach/
    procedure begin
      FDocItemsExportConfig.ExcludedDocItemTypeCodes[cdsExcludedDocItemTypes.RecNo - 1]:=
        cdsExcludedDocItemTypesDOC_ITEM_TYPE_CODE.AsInteger;
    end;
end;

procedure TfmDocExcelExport.edtXLSFileNameBeforeDialog(Sender: TObject;
  var AName: string; var AAction: Boolean);
var
  FileName: string;
begin
  inherited;

  AAction:= False;

  FileName:= XLSFilePrompt(AName);

  FAppendToFile:= (FileName <> '') and (FileName[1] = '@');
  if FAppendToFile then
    System.Delete(FileName, 1, 1);

  edtXLSFileName.Text:= '"' + FileName + '"';
end;

procedure TfmDocExcelExport.frDocItemTypesgrdExcludedDblClick(Sender: TObject);
begin
  inherited;
  frDocItemTypes.actInclude.Execute;
end;

procedure TfmDocExcelExport.frDocItemTypesgrdIncludedDblClick(Sender: TObject);
begin
  inherited;
  frDocItemTypes.actExclude.Execute;
end;

procedure TfmDocExcelExport.Initialize;
begin
  Assert(EditMode = emInsert);

  inherited;

  edtInternalDocsDumpDir.Directory:= cdsDataINTERNAL_DOCS_DUMP_DIR.AsString;

  edtXLSFileName.DoClick;
  if (edtXLSFileName.Text = '') then
    begin
      PostMessage(Handle, WM_CLOSE, 0, 0);
      Height:= 0;
      Width:= 0;
    end;
end;

procedure TfmDocExcelExport.OpenDataSets;
begin
  inherited;
  cdsDocItemTypes.Open;
  cdsExcludedDocItemTypes.CreateDataSet;
end;

procedure TfmDocExcelExport.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDocItemTypes) then
    begin
      AFrame.ReadOnly:= not cdsDataEXPORT_DOCS.AsBoolean;
      Exit;
    end;

  inherited;
end;

class function TfmDocExcelExport.ShowForm(var FileName: string; out DocsDir: string;
  out DocItemsExportConfig: TDocItemsExportConfig;
  ADNCOnlyDefault: Boolean): TDocExcelExportType;
var
  f: TfmDocExcelExport;
begin
  f:= CreateEx;
  try
    f.SetDataParams(nil, nil, emInsert);
    f.FDNCOnlyDefault:= ADNCOnlyDefault;
    f.edtXLSFileName.Text:= '"' + FileName + '"';

    f.InternalShowForm;

    if f.IsDataModified then
      begin
        FileName:= IfThen(f.FAppendToFile, '@', '') + f.FFileName;

        if f.FExportDocs then
          begin
            Result:= deetWithDocs;
            DocsDir:= f.FDocsDir;
            DocItemsExportConfig:= f.FDocItemsExportConfig;
          end
        else
          begin
            Result:= deetNormal;
            DocsDir:= '';
            DocItemsExportConfig:= Default(TDocItemsExportConfig);
          end;
      end
    else
      Result:= deetNone;
  finally
    f.ReleaseForm;
  end;
end;

end.
