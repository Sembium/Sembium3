unit fSpecifications;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient, GridsEh,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fMasterDetailForm, AbmesClientDataSet, DBGridEh, AbmesDBGrid, AbmesFields,
  uClientTypes, Menus, JvButtons, ComCtrls, ToolWin, dDocClient,
  JvComponent, JvCaptionButton, JvComponentBase, uCellParamsSetters, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL,
  DBAxisGridsEh, uXMLUtils;

type
  TfmSpecifications = class(TMasterDetailForm)
    pdsGridDataParamsSPEC_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsSPEC_TYPE_CODE: TAbmesFloatField;
    cdsSpecificationTypes: TAbmesClientDataSet;                                                             
    pdsGridDataParamsSPEC_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParams_SPEC_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParamsSPEC_PRODUCT_NO: TAbmesFloatField;
    cdsSpecificationTypesSPEC_TYPE_CODE: TAbmesFloatField;
    cdsSpecificationTypesSPEC_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataSPEC_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataIS_VALID: TAbmesFloatField;
    cdsGridDataSPEC_VERSION_NO: TAbmesFloatField;
    cdsGridDataMANUFACTURER_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataNOTES: TAbmesWideStringField;
    pdsGridDataParamsAUTHOR_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsMANUFACTURER_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataWORK_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataAUTHOR_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataAUTHORIZATION_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataSPEC_DEPTH: TAbmesFloatField;
    actCreateLike: TAction;
    pdsGridDataParamsINCLUDE_DETAILS: TAbmesFloatField;
    pdsGridDataParamsINCLUDE_DETAIL_CODE: TAbmesFloatField;
    pdsGridDataParamsINCLUDE_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsINCLUDE_DETAIL_NAME: TAbmesWideStringField;
    pdsGridDataParamsINCLUDE_DETAIL_NO: TAbmesFloatField;
    pdsGridDataParamsINCLUDE_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParamsINCLUDE_PRODUCT_NO: TAbmesFloatField;
    pnlCreateLikeButton: TPanel;
    btnCreateLike: TBitBtn;
    actUpdateSpecificationsImportedSelected: TAction;
    cdsGridDataIMPORT_COUNT: TAbmesFloatField;
    pdsGridDataParamsIS_IMPORTED: TAbmesFloatField;
    pdsGridDataParamsIS_NOT_IMPORTED: TAbmesFloatField;
    cdsGridDataSPEC_MODEL_VARIANT_COUNT: TAbmesFloatField;
    tlbTopButtons: TToolBar;
    btnCopy: TToolButton;
    pmCopy: TPopupMenu;
    miCopyNoToClipboard: TMenuItem;
    miCopyNameToClipboard: TMenuItem;
    actCopyToClipboard: TAction;
    actCopyNameToClipboard: TAction;
    actCopyNoToClipboard: TAction;
    actCopyNotesToClipboard: TAction;
    miCopyNotesToClipboard: TMenuItem;
    cdsGridDataAUTHOR_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_ACTIVE: TAbmesFloatField;
    pdsGridDataParamsIS_INACTIVE: TAbmesFloatField;
    actReplaceProduct: TAction;
    sepBeforeSpecDocStatus: TToolButton;
    btnReplaceProducts: TSpeedButton;
    pdsGridDataParamsCREATE_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsCREATE_END_DATE: TAbmesSQLTimeStampField;
    btnDocumentation: TSpeedButton;
    sepBeforeProductDocsCaption: TToolButton;
    sepBeforeReplaceProducts: TToolButton;
    btnUpdateSpecificationsImportedSelected: TSpeedButton;
    pdsGridDataParamsCHOSEN_SPEC_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsCHANGE_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsCHANGE_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsHAS_INACTIVE_DETAIL: TAbmesFloatField;
    pdsGridDataParamsHAS_NOT_INACTIVE_DETAIL: TAbmesFloatField;
    pdsGridDataParamsHAS_INACTIVE_PRODUCT: TAbmesFloatField;
    pdsGridDataParamsHAS_NOT_INACTIVE_PRODUCT: TAbmesFloatField;
    sepBeforeUpdateSpecificationsImportedSelected: TToolButton;
    actSpedDocStatus: TAction;
    btnSpecDocStatus: TSpeedButton;
    cdsGridDataSPEC_STATE_CODE: TAbmesFloatField;
    cdsGridDataSPEC_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    pnlProductDocsCaption: TPanel;
    sepCopy: TToolButton;
    pdsGridDataParamsMIN_SPEC_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_SPEC_STATE_CODE: TAbmesFloatField;
    cdsDetailSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsDetailSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsDetailSPEC_MODEL_VARIANT_STATE: TAbmesFloatField;
    cdsDetailMAIN_DEPT_CODE: TAbmesFloatField;
    cdsDetailMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDetailMAIN_DEPT_NAME: TAbmesWideStringField;
    cdsDetailMIN_TECH_QUANTITY: TAbmesFloatField;
    cdsDetailMAX_TECH_QUANTITY: TAbmesFloatField;
    cdsDetailTECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDetailAUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsDetailAUTHORIZATION_DATE: TAbmesSQLTimeStampField;
    cdsDetailAUTHORIZATION_OF_OPERATIONS: TAbmesFloatField;
    cdsDetailCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDetailCHANGE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsDetailCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDetailMODEL_LENGTH_WORKDAYS: TAbmesFloatField;
    pnlDataButtons: TPanel;
    btnAddData: TBitBtn;
    btnDeleteData: TBitBtn;
    btnEditData: TBitBtn;
    tlbCopy: TToolBar;
    tlbAdditionalCommands: TToolBar;
    cdsGridDataNEW_SPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataAUTHOR_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataAUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    pdsGridDataParamsMAIN_DEPT_CODE: TAbmesFloatField;
    cdsDetailNOTES: TAbmesWideStringField;
    pdsGridDataParamsSMVS_DEPT_CODE: TAbmesFloatField;
    tlbShowNotes: TToolBar;
    btnShowNotes: TToolButton;
    sepToggleTreeView: TToolButton;
    btnToggleTreeView: TSpeedButton;
    actToggleTreeView: TAction;
    pnlTreeView: TPanel;
    cdsGridData_T_LINE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataT_DISPLAY_NAME: TAbmesWideStringField;
    cdsGridDataT_SPEC_LINE_CODE: TAbmesFloatField;
    cdsGridDataT_PARENT_SPEC_LINE_CODE: TAbmesFloatField;
    cdsGridDataT_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataT_DETAIL_CODE: TAbmesFloatField;
    cdsGridDataT_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataT_IS_IMPORTED: TAbmesFloatField;
    cdsGridDataORDER_BY_FIELD: TAbmesWideStringField;
    navDataRefresh: TDBColorNavigator;
    grdTreeView: TAbmesDBGrid;
    actProductVIM: TAction;
    sepProductVIM: TToolButton;
    btnProductVIM: TSpeedButton;
    cdsDetailIS_INACTIVE: TAbmesFloatField;
    actShowInactiveModelVariants: TAction;
    btnShowInactiveModelVariants: TToolButton;
    sepShowInactiveModelVariants: TToolButton;
    procedure pdsGridDataParamsSPEC_PRODUCT_CODEChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actInsertRecordExecute(Sender: TObject);
    procedure actDelRecordExecute(Sender: TObject);
    procedure actCreateLikeUpdate(Sender: TObject);
    procedure actCreateLikeExecute(Sender: TObject);
    procedure pdsGridDataParamsINCLUDE_DETAIL_CODEChange(Sender: TField);
    procedure pdsGridDataParamsINCLUDE_PRODUCT_CODEChange(Sender: TField);
    procedure pdsGridDataParamsAllWhenNullGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actUpdateSpecificationsImportedSelectedExecute(
      Sender: TObject);
    procedure actUpdateSpecificationsImportedSelectedUpdate(
      Sender: TObject);
    procedure actCopyNameToClipboardExecute(Sender: TObject);
    procedure actCopyNoToClipboardExecute(Sender: TObject);
    procedure actCopyToClipboardExecute(Sender: TObject);
    procedure actCopyNotesToClipboardExecute(Sender: TObject);
    procedure actCopyToClipboardUpdate(Sender: TObject);
    procedure actReplaceProductUpdate(Sender: TObject);
    procedure actReplaceProductExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure btnDocumentationClick(Sender: TObject);
    procedure actSpedDocStatusUpdate(Sender: TObject);
    procedure actSpedDocStatusExecute(Sender: TObject);
    procedure cdsGridDataSPEC_STATE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure grdDataColumns0GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure cdsDetailSPEC_MODEL_VARIANT_STATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure grdDetailColumns0GetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure actToggleTreeViewExecute(Sender: TObject);
    procedure actToggleTreeViewUpdate(Sender: TObject);
    procedure tlTreeViewDblClick(Sender: TObject);
    procedure actExcelExportExecute(Sender: TObject);
    procedure grdTreeViewGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure grdDataDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure cdsDetailBeforeOpen(DataSet: TDataSet);
    procedure actProductVIMUpdate(Sender: TObject);
    procedure actProductVIMExecute(Sender: TObject);
    procedure actShowInactiveModelVariantsExecute(Sender: TObject);
    procedure grdDetailGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    FSelect: Boolean;
    FSpecProductCodePtr: PVariant;
    FMaxSelectSpecDepth: Integer;
    FReadOnly: Boolean;
    FEditSpecProductCode: Integer;
    FReplaceOldProductCode: Integer;
    FReplaceNewProductCode: Integer;
    FIsTreeViewVisible: Boolean;
    procedure LocateEditSpecProductCode;
    procedure SetCellParams(ACellParamsSetter: TCellParamsSetter);
  protected
    class function CanUseDocs: Boolean; override;
    class function WishNonDefaultFilter: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function DoShowEditForm(AEditMode: TEditMode): Boolean; override;
    function ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    function GetEditRecordEnabled: Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
    function GetInsertLikeEnabled: Boolean; override;
    procedure RecordDblClick; override;
    function GetPrintEnabled: Boolean; override;
    function GetFilterFormEnabled: Boolean; override;
    function MustResortGridDataAfterOpen: Boolean; override;
  public
    class procedure UpdateSpecificationsImportedSpecProduct(SpecProductCode: Integer);
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ASelect: Boolean = False;
      ASpecProductCodePtr: PVariant = nil;
      AMaxSelectSpecDepth: Integer = 0); reintroduce; virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ASelect: Boolean = False;
      ASpecProductCodePtr: PVariant = nil;
      AMaxSelectSpecDepth: Integer = 0): Boolean;
    class function GetSpecification(AdmDocClient: TdmDocClient; out SpecProductCode: Variant; MaxDepth: Integer = -1): Boolean;
    procedure Initialize; override;
  end;

