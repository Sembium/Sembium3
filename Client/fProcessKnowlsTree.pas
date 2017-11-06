unit fProcessKnowlsTree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeOnlyNomForm, ImgList, Menus, DB, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, ComCtrls, JvExComCtrls,
  JvDBTreeView, ToolWin, StdCtrls, Buttons, ExtCtrls, AbmesFields, uClientTypes,
  uDocUtils, Grids, DBGrids;

type
  TfmProcessKnowlsTree = class(TTreeOnlyNomForm)
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
    cdsDataPRC_KNOWL_CODE: TAbmesFloatField;
    cdsDataPARENT_PRC_KNOWL_CODE: TAbmesFloatField;
    cdsDataPRC_KNOWL_LOCAL_NO: TAbmesFloatField;
    cdsDataPRC_KNOWL_NAME: TAbmesWideStringField;
    cdsDataPRC_KNOWL_SHORT_NAME: TAbmesWideStringField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataPRC_KNOWL_FULL_NO: TAbmesWideStringField;
    cdsDataPRC_KNOWL_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsData_PRC_KNOWL_DISPLAY_NAME: TAbmesWideStringField;
    cdsData_PRC_KNOWL_TREE_ICON: TIntegerField;
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
  end;

implementation

{$R *.dfm}

uses
  uUserActivityConsts, fProcessKnowlEdit;

resourcestring
  SCannotBeSelectedErrorMsg = 'Този Процес не може да бъде избран';

{ TfmProcessKnowlsTree }

function TfmProcessKnowlsTree.IsRootReadOnly: Boolean;
begin
  Result:= False;
end;

procedure TfmProcessKnowlsTree.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProcessKnowl,
    cdsData);
end;

procedure TfmProcessKnowlsTree.actDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean);
end;

class function TfmProcessKnowlsTree.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmProcessKnowlsTree.cdsDataBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  LoginContext.CheckUserActivity(uaProcessKnowlsTreeEdit);
end;

procedure TfmProcessKnowlsTree.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsData_PRC_KNOWL_DISPLAY_NAME.AsString:=
    Format('%s %s (%s)', [
      cdsDataPRC_KNOWL_FULL_NO.AsString,
      cdsDataPRC_KNOWL_NAME.AsString,
      cdsDataPRC_KNOWL_SHORT_NAME.AsString]);

  if IsRoot then
    cdsData_PRC_KNOWL_TREE_ICON.AsInteger:= 157
  else
    cdsData_PRC_KNOWL_TREE_ICON.AsInteger:=
      167 - 8 * cdsDataIS_GROUP.AsInteger;
end;

function TfmProcessKnowlsTree.GetCannotBeSelectedErrorMsg: string;
begin
  Result:= SCannotBeSelectedErrorMsg;
end;

function TfmProcessKnowlsTree.IsGroup: Boolean;
begin
  Result:= cdsDataIS_GROUP.AsBoolean;
end;

function TfmProcessKnowlsTree.IsInactive: Boolean;
begin
  Result:= False;
end;

function TfmProcessKnowlsTree.IsRoot: Boolean;
begin
  Result:= cdsDataPARENT_PRC_KNOWL_CODE.IsNull;
end;

function TfmProcessKnowlsTree.KeyFieldName: string;
begin
  Result:= 'PRC_KNOWL_CODE';
end;

function TfmProcessKnowlsTree.LocalNoFieldName: string;
begin
  Result:= 'PRC_KNOWL_LOCAL_NO';
end;

function TfmProcessKnowlsTree.ParentFieldName: string;
begin
  Result:= 'PARENT_PRC_KNOWL_CODE';
end;

function TfmProcessKnowlsTree.ParentNodeCode: Integer;
begin
  Result:= cdsDataPARENT_PRC_KNOWL_CODE.AsInteger;
end;

procedure TfmProcessKnowlsTree.SetPrintDataSetParams;
begin
  inherited SetPrintDataSetParams;
  cdsPrintTree.Params.ParamByName('PRC_KNOWL_CODE').AsInteger:=
    cdsDataPRC_KNOWL_CODE.AsInteger;
end;

procedure TfmProcessKnowlsTree.ShowEditForm(AEditMode: TEditMode; AInsertGroup: Boolean);
var
  EditedProcessKnowlCode: Integer;
begin
  if (AEditMode = emInsert) then
    LoginContext.CheckUserActivity(uaProcessKnowlsTreeEdit);

  if not LoginContext.HasUserActivity(uaProcessKnowlsTreeEdit) then
    AEditMode:= emReadOnly;

  EditedProcessKnowlCode:=
    TfmProcessKnowlEdit.ShowForm(dmDocClient, cdsData, AEditMode, doNone, AInsertGroup);

  if (EditedProcessKnowlCode > 0) then
    RefreshTree(EditedProcessKnowlCode);
end;

end.
