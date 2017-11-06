unit fProcessConcreteOperationsTree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeOnlyNomForm, ImgList, Menus, DB, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, ComCtrls, JvExComCtrls,
  JvDBTreeView, ToolWin, StdCtrls, Buttons, ExtCtrls, AbmesFields, fBaseForm,
  uClientTypes;

type
  [CanUseDocs]
  TfmProcessConcreteOperationsTree = class(TTreeOnlyNomForm)
    actDoc: TAction;
    cdsDataPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    cdsDataPARENT_PRC_CONCRETE_OP_CODE: TAbmesFloatField;
    cdsDataPRC_CONCRETE_OP_LOCAL_NO: TAbmesFloatField;
    cdsDataPRC_CONCRETE_OP_NAME: TAbmesWideStringField;
    cdsDataPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataPRC_CONCRETE_OP_FULL_NO: TAbmesWideStringField;
    cdsDataPRC_CONCR_OP_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDataDOC_PRODUCT_CODE: TAbmesFloatField;
    cdsData_PRC_CONCRETE_OP_TREE_ICON: TIntegerField;
    cdsDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsDataPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsDataDEACTIVATION_DATE: TAbmesSQLTimeStampField;
    cdsDataIS_INACTIVE: TAbmesFloatField;
    actSpecDocStatus: TAction;
    tlbDocs: TToolBar;
    sepAfterShowInactive: TToolButton;
    lblDoc: TLabel;
    btnDoc: TToolButton;
    tlbSpecDocStatus: TToolBar;
    sepAfterDocs: TToolButton;
    btnSpecDocStatus: TToolButton;
    cdsDataDOC_SPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsDataPRC_CONCRETE_OP_DISPLAY_NAME: TAbmesWideStringField;
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure actDocExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
    procedure cdsDataBeforeDelete(DataSet: TDataSet);
    procedure actSpecDocStatusUpdate(Sender: TObject);
    procedure actSpecDocStatusExecute(Sender: TObject);
  protected
    procedure ShowEditForm(AEditMode: TEditMode; AInsertGroup: Boolean); override;
    function GetCannotBeSelectedErrorMsg: string; override;
    function IsRoot: Boolean; override;
    function IsGroup: Boolean; override;
    function IsInactive: Boolean; override;
    function KeyFieldName: string; override;
    function ParentFieldName: string; override;
    function LocalNoFieldName: string; override;
    function ParentNodeCode: Integer; override;
    procedure SetPrintDataSetParams; override;
    function IsRootReadOnly: Boolean; override;
  end;

implementation

{$R *.dfm}

uses
  uUserActivityConsts, fProcessConcreteOperationEdit, uDocUtils, fSpecDocStatus;

resourcestring
  SCannotBeSelectedErrorMsg = 'Този Процес не може да бъде избран';

{ TfmProcessConcreteOperationsTree }

function TfmProcessConcreteOperationsTree.IsRootReadOnly: Boolean;
begin
  Result:= False;
end;

procedure TfmProcessConcreteOperationsTree.actDocExecute(Sender: TObject);
begin
  inherited;
  if IsGroup then
    dmDocClient.DSOpenDoc(
      emReadOnly,
      ((Sender as TAction).ActionComponent as TControl),
      dotProcessConcreteOperation,
      cdsData)
  else
    dmDocClient.DSOpenDoc(
      emReadOnly,
      ((Sender as TAction).ActionComponent as TControl),
      dotProduct,
      cdsDataPRODUCT_DOC_BRANCH_CODE,
      cdsDataPRODUCT_DOC_CODE);
end;

procedure TfmProcessConcreteOperationsTree.actDocUpdate(Sender: TObject);
begin
  inherited;
  if IsGroup then
    (Sender as TAction).ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean)
  else
    (Sender as TAction).ImageIndex:= Ord(cdsDataPRODUCT_HAS_DOCUMENTATION.AsBoolean);
end;

procedure TfmProcessConcreteOperationsTree.actSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient, cdsDataDOC_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmProcessConcreteOperationsTree.actSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (not cdsDataDOC_PRODUCT_CODE.IsNull) and
    (not cdsDataDOC_SPEC_PRODUCT_CODE.IsNull);
end;

procedure TfmProcessConcreteOperationsTree.cdsDataBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  LoginContext.CheckUserActivity(uaProcessConcreteOperationsTreeEdit);
end;

procedure TfmProcessConcreteOperationsTree.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  if IsRoot then
    cdsData_PRC_CONCRETE_OP_TREE_ICON.AsInteger:= 157
  else
    cdsData_PRC_CONCRETE_OP_TREE_ICON.AsInteger:=
      179 - 20 * cdsDataIS_GROUP.AsInteger + 14 * cdsDataIS_INACTIVE.AsInteger;
end;

function TfmProcessConcreteOperationsTree.GetCannotBeSelectedErrorMsg: string;
begin
  Result:= SCannotBeSelectedErrorMsg;
end;

function TfmProcessConcreteOperationsTree.IsGroup: Boolean;
begin
  Result:= cdsDataIS_GROUP.AsBoolean;
end;

function TfmProcessConcreteOperationsTree.IsInactive: Boolean;
begin
  Result:= cdsDataIS_INACTIVE.AsBoolean;
end;

function TfmProcessConcreteOperationsTree.IsRoot: Boolean;
begin
  Result:= cdsDataPARENT_PRC_CONCRETE_OP_CODE.IsNull;
end;

function TfmProcessConcreteOperationsTree.KeyFieldName: string;
begin
  Result:= 'PRC_CONCRETE_OP_CODE';
end;

function TfmProcessConcreteOperationsTree.LocalNoFieldName: string;
begin
  Result:= 'PRC_CONCRETE_OP_LOCAL_NO';
end;

function TfmProcessConcreteOperationsTree.ParentFieldName: string;
begin
  Result:= 'PARENT_PRC_CONCRETE_OP_CODE';
end;

function TfmProcessConcreteOperationsTree.ParentNodeCode: Integer;
begin
  Result:= cdsDataPARENT_PRC_CONCRETE_OP_CODE.AsInteger;
end;

procedure TfmProcessConcreteOperationsTree.SetPrintDataSetParams;
begin
  inherited SetPrintDataSetParams;
  cdsPrintTree.Params.ParamByName('PRC_CONCRETE_OP_CODE').AsInteger:=
    cdsDataPRC_CONCRETE_OP_CODE.AsInteger;
end;

procedure TfmProcessConcreteOperationsTree.ShowEditForm(AEditMode: TEditMode;
  AInsertGroup: Boolean);
var
  EditedProcessConcreteOperationCode: Integer;
begin
  if (AEditMode = emInsert) then
    LoginContext.CheckUserActivity(uaProcessConcreteOperationsTreeEdit);

  if not LoginContext.HasUserActivity(uaProcessConcreteOperationsTreeEdit) then
    AEditMode:= emReadOnly;

  EditedProcessConcreteOperationCode:=
    TfmProcessConcreteOperationEdit.ShowForm(dmDocClient, cdsData, AEditMode, doNone, AInsertGroup);

  if (EditedProcessConcreteOperationCode > 0) then
    RefreshTree(EditedProcessConcreteOperationCode);
end;

end.