resourcestring
  SPleaseWaitRefresh = 'Моля, почакайте. Обновяване...';
  SCantDeleteSpecification = 'Не можете да изтриете този Принципен МОДЕл,' + SLineBreak +
                             'тъй като е вмъкнат в други Принципни МОДЕл-и';

implementation

uses
  dMain, uClientUtils, fSpecificationsFilter, fSpecification, uUtils,
  uUserActivityConsts, rSpecifications, Clipbrd,
  Variants, AbmesDialogs, uTreeClientUtils,
  fSelectSpecReplaceProducts, fEditForm, fAnimatedSplash,
  fSpecDocStatus, uModelUtils, uColorConsts, Math, uExcelExport,
  fVIMQuantity, uDocClientUtils, uClientDateTime,
  uOpenVIMConsts, uClientConsts, fSelectProduct, uProducts, uTreeNodes,
  fTreeSelectForm, uTreeListUtils;

{$R *.DFM}

resourcestring
  SPleaseWaitReplacing = 'Моля почакайте. Замяна...';
  SDepthOverMax = 'Дълбочината на този Принципен МОДЕл (%d) надхвърля позволената (%d).';
  SConfirmSpecUpdate = 'Обновяването на Принципните МОДЕл-и, вмъкнали избрания, е бавна операция.' + SLineBreak +
                       'Моля, потвърдете продължение!';
  SSpecUpdateCompleted = 'Обновяването завърши успешно за %d сек.';
  SReplaceProductCompleted = 'Замяната завърши успешно за %d сек.'{ + SLineBreak + 'Направени са %d замени.'};
  SReplaceWarning = 'Внимание!' + SLineBreak +
                    'Замяната ще бъде приложена над всички изведени тук Принципни МОДЕл-и.' + SLineBreak +
                    'Желаете ли да продължите?';

