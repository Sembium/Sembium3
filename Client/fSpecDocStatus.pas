unit fSpecDocStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fSpecAndXModelDocStatusAbstract,
  DB, AbmesFields, DBClient, AbmesClientDataSet, JvButtons, ActnList, StdCtrls,
  Buttons, ExtCtrls, uClientTypes, ComCtrls, fBaseFrame,
  fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fProductFieldEditFrameBald,
  fDoc, dDocClient, DBCtrls, fSpecAndXModelUnapproveAbstract, ImgList,
  JvExControls, JvComponent, JvDBLookup, JvCaptionButton, JvComponentBase,
  ToolWin, DBGridEhGrouping, GridsEh, DBGridEh, AbmesDBGrid;

type
  TfmSpecDocStatus = class(TfmSpecAndXModelDocStatusAbstract)
    cdsDataSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsDataqryDSSpecModelVariants: TDataSetField;
    cdsDataqryDSSpecLines: TDataSetField;
    cdsDSLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsDSLinesSPEC_LINE_CODE: TAbmesFloatField;
    cdsDSLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField;
    cdsDSLinesqryDSSpecModelVariantLines: TDataSetField;
    cdsDSSpecModelVariantLines: TAbmesClientDataSet;
    cdsDSSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsDSSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField;
    cdsDSSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsDSSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField;
    cdsDSSpecModelVariantLinesqryDSSpecModel: TDataSetField;
    cdsSpecModelVariants: TAbmesClientDataSet;
    cdsSpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsSpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    pnlLinesTopClient: TPanel;
    lblModelVariant: TLabel;
    cbSpecModelVariant: TJvDBLookupCombo;
    dsSpecModelVariants: TDataSource;
    cdsDSLinesIS_IMPORTED: TAbmesFloatField;
    pnlUpdateImportedSpecButton: TPanel;
    btnUpdateImportedSpec: TSpeedButton;
    actUpdateImportedSpec: TAction;
    cdsDSLinesIS_IMPORTED_SUBDETAIL: TAbmesFloatField;
    cdsDSSpecModelVariantLinesMAIN_DEPT_CODE: TAbmesFloatField;
    cdsDataSPEC_PRODUCT_NAME: TAbmesWideStringField;
    cdsDSLines_SPEC_PRODUCT_NAME: TAbmesWideStringField;
    cdsDataAUTHOR_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataWORK_BRANCH_CODE: TAbmesFloatField;
    cdsDSSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    procedure cdsSpecModelVariantsAfterOpen(DataSet: TDataSet);
    procedure cbSpecModelVariantChange(Sender: TObject);
    procedure cdsDSSpecModelVariantLinesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actModelExecute(Sender: TObject);
    procedure cdsDSLinesCalcFields(DataSet: TDataSet);
    procedure actUpdateImportedSpecUpdate(Sender: TObject);
    procedure actUpdateImportedSpecExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure RefreshDataSets;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsSpecModelVariantsMODEL_VARIANT_IDENTIFIERGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure actDetailSpecDocStatusExecute(Sender: TObject);
    procedure grdLinesGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    FAllowSpecUpdate: Boolean;
    FInsertionsUpdated: Boolean;
    FUpdatesApplied: Boolean;
    FSelectSpecModelVariantNo: Integer;
    procedure UpdateInsertions;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetModelNameFormat: string; override;
    function ApproveCycleNoField: TField; override;
    function GetAllowSpecUpdate: Boolean; override;
    function LineHasApprovedDocItem: Boolean; override;
    procedure UnapproveLineDocItems(UnapproveInfo: TUnapproveInfo; StageNo: Integer); override;
    function LineIdentifier: string; override;
    function CountApproveCycles: Boolean; override;
    function ModelIdentifier: string; override;
    function ForkNo: Integer; override;
    function GetRecordReadOnly: Boolean; override;
    function GetDocFrameReadOnly(ADocFrame: TDBFrame): Boolean; override;
    procedure SpecInsertionsUpdated(ASpecProductCode: Integer); override;
    procedure DoApplyUpdates; override;
    procedure RefreshLinesTree; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient;
      AProductCode: Integer; AEditMode: TEditMode = emEdit;
      AllowSpecUpdate: Boolean = True;
      ASelectSpecModelVariantNo: Integer = 0); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient;
      AProductCode: Integer; AEditMode: TEditMode = emEdit;
      AllowSpecUpdate: Boolean = True;
      AInsertionsUpdated: PBoolean = nil;
      ASelectSpecModelVariantNo: Integer = 0): Boolean;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uUtils, fSpecification, fSpecUnapprove, uDocUtils,
  rSpecDocStatusLines, rSpecDocStatusModel, uUserActivityConsts,
  AbmesDialogs, fAnimatedSplash, fSpecifications, uTreeListUtils;

