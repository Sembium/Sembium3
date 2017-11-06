unit fProfessionsTree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeOnlyNomForm, ImgList, Menus, DB, DBClient, AbmesClientDataSet,
  ActnList, ComCtrls, ToolWin, JvExComCtrls, JvDBTreeView, StdCtrls, Buttons,
  ExtCtrls, AbmesFields, uClientTypes, fBaseForm;

type
 [CanUseDocs]
  TfmProfessionsTree = class(TTreeOnlyNomForm)
    cdsDataPROFESSION_CODE: TAbmesFloatField;
    cdsDataPROFESSION_NAME: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHOUR_PRICE: TAbmesFloatField;
    cdsDataRECORD_CHANGED: TAbmesFloatField;
    cdsDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsDataDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsDataDOC_IS_COMPLETE: TAbmesFloatField;
    cdsDataACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDataUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDataUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDataPROFESSION_TYPE_NAME: TAbmesWideStringField;
    cdsDataPROFESSION_KIND_NAME: TAbmesWideStringField;
    cdsDataPROFESSION_LOCAL_NO: TAbmesFloatField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataPROFESSION_FULL_NO: TAbmesWideStringField;
    cdsDataPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsData_PROFESSION_TREE_ICON: TIntegerField;
    cdsData_PROFESSION_DISPLAY_NAME: TAbmesWideStringField;
    cdsDataPARENT_PROFESSION_CODE: TAbmesFloatField;
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
    sepAfterShowInactive: TToolButton;
    lblDoc: TLabel;
    btnDoc: TToolButton;
    actDoc: TAction;
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsDataBeforeDelete(DataSet: TDataSet);
    procedure actDocExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
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
  public
    { Public declarations }
  end;

implementation

uses
  uUserActivityConsts, fProfession, uDocUtils;

{$R *.dfm}

resourcestring
  SCannotBeSelectedErrorMsg = 'Тази Процесна Роля не може да бъде избрана';

procedure TfmProfessionsTree.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl), dotProfession, cdsData);
end;

procedure TfmProfessionsTree.actDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsDataHAS_DOCUMENTATION.AsBoolean)
end;

procedure TfmProfessionsTree.cdsDataBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  LoginContext.CheckUserActivity(uaProfessionsEdit);
end;

procedure TfmProfessionsTree.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsData_PROFESSION_DISPLAY_NAME.AsString:=
    Format('%s %s', [
      cdsDataPROFESSION_FULL_NO.AsString,
      cdsDataPROFESSION_NAME.AsString]);

  if IsRoot then
    cdsData_PROFESSION_TREE_ICON.AsInteger:= 157
  else
    cdsData_PROFESSION_TREE_ICON.AsInteger:=
      204 - 45 * cdsDataIS_GROUP.AsInteger;
end;

function TfmProfessionsTree.GetCannotBeSelectedErrorMsg: string;
begin
  Result:= SCannotBeSelectedErrorMsg;
end;

function TfmProfessionsTree.IsGroup: Boolean;
begin
  Result:= cdsDataIS_GROUP.AsBoolean;
end;

function TfmProfessionsTree.IsInactive: Boolean;
begin
  Result:= False;
end;

function TfmProfessionsTree.IsRoot: Boolean;
begin
  Result:= cdsDataPARENT_PROFESSION_CODE.IsNull;
end;

function TfmProfessionsTree.KeyFieldName: string;
begin
  Result:= 'PROFESSION_CODE';
end;

function TfmProfessionsTree.LocalNoFieldName: string;
begin
  Result:= 'PROFESSION_LOCAL_NO';
end;

function TfmProfessionsTree.ParentFieldName: string;
begin
  Result:= 'PARENT_PROFESSION_CODE';
end;

function TfmProfessionsTree.ParentNodeCode: Integer;
begin
  Result:= cdsDataPARENT_PROFESSION_CODE.AsInteger;
end;

procedure TfmProfessionsTree.SetPrintDataSetParams;
begin
  inherited;
  inherited SetPrintDataSetParams;
  cdsPrintTree.Params.ParamByName('PROFESSION_CODE').AsInteger:=
    cdsDataPROFESSION_CODE.AsInteger;
end;

procedure TfmProfessionsTree.ShowEditForm(AEditMode: TEditMode;
  AInsertGroup: Boolean);
var
  EditedProfessionCode: Integer;
begin
  if (AEditMode = emInsert) then
    LoginContext.CheckUserActivity(uaProfessionsEdit);

  if not LoginContext.HasUserActivity(uaProfessionsEdit) then
    AEditMode:= emReadOnly;

  EditedProfessionCode:=
    TfmProfession.ShowForm(dmDocClient, cdsData, AEditMode, doNone, AInsertGroup);

  if (EditedProfessionCode > 0) then
    RefreshTree(EditedProfessionCode);
end;

end.