{ TfmSpecifications }

procedure TfmSpecifications.pdsGridDataParamsSPEC_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(pdsGridDataParamsSPEC_PRODUCT_CODE,
    pdsGridDataParamsSPEC_PRODUCT_NAME, pdsGridDataParamsSPEC_PRODUCT_NO);
end;

procedure TfmSpecifications.RecordDblClick;
begin
  // do not call inherited
  actEditRecord.Execute;
end;

procedure TfmSpecifications.FormCreate(Sender: TObject);
begin
  inherited;
  MaximizeStyle:= msFull;
  FilterFormClass:= TfmSpecificationsFilter;
  EditFormClass:= TfmSpecification;
  DetailEditFormClass:= TfmSpecification;
  ReportClass:= TrptSpecifications;

  ExportMasterOnly:= True;

  RegisterDateFields(cdsDetail);
end;

procedure TfmSpecifications.FormShow(Sender: TObject);
begin
  inherited;
  InitializeAbmesDBGrid(grdTreeView, False);
end;

procedure TfmSpecifications.OpenDataSets;
begin
  cdsSpecificationTypes.Open;

  inherited;
end;

procedure TfmSpecifications.CloseDataSets;
begin
  inherited;

  cdsSpecificationTypes.Close;
end;

procedure TfmSpecifications.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ASelect: Boolean;
  ASpecProductCodePtr: PVariant; AMaxSelectSpecDepth: Integer);
begin
  Assert((ASelect and
          Assigned(ASpecProductCodePtr)) or
         ((not ASelect) and
          (not Assigned(ASpecProductCodePtr))));

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);

  FSelect:= ASelect;
  FSpecProductCodePtr:= ASpecProductCodePtr;
  FMaxSelectSpecDepth:= AMaxSelectSpecDepth;
end;

class function TfmSpecifications.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ASelect: Boolean;
  ASpecProductCodePtr: PVariant; AMaxSelectSpecDepth: Integer): Boolean;