{$R *.dfm}

resourcestring
  SConfirmUpdateInsertions = 'Имате записани промени по МИИО на този Управляем Обект.' + SLineBreak +
    'Желаете ли да обновите тези промени по всички вмъквания?';
  SModelNameFormat = 'МОДЕл %s %s';
  SConfirmSpecUpdate = 'Потвърдете обновяването';
  SWorkdays = 'раб. дни';

{ TfmSpecDocStatus }

procedure TfmSpecDocStatus.OpenDataSets;
begin
  inherited;
  cdsSpecModelVariants.Open;
  cdsDSLines.Open;
  cdsDSSpecModelVariantLines.Open;
  cdsDSModel.Open;
end;

procedure TfmSpecDocStatus.CloseDataSets;
begin
  cdsDSModel.Close;
  cdsDSSpecModelVariantLines.Close;
  cdsDSLines.Close;
  cdsSpecModelVariants.Close;
  inherited;
end;

function TfmSpecDocStatus.GetModelNameFormat: string;
begin
  Result:= SModelNameFormat;
end;

procedure TfmSpecDocStatus.SetDataParams(AdmDocClient: TdmDocClient;
  AProductCode: Integer; AEditMode: TEditMode;
  AllowSpecUpdate: Boolean; ASelectSpecModelVariantNo: Integer);
begin
  inherited SetDataParams(AdmDocClient, nil, AEditMode);
  cdsData.Params.ParamByName('PRODUCT_CODE').AsInteger:= AProductCode;
  FAllowSpecUpdate:= AllowSpecUpdate;
  FSelectSpecModelVariantNo:= ASelectSpecModelVariantNo;
end;

class function TfmSpecDocStatus.ShowForm(AdmDocClient: TdmDocClient;
  AProductCode: Integer; AEditMode: TEditMode;
  AllowSpecUpdate: Boolean; AInsertionsUpdated: PBoolean;
  ASelectSpecModelVariantNo: Integer): Boolean;
var
  f: TfmSpecDocStatus;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, AProductCode, AEditMode, AllowSpecUpdate, ASelectSpecModelVariantNo);
    f.InternalShowForm;
    Result:= f.IsDataModified;

    if Assigned(AInsertionsUpdated) then
      AInsertionsUpdated^:= f.FInsertionsUpdated;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmSpecDocStatus.cdsSpecModelVariantsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  if not cdsSpecModelVariants.IsEmpty then
    cbSpecModelVariant.KeyValue:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;
end;

procedure TfmSpecDocStatus.cbSpecModelVariantChange(Sender: TObject);
begin
  inherited;
  if cdsDSSpecModelVariantLines.Active then
    grdLines.DataSource.DataSet.TempDisableControls/
      grdLines.DataSource.DataSet.PreserveRecNo/
        cdsDSModel.TempDisableControls/
          procedure begin
            RefilterDataSet(cdsDSSpecModelVariantLines);
            SetLinesApproveCycleNoAndStructureCoefInfo(False);
            RefreshLinesTree;
            RefreshModelTree;
          end;
end;

procedure TfmSpecDocStatus.cdsDSSpecModelVariantLinesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (cdsDSSpecModelVariantLinesSPEC_MODEL_VARIANT_NO.AsInteger =
     StrToIntDef(cbSpecModelVariant.KeyValue, 0));
end;

