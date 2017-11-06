unit fTreeNodeFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFieldEditFrame, fTreeSelectForm, StdCtrls, Mask, JvToolEdit, 
  Buttons, ExtCtrls, Db, ImgList, ActnList, DBClient, AbmesClientDataSet,
  AbmesFields, ToolWin, ComCtrls, DBCtrls, uDocUtils, JvExMask,
  JvDBControls, System.Actions;

type
  TTreeNodeFieldEditFrame = class(TFieldEditFrame)
    gbTreeNode: TGroupBox;
    pnlTreeNode: TPanel;
    pnlTreeNodeName: TPanel;
    pnlTreeNodeNo: TPanel;
    edtTreeNodeNo: TJvDBComboEdit;
    cdsTreeNode: TAbmesClientDataSet;
    cdsTreeNodeNODE_NAME: TAbmesWideStringField;
    cdsTreeNodeNODE_NO: TAbmesWideStringField;
    dsTreeNode: TDataSource;
    cdsTreeNodeNODE_CODE: TAbmesFloatField;
    cdsTreeNodeDOC_BRANCH_CODE: TAbmesFloatField;
    cdsTreeNodeDOC_CODE: TAbmesFloatField;
    cdsTreeNodeHAS_DOCUMENTATION: TAbmesFloatField;
    pnlEditButtons: TPanel;
    btnClearFieldValues: TSpeedButton;
    btnInvokeTreeEditor: TSpeedButton;
    actInvokeTreeEditor: TAction;
    pnlRightButtons: TPanel;
    tlbDocButton: TToolBar;
    btnDocumentation: TToolButton;
    edtTreeNodeName: TDBEdit;
    actTreeNodeDoc: TAction;
    procedure cdsTreeNodeNODE_NAMEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actFrameUpdate(Sender: TObject);
    procedure cdsTreeNodeNODE_NOChange(Sender: TField);
    procedure cdsTreeNodeNODE_CODEChange(Sender: TField);
    procedure actInvokeTreeEditorExecute(Sender: TObject);
    procedure actTreeNodeDocUpdate(Sender: TObject);
    procedure actTreeNodeDocExecute(Sender: TObject);
    procedure edtTreeNodeNoChange(Sender: TObject);
    procedure cdsTreeNodeNODE_NAMEChange(Sender: TField);
    procedure actInvokeTreeEditorUpdate(Sender: TObject);
  private
    FTreeDetailSelection: TTreeDetailSelection;
    FRootCode: Integer;
    FDocButtonVisible: Boolean;
    FAllowColorOverride: Boolean;

    FUpdatingInnerDataSet: Boolean;
    FNeedsInitialUpdate: Boolean;
    FInDataChange: Boolean;

    FNodeCodeOldValue: Integer;
    FTreeNodeNameVisible: Boolean;
    FTreeNodeNoVisible: Boolean;
    FDocReadOnly: Boolean;

    FDefaultColor: TColor;
    FReadOnlyColor: TColor;
  protected
    procedure DataChange(Sender: TObject); override;
    procedure UpdateData(Sender: TObject); override;

    function GetNodeCode(ANodeNo: string): Integer; virtual; abstract;
    function IsInstance(ANodeCode: Integer): Boolean; virtual; abstract;
    function NoMatchingNodeErrorMsg: string; virtual; abstract;
    function NodeNotAnInstanceErrorMsg: string; virtual; abstract;
    function DoEditTreeNodeCode(ANodeCode: Integer): Integer; virtual; abstract;
    procedure UpdateTreeNode; virtual; abstract;
    function GetEditTreeNodeButtonHint: string; virtual; abstract;
    function GetDocButtonHintFormat: string; virtual;
    procedure ValidateNode(ANodeCode: Integer); virtual;
    procedure NewReadOnlySet; override;
    function TreeDetailSelectionIfReadOnly: TTreeDetailSelection;
    function GetFocusControl: TWinControl; override;
    function GetDocOwnerType: TDocOwnerType; virtual; abstract;
    function RawNoWidth: Integer; virtual;
    function GetReadOnlyColor(AReadOnly: Boolean): TColor; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;

    property TreeDetailSelection: TTreeDetailSelection
      read FTreeDetailSelection write FTreeDetailSelection default tdsAll;
    property RootCode: Integer read FRootCode write FRootCode default 1;
    property DocButtonVisible: Boolean read FDocButtonVisible write FDocButtonVisible default False;
    property AllowColorOverride: Boolean read FAllowColorOverride write FAllowColorOverride default True;
    property TreeNodeNameVisible: Boolean read FTreeNodeNameVisible write FTreeNodeNameVisible default True;
    property TreeNodeNoVisible: Boolean read FTreeNodeNoVisible write FTreeNodeNoVisible default True;
    property DocReadOnly: Boolean read FDocReadOnly write FDocReadOnly default True;
    property DefaultColor: TColor read FDefaultColor write FDefaultColor;
    property ReadOnlyColor: TColor read FReadOnlyColor write FReadOnlyColor;
  end;