var
  f: TfmSpecifications;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode,
      ASelect, ASpecProductCodePtr, AMaxSelectSpecDepth);
    Result:= (f.InternalShowForm = mrOK);
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmSpecifications.SetCellParams(ACellParamsSetter: TCellParamsSetter);
begin
  with ACellParamsSetter do
    begin
      if IsSelected then
        Exit;

      if (CurrentFieldName = 'SPEC_STATE_CODE') then
        begin
          if (not VarIsNull(GetFieldValue('SPEC_STATE_CODE'))) and
             (Low(SpecStateColors) <= VarToInt(GetFieldValue('SPEC_STATE_CODE'))) and
             (VarToInt(GetFieldValue('SPEC_STATE_CODE')) <= High(SpecStateColors)) then
            Background:= SpecStateColors[VarToInt(GetFieldValue('SPEC_STATE_CODE'))];
        end;  { if }
    end;  { with }
end;

procedure TfmSpecifications.tlTreeViewDblClick(Sender: TObject);
begin
  inherited;
  RecordDblClick;
end;

class procedure TfmSpecifications.UpdateSpecificationsImportedSpecProduct(
  SpecProductCode: Integer);
var
  SaveCursor: TCursor;
  fmSplash: TfmAnimatedSplash;
  StartTime, TotalTime: LongWord;
begin
  inherited;

  if (MessageDlgEx(SConfirmSpecUpdate, mtConfirmation, mbOkCancel, 0) = mrOk) then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crHourGlass;
      try
        StartTime:= GetTickCount;

        Application.CreateForm(TfmAnimatedSplash, fmSplash);
        try
          fmSplash.ShowForm(SCheckFilesResName, SPleaseWaitRefresh);

          Application.ProcessMessages;

          dmMain.SvrSpecifications.UpdateSpecificationsImported(SpecProductCode, 0);
        finally
          fmSplash.Release;
        end;  { try }

        TotalTime:= TickCountDiff(StartTime, GetTickCount) div 1000;
      finally
        Screen.Cursor:= SaveCursor;
      end;  { try }

      ShowMessageFmtEx(SSpecUpdateCompleted, [TotalTime]);
    end;  { if }
end;

function TfmSpecifications.GetDelRecordEnabled: Boolean;
begin
  Result:=
    inherited GetDelRecordEnabled and
    not cdsGridDataSPEC_VERSION_NO.IsNull;
end;

function TfmSpecifications.GetEditRecordEnabled: Boolean;
begin
  Result:=
    inherited GetEditRecordEnabled and
    not cdsGridDataSPEC_VERSION_NO.IsNull;
end;

function TfmSpecifications.GetInsertLikeEnabled: Boolean;
begin
  Result:=
    inherited GetInsertLikeEnabled and
    not cdsGridDataSPEC_VERSION_NO.IsNull;
end;

function TfmSpecifications.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertRecordEnabled and
    not cdsGridData.IsEmpty and
    cdsGridDataSPEC_VERSION_NO.IsNull;
end;

class function TfmSpecifications.GetSpecification(AdmDocClient: TdmDocClient;
  out SpecProductCode: Variant; MaxDepth: Integer): Boolean;
var
  SpecDepth: Integer;
  DepthChecked: Boolean;
begin
  SpecProductCode:= 0;
  DepthChecked:= False;

  if ControlIsPressed then
    SpecProductCode:= EditProductCode(0, tnRootProductCode, tdsInstance)
  else
    begin
      if ShiftIsPressed then
        begin
          ShowForm(AdmDocClient, nil, emReadOnly, True, @SpecProductCode, MaxDepth);
          DepthChecked:= True;
        end
      else
        SpecProductCode:= TfmSelectProduct.SelectProduct(pcNormal, tdsInstance);
    end;

  Result:= VarIsArray(SpecProductCode) or (SpecProductCode > 0);

  if Result and (not DepthChecked) and (MaxDepth >= 0) then
    begin
      SpecDepth:= dmMain.SvrSpecifications.GetSpecDepth(SpecProductCode);
      if (SpecDepth > MaxDepth) then
        raise Exception.CreateFmt(SDepthOverMax, [SpecDepth, MaxDepth]);
    end;
end;

procedure TfmSpecifications.actFormUpdate(Sender: TObject);
var
  vtm: Integer;
begin
  inherited;

  pnlClose.Visible:= not FSelect;
  pnlOKCancel.Visible:= FSelect;
  pnlCreateLikeButton.Visible:= not FSelect;

  btnDocumentation.Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    cdsGridDataSPEC_PRODUCT_HAS_DOC_ITEMS.AsBoolean;

  UpdateColumnsVisibility(grdData, tlbShowNotes);
  UpdateColumnsVisibility(grdDetail, tlbShowNotes);
  UpdateColumnsVisibility(grdTreeView, tlbShowNotes);

  vtm:= IfThen(btnShowNotes.Down, 29, 16);
  if (grdTreeView.VTitleMargin <> vtm) then
    grdTreeView.VTitleMargin:= vtm;

  grdData.Visible:= not FIsTreeViewVisible;
  pnlTreeView.Visible:= FIsTreeViewVisible;

  navData.Enabled:= not FIsTreeViewVisible;
