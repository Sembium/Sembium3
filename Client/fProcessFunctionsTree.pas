unit fProcessFunctionsTree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeOnlyNomForm, ImgList, Menus, DB, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, ComCtrls, JvExComCtrls,
  JvDBTreeView, ToolWin, StdCtrls, Buttons, ExtCtrls, AbmesFields, uClientTypes;

type
  TfmProcessFunctionsTree = class(TTreeOnlyNomForm)
    cdsDataPRC_FUNC_CODE: TAbmesFloatField;
    cdsDataPARENT_PRC_FUNC_CODE: TAbmesFloatField;
    cdsDataPRC_FUNC_LOCAL_NO: TAbmesFloatField;
    cdsDataPRC_FUNC_NAME: TAbmesWideStringField;
    cdsDataPRC_FUNC_SHORT_NAME: TAbmesWideStringField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataPRC_FUNC_FULL_NO: TAbmesWideStringField;
    cdsDataPRC_FUNC_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsData_PRC_FUNC_DISPLAY_NAME: TAbmesWideStringField;
    cdsData_PRC_FUNC_TREE_ICON: TIntegerField;
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
    tlbDocs: TToolBar;
    sepDocs: TToolButton;
    lblDoc: TLabel;
    btnDoc: TToolButton;
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure actDocExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
    procedure cdsDataBeforeDelete(DataSet: TDataSet);
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
    class function CanUseDocs: Boolean; override;
    function IsRootReadOnly: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  uUserActivityConsts, fProcessFunctionEdit, uDocClientUtils, uDocUtils;

{$R *.dfm}

resourcestring
  SCannotBeSelectedErrorMsg = 'Този Процес не може да бъде избран';

{ TfmProcessFunctionsTree }

function TfmProcessFunctionsTree.IsRootReadOnly: Boolean;
begin
  Result:= False;
end;

procedure TfmProcessFunctionsTree.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProcessFunction,
    cdsData);
end;

procedure TfmProcessFunctionsTree.actDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean);
end;

class function TfmProcessFunctionsTree.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmProcessFunctionsTree.cdsDataBeforeDelete(DataSet: TDataSet);
begin
  LoginContext.CheckUserActivity(uaProcessFunctionsTreeEdit);
end;

procedure TfmProcessFunctionsTree.cdsDataCalcFields(DataSet: TDataSet);
begin
  cdsData_PRC_FUNC_DISPLAY_NAME.AsString:=
    Format('%s %s (%s)', [
      cdsDataPRC_FUNC_FULL_NO.AsString,
      cdsDataPRC_FUNC_NAME.AsString,
      cdsDataPRC_FUNC_SHORT_NAME.AsString]);

  if IsRoot then
    cdsData_PRC_FUNC_TREE_ICON.AsInteger:= 157
  else
    cdsData_PRC_FUNC_TREE_ICON.AsInteger:=
      171 - 12 * cdsDataIS_GROUP.AsInteger;
end;

function TfmProcessFunctionsTree.GetCannotBeSelectedErrorMsg: string;
begin
  Result:= SCannotBeSelectedErrorMsg;
end;

function TfmProcessFunctionsTree.IsGroup: Boolean;
begin
  Result:= cdsDataIS_GROUP.AsBoolean;
end;

function TfmProcessFunctionsTree.IsInactive: Boolean;
begin
  Result:= False;
end;

function TfmProcessFunctionsTree.IsRoot: Boolean;
begin
  Result:= cdsDataPARENT_PRC_FUNC_CODE.IsNull;
end;

function TfmProcessFunctionsTree.KeyFieldName: string;
begin
  Result:= 'PRC_FUNC_CODE';
end;

function TfmProcessFunctionsTree.LocalNoFieldName: string;
begin
  Result:= 'PRC_FUNC_LOCAL_NO';
end;

function TfmProcessFunctionsTree.ParentFieldName: string;
begin
  Result:= 'PARENT_PRC_FUNC_CODE';
end;

function TfmProcessFunctionsTree.ParentNodeCode: Integer;
begin
  Result:= cdsDataPARENT_PRC_FUNC_CODE.AsInteger;
end;

procedure TfmProcessFunctionsTree.SetPrintDataSetParams;
begin
  inherited SetPrintDataSetParams;
  cdsPrintTree.Params.ParamByName('PRC_FUNC_CODE').AsInteger:=
    cdsDataPRC_FUNC_CODE.AsInteger;
end;

procedure TfmProcessFunctionsTree.ShowEditForm(AEditMode: TEditMode;
  AInsertGroup: Boolean);
var
  EditedProcessFunctionCode: Integer;
begin
  if (AEditMode = emInsert) then
    LoginContext.CheckUserActivity(uaProcessFunctionsTreeEdit);

  if not LoginContext.HasUserActivity(uaProcessFunctionsTreeEdit) then
    AEditMode:= emReadOnly;

  EditedProcessFunctionCode:=
    TfmProcessFunctionEdit.ShowForm(dmDocClient, cdsData, AEditMode, doNone, AInsertGroup);

  if (EditedProcessFunctionCode > 0) then
    RefreshTree(EditedProcessFunctionCode);
end;

end.
