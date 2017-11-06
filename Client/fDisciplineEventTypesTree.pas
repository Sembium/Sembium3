unit fDisciplineEventTypesTree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeOnlyNomForm, ImgList, Menus, DB, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, ComCtrls, JvExComCtrls,
  JvComponent, JvDBTreeView, ToolWin, StdCtrls, Buttons, ExtCtrls, AbmesFields,
  uClientTypes;

type
  TfmDisciplineEventTypesTree = class(TTreeOnlyNomForm)
    cdsData_DET_TREE_DISPLAY_NAME: TAbmesWideStringField;
    cdsDataDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsDataPARENT_DISC_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsDataDISC_EVENT_TYPE_LOCAL_NO: TAbmesFloatField;
    cdsDataDISC_EVENT_TYPE_FULL_NO: TAbmesWideStringField;
    cdsDataDISC_EVENT_TYPE_FMT_FULL_NO: TAbmesWideStringField;
    cdsDataNAME: TAbmesWideStringField;
    cdsDataSHORT_NAME: TAbmesWideStringField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDataDISC_EVENT_TYPE_SIGN: TAbmesFloatField;
    cdsData_DET_TREE_ICON: TIntegerField;
    cdsPrintTreeNODE_ID: TAbmesFloatField;
    cdsPrintTreePARENT_NODE_ID: TAbmesFloatField;
    cdsPrintTreeNODE_NAME: TAbmesWideStringField;
    cdsPrintTreeFORMATED_NODE_NO: TAbmesWideStringField;
    cdsPrintTreeNODE_LEVEL: TAbmesFloatField;
    cdsPrintTreeNODE_CHILD_COUNT: TAbmesFloatField;
    cdsPrintTreeNODE_TYPE: TAbmesFloatField;
    cdsPrintTreeIS_LAST_CHILD: TAbmesFloatField;
    cdsPrintTreeHAS_CHILDREN: TAbmesFloatField;
    cdsDataIS_INACTIVE: TAbmesFloatField;
    actDoc: TAction;
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
    function IsRootReadOnly: Boolean; override;
    class function CanUseDocs: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  fDisciplineEventTypeEdit, uDocUtils;

{$R *.dfm}

resourcestring
  SCannotBeSelectedErrorMsg = 'Този Вид Извънредно Отклонение в Работно Поведение не може да бъде избран';

{ TfmDisciplineEventTypesTree }

function TfmDisciplineEventTypesTree.IsRootReadOnly: Boolean;
begin
  Result:= False;
end;

procedure TfmDisciplineEventTypesTree.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotDiscEventType,
    cdsData);
end;

procedure TfmDisciplineEventTypesTree.actDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean);
end;

class function TfmDisciplineEventTypesTree.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmDisciplineEventTypesTree.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsData_DET_TREE_DISPLAY_NAME.AsString:=
    cdsDataDISC_EVENT_TYPE_FULL_NO.AsString +
    ' ' +
    cdsDataNAME.AsString;

  if cdsDataIS_GROUP.AsBoolean then
    cdsData_DET_TREE_ICON.AsInteger:= 2
  else
    cdsData_DET_TREE_ICON.AsInteger:= 2 * (1 + cdsDataDISC_EVENT_TYPE_SIGN.AsInteger);
end;

function TfmDisciplineEventTypesTree.GetCannotBeSelectedErrorMsg: string;
begin
  Result:= SCannotBeSelectedErrorMsg;
end;

function TfmDisciplineEventTypesTree.KeyFieldName: string;
begin
  Result:= 'DISC_EVENT_TYPE_CODE';
end;

function TfmDisciplineEventTypesTree.LocalNoFieldName: string;
begin
  Result:= 'DISC_EVENT_TYPE_LOCAL_NO';
end;

function TfmDisciplineEventTypesTree.ParentFieldName: string;
begin
  Result:= 'PARENT_DISC_EVENT_TYPE_CODE';
end;

function TfmDisciplineEventTypesTree.ParentNodeCode: Integer;
begin
  Result:= cdsDataPARENT_DISC_EVENT_TYPE_CODE.AsInteger;
end;

function TfmDisciplineEventTypesTree.IsGroup: Boolean;
begin
  Result:= cdsDataIS_GROUP.AsBoolean;
end;

function TfmDisciplineEventTypesTree.IsInactive: Boolean;
begin
  Result:= cdsDataIS_INACTIVE.AsBoolean;
end;

function TfmDisciplineEventTypesTree.IsRoot: Boolean;
begin
  Result:= cdsDataPARENT_DISC_EVENT_TYPE_CODE.IsNull;
end;

procedure TfmDisciplineEventTypesTree.SetPrintDataSetParams;
begin
  inherited SetPrintDataSetParams;
  cdsPrintTree.Params.ParamByName('DISC_EVENT_TYPE_CODE').AsInteger:= cdsDataDISC_EVENT_TYPE_CODE.AsInteger;
end;

procedure TfmDisciplineEventTypesTree.ShowEditForm(AEditMode: TEditMode; AInsertGroup: Boolean);
var
  EditedDisciplineEventTypeCode: Integer;
begin
  EditedDisciplineEventTypeCode:= TfmDisciplineEventTypeEdit.ShowForm(dmDocClient, cdsData, AEditMode, AInsertGroup);

  if (EditedDisciplineEventTypeCode > 0) then
    RefreshTree(EditedDisciplineEventTypeCode);
end;

end.