end;

procedure TfmSpecifications.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModalResult = mrOK) and FSelect then
    begin
      if (FMaxSelectSpecDepth >= 0) and
         (cdsGridDataSPEC_DEPTH.AsInteger > FMaxSelectSpecDepth) then
        begin
          grdData.SetFocus;
          raise Exception.CreateFmt(SDepthOverMax, [cdsGridDataSPEC_DEPTH.AsInteger, FMaxSelectSpecDepth]);
        end;   { if }

      if (grdData.SelectedRows.Count = 0) then
        FSpecProductCodePtr^:= cdsGridDataSPEC_PRODUCT_CODE.AsInteger
      else
        begin
          FSpecProductCodePtr^:= VarArrayCreate([0, grdData.SelectedRows.Count-1], varInteger);

          cdsGridData.TempDisableControls /
            cdsGridData.PreserveBookmark /
              procedure
              var
                i: Integer;
              begin
                for i:= 0 to grdData.SelectedRows.Count - 1 do
                  begin
                    cdsGridData.Bookmark:= grdData.SelectedRows[i];
                    FSpecProductCodePtr^[i]:= cdsGridDataSPEC_PRODUCT_CODE.AsInteger;
                  end;
              end;

          if (grdData.SelectedRows.Count = 1) then
            FSpecProductCodePtr^:= FSpecProductCodePtr^[0];
        end;
    end;   { if }

//  inherited;  niama nujda
end;

function TfmSpecifications.ShowDetailEditForm(AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin): Boolean;
begin
  Result:= ShowEditForm(AEditMode);
end;

function TfmSpecifications.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  if (AEditMode = emEdit) and FReadOnly then
    AEditMode:= emReadOnly;

  Result:= TfmSpecification.ShowForm(dmDocClient, cdsGridData, AEditMode,
             True, False, 0, @FEditSpecProductCode, 0, cdsDetailSPEC_MODEL_VARIANT_NO.AsInteger);
end;

procedure TfmSpecifications.actInsertRecordExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaNewSpecification);
  inherited;
end;

procedure TfmSpecifications.actPrintExecute(Sender: TObject);
var
  AfterScrollEvent: TDataSetNotifyEvent;
begin
  AfterScrollEvent:= cdsGridData.AfterScroll;
  cdsGridData.AfterScroll:= nil;
  try
    inherited;
  finally
    cdsGridData.AfterScroll:= AfterScrollEvent;
  end;
end;

procedure TfmSpecifications.actProductVIMExecute(Sender: TObject);
begin
  inherited;
  ShowProductVIM(
    dmDocClient,
    ChosenNodeCodeToXML(cdsGridDataSPEC_PRODUCT_CODE.AsInteger),
    '',
    ContextDate,
    False,
    vofVIMOpenedFromModel,
    pcNormal);
end;

procedure TfmSpecifications.actProductVIMUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmSpecifications.actDelRecordExecute(Sender: TObject);
var
  b: TBookmark;
begin
  with LoginContext do
    if (cdsGridDataAUTHOR_EMPLOYEE_CODE.AsInteger = UserCode) then
      begin
        if not HasUserActivity(uaSpecificationsDelete) then
          CheckUserActivity(uaDeleteForeignSpecification);
      end
    else   { if }
      CheckUserActivity(uaDeleteForeignSpecification);

  if (cdsGridDataIMPORT_COUNT.AsInteger > 0) then
    raise Exception.Create(SCantDeleteSpecification);

  cdsGridData.DisableControls;
  try
    b:= cdsGridData.Bookmark;

    inherited;

    RefreshDataSet(cdsGridData);

    try
      cdsGridData.Bookmark:= b;
    except
      on EDatabaseError do
        begin
          // Do nothing. Just catch the exception
        end;
    end;  { try }
  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

procedure TfmSpecifications.actExcelExportExecute(Sender: TObject);
begin
  if FIsTreeViewVisible then
    GridExcelExport(grdTreeView, True, '', dmMain.ilSpecLines, '_T_LINE_TYPE_CODE')
  else
    inherited;
end;

procedure TfmSpecifications.actCreateLikeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (not (cdsGridData.BOF and cdsGridData.EOF)) and
    (EditMode <> emReadOnly) and
    (cdsGridDataSPEC_STATE_CODE.AsFloat > 1);
end;

procedure TfmSpecifications.actCreateLikeExecute(Sender: TObject);
begin
  inherited;

  LoginContext.CheckUserActivity(uaNewSpecification);

  if TfmSpecification.ShowForm(dmDocClient, nil, emInsert, True, True,
       cdsGridDataSPEC_PRODUCT_CODE.AsInteger, @FEditSpecProductCode) then
    begin
      RefreshDataSet(cdsGridData);
      LocateEditSpecProductCode;
    end;
