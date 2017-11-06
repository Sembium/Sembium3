unit fFinClassesTree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeOnlyNomForm, ImgList, Menus, DB, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, ComCtrls, JvExComCtrls,
  JvDBTreeView, ToolWin, StdCtrls, Buttons, ExtCtrls, AbmesFields, uClientTypes;

type
  TfmFinClassesTree = class(TTreeOnlyNomForm)
    cdsDataFIN_CLASS_CODE: TAbmesFloatField;
    cdsDataPARENT_FIN_CLASS_CODE: TAbmesFloatField;
    cdsDataFIN_CLASS_LOCAL_NO: TAbmesFloatField;
    cdsDataFIN_CLASS_FULL_NO: TAbmesWideStringField;
    cdsDataFIN_CLASS_FMT_FULL_NO: TAbmesWideStringField;
    cdsDataNAME: TAbmesWideStringField;
    cdsDataSHORT_NAME: TAbmesWideStringField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsData_FIN_CLASS_DISPLAY_NAME: TAbmesWideStringField;
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
    cdsData_FIN_CLASS_TREE_ICON: TIntegerField;
    tlbDoc: TToolBar;
    sepDocs: TToolButton;
    btnDoc: TToolButton;
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure actDocUpdate(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetCannotBeSelectedErrorMsg: string; override;
    function KeyFieldName: string; override;
    function ParentFieldName: string; override;
    function LocalNoFieldName: string; override;
    function ParentNodeCode: Integer; override;
    function IsGroup: Boolean; override;
    function IsInactive: Boolean; override;
    function IsRoot: Boolean; override;
    procedure SetPrintDataSetParams; override;
    procedure ShowEditForm(AEditMode: TEditMode; AInsertGroup: Boolean); override;
    class function CanUseDocs: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  uDocUtils, fFinClassEdit;

{$R *.dfm}

resourcestring
  SCannotBeSelectedErrorMsg = 'Тази Финансова Статия не може да бъде избрана';

{ TfmFinClassesTree }

procedure TfmFinClassesTree.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotFinanceClass,
    cdsData);
end;

procedure TfmFinClassesTree.actDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= cdsDataHAS_DOC_ITEMS.AsInteger;
end;

class function TfmFinClassesTree.CanUseDocs: Boolean;
begin
  Result:= True;
end;

function TfmFinClassesTree.GetCannotBeSelectedErrorMsg: string;
begin
  Result:= SCannotBeSelectedErrorMsg;
end;

function TfmFinClassesTree.IsGroup: Boolean;
begin
  Result:= cdsDataIS_GROUP.AsBoolean;
end;

function TfmFinClassesTree.IsInactive: Boolean;
begin
  Result:= False;
end;

function TfmFinClassesTree.IsRoot: Boolean;
begin
  Result:= cdsDataPARENT_FIN_CLASS_CODE.IsNull;
end;

function TfmFinClassesTree.KeyFieldName: string;
begin
  Result:= 'FIN_CLASS_CODE';
end;

function TfmFinClassesTree.LocalNoFieldName: string;
begin
  Result:= 'FIN_CLASS_LOCAL_NO';
end;

function TfmFinClassesTree.ParentFieldName: string;
begin
  Result:= 'PARENT_FIN_CLASS_CODE';
end;

function TfmFinClassesTree.ParentNodeCode: Integer;
begin
  Result:= cdsDataPARENT_FIN_CLASS_CODE.AsInteger;
end;

procedure TfmFinClassesTree.SetPrintDataSetParams;
begin
  inherited SetPrintDataSetParams;
  cdsPrintTree.Params.ParamByName('FIN_CLASS_CODE').AsInteger:= cdsDataFIN_CLASS_CODE.AsInteger;
end;

procedure TfmFinClassesTree.ShowEditForm(AEditMode: TEditMode; AInsertGroup: Boolean);
var
  EditedFinClassCode: Integer;
begin
  EditedFinClassCode:= TfmFinClassEdit.ShowForm(dmDocClient, cdsData, AEditMode, AInsertGroup);

  if (EditedFinClassCode > 0) then
    RefreshTree(EditedFinClassCode);
end;

procedure TfmFinClassesTree.cdsDataCalcFields(DataSet: TDataSet);
type
  TIsGroup = Boolean;

const
  FinClassTreeIconImageIndexes: array[TIsGroup] of Integer = (2, 0);

begin
  inherited;
  cdsData_FIN_CLASS_DISPLAY_NAME.AsString:=
    cdsDataFIN_CLASS_FULL_NO.AsString +
    ' ' +
    cdsDataNAME.AsString;

  cdsData_FIN_CLASS_TREE_ICON.AsInteger:= FinClassTreeIconImageIndexes[cdsDataIS_GROUP.AsBoolean];
end;

end.
