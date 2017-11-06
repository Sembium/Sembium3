unit fTreeNodeGridFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeNodeFilter, DBGridEhGrouping, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, Buttons, GridsEh, DBGridEh, AbmesDBGrid,
  ExtCtrls, StdCtrls, uClientTypes, uAttributeUtils, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh, System.Actions;

type
  NodeNoColumnWidthAttribute = class(TIntegerValueAttribute);

const
  DefaultNodeNoWidth = 63;

type
  [NodeNoColumnWidth(DefaultNodeNoWidth)]
  TfrTreeNodeGridFilter = class(TfrTreeNodeFilter)
    pnlNodesButtons: TPanel;
    btnAddNode: TSpeedButton;
    btnDelNode: TSpeedButton;
    btnEditNode: TSpeedButton;
    grdChosenNodes: TAbmesDBGrid;
    actAddNode: TAction;
    actDelNode: TAction;
    actEditNode: TAction;
    procedure actAddNodeUpdate(Sender: TObject);
    procedure actAddNodeExecute(Sender: TObject);
    procedure actDelNodeUpdate(Sender: TObject);
    procedure actDelNodeExecute(Sender: TObject);
    procedure actEditNodeUpdate(Sender: TObject);
    procedure actEditNodeExecute(Sender: TObject);
    procedure grdChosenNodesDblClick(Sender: TObject);
    procedure cdsChosenNodesAfterOpen(DataSet: TDataSet);
    procedure actFrameUpdate(Sender: TObject);
  private
    procedure cdsChosenNodesNODE_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  protected
    class function NodeNoColumnWidth: Integer; virtual;
    function EditNodeField: Integer; virtual; abstract;
    function ShowNodeEditForm(em: TEditMode): Boolean; virtual; abstract;
  end;

var
  frTreeNodeGridFilter: TfrTreeNodeGridFilter;

implementation

uses
  uUtils, uClientUtils, fEditForm, Menus, uScalingUtils;

{$R *.dfm}

procedure TfrTreeNodeGridFilter.actAddNodeExecute(Sender: TObject);
var
  DidChange: Boolean;
begin
  inherited;
  FillRememberChosenNodes(False);
  try
    DidChange:= False;

    if ControlIsPressed or ShiftIsPressed then
      begin
        cdsChosenNodes.Append;
        try
          if (EditNodeField > 0) then
            begin
              cdsChosenNodes.Post;
              DidChange:= True;
            end
          else
            cdsChosenNodes.Cancel;
        except
          cdsChosenNodes.Cancel;
          raise;
        end;   { try }
      end
    else
      begin
        if ShowNodeEditForm(emInsert) then
          DidChange:= True;
      end;

    if DidChange then
      ForceUpdateRecord;
  finally
    ClearRememberChosenNodes;
  end;  { try }
end;

procedure TfrTreeNodeGridFilter.actAddNodeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetAddNodeEnabled;
end;

procedure TfrTreeNodeGridFilter.actDelNodeExecute(Sender: TObject);
begin
  inherited;

  if not ConfirmRecordDelete then
    Exit;

  cdsChosenNodes.Delete;
  ForceUpdateRecord;
end;

procedure TfrTreeNodeGridFilter.actDelNodeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetDelNodeEnabled;
end;

procedure TfrTreeNodeGridFilter.actEditNodeExecute(Sender: TObject);
var
  em: TEditMode;
  DidChange: Boolean;
begin
  inherited;
  FillRememberChosenNodes(True);
  try
    DidChange:= False;

    if ReadOnly and not BaseFilterEnabled then
      em:= emReadOnly
    else
      em:= emEdit;

    if ControlIsPressed or ShiftIsPressed then
      begin
        cdsChosenNodes.Edit;
        try
          if (EditNodeField > 0) then
            begin
              cdsChosenNodes.Post;
              DidChange:= True;
            end
          else
            cdsChosenNodes.Cancel;
        except
          cdsChosenNodes.Cancel;
          raise;
        end;   { try }
      end
    else
      begin
        if ShowNodeEditForm(em) then
          DidChange:= True;
      end;

    if DidChange then
      ForceUpdateRecord;
  finally
    ClearRememberChosenNodes;
  end;  { try }
end;

procedure TfrTreeNodeGridFilter.actEditNodeUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:= GetEditNodeEnabled;

  if ReadOnly then
    (Sender as TAction).Hint:= SReadOnlyCaption + cDialogSuffix
  else
    (Sender as TAction).Hint:= SEditCaption + cDialogSuffix;
end;

procedure TfrTreeNodeGridFilter.actFrameUpdate(Sender: TObject);
begin
  inherited;

  if (NodeNoColumnWidth <> grdChosenNodes.Columns[1].Width) then
    grdChosenNodes.Columns[1].Width:= NodeNoColumnWidth;

  AutoSizeColumn(grdChosenNodes, 0);
end;

procedure TfrTreeNodeGridFilter.grdChosenNodesDblClick(Sender: TObject);
begin
  inherited;

  if not actEditNode.Execute then
    actAddNode.Execute;
end;

class function TfrTreeNodeGridFilter.NodeNoColumnWidth: Integer;
var
  NodeNoColumnWidthAttr: NodeNoColumnWidthAttribute;
begin
  NodeNoColumnWidthAttr:= FindAttribute<NodeNoColumnWidthAttribute>;

  if Assigned(NodeNoColumnWidthAttr) then
    Result:= NodeNoColumnWidthAttr.Value
  else
    Result:= DefaultNodeNoWidth;

  Result:= ScalePixels(Result);
end;

procedure TfrTreeNodeGridFilter.cdsChosenNodesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsChosenNodes.FieldByName('NODE_NAME').OnGetText:= cdsChosenNodesNODE_NAMEGetText;
end;

procedure TfrTreeNodeGridFilter.cdsChosenNodesNODE_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull and Sender.DataSet.IsEmpty and ShowAllWhenEmpty then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

end.