end;

procedure TfmSpecifications.pdsGridDataParamsINCLUDE_DETAIL_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(pdsGridDataParamsINCLUDE_DETAIL_CODE,
    pdsGridDataParamsINCLUDE_DETAIL_NAME, pdsGridDataParamsINCLUDE_DETAIL_NO);
end;

procedure TfmSpecifications.pdsGridDataParamsINCLUDE_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(pdsGridDataParamsINCLUDE_PRODUCT_CODE,
    pdsGridDataParamsINCLUDE_PRODUCT_NAME, pdsGridDataParamsINCLUDE_PRODUCT_NO);
end;

procedure TfmSpecifications.pdsGridDataParamsAllWhenNullGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmSpecifications.actUpdateSpecificationsImportedSelectedExecute(
  Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaUpdateImportedSpecInOthers);
  UpdateSpecificationsImportedSpecProduct(cdsGridDataSPEC_PRODUCT_CODE.AsInteger);

  cdsGridData.TempDisableCache/
    procedure begin
      RefreshGridData;
    end;
end;

procedure TfmSpecifications.actUpdateSpecificationsImportedSelectedUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    (cdsGridDataIMPORT_COUNT.AsInteger > 0);
end;

procedure TfmSpecifications.actCopyNameToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NAME.AsString;
end;

procedure TfmSpecifications.actCopyNoToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NO.AsString;
end;

procedure TfmSpecifications.actCopyToClipboardExecute(Sender: TObject);
begin
  inherited;
  actCopyNoToClipboard.Execute;
end;

procedure TfmSpecifications.actCopyNotesToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataNOTES.AsString;
end;

procedure TfmSpecifications.Initialize;
begin
  inherited;

  FReadOnly:=
    (EditMode = emReadOnly) or
    not (LoginContext.HasUserActivity(uaSpecificationsEdit) or
         LoginContext.HasUserActivity(uaEditForeignSpecification) or
         LoginContext.HasUserActivity(uaEditSpecificationModel));

  if FReadOnly then
    actEditRecord.Caption:= SReadOnlyCaption + cDialogSuffix;

  if FSelect then
    grdData.Options:= grdData.Options + [dgMultiSelect, dgRowSelect];
end;

procedure TfmSpecifications.actCopyToClipboardUpdate(Sender: TObject);
begin
  inherited;

  with cdsGridData do
    (Sender as TAction).Enabled:=
      Active and
      not (Bof and Eof);
end;

function TfmSpecifications.DoShowEditForm(AEditMode: TEditMode): Boolean;
begin
  // tuka pravi vsichko, vkluchitelno refresh, a nii sha locate-nim
  Result:= inherited DoShowEditForm(AEditMode);

  if (AEditMode = emInsert) then
    LocateEditSpecProductCode;
end;

procedure TfmSpecifications.LocateEditSpecProductCode;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        Locate('SPEC_PRODUCT_CODE', FEditSpecProductCode, []);
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

function TfmSpecifications.MustResortGridDataAfterOpen: Boolean;
begin
  Result:= Assigned(grdData.DataSource);
end;

procedure TfmSpecifications.actReplaceProductUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmSpecifications.actReplaceProductExecute(Sender: TObject);
var
  ReplaceParams: Variant;
  Param: TParam;
  i: Integer;
  AddedParams: TStringList;
  ReplacementCount: Integer;
  SaveCursor: TCursor;
  fmSplash: TfmAnimatedSplash;
  StartTime, TotalTime: LongWord;

  procedure AddParam(const ParamName: string; const ParamValue: Variant);
  begin
    if (AddedParams.IndexOf(ParamName) < 0) then
      begin
        ReplaceParams[AddedParams.Count]:=
          VarArrayOf([ParamName, ParamValue]);

        AddedParams.Add(ParamName);
      end;   { if }
  end;   { AddParam }