procedure TfmSpecDocStatus.actModelExecute(Sender: TObject);
begin
  inherited;
  TfmSpecification.ShowForm(nil, cdsData, emReadOnly, True, False, 0, nil,
    cdsDSLinesSPEC_LINE_CODE.AsInteger);
end;

procedure TfmSpecDocStatus.cdsDSLinesCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsDSLines_SHOW_NAME.AsString:=
    Format('%s - %s', [cdsDSLinesNO_AS_TEXT.AsString, cdsDSLinesDETAIL_NAME.AsString]);

  if cdsDSLinesIS_IMPORTED.AsBoolean then
    cdsDSLines_LINE_TYPE_CODE.AsInteger:= cdsDSLines_LINE_TYPE_CODE.AsInteger + 4;

  cdsDSLines_SPEC_PRODUCT_NAME.Assign(cdsDataSPEC_PRODUCT_NAME);
end;

function TfmSpecDocStatus.ApproveCycleNoField: TField;
begin
  Result:= cdsDSSpecModelVariantLinesAPPROVE_CYCLE_NO;
end;

procedure TfmSpecDocStatus.actUpdateImportedSpecUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    FAllowSpecUpdate and
    cdsDSLines.Active and
    cdsDSLinesIS_IMPORTED.AsBoolean and
    (cdsDSLinesIS_IMPORTED_SUBDETAIL.AsInteger = 0);
end;

function TfmSpecDocStatus.GetAllowSpecUpdate: Boolean;
begin
  Result:= FAllowSpecUpdate;
end;

procedure TfmSpecDocStatus.actUpdateImportedSpecExecute(Sender: TObject);
begin
  inherited;

  if (MessageDlgEx(SConfirmSpecUpdate, mtConfirmation, [mbOK, mbCancel], 0) <> mrOK) then
    Abort;

  CheckImmediatelyApplyUpdates;

  RefreshDataSets;
end;

function TfmSpecDocStatus.LineHasApprovedDocItem: Boolean;
var
  ModelVariantLinesBookmark: TBookmark;
  ModelBookmark: TBookmark;
  DocBookmark: Variant;
  SaveFiltered: Boolean;
begin
  Result:= False;

  cdsDSSpecModelVariantLines.DisableControls;
  try
    cdsDSModel.DisableControls;
    try
      ModelVariantLinesBookmark:= cdsDSSpecModelVariantLines.Bookmark;
      ModelBookmark:= cdsDSModel.Bookmark;
      try
        DocBookmark:= dmDocClient.Bookmark;
        try
          SaveFiltered:= cdsDSSpecModelVariantLines.Filtered;
          cdsDSSpecModelVariantLines.Filtered:= False;
          try
            cdsDSSpecModelVariantLines.First;
            while (not cdsDSSpecModelVariantLines.Eof) and (not Result) do
              begin
                Result:= Result or (VarToInt(cdsDSModel_TOTAL_APPROVED_DI_COUNT.AsVariant) > 0);

                cdsDSSpecModelVariantLines.Next;
              end;  { while }
          finally
            cdsDSSpecModelVariantLines.Filtered:= SaveFiltered;
          end;  { try }
        finally
          dmDocClient.Bookmark:= DocBookmark;
        end;  { try }
      finally
        cdsDSSpecModelVariantLines.Bookmark:= ModelVariantLinesBookmark;
        cdsDSModel.Bookmark:= ModelBookmark;
      end;  { try }
    finally
      cdsDSModel.EnableControls;
    end;  { try }
  finally
    cdsDSSpecModelVariantLines.EnableControls;
  end;  { try }
end;

procedure TfmSpecDocStatus.FormCreate(Sender: TObject);
begin
  inherited;
  UnapproveFormClass:= TfmSpecUnapprove;
  LinesReportClass:= TrptSpecDocStatusLines;
  ModelReportClass:= TrptSpecDocStatusModel;
end;

procedure TfmSpecDocStatus.UnapproveLineDocItems(
  UnapproveInfo: TUnapproveInfo; StageNo: Integer);
var
  MainDeptCode: Integer;
  ModelVariantLinesBookmark: TBookmark;
  ModelBookmark: TBookmark;
  SaveFiltered: Boolean;