implementation

uses
  dMain, uUtils, uClientTypes, uColorConsts, uClientUtils, Variants,
  uToolbarUtils, uScalingUtils;

{$R *.dfm}

resourcestring
  SDocButtonHintFormat = 'Показва МИИО на избрания %s';
  SDocButtonHint = 'Показва МИИО';
  SAllInBrackets = '< всички >';

{ TTreeNodeFieldEditFrame }

procedure TTreeNodeFieldEditFrame.NewReadOnlySet;
begin
  inherited;

  edtTreeNodeName.ReadOnly:= ReadOnly;
  edtTreeNodeNo.ReadOnly:= ReadOnly;
end;

function TTreeNodeFieldEditFrame.TreeDetailSelectionIfReadOnly: TTreeDetailSelection;
begin
  if Assigned(dsData.DataSet) and not ReadOnly and dsData.DataSet.CanModify then
    Result:= TreeDetailSelection
  else   { if }
    Result:= tdsNone;
end;

procedure TTreeNodeFieldEditFrame.ValidateNode(ANodeCode: Integer);
begin
  if (TreeDetailSelection in [tdsNone, tdsInstance]) and
     not IsInstance(ANodeCode) then
    raise Exception.Create(NodeNotAnInstanceErrorMsg);
end;

constructor TTreeNodeFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  FTreeDetailSelection:= tdsAll;
  FRootCode:= 1;
  FNeedsInitialUpdate:= True;
  FDocButtonVisible:= True;
  FAllowColorOverride:= True;
  FNodeCodeOldValue:= 0;
  FTreeNodeNameVisible:= True;
  FTreeNodeNoVisible:= True;
  FDocReadOnly:= True;
  DefaultColor:= ReadOnlyColors[False];
  ReadOnlyColor:= ReadOnlyColors[True];
end;

procedure TTreeNodeFieldEditFrame.CloseDataSets;
begin
  cdsTreeNode.Close;
  inherited;
end;

procedure TTreeNodeFieldEditFrame.OpenDataSets;
begin
  inherited;
  if not cdsTreeNode.Active then
    begin
      cdsTreeNode.CreateDataSet;
      cdsTreeNode.Append;
    end;
end;

procedure TTreeNodeFieldEditFrame.cdsTreeNodeNODE_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if ShowAllWhenEmpty and (cdsTreeNodeNODE_NAME.AsString = '') then
    Text:= SAllInBrackets
  else
    Text:= cdsTreeNodeNODE_NAME.AsString;
end;

procedure TTreeNodeFieldEditFrame.DataChange(Sender: TObject);
begin
  inherited DataChange(Sender);

  if not SettingModified and not SettingEdit then
    begin
      FInDataChange:= True;
      try
        if (FieldCount > 0) and
           Assigned(Fields[0]) then
          begin
            if not cdsTreeNode.Active then
              begin
                cdsTreeNode.CreateDataSet;
                cdsTreeNode.Append;
              end;

            cdsTreeNodeNODE_CODE.AsVariant:= Fields[0].AsVariant;
          end;
      finally
        FInDataChange:= False;
      end;  { try }
    end;  { if }