begin
  inherited;

  LoginContext.CheckUserActivity(uaReplaceProductInSpecifications);

  if (MessageDlgEx(SReplaceWarning, mtConfirmation, mbOkCancel, 0) <> mrOk) then
    Abort;

  if TfmSelectSpecReplaceProducts.SelectProducts(
    dmDocClient, FReplaceOldProductCode, FReplaceNewProductCode) then
    begin
      // създаване на масива с параметрите
      ReplaceParams:= VarArrayCreate([0, cdsGridData.Params.Count - 1 + 2], varVariant);

      AddedParams:= TStringList.Create;
      try
        for i:= 0 to cdsGridData.Params.Count - 1 do
          begin
            Param:= cdsGridData.Params[i];
            AddParam(Param.Name, Param.Value);
          end;   { for }

        AddParam('OLD_PRODUCT_CODE', FReplaceOldProductCode);
        AddParam('NEW_PRODUCT_CODE', FReplaceNewProductCode);

        VarArrayRedim(ReplaceParams, AddedParams.Count - 1);   // shtoto predi tova e syzdaden za broia parametri+2, ama niakoi se povtariat i tuk gi niama
      finally
        FreeAndNil(AddedParams);
      end;   { try }

      // изпълнение на отдалечената процедура за замяна
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crHourGlass;
      try
        StartTime:= GetTickCount;

        Application.CreateForm(TfmAnimatedSplash, fmSplash);
        try
          fmSplash.ShowForm(SCheckFilesResName, SPleaseWaitReplacing);

          Application.ProcessMessages;

          ReplacementCount:= dmMain.SvrSpecifications.ReplaceProduct(ReplaceParams);

          // рефрешваме регистъра, щото вече има сменени НСЧ-та и КСЧ-та и не е същия
          RefreshDataSet(cdsGridData);
        finally
          fmSplash.Release;
        end;  { try }

        TotalTime:= TickCountDiff(StartTime, GetTickCount) div 1000;
      finally
        Screen.Cursor:= SaveCursor;
      end;  { try }

      ShowMessageFmtEx(SReplaceProductCompleted, [TotalTime, ReplacementCount]);
    end;   { if }
end;

procedure TfmSpecifications.actFilterExecute(Sender: TObject);
begin
  if cdsGridData.Active and
     (cdsGridData.RecordCount > 0) and
     ShiftIsPressed then
    begin
      CheckEditMode(pdsGridDataParams);
      try
        pdsGridDataParamsSPEC_PRODUCT_CODE.Clear;
        pdsGridDataParamsSPEC_TYPE_CODE.Clear;
        pdsGridDataParamsAUTHOR_EMPLOYEE_CODE.Clear;
        pdsGridDataParamsAUTHORIZATION_EMPLOYEE_CODE.Clear;
        pdsGridDataParamsMANUFACTURER_COMPANY_CODE.Clear;
        pdsGridDataParamsINCLUDE_DETAILS.AsBoolean:= False;
        pdsGridDataParamsINCLUDE_DETAIL_CODE.Assign(cdsGridDataSPEC_PRODUCT_CODE);
        pdsGridDataParamsINCLUDE_PRODUCT_CODE.Clear;
        pdsGridDataParamsIS_IMPORTED.AsBoolean:= True;
        pdsGridDataParamsIS_NOT_IMPORTED.AsBoolean:= True;
        pdsGridDataParamsIS_ACTIVE.AsBoolean:= True;
        pdsGridDataParamsIS_INACTIVE.AsBoolean:= False;
        pdsGridDataParamsCREATE_BEGIN_DATE.Clear;
        pdsGridDataParamsCREATE_END_DATE.Clear;
        pdsGridDataParams.Post;
      except
        pdsGridDataParams.Cancel;
        raise;
      end;   { try }
    end;   { if }

  inherited;
end;

procedure TfmSpecifications.btnDocumentationClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, btnDocumentation,
    cdsGridDataSPEC_PRODUCT_CODE.AsInteger);
end;

class function TfmSpecifications.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmSpecifications.actSpedDocStatusUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (not cdsGridData.IsEmpty) and
    (cdsGridDataSPEC_STATE_CODE.AsFloat > 1);
end;

procedure TfmSpecifications.actToggleTreeViewExecute(Sender: TObject);
var
  SavedProductCode: Integer;
begin
  inherited;

  if FIsTreeViewVisible then
    SavedProductCode:= cdsGridData.Params.ParamByName('TREE_PRODUCT_CODE').AsInteger
  else
    SavedProductCode:= cdsGridDataSPEC_PRODUCT_CODE.AsInteger;

  FIsTreeViewVisible:= not FIsTreeViewVisible;

  if FIsTreeViewVisible then
    cdsGridData.Params.ParamByName('TREE_PRODUCT_CODE').AsInteger:= cdsGridDataSPEC_PRODUCT_CODE.AsInteger
  else
    cdsGridData.Params.ParamByName('TREE_PRODUCT_CODE').Clear;

  cdsGridData.TempDisableControls/
    procedure begin
      RefreshDataSet(cdsGridData);
      cdsGridData.Locate('SPEC_PRODUCT_CODE', SavedProductCode, []);
    end;

  actForm.Update;
  ActiveControl:= (IfThen(FIsTreeViewVisible, grdTreeView, grdData) as TWinControl);

  FixDBGridEhColumnWidths(grdData);
end;

procedure TfmSpecifications.actToggleTreeViewUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    FIsTreeViewVisible or
    (not cdsGridData.IsEmpty and (cdsGridDataSPEC_STATE_CODE.AsInteger > 1));
end;

procedure TfmSpecifications.actShowInactiveModelVariantsExecute(
  Sender: TObject);
