unit fProcessBaseOperationsTree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeOnlyNomForm, StdCtrls, ImgList, Menus, DB, DBClient,
  AbmesClientDataSet, JvComponentBase, JvCaptionButton, ActnList, ComCtrls,
  JvExComCtrls, JvDBTreeView, ToolWin, Buttons, ExtCtrls, AbmesFields,
  uClientTypes, fBaseForm;

type
  [CanUseDocs]
  TfmProcessBaseOperationsTree = class(TTreeOnlyNomForm)
    actDoc: TAction;
    cdsPrintTreeNODE_ID: TAbmesFloatField;
    cdsPrintTreePARENT_NODE_ID: TAbmesFloatField;
    cdsPrintTreeNODE_NAME: TAbmesWideStringField;
    cdsPrintTreeFORMATED_NODE_NO: TAbmesWideStringField;
    cdsPrintTreeNODE_LEVEL: TAbmesFloatField;
    cdsPrintTreeNODE_CHILD_COUNT: TAbmesFloatField;
    cdsPrintTreeNODE_TYPE: TAbmesFloatField;
    cdsPrintTreeIS_LAST_CHILD: TAbmesFloatField;
    cdsPrintTreeHAS_CHILDREN: TAbmesFloatField;
    cdsDataPRC_BASE_OP_CODE: TAbmesFloatField;
    cdsDataPARENT_PRC_BASE_OP_CODE: TAbmesFloatField;
    cdsDataPRC_BASE_OP_LOCAL_NO: TAbmesFloatField;
    cdsDataPRC_BASE_OP_NAME: TAbmesWideStringField;
    cdsDataPRC_BASE_OP_SHORT_NAME: TAbmesWideStringField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataPRC_BASE_OP_FULL_NO: TAbmesWideStringField;
    cdsDataPRC_BASE_OP_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsData_PRC_BASE_OP_TREE_ICON: TIntegerField;
    cdsData_PRC_BASE_OP_DISPLAY_NAME: TAbmesWideStringField;
    cdsDataDOC_PRODUCT_CODE: TAbmesFloatField;
    cdsDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsDataPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    actSpecDocStatus: TAction;
    tlbDocs: TToolBar;
    sepAfterShowInactive: TToolButton;
    lblDoc: TLabel;
    btnDoc: TToolButton;
    tlbSpecDocStatus: TToolBar;
    sepAfterDocs: TToolButton;
    btnSpecDocStatus: TToolButton;
    cdsDataDOC_SPEC_PRODUCT_CODE: TAbmesFloatField;
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsDataBeforeDelete(DataSet: TDataSet);
    procedure actDocExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
    procedure actSpecDocStatusExecute(Sender: TObject);
    procedure actSpecDocStatusUpdate(Sender: TObject);
  protected
    procedure ShowEditForm(AEditMode: TEditMode; AInsertGroup: Boolean); override;
    function GetCannotBeSelectedErrorMsg: string; override;
    function IsRoot: Boolean; override;
    function IsGroup: Boolean; override;
    function IsInactive: Boolean; override;
    function KeyFieldName: string; override;
    function ParentNodeCode: Integer; override;
    function ParentFieldName: string; override;
    function LocalNoFieldName: string; override;
    procedure SetPrintDataSetParams; override;
    function IsRootReadOnly: Boolean; override;
  end;

implementation

{$R *.dfm}

uses
  uUserActivityConsts, fProcessBaseOperationEdit, uDocUtils, fSpecDocStatus;

resourcestring
  SCannotBeSelectedErrorMsg = 'Този Процес не може да бъде избран';

{ TfmProcessBaseOperationsTree }

function TfmProcessBaseOperationsTree.IsRootReadOnly: Boolean;
begin
  Result:= False;
end;

procedure TfmProcessBaseOperationsTree.actDocExecute(Sender: TObject);
begin
  inherited;
  if IsGroup then
    dmDocClient.DSOpenDoc(
      emReadOnly,
      ((Sender as TAction).ActionComponent as TControl),
      dotProcessBaseOperation,
      cdsData)
  else
    dmDocClient.DSOpenDoc(
      emReadOnly,
      ((Sender as TAction).ActionComponent as TControl),
      dotProduct,
      cdsDataPRODUCT_DOC_BRANCH_CODE,
      cdsDataPRODUCT_DOC_CODE);