end;

procedure TTreeNodeFieldEditFrame.UpdateData(Sender: TObject);
begin
  inherited UpdateData(Sender);

  Assert(cdsTreeNode.Active);
  Assert(FieldCount > 0);
  Assert(Assigned(Fields[0]));
  Assert(Assigned(Fields[0].DataSet));

  cdsTreeNode.UpdateRecord;

  try
    CheckEditMode(Fields[0].DataSet);
    Fields[0].AsVariant:= cdsTreeNodeNODE_CODE.AsVariant;
  except
    Reset;
    raise;
  end;  { try }
end;

function TTreeNodeFieldEditFrame.RawNoWidth: Integer;
begin
  Result:= 73;
end;

procedure TTreeNodeFieldEditFrame.actFrameUpdate(Sender: TObject);
var
  IsReadOnly: Boolean;
  al: TAlign;
begin
  inherited;

  if FNeedsInitialUpdate then
    begin
      FNeedsInitialUpdate:= False;
      DataChange(Self);
      if (gbTreeNode.Caption = '') then
        actTreeNodeDoc.Hint:= SDocButtonHint
      else
        actTreeNodeDoc.Hint:= Format(GetDocButtonHintFormat, [Trim(gbTreeNode.Caption)]);  // na Create oshte niama info ako naslednicite sa prenapisali gbTreeNode.Caption
    end;

  IsReadOnly:= ReadOnly or not Assigned(dsData.DataSet) or not (dsData.DataSet.CanModify);

  if AllowColorOverride then
    begin
      edtTreeNodeName.Color:= GetReadOnlyColor(IsReadOnly);
      edtTreeNodeNo.Color:= GetReadOnlyColor(IsReadOnly);
    end;

  pnlTreeNodeName.Visible:= TreeNodeNameVisible;
  pnlTreeNodeNo.Visible:= TreeNodeNoVisible;

  if TreeNodeNameVisible then
    al:= alRight
  else
    al:= alClient;

  if (al <> pnlTreeNodeNo.Align) then
    pnlTreeNodeNo.Align:= al;

  NormalizedToolbar(tlbDocButton).Visible:= DocButtonVisible and Assigned(dmDocClient);

  if IsReadOnly then
    pnlEditButtons.Width:= btnInvokeTreeEditor.Width + 1
  else
    pnlEditButtons.Width:= btnInvokeTreeEditor.Width + btnClearFieldValues.Width + 2;

  if (pnlTreeNodeNo.Align <> alClient) then
    pnlTreeNodeNo.Width:= ScalePixels(RawNoWidth) + pnlEditButtons.Width;
  pnlEditButtons.Left:= edtTreeNodeNo.Width - pnlEditButtons.Width - 2;
  edtTreeNodeNo.ButtonWidth:= pnlEditButtons.Width;
  edtTreeNodeName.Height:= edtTreeNodeNo.Height;
end;

procedure TTreeNodeFieldEditFrame.cdsTreeNodeNODE_NOChange(Sender: TField);
var
  NodeCode: Integer;
begin
  inherited;

  if FUpdatingInnerDataSet then
    Exit;

  if (cdsTreeNodeNODE_NO.AsString = '') then
    cdsTreeNodeNODE_CODE.Clear
  else
    begin
      try
        NodeCode:= GetNodeCode(cdsTreeNodeNODE_NO.AsString);
        if (NodeCode <> 0) then
          begin
            ValidateNode(NodeCode);
            cdsTreeNodeNODE_CODE.AsInteger:= NodeCode;
          end
        else
          raise Exception.Create(NoMatchingNodeErrorMsg);
      except
        Sender.FocusControl;
        raise;
      end;   { try }
    end;
end;