begin
  inherited;
  actShowInactiveModelVariants.Checked:= not actShowInactiveModelVariants.Checked;
  btnShowInactiveModelVariants.Down:= actShowInactiveModelVariants.Checked;
  cdsDetail.Filtered:= not actShowInactiveModelVariants.Checked;
end;

procedure TfmSpecifications.actSpedDocStatusExecute(Sender: TObject);
begin
  inherited;
  ForceFetchDetails;
  TfmSpecDocStatus.ShowForm(dmDocClient, cdsGridDataSPEC_PRODUCT_CODE.AsInteger,
    EditMode, True, nil, cdsDetailSPEC_MODEL_VARIANT_NO.AsInteger);
end;

procedure TfmSpecifications.cdsDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsDetail.Params.AssignValues(cdsGridData.Params);
end;

procedure TfmSpecifications.cdsDetailSPEC_MODEL_VARIANT_STATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if (not Sender.IsNull) and
     (Low(SpecNoQuantityStates) <= Sender.AsInteger) and
     (Sender.AsInteger <= High(SpecNoQuantityStates)) then
    Text:= SpecNoQuantityStates[Sender.AsInteger];
end;

procedure TfmSpecifications.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if FIsTreeViewVisible then
    begin
      cdsGridData.IndexFieldNames:= 'ORDER_BY_FIELD';
      grdTreeView.ConvertToTreeList('T_SPEC_LINE_CODE', 'T_PARENT_SPEC_LINE_CODE');
    end;
end;

procedure TfmSpecifications.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataNEW_SPEC_PRODUCT_CODE.AsVariant:=
    cdsGridDataSPEC_PRODUCT_CODE.AsVariant;

  if cdsGridDataT_PRODUCT_CODE.IsNull then
    cdsGridData_T_LINE_TYPE_CODE.AsInteger:=
      2 + Ord(cdsGridDataT_IS_COMPLETE.AsBoolean) +
      IfThen(cdsGridDataT_IS_IMPORTED.AsBoolean, 4)
  else
    cdsGridData_T_LINE_TYPE_CODE.AsInteger:=
      Ord(cdsGridDataT_PRODUCT_CODE.AsInteger <> cdsGridDataT_DETAIL_CODE.AsInteger) +
      IfThen(cdsGridDataT_IS_IMPORTED.AsBoolean, 4);
end;

procedure TfmSpecifications.cdsGridDataSPEC_STATE_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (not Sender.IsNull) and
     (Low(SpecNoQuantityStates) <= Sender.AsInteger) and
     (Sender.AsInteger <= High(SpecNoQuantityStates)) then
    Text:= SpecNoQuantityStates[Sender.AsInteger];
end;

procedure TfmSpecifications.grdDataColumns0GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  inherited;
  if (not cdsGridDataSPEC_STATE_CODE.IsNull) and
     (Low(SpecStateColors) <= cdsGridDataSPEC_STATE_CODE.AsInteger) and
     (cdsGridDataSPEC_STATE_CODE.AsInteger <= High(SpecStateColors)) then
    Params.Background:= SpecStateColors[cdsGridDataSPEC_STATE_CODE.AsInteger];
end;

procedure TfmSpecifications.grdDataDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;

  if (Column.FieldName = 'T_DISPLAY_NAME') then
    DrawTreeImageColumnCell(grdTreeView, dmMain.ilSpecLines, grdTreeView.DataSource.DataSet.FieldByName('_T_LINE_TYPE_CODE').AsInteger, Rect, Column, True)
end;

procedure TfmSpecifications.grdDetailColumns0GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  inherited;
  if (not cdsDetailSPEC_MODEL_VARIANT_STATE.IsNull) and
     (Low(SpecStateColors) <= cdsDetailSPEC_MODEL_VARIANT_STATE.AsInteger) and
     (cdsDetailSPEC_MODEL_VARIANT_STATE.AsInteger <= High(SpecStateColors)) then
    Params.Background:= SpecStateColors[cdsDetailSPEC_MODEL_VARIANT_STATE.AsInteger];
end;

procedure TfmSpecifications.grdDetailGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if cdsDetailIS_INACTIVE.AsBoolean then
    AFont.Color:= clSilver;
end;

procedure TfmSpecifications.grdTreeViewGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  GridCellParamsSetter: TGridCellParamsSetter;
begin
  inherited;
  GridCellParamsSetter:= TGridCellParamsSetter.Create(Column, AFont, Background, State);
  try
    SetCellParams(GridCellParamsSetter);
  finally
    FreeAndNil(GridCellParamsSetter);
  end;  { try }
end;

class function TfmSpecifications.WishNonDefaultFilter: Boolean;
begin
  Result:= True;
end;

function TfmSpecifications.GetPrintEnabled: Boolean;
begin
  Result:=
    inherited GetPrintEnabled and
    not FIsTreeViewVisible;
end;

function TfmSpecifications.GetFilterFormEnabled: Boolean;
begin
  Result:=
    inherited GetFilterFormEnabled and
    not FIsTreeViewVisible;
end;

end.


