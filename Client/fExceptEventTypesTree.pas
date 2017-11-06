unit fExceptEventTypesTree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, fTreeOnlyNomForm, ImgList, Menus, DB, DBClient, AbmesClientDataSet,
  ActnList, StdCtrls, ComCtrls, ToolWin, JvExComCtrls, JvDBTreeView, Buttons, ExtCtrls, fBaseForm, AbmesFields,
  uClientTypes, PrnDbgeh;

type
  [CanUseDocs]
  TfmExceptEventTypesTree = class(TTreeOnlyNomForm)
    cdsDataEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsDataPARENT_EXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsDataEXCEPT_EVENT_TYPE_LOCAL_NO: TAbmesFloatField;
    cdsDataEXCEPT_EVENT_TYPE_NAME: TAbmesWideStringField;
    cdsDataEXCEPT_EVENT_TYPE_SHORT_NAME: TAbmesWideStringField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataEE_TYPE_FULL_NO: TAbmesWideStringField;
    cdsDataEE_TYPE_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsData_EE_TYPE_DISPLAY_NAME: TAbmesWideStringField;
    cdsData_EE_TYPE_TREE_ICON: TIntegerField;
    cdsPrintTreeNODE_ID: TAbmesFloatField;
    cdsPrintTreePARENT_NODE_ID: TAbmesFloatField;
    cdsPrintTreeNODE_NAME: TAbmesWideStringField;
    cdsPrintTreeFORMATED_NODE_NO: TAbmesWideStringField;
    cdsPrintTreeNODE_LEVEL: TAbmesFloatField;
    cdsPrintTreeNODE_CHILD_COUNT: TAbmesFloatField;
    cdsPrintTreeNODE_TYPE: TAbmesFloatField;
    cdsPrintTreeIS_LAST_CHILD: TAbmesFloatField;
    cdsPrintTreeHAS_CHILDREN: TAbmesFloatField;
    tlbDoc: TToolBar;
    btnDoc: TToolButton;
    actDoc: TAction;
    sepDocs: TToolButton;
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure actDocUpdate(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
  private
    { Private declarations }
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
  public
    { Public declarations }
  end;

implementation

uses
  uUserActivityConsts, uDocUtils, fExceptEventTypeEdit;

{$R *.dfm}

resourcestring
  SCannotBeSelectedErrorMsg = 'Този Вид Недопустими Отклонения не може да бъде избран';

function TfmExceptEventTypesTree.IsRootReadOnly: Boolean;
begin
  Result:= False;
end;

procedure TfmExceptEventTypesTree.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotExceptEventType,
    cdsData);
end;

procedure TfmExceptEventTypesTree.actDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= cdsDataHAS_DOC_ITEMS.AsInteger;
end;

procedure TfmExceptEventTypesTree.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsData_EE_TYPE_DISPLAY_NAME.AsString:=
    Format('%s %s (%s)', [
      cdsDataEE_TYPE_FULL_NO.AsString,
      cdsDataEXCEPT_EVENT_TYPE_NAME.AsString,
      cdsDataEXCEPT_EVENT_TYPE_SHORT_NAME.AsString]);

  if IsRoot then
    cdsData_EE_TYPE_TREE_ICON.AsInteger:= 0
  else
    cdsData_EE_TYPE_TREE_ICON.AsInteger:= 2 + 2 * cdsDataIS_GROUP.AsInteger;
end;

function TfmExceptEventTypesTree.GetCannotBeSelectedErrorMsg: string;
begin
  Result:= SCannotBeSelectedErrorMsg;
end;

function TfmExceptEventTypesTree.IsGroup: Boolean;
begin
  Result:= cdsDataIS_GROUP.AsBoolean;
end;

function TfmExceptEventTypesTree.IsInactive: Boolean;
begin
  Result:= False;
end;

function TfmExceptEventTypesTree.IsRoot: Boolean;
begin
  Result:= cdsDataPARENT_EXCEPT_EVENT_TYPE_CODE.IsNull;
end;

function TfmExceptEventTypesTree.KeyFieldName: string;
begin
  Result:= 'EXCEPT_EVENT_TYPE_CODE';
end;

function TfmExceptEventTypesTree.LocalNoFieldName: string;
begin
  Result:= 'EXCEPT_EVENT_TYPE_LOCAL_NO';
end;

function TfmExceptEventTypesTree.ParentFieldName: string;
begin
  Result:= 'PARENT_EXCEPT_EVENT_TYPE_CODE';
end;

function TfmExceptEventTypesTree.ParentNodeCode: Integer;
begin
  Result:= cdsDataPARENT_EXCEPT_EVENT_TYPE_CODE.AsInteger;
end;

procedure TfmExceptEventTypesTree.SetPrintDataSetParams;
begin
  inherited;
  cdsPrintTree.Params.ParamByName('EXCEPT_EVENT_TYPE_CODE').AsInteger:= cdsDataEXCEPT_EVENT_TYPE_CODE.AsInteger;
end;

procedure TfmExceptEventTypesTree.ShowEditForm(AEditMode: TEditMode; AInsertGroup: Boolean);
var
  EditedExceptEventTypeCode: Integer;
begin
  EditedExceptEventTypeCode:= TfmExceptEventTypeEdit.ShowForm(dmDocClient, cdsData, AEditMode, doNone, AInsertGroup);

  if (EditedExceptEventTypeCode > 0) then
    RefreshTree(EditedExceptEventTypeCode);
end;

end.