end;

procedure TfmProcessBaseOperationsTree.actDocUpdate(Sender: TObject);
begin
  inherited;
  if IsGroup then
    (Sender as TAction).ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean)
  else
    (Sender as TAction).ImageIndex:= Ord(cdsDataPRODUCT_HAS_DOCUMENTATION.AsBoolean);
end;

procedure TfmProcessBaseOperationsTree.actSpecDocStatusExecute(Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient, cdsDataDOC_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmProcessBaseOperationsTree.actSpecDocStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (not cdsDataDOC_PRODUCT_CODE.IsNull) and
    (not cdsDataDOC_SPEC_PRODUCT_CODE.IsNull);
end;

procedure TfmProcessBaseOperationsTree.cdsDataBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  LoginContext.CheckUserActivity(uaProcessBaseOperationsTreeEdit);
end;

procedure TfmProcessBaseOperationsTree.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsData_PRC_BASE_OP_DISPLAY_NAME.AsString:=
    Format('%s %s (%s)', [
      cdsDataPRC_BASE_OP_FULL_NO.AsString,
      cdsDataPRC_BASE_OP_NAME.AsString,
      cdsDataPRC_BASE_OP_SHORT_NAME.AsString]);

  if IsRoot then
    cdsData_PRC_BASE_OP_TREE_ICON.AsInteger:= 157
  else
    cdsData_PRC_BASE_OP_TREE_ICON.AsInteger:=
      175 - 16 * cdsDataIS_GROUP.AsInteger;
end;

function TfmProcessBaseOperationsTree.GetCannotBeSelectedErrorMsg: string;
begin
  Result:= SCannotBeSelectedErrorMsg;
end;

function TfmProcessBaseOperationsTree.IsGroup: Boolean;
begin
  Result:= cdsDataIS_GROUP.AsBoolean;
end;

function TfmProcessBaseOperationsTree.IsInactive: Boolean;
begin
  Result:= False;
end;

function TfmProcessBaseOperationsTree.IsRoot: Boolean;
begin
  Result:= cdsDataPARENT_PRC_BASE_OP_CODE.IsNull;
end;

function TfmProcessBaseOperationsTree.KeyFieldName: string;
begin
  Result:= 'PRC_BASE_OP_CODE';
end;

function TfmProcessBaseOperationsTree.LocalNoFieldName: string;
begin
  Result:= 'PRC_BASE_OP_LOCAL_NO';
end;

function TfmProcessBaseOperationsTree.ParentFieldName: string;
begin
  Result:= 'PARENT_PRC_BASE_OP_CODE';
end;

function TfmProcessBaseOperationsTree.ParentNodeCode: Integer;
begin
  Result:= cdsDataPARENT_PRC_BASE_OP_CODE.AsInteger;
end;

procedure TfmProcessBaseOperationsTree.SetPrintDataSetParams;
begin
  inherited SetPrintDataSetParams;
  cdsPrintTree.Params.ParamByName('PRC_BASE_OP_CODE').AsInteger:=
    cdsDataPRC_BASE_OP_CODE.AsInteger;
end;

procedure TfmProcessBaseOperationsTree.ShowEditForm(AEditMode: TEditMode;
  AInsertGroup: Boolean);
var
  EditedProcessBaseOperationCode: Integer;
begin
  if (AEditMode = emInsert) then
    LoginContext.CheckUserActivity(uaProcessBaseOperationsTreeEdit);

  if not LoginContext.HasUserActivity(uaProcessBaseOperationsTreeEdit) then
    AEditMode:= emReadOnly;

  EditedProcessBaseOperationCode:=
    TfmProcessBaseOperationEdit.ShowForm(dmDocClient, cdsData, AEditMode, doNone, AInsertGroup);

  if (EditedProcessBaseOperationCode > 0) then
    RefreshTree(EditedProcessBaseOperationCode);
end;

end.