procedure TTreeNodeFieldEditFrame.cdsTreeNodeNODE_CODEChange(
  Sender: TField);
begin
  inherited;

  if FUpdatingInnerDataSet or
     (cdsTreeNodeNODE_CODE.AsInteger = FNodeCodeOldValue) then
    Exit;

  FUpdatingInnerDataSet:= True;
  try
    FNodeCodeOldValue:= cdsTreeNodeNODE_CODE.AsInteger;

    if not FInDataChange then
      ForceUpdateRecord;

    if cdsTreeNodeNODE_CODE.IsNull then
      cdsTreeNode.ClearFields
    else
      UpdateTreeNode;
  finally
    FUpdatingInnerDataSet:= False;
  end;
end;

procedure TTreeNodeFieldEditFrame.actInvokeTreeEditorExecute(
  Sender: TObject);
var
  NewNodeCode: Integer;
begin
  inherited;
  Assert(FieldCount > 0);
  Assert(Assigned(Fields[0]));

  cdsTreeNode.UpdateRecord;
  SetFocus;

  NewNodeCode:= DoEditTreeNodeCode(cdsTreeNodeNODE_CODE.AsInteger);

  if (NewNodeCode = 0) then
    Exit;

  Edit;
  Modified;

  CheckEditMode(cdsTreeNode);
  cdsTreeNodeNODE_CODE.AsInteger:= NewNodeCode;
end;

procedure TTreeNodeFieldEditFrame.actTreeNodeDocUpdate(Sender: TObject);
begin
  inherited;

  with (Sender as TAction) do
    begin
      Visible:= DocButtonVisible and Assigned(dmDocClient);
      Enabled:= not cdsTreeNodeNODE_CODE.IsNull;
      ImageIndex:= Ord(cdsTreeNode.Active and cdsTreeNodeHAS_DOCUMENTATION.AsBoolean);
    end;
end;

procedure TTreeNodeFieldEditFrame.actTreeNodeDocExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  Assert(not cdsTreeNodeNODE_CODE.IsNull);
  Assert(Assigned(dmDocClient));

  SetFocus;

  if DocReadOnly then
    em:= emReadOnly
  else
    em:= emEdit;

  dmDocClient.OpenDoc(
    em,
    ((Sender as TAction).ActionComponent as TControl),
    GetDocOwnerType,
    cdsTreeNodeDOC_BRANCH_CODE.AsInteger,
    cdsTreeNodeDOC_CODE.AsInteger);
end;

function TTreeNodeFieldEditFrame.GetFocusControl: TWinControl;
begin
  if pnlTreeNodeNo.Visible then
    Result:= edtTreeNodeNo
  else
    Result:= edtTreeNodeName;
end;

function TTreeNodeFieldEditFrame.GetReadOnlyColor(AReadOnly: Boolean): TColor;
begin
  Result:= IfThen(AReadOnly, ReadOnlyColor, DefaultColor);
end;

procedure TTreeNodeFieldEditFrame.edtTreeNodeNoChange(Sender: TObject);
begin
  inherited;
  if (not FInDataChange) and (cdsTreeNode.State in dsEditModes) then
    begin
      Edit;
      Modified;
    end;  { if }
end;

function TTreeNodeFieldEditFrame.GetDocButtonHintFormat: string;
begin
  Result:= SDocButtonHintFormat;
end;

procedure TTreeNodeFieldEditFrame.cdsTreeNodeNODE_NAMEChange(
  Sender: TField);
begin
  inherited;
  edtTreeNodeName.Hint:= cdsTreeNodeNODE_NAME.Text; 
  edtTreeNodeName.ShowHint:= not cdsTreeNodeNODE_NAME.IsNull;
end;

procedure TTreeNodeFieldEditFrame.actInvokeTreeEditorUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not (
    ReadOnly and
    cdsTreeNodeNODE_CODE.IsNull
  );
  (Sender as TAction).Hint:= GetEditTreeNodeButtonHint;
end;

end.