begin
  inherited;

  if (UnapproveInfo.UnapproveMethod in [umMainDeptModelLineStagesAndOperationsDocs, umAllModelVariantsLineStagesAndOperationsDocs]) then
    begin
      cdsDSSpecModelVariantLines.DisableControls;
      try
        cdsDSModel.DisableControls;
        try
          ModelVariantLinesBookmark:= cdsDSSpecModelVariantLines.Bookmark;
          ModelBookmark:= cdsDSModel.Bookmark;
          try
            MainDeptCode:= cdsDSSpecModelVariantLinesMAIN_DEPT_CODE.AsInteger;

            SaveFiltered:= cdsDSSpecModelVariantLines.Filtered;
            cdsDSSpecModelVariantLines.Filtered:= False;
            try
              cdsDSSpecModelVariantLines.First;
              while not cdsDSSpecModelVariantLines.Eof do
                begin
                  if (UnapproveInfo.UnapproveMethod = umAllModelVariantsLineStagesAndOperationsDocs) or
                     ( (UnapproveInfo.UnapproveMethod = umMainDeptModelLineStagesAndOperationsDocs) and
                       (cdsDSSpecModelVariantLinesMAIN_DEPT_CODE.AsInteger = MainDeptCode) ) then
                    inherited UnapproveLineDocItems(UnapproveInfo, StageNo);

                  cdsDSSpecModelVariantLines.Next;
                end;  { while }
            finally
              cdsDSSpecModelVariantLines.Filtered:= SaveFiltered;
            end;  { try }
          finally
            cdsDSSpecModelVariantLines.Bookmark:= ModelVariantLinesBookmark;
            cdsDSModel.Bookmark:= ModelBookmark;
          end;  { try }
        finally
          cdsDSModel.EnableControls;
        end;  { try }
      finally
        cdsDSSpecModelVariantLines.EnableControls;
      end;  { try }
    end
  else
    inherited UnapproveLineDocItems(UnapproveInfo, StageNo);
end;

function TfmSpecDocStatus.LineIdentifier: string;
begin
  Result:= cdsDSLinesNO_AS_FORMATED_TEXT.AsString;
end;

procedure TfmSpecDocStatus.actDetailSpecDocStatusExecute(Sender: TObject);
begin
//  inherited;
  ShowSpecDocStatus(cdsDSLinesDETAIL_CODE.AsInteger, cdsDSSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO.AsInteger);
end;

procedure TfmSpecDocStatus.actFormUpdate(Sender: TObject);
begin
  inherited;

  case cdsDSModelITEM_TYPE_CODE.AsInteger of
    itStage: frModelDoc.DocOwnerType:= dotSpecStage;
    itOperation: frModelDoc.DocOwnerType:= dotSpecOperation;
  else
    frModelDoc.DocOwnerType:= dotNone;
  end;
end;

function TfmSpecDocStatus.CountApproveCycles: Boolean;
begin
  Result:= LoginContext.CountApproveCycles;
end;

function TfmSpecDocStatus.ModelIdentifier: string;
begin
  Result:= cbSpecModelVariant.Text;
end;

function TfmSpecDocStatus.ForkNo: Integer;
begin
  Result:= 0;
end;

function TfmSpecDocStatus.GetRecordReadOnly: Boolean;
begin
  Result:=
    (inherited GetRecordReadOnly) or
    ( (EditMode = emEdit) and
      (cdsDataWORK_BRANCH_CODE.AsInteger <> LoginContext.LocalBranchCode) ) or
    (not (LoginContext.HasUserActivity(uaEditForeignSpecification) or
          LoginContext.HasUserActivity(uaEditSpecificationModel) or
          (LoginContext.HasUserActivity(uaSpecificationsEdit) and
           (cdsDataAUTHOR_EMPLOYEE_CODE.AsInteger = LoginContext.UserCode))));
end;

procedure TfmSpecDocStatus.grdLinesGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Column.FieldName = '_SHOW_NAME') then
    begin
      if (VarToInt(grdLines.DataSource.DataSet.FieldByName('IS_IMPORTED').AsVariant) = 1) then
        AFont.Color:= clGray
      else
        AFont.Color:= clWindowText;
    end;

  inherited;
