unit fTreeNomWithParamsForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fTreeNomForm, Db, DBClient, ImgList, ActnList, ComCtrls, GridsEh,
  StdCtrls, TreeParentsComboBox, DBCtrls, ColorNavigator,
  ToolWin, Buttons, ExtCtrls, uClientTypes, Menus, fTreeNomEditorForm,
  AbmesClientDataSet, DBGridEh, AbmesDBGrid, AbmesFields, fBaseFrame,
  fDBFrame, fTreeNodeParamsFrame, JvButtons, JvComponent, JvCaptionButton,
  JvComponentBase, ParamDataSet, AbmesDBCheckBox, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions,
  uExcelExport;

type
  TTreeNomWithParamsForm = class(TTreeNomEditorForm)
    cdsNodeChildrenCHANGE_DATE_TIME: TAbmesSQLTimeStampField;
    cdsTreeNodeParams: TAbmesClientDataSet;
    cdsTreeNodeParamsNODE_PARAM_CODE: TAbmesFloatField;
    cdsPrintTreeNODE_PARAM_NAMES: TAbmesWideStringField;
    cdsPrintTreeNODE_PARAM_VALUES: TAbmesWideStringField;
    procedure cdsNodeChildrenBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsNodeChildrenBeforePost(DataSet: TDataSet);
    procedure cdsNodeChildrenAfterPost(DataSet: TDataSet);
    procedure tvTreeChange(Sender: TObject; Node: TTreeNode);
  private
    FOldSelectedNodeLevel: Integer;
    procedure SyncTreeNodeParams;
    { Private declarations }
  protected
    FParamsClientDataSet: TClientDataSet;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function GetExcelExportSubTreeMoreCellsDataFunc: TGetMoreCellsDataFunc; override;
  public
    { Public declarations }
  end;

implementation

uses
  fTreeNomWithParamsEditForm, Variants, uClientDateTime, fTreeForm, uUtils,
  System.Types, System.StrUtils;

{$R *.DFM}

{ TTreeNomWithParamsForm }

function TTreeNomWithParamsForm.ShowEditForm(
  AEditMode: TEditMode): Boolean;
begin
  Assert(Assigned(ChildEditFormClass));
  Assert(ChildEditFormClass.InheritsFrom(TTreeNomWithParamsEditForm));

  Assert(not dmDocClient.Modified);
  Assert(dmDocClient.cdsDocs.State = dsBrowse);

  Result:=
    TTreeNomWithParamsEditFormClass(ChildEditFormClass).ShowForm(dmDocClient, cdsNodeChildren,
      AEditMode, doNone, CreateLikeNodeID,
      @FParamsClientDataSet);

  Assert(not dmDocClient.Modified);
  Assert(dmDocClient.cdsDocs.State = dsBrowse);
end;

procedure TTreeNomWithParamsForm.tvTreeChange(Sender: TObject; Node: TTreeNode);
begin
  SyncTreeNodeParams;
  inherited;
end;

procedure TTreeNomWithParamsForm.cdsNodeChildrenBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;

  OwnerData:= VarArrayCreate([0, 0], varVariant);

  if Assigned(FParamsClientDataSet) and (FParamsClientDataSet.ChangeCount > 0) then
    OwnerData[0]:= FParamsClientDataSet.Delta
  else
    OwnerData[0]:= Unassigned;
end;

procedure TTreeNomWithParamsForm.cdsNodeChildrenBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  cdsNodeChildrenCHANGE_DATE_TIME.AsDateTime:= ContextNow;
end;

function TTreeNomWithParamsForm.GetExcelExportSubTreeMoreCellsDataFunc: TGetMoreCellsDataFunc;
begin
  Result:= StandardNodeParamsMoreCellsDataFunc();
end;

procedure TTreeNomWithParamsForm.cdsNodeChildrenAfterPost(
  DataSet: TDataSet);
begin
  inherited;

  if Assigned(FParamsClientDataSet) then
    FParamsClientDataSet.MergeChangeLog;
end;

procedure TTreeNomWithParamsForm.SyncTreeNodeParams;
begin
  if (tvTree.Selected.Level < FOldSelectedNodeLevel) then
    begin
      cdsTreeNodeParams.ConnectionBroker:= cdsNodeChildren.ConnectionBroker;
      cdsTreeNodeParams.Params.ParamByName('NODE_CODE').AsInteger:= TNodeData(tvTree.Selected.Data).ID;
      cdsTreeNodeParams.TempOpen/
        procedure
        var
          i: Integer;
        begin
          FTreeNodeParams.BeginUpdate;
          try
            i:= 0;
            while (i < FTreeNodeParams.Count) do
              if cdsTreeNodeParams.Locate(cdsTreeNodeParamsNODE_PARAM_CODE.FieldName, FTreeNodeParams.Items[i].TreeNodeParamId, []) then
                Inc(i)
              else
                FTreeNodeParams.Delete(i);
          finally
            FTreeNodeParams.EndUpdate;
          end;
        end;
    end;

  FOldSelectedNodeLevel:= tvTree.Selected.Level;
end;

end.