end;

procedure TfmSpecDocStatus.Initialize;
begin
  inherited;
  if (FSelectSpecModelVariantNo > 0) then
    cbSpecModelVariant.KeyValue:= FSelectSpecModelVariantNo;
end;

function TfmSpecDocStatus.GetDocFrameReadOnly(
  ADocFrame: TDBFrame): Boolean;
begin
  if (ADocFrame = frLineDoc) then
    Result:=
      not (LoginContext.HasUserActivity(uaEditForeignSpecification) or
           (LoginContext.HasUserActivity(uaSpecificationsEdit) and
            (cdsDataAUTHOR_EMPLOYEE_CODE.AsInteger = LoginContext.UserCode)))
  else
    Result:=
      (not LoginContext.HasUserActivity(uaEditSpecificationModel)) or
      cdsDSLinesIS_IMPORTED.AsBoolean;

  Result:=
    inherited GetDocFrameReadOnly(ADocFrame) or
    Result or
    (EditMode = emReadOnly);
end;

procedure TfmSpecDocStatus.RefreshDataSets;
begin
  Screen.TempCursor(crSQLWait)/
    cdsDSModel.TempDisableControls/
      procedure begin
        cdsDSSpecModelVariantLines.TempDisableControls/
          grdLines.DataSource.DataSet.TempDisableControls/
            cdsDSLines.TempDisableControls/
              cdsDSLines.PreserveRecNo/
                procedure begin
                  dmMain.SvrSpecifications.UpdateSpecificationsImported(
                    cdsDSLinesDETAIL_CODE.AsInteger, cdsDataSPEC_PRODUCT_CODE.AsInteger);

                  CloseDataSets;
                  OpenDataSets;

                  grdLines.DataSource.DataSet.TempDisableControls/
                    procedure begin
                      SetLinesApproveCycleNoAndStructureCoefInfo(False);
                    end;
                end;
        RefreshModelTree;
      end;
end;

procedure TfmSpecDocStatus.RefreshLinesTree;
begin
  grdLines.ConvertToTreeList('SPEC_LINE_CODE', 'PARENT_SPEC_LINE_CODE');
end;

procedure TfmSpecDocStatus.SpecInsertionsUpdated(ASpecProductCode: Integer);
begin
  inherited;

  FInsertionsUpdated:= True;

  if not VarIsNull(cdsDSLines.Lookup('DETAIL_CODE', ASpecProductCode, 'DETAIL_CODE')) then
    RefreshDataSets;
end;

procedure TfmSpecDocStatus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    inherited;

    if FUpdatesApplied and
       (dmMain.SvrSpecifications.SpecInsertionsCount(cdsDataSPEC_PRODUCT_CODE.AsInteger) > 0) then
      case MessageDlgEx(SConfirmUpdateInsertions, mtConfirmation, mbYesNoCancel, 0) of
        mrYes:
          begin
            UpdateInsertions;
            FInsertionsUpdated:= True;
          end;
        mrCancel:
          Abort;
      end;
  except
    frLineDoc.FormCloseFailed;
    frModelDoc.FormCloseFailed;
    raise;
  end;
end;

procedure TfmSpecDocStatus.UpdateInsertions;
var
  SaveCursor: TCursor;
  fmSplash: TfmAnimatedSplash;
begin
  LoginContext.CheckUserActivity(uaUpdateImportedSpecInOthers);

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    Application.CreateForm(TfmAnimatedSplash, fmSplash);
    try
      fmSplash.ShowForm(SCheckFilesResName, SPleaseWaitRefresh);

      Application.ProcessMessages;

      dmMain.SvrSpecifications.UpdateSpecificationsImported(
        cdsDataSPEC_PRODUCT_CODE.AsInteger, 0);
    finally
      fmSplash.Release;
    end;  { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;  { try }
end;

procedure TfmSpecDocStatus.DoApplyUpdates;
begin
  inherited;
  FUpdatesApplied:= True;
end;

procedure TfmSpecDocStatus.cdsSpecModelVariantsMODEL_VARIANT_IDENTIFIERGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= Sender.AsString + ' ' + SWorkdays;
end;

end.


