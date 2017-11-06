unit fTreeNomForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fTreeGridForm, Db, DBClient, ActnList, ImgList, ComCtrls, GridsEh,
  StdCtrls, ToolWin, Buttons, ExtCtrls, fTreeForm, DBCtrls,
  ColorNavigator, TreeParentsComboBox, uClientTypes, Menus, rDBDataReport,
  AbmesClientDataSet, DBGridEh, AbmesDBGrid, AbmesFields, fBaseFrame,
  fDBFrame, fTreeNodeParamsFrame, JvButtons, uTreeNodeParams, fFilterForm,
  JvComponent, JvCaptionButton, JvComponentBase, ParamDataSet, AbmesDBCheckBox,
  Generics.Collections, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions,
  uExcelExport, DynVarsEh, System.ImageList, EhLibVCL, DBAxisGridsEh;

type
  TNomNodeData = class(TNodeData)
  private
    FNodeNo: Real;
    FShowNo: string;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    procedure SetFromDataSet(ADataSet: TDataSet); override;

    property NodeNo: Real read FNodeNo write FNodeNo;
    property ShowNo: string read FShowNo write FShowNo;
  end;

type
  TTreeNomForm = class(TTreeGridForm)
    cdsNodeChildrenNODE_ID: TAbmesFloatField;
    cdsNodeChildrenPARENT_NODE_ID: TAbmesFloatField;
    cdsNodeChildrenNODE_NAME: TAbmesWideStringField;
    cdsNodeChildrenNODE_TYPE: TAbmesFloatField;
    actOpen: TAction;
    btnOpen: TToolButton;
    actPrintSubTree: TAction;
    sepTwo: TToolButton;
    btnPrintSubTree: TToolButton;
    cdsPrintTree: TAbmesClientDataSet;
    cdsPrintTreeNODE_ID: TAbmesFloatField;
    cdsPrintTreePARENT_NODE_ID: TAbmesFloatField;
    cdsPrintTreeNODE_NAME: TAbmesWideStringField;
    cdsPrintTreeNODE_NO: TAbmesFloatField;
    cdsPrintTreeNODE_LEVEL: TAbmesFloatField;
    cdsPrintTreeORDER_NO: TAbmesFloatField;
    cdsPrintTree_MAX_NODE_LEVEL: TAggregateField;
    cdsPrintTreeNODE_TYPE: TAbmesFloatField;
    sepThree: TToolButton;
    btnCopy: TToolButton;
    actCopyToClipboard: TAction;
    actCopyNameToClipboard: TAction;
    actCopyNoToClipboard: TAction;
    pmCopy: TPopupMenu;
    miCopyNoToClipboard: TMenuItem;
    miCopyNameToClipboard: TMenuItem;
    actShowParams: TAction;
    frTreeNodeParams: TfrTreeNodeParams;
    sptParams: TSplitter;
    cdsNodeChildrenIS_INACTIVE: TAbmesFloatField;
    actShowInactive: TAction;
    actFilterParams: TAction;
    cdsTreeNodeChildrenIS_INACTIVE: TAbmesFloatField;
    actExcelExport: TAction;
    btnExcelExport: TToolButton;
    pnlFind: TPanel;
    pnlQuickFind: TPanel;
    pnlFindDetails: TPanel;
    actFindOptions: TAction;
    actFind: TAction;
    pnlFindOptions: TPanel;
    grdFind: TAbmesDBGrid;
    cdsFind: TAbmesClientDataSet;
    dsFind: TDataSource;
    pdsFindParams: TParamDataSet;
    chbFindNodeName: TAbmesDBCheckBox;
    dsFindParams: TDataSource;
    chbFindNodeNo: TAbmesDBCheckBox;
    chbFindCaseSensitive: TAbmesDBCheckBox;
    bvlFindSeparator: TBevel;
    pnlQuickFindLeft: TPanel;
    tlbFindOptions: TToolBar;
    btnFindOptions: TToolButton;
    edtFind: TEdit;
    pnlQuickFindClient: TPanel;
    pnlFindDetailsSeparator: TPanel;
    actFocusFind: TAction;
    pdsFindParamsFIND_STRING: TAbmesWideStringField;
    pdsFindParamsCASE_SENSITIVE: TAbmesFloatField;
    pdsFindParamsFIND_NODE_NAME: TAbmesFloatField;
    pdsFindParamsFIND_NODE_NO: TAbmesFloatField;
    cdsFindNODE_ID: TAbmesFloatField;
    cdsFindPARENT_NODE_IDS: TAbmesWideStringField;
    cdsFindNODE_NAME: TAbmesWideStringField;
    cdsFindNODE_NO: TAbmesFloatField;
    tmrFind: TTimer;
    pnlFindButton: TPanel;
    btnFind: TBitBtn;
    pnlFindNavigator: TPanel;
    navFind: TDBColorNavigator;
    pnlFindResultStatus: TPanel;
    bvlFind: TBevel;
    pdsNodeChildren: TParamDataSet;
    tmrParams: TTimer;
    actLocalFind: TAction;
    btnLocalFind: TBitBtn;
    actExcelExportSubTree: TAction;
    btnExcelExportSubTree: TToolButton;
    cdsPrintTree_IMAGE_INDEX: TAbmesFloatField;
    cdsPrintTreeIS_INACTIVE: TAbmesFloatField;
    cdsPrintTree_IS_GROUP: TAbmesFloatField;
    procedure FormShow(Sender: TObject);
    procedure grdChildrenDblClick(Sender: TObject);
    procedure actOpenExecute(Sender: TObject);
    procedure actOpenUpdate(Sender: TObject);
    procedure actPrintSubTreeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdChildrenDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure actCopyNameToClipboardExecute(Sender: TObject);
    procedure actCopyToClipboardExecute(Sender: TObject);
    procedure actCopyNoToClipboardExecute(Sender: TObject);
    procedure actShowParamsExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvTreeChange(Sender: TObject; Node: TTreeNode);
    procedure cdsNodeChildrenAfterScroll(DataSet: TDataSet);
    procedure sptParamsCanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure tvTreeEnter(Sender: TObject);
    procedure grdChildrenEnter(Sender: TObject);
    procedure actShowInactiveExecute(Sender: TObject);
    procedure actUpperLevelExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actFilterParamsExecute(Sender: TObject);
    procedure cdsNodeChildrenBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure hcChildrenMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tvTreeCompare(Sender: TObject; Node1, Node2: TTreeNode;
      Data: Integer; var Compare: Integer);
    procedure cdsPrintTreeBeforeOpen(DataSet: TDataSet);
    procedure cdsPrintTreeBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actExcelExportUpdate(Sender: TObject);
    procedure actExcelExportExecute(Sender: TObject);
    procedure actFindOptionsUpdate(Sender: TObject);
    procedure actFindOptionsExecute(Sender: TObject);
    procedure pnlTreeResize(Sender: TObject);
    procedure actFindUpdate(Sender: TObject);
    procedure actFindExecute(Sender: TObject);
    procedure actFocusFindExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsFindAfterScroll(DataSet: TDataSet);
    procedure cdsFindBeforeOpen(DataSet: TDataSet);
    procedure tmrFindTimer(Sender: TObject);
    procedure cdsFindAfterOpen(DataSet: TDataSet);
    procedure grdFindDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure grdFindDblClick(Sender: TObject);
    procedure actFilterParamsUpdate(Sender: TObject);
    procedure tmrParamsTimer(Sender: TObject);
    procedure actLocalFindExecute(Sender: TObject);
    procedure actLocalFindUpdate(Sender: TObject);
    procedure actExcelExportSubTreeExecute(Sender: TObject);
    procedure cdsPrintTreeCalcFields(DataSet: TDataSet);
  private
    FReportClass: TDBDataReportClass;
    FTreeNodeParamsTreeFilterFormClass: TFilterFormClass;
    FSortTreeByName: Boolean;
    FFindString: string;
    FChildrenActions: TList<TAction>;
    FLocalFind: Boolean;
    FFindSecondaryShortCut: TShortCut;
    FLocalFindShortCut: TShortCut;
    FLocalFindSecondaryShortCut: TShortCut;
    FFlterParamsOriginalHint: string;
    procedure LocateCurrentFindResult;
    procedure UpdateResultStatus;
    procedure SetFindControlsWidths;
    procedure SetParamsMaxHeight;
    procedure Find;
    procedure LocalFind;
    function GetFindEnabled: Boolean;
    function FindControlActive: Boolean;
  protected
    FTreeNodeParams: TTreeNodeParams;
    FDontShowParams: Boolean;
    procedure ShowCurrentNodeParams; virtual;
    class function NodesHaveParams: Boolean; virtual;
    procedure DrawColumnWithImage(ADBGrid: TObject; const Rect: TRect;
      Column: TColumnEh; State: TGridDrawState; ANodeType: Integer);
    function GetSortBy(const AFieldName: string): string; override;
    function GetOpenEnabled: Boolean; virtual;
    function DefaultShowParams: Boolean; virtual;
    procedure SortByFieldName(AFieldName: string); override;
    function SplitterLowerBound: Integer; virtual;
    function GetExcelExportEnabled: Boolean; virtual;
    procedure RegisterChildrenAction(AAction: TAction);
    procedure RegisterChildrenActions(AActions: array of TAction);
    function GetParamsFiltered: Boolean; virtual;
    function GetExcelExportSubTreeMoreCellsDataFunc: TGetMoreCellsDataFunc; virtual;

    property ReportClass: TDBDataReportClass read FReportClass write FReportClass;
    property TreeNodeParamsTreeFilterFormClass: TFilterFormClass
      read FTreeNodeParamsTreeFilterFormClass write FTreeNodeParamsTreeFilterFormClass;
  public
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  rTreeDefault, Clipbrd, fTreeNodeParamsTreeFilterForm, uClientUtils,
  Variants, dMain, Math, uUtils, UITypes, System.StrUtils,
  System.Types, uTreeNodes, uScalingUtils, uAbmesDBGridHelpers;

{$R *.DFM}

resourcestring
  SNoResultsFound = 'Няма намерени резултати';
  SFindResultNo = 'Резултат %d от %d';
  SRow = 'ред';
  SRows = 'реда';

{ TNomNodeData }

procedure TNomNodeData.AssignTo(Dest: TPersistent);
begin
  inherited;

  if (Dest is TNomNodeData) then
    begin
      TNomNodeData(Dest).NodeNo:= NodeNo;
      TNomNodeData(Dest).ShowNo:= ShowNo;
    end;
end;

procedure TNomNodeData.SetFromDataSet(ADataSet: TDataSet);
var
  NodeNoField: TField;
  ShowNoField: TField;
begin
  inherited;

  NodeNoField:= ADataSet.FindField('NODE_NO');
  if Assigned(NodeNoField) then
    NodeNo:= NodeNoField.AsFloat;

  ShowNoField:= ADataSet.FindField('SHOW_NO');
  if Assigned(ShowNoField) then
    ShowNo:= ShowNoField.DisplayText;
end;

{ TTreeNomForm }

procedure TTreeNomForm.FormShow(Sender: TObject);
begin
  inherited;

  Assert(cdsNodeChildren.Active);

  if cdsNodeChildren.Locate('NODE_ID', FStartNodeID, []) then
    begin
      ActiveControl:= grdChildren;

      if not cdsNodeChildrenIS_INACTIVE.AsBoolean then
        actShowInactive.Execute;
    end
  else
    begin
      ActiveControl:= edtFind;
      actShowInactive.Execute;
    end;
end;

procedure TTreeNomForm.grdChildrenDblClick(Sender: TObject);
begin
  inherited;
  actOpen.Execute;
end;

procedure TTreeNomForm.DrawColumnWithImage(ADBGrid: TObject;
  const Rect: TRect; Column: TColumnEh; State: TGridDrawState;
  ANodeType: Integer);
var
  c: TColor;
  r: TRect;
  i: Integer;
begin
  Assert(ADBGrid is TAbmesDBGrid, 'ADBGrid must be of type TAbmesDBGrid');

  inherited;

  with Column.Field.DataSet do
    if BOF and EOF then Exit;

  with ADBGrid as TAbmesDBGrid do
    begin
      c:= Canvas.Brush.Color;
      try
        Canvas.Brush.Style:= bsClear;
        Canvas.Brush.Color:= c;
        Canvas.FillRect(Rect);
      finally
        Canvas.Brush.Color:= c;
      end;

      i:= GetInactiveNodeImageIndex(ANodeType, niImage, (ADBGrid as TAbmesDBGrid).DataSource.DataSet);
      tvTree.Images.Draw(Canvas, Rect.Left + 1, Rect.Top + ((Rect.Bottom - Rect.Top - tvTree.Images.Height) div 2), i);

      r:= Rect;
      Inc(r.Left, tvTree.Images.Width + 4);
      Canvas.TextRect(r, r.Left, r.Top + 2, Column.Field.DisplayText);
    end;
end;

function TTreeNomForm.GetSortBy(const AFieldName: string): string;
begin
  Result:= 'NODE_TYPE; ' + AFieldName;
end;

function TTreeNomForm.GetExcelExportEnabled: Boolean;
begin
  Result:=
    cdsNodeChildren.Active and
    (cdsNodeChildren.RecordCount > 0);
end;

function TTreeNomForm.GetExcelExportSubTreeMoreCellsDataFunc: TGetMoreCellsDataFunc;
begin
  Result:= nil;
end;

function TTreeNomForm.GetFindEnabled: Boolean;
begin
  Result:=
    (FFindString <> '') or
    (edtFind.Text <> '');
end;

function TTreeNomForm.GetOpenEnabled: Boolean;
begin
  Result:=
    cdsNodeChildren.Active and
    (not (cdsNodeChildren.BOF and cdsNodeChildren.EOF)) and
    (cdsNodeChildrenNODE_TYPE.Value < 2);
end;

function TTreeNomForm.GetParamsFiltered: Boolean;
begin
  Result:= not FTreeNodeParams.IsEmpty;
end;

procedure TTreeNomForm.actOpenExecute(Sender: TObject);
var
  tn: TTreeNode;
  i: Integer;
  NodeID: Integer;
begin
  inherited;

  Assert(cdsNodeChildren.Active);

  NodeID:= cdsNodeChildrenNODE_ID.AsInteger;

  tn:= nil;
  with tvTree.Selected do
    begin
      Expand(False);

      for i:= 0 to Count - 1 do
        if (TNodeData(Item[i].Data).ID = NodeID) then
          begin
            tn:= Item[i];
            Break;
          end;
    end;

  if Assigned(tn) then
    tvTree.Selected:= tn;
end;

procedure TTreeNomForm.actOpenUpdate(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  b:= GetOpenEnabled;
  (Sender as TAction).Enabled:= b;
end;

procedure TTreeNomForm.actPrintSubTreeExecute(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  Assert(Assigned(ReportClass));

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    with cdsPrintTree do
      begin
        Params.ParamByName('NODE_ID').AsInteger:=
          TNodeData(tvTree.Selected.Data).ID;
        Params.ParamByName('SHOW_INACTIVE').AsInteger:=
          Ord(actShowInactive.Checked);
        Params.ParamByName('MAX_RECORDS').AsInteger:= 5000;

        Open;
        try
          Screen.Cursor:= SaveCursor;
          try
            ReportClass.PrintReport(cdsPrintTree);
          finally
            Screen.Cursor:= crHourGlass;
          end;   { try }
        finally
          Close;
        end;   { try }
      end;   { with }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try }
end;

procedure TTreeNomForm.FormCreate(Sender: TObject);
var
  nhp: Boolean;
begin
  inherited;

  tvTree.SortType:= stData;

  NodeDataClass:= TNomNodeData;
  ReportClass:= TrptTreeDefault; // default

  nhp:= NodesHaveParams;

  actShowParams.Visible:= nhp;
  btnShowParams.Visible:= nhp;
  frTreeNodeParams.Visible:= nhp;
  sptParams.Visible:= nhp;
  actShowParams.Checked:= nhp;
  if nhp then
    with clbMain.Bands[1] do
      MinWidth:= MinWidth + btnShowParams.Width;

  if actFilterParams.Visible then
    with clbMain.Bands[1] do
      MinWidth:= MinWidth + btnFilterParams.Width;

  frTreeNodeParams.cdsParams.RemoteServer:=
    cdsTreeNode.RemoteServer;

  frTreeNodeParams.cdsParams.ConnectionBroker:=
    cdsTreeNode.ConnectionBroker;

  btnFilterParams.Left:= 60;

  pnlFindDetails.Visible:= False;
  pnlFind.AutoSize:= True;
  SetFindControlsWidths;
  SetParamsMaxHeight;

  FChildrenActions:= TList<TAction>.Create;
  RegisterChildrenActions([actUpperLevel, actOpen]);

  FFindSecondaryShortCut:= TextToShortCut(actFind.SecondaryShortCuts[0]);
  FLocalFindShortCut:= actLocalFind.ShortCut;
  FLocalFindSecondaryShortCut:= TextToShortCut(actLocalFind.SecondaryShortCuts[0]);

  FFlterParamsOriginalHint:= actFilterParams.Hint;
end;

procedure TTreeNomForm.grdChildrenDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;

  if cdsNodeChildren.Active and
     (Column.FieldName = 'NODE_NAME') then
    DrawColumnWithImage(Sender, Rect, Column, State,
      cdsNodeChildrenNODE_TYPE.AsInteger);
end;

procedure TTreeNomForm.actCopyNameToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsNodeChildrenNODE_NAME.AsString;
end;

procedure TTreeNomForm.actCopyToClipboardExecute(Sender: TObject);
begin
  inherited;
  actCopyNameToClipboard.Execute;
end;

procedure TTreeNomForm.actExcelExportExecute(Sender: TObject);
begin
  inherited;
  GridExcelExport(grdChildren);
end;

procedure TTreeNomForm.actExcelExportSubTreeExecute(Sender: TObject);
var
  c: TColumnEh;
  fld: TField;
begin
  Assert(Assigned(ReportClass));

  cdsPrintTree.Params.ParamByName('NODE_ID').AsInteger:= TNodeData(tvTree.Selected.Data).ID;
  cdsPrintTree.Params.ParamByName('SHOW_INACTIVE').AsInteger:= Ord(actShowInactive.Checked);
  cdsPrintTree.Params.ParamByName('MAX_RECORDS').AsInteger:= 50000;

  for c in grdChildren.AllColumns do
    begin
      fld:= cdsPrintTree.FindField(c.FieldName);
      if Assigned(fld) and (fld.DisplayLabel = fld.FieldName) then
        fld.DisplayLabel:= c.Title.Caption;
    end;

  TreeDataSetExcelExport(cdsPrintTree, 'NODE_NAME', 'NODE_LEVEL',
    TImageList(tvTree.Images), cdsPrintTree_IMAGE_INDEX.FieldName,
    GetExcelExportSubTreeMoreCellsDataFunc());
end;

procedure TTreeNomForm.actExcelExportUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetExcelExportEnabled;
  (Sender as TAction).Visible:= ExcelExportAvailable;
end;

procedure TTreeNomForm.actCopyNoToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsNodeChildren.FieldByName('NODE_NO').AsString;
end;

class function TTreeNomForm.NodesHaveParams: Boolean;
begin
  Result:= True;
end;

procedure TTreeNomForm.pnlTreeResize(Sender: TObject);
begin
  inherited;
  SetFindControlsWidths;
end;

procedure TTreeNomForm.RegisterChildrenAction(AAction: TAction);
begin
  if not FChildrenActions.Contains(AAction) then
    begin
      FChildrenActions.Add(AAction);
      AAction.Tag:= AAction.ShortCut;
    end;
end;

procedure TTreeNomForm.RegisterChildrenActions(AActions: array of TAction);
var
  act: TAction;
begin
  for act in AACtions do
    RegisterChildrenAction(act);
end;

procedure TTreeNomForm.actShowParamsExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Checked:= not Checked;
      frTreeNodeParams.Visible:= Checked;

      sptParams.Visible:= Checked;
      sptParams.Align:= alTop;
      sptParams.Align:= alBottom;

      ShowCurrentNodeParams;
    end;
end;

procedure TTreeNomForm.SetFindControlsWidths;
begin
  pnlQuickFindLeft.Width:= pnlTree.Width;
  pnlFindOptions.Width:= pnlTree.Width;
  grdFind.Columns[0].Width:= grdFind.Width - ScalePixels(34) - grdFind.Columns[1].Width;
end;

procedure TTreeNomForm.SetParamsMaxHeight;
begin
  frTreeNodeParams.Constraints.MaxHeight:=
    Max(0, pnlDetails.Height - SplitterLowerBound - ScalePixels(150));
end;

procedure TTreeNomForm.ShowCurrentNodeParams;
begin
  if (not actShowParams.Checked) or
     FDontShowParams or
     cdsNodeChildren.ControlsDisabled or
     not cdsNodeChildren.Active then
    Exit;

  frTreeNodeParams.ShowParamsFor(
    cdsNodeChildrenNODE_ID.AsInteger,
    cdsNodeChildrenNODE_NAME.AsString);
end;

procedure TTreeNomForm.Finalize;
begin
  pdsFindParams.Close;
  inherited;
end;

procedure TTreeNomForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  frTreeNodeParams.CloseDataSets;
end;

procedure TTreeNomForm.Initialize;
begin
  inherited;

  if not DefaultShowParams then
    actShowParams.Execute;

  frTreeNodeParams.Initialize;

  pdsFindParams.Open;

  InitializeAbmesDBGrid(grdFind);
end;

procedure TTreeNomForm.tmrFindTimer(Sender: TObject);
begin
  inherited;
  tmrFind.Enabled:= False;
  LocateCurrentFindResult;
end;

procedure TTreeNomForm.tmrParamsTimer(Sender: TObject);
begin
  inherited;
  tmrParams.Enabled:= False;
  ShowCurrentNodeParams;
end;

procedure TTreeNomForm.tvTreeChange(Sender: TObject; Node: TTreeNode);
begin
  inherited;
  ShowCurrentNodeParams;
end;

procedure TTreeNomForm.cdsFindAfterOpen(DataSet: TDataSet);
begin
  inherited;
  UpdateResultStatus;
end;

procedure TTreeNomForm.cdsFindAfterScroll(DataSet: TDataSet);
begin
  inherited;
  tmrFind.Enabled:= False;
  tmrFind.Enabled:= True;
end;

procedure TTreeNomForm.cdsFindBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsFind.Params.ParamByName('FIND_STRING').AsString:= FFindString;
  cdsFind.Params.ParamByName('SHOW_INACTIVE').AsInteger:= Ord(actShowInactive.Checked);
  cdsFind.Params.ParamByName('PARENT_CODE').Value:=
    IfThen(FLocalFind, cdsNodeChildren.Params.ParamByName('NODE_ID').Value, Null);
  cdsFind.Params.ParamByName('EXACT_MATCH').AsInteger:= Ord(ShiftIsPressed);
end;

procedure TTreeNomForm.cdsNodeChildrenAfterScroll(DataSet: TDataSet);
begin
  inherited;
  tmrParams.Enabled:= False;
  tmrParams.Enabled:= True;
end;

procedure TTreeNomForm.sptParamsCanResize(Sender: TObject;
  var NewSize: Integer; var Accept: Boolean);
begin
  GridSplitterCanResize(NewSize, Accept, SplitterLowerBound);
end;

procedure TTreeNomForm.tvTreeEnter(Sender: TObject);
begin
  inherited;
  ShowCurrentNodeParams;
end;

procedure TTreeNomForm.UpdateResultStatus;
begin
  if (cdsFind.RecordCount = 0) then
    pnlFindResultStatus.Caption:= SNoResultsFound
  else
    pnlFindResultStatus.Caption:= Format(SFindResultNo, [cdsFind.RecNo, cdsFind.RecordCount]);
end;

procedure TTreeNomForm.grdChildrenEnter(Sender: TObject);
begin
  inherited;
  ShowCurrentNodeParams;
end;

procedure TTreeNomForm.grdFindDblClick(Sender: TObject);
begin
  inherited;
  LocateCurrentFindResult;
end;

procedure TTreeNomForm.grdFindDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TTreeNomForm.actShowInactiveExecute(Sender: TObject);
var
  b: TBookmark;
  SaveCursor: TCursor;
begin
  inherited;
  with Sender as TAction do
    begin
      Checked:= not Checked;

      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        with cdsNodeChildren do
          begin
            DisableControls;
            try
              FDontShowParams:= True;
              try
                b:= Bookmark;
                try
                  Filtered:= not Checked;
                finally
                  try
                    Bookmark:= b;
                  except
                    // do nothing
                  end;  { try }
                end;  { try }
              finally
                FDontShowParams:= False;
                ShowCurrentNodeParams;
              end;  { try }
            finally
              EnableControls;
            end;  { try }
          end;  { with }
      finally
        Screen.Cursor:= SaveCursor;
      end;  { try SaveCursor }
    end;
end;

function TTreeNomForm.DefaultShowParams: Boolean;
begin
  Result:= True;
end;

procedure TTreeNomForm.actUpperLevelExecute(Sender: TObject);
var
  ParentNodeID: Integer;
begin
  Assert(cdsNodeChildren.Active);

  with cdsNodeChildren do
    begin
      DisableControls;
      try
        ParentNodeID:= TNomNodeData(tvTree.Selected.Data).ID;

        inherited;

        Locate('NODE_ID', ParentNodeID, []);
      finally
        EnableControls;
      end;   { try }

      ShowCurrentNodeParams;
    end;   { with }
end;

procedure TTreeNomForm.FormDestroy(Sender: TObject);
begin
  inherited;

  if Assigned(FTreeNodeParams) then
    FreeAndNil(FTreeNodeParams);

  FreeAndNil(FChildrenActions);
end;

procedure TTreeNomForm.FormResize(Sender: TObject);
begin
  inherited;
  SetFindControlsWidths;
  SetParamsMaxHeight;
end;

procedure TTreeNomForm.actFilterParamsExecute(Sender: TObject);
begin
  inherited;

  Assert(Assigned(TreeNodeParamsTreeFilterFormClass));
  Assert(Assigned(FTreeNodeParams));

  if TTreeNodeParamsTreeFilterFormClass(TreeNodeParamsTreeFilterFormClass).ShowForm(dmDocClient,
       pdsNodeChildren, emEdit, FTreeNodeParams, TNodeData(tvTree.Selected.Data).ID)  then
    RefreshDataSet(cdsNodeChildren);
end;

procedure TTreeNomForm.actFilterParamsUpdate(Sender: TObject);
begin
  inherited;
  btnFilterParams.Down:= GetParamsFiltered;
  (Sender as TAction).Hint:=
    FFlterParamsOriginalHint +
    Format(': %d %s', [cdsNodeChildren.RecordCount,
      IfThen((cdsNodeChildren.RecordCount = 1), SRow, SRows)])
end;

procedure TTreeNomForm.actFindExecute(Sender: TObject);
begin
  inherited;
  Find;
end;

procedure TTreeNomForm.Find;
begin
  Screen.TempCursor(crHourGlass) /
    procedure begin
      if (edtFind.Text = FFindString) and
         (pdsFindParams.State = dsBrowse) and
         (cdsFind.Params.ParamByName('SHOW_INACTIVE').AsInteger = Ord(actShowInactive.Checked)) and
         (FLocalFind = not cdsFind.Params.ParamByName('PARENT_CODE').IsNull) and
         (Ord(ShiftIsPressed) = cdsFind.Params.ParamByName('EXACT_MATCH').AsInteger) then
        begin
          if (cdsFind.RecordCount > 0) and
             ( (cdsFind.RecNo = cdsFind.RecordCount) or
               (cdsFindNODE_ID.AsVariant <> cdsNodeChildrenNODE_ID.AsVariant) ) then
            begin
              if (cdsFind.RecNo = 1) then
                LocateCurrentFindResult
              else
                cdsFind.First;
            end
          else
            cdsFind.Next;
        end
      else
        cdsFind.TempDisableControls /
          procedure begin
            PostDataSet(pdsFindParams);
            FFindString:= edtFind.Text;
            cdsFind.Close;
            cdsFind.Open;
          end;
    end;
end;

function TTreeNomForm.FindControlActive: Boolean;
begin
  Result:=
    (ActiveControl = edtFind) or
    ( Assigned(ActiveControl) and
     (ActiveControl.Parent = pnlFindOptions) );
end;

procedure TTreeNomForm.LocalFind;
begin
  FLocalFind:= True;
  try
    Find;
  finally
    FLocalFind:= False;
  end;
end;

procedure TTreeNomForm.LocateCurrentFindResult;
var
  ParentIDs: TStringList;
  RootParentIDIndex: Integer;

  function GetNodeID(ANode: TTreeNode): Integer;
  begin
    Result:= TNodeData(ANode.Data).ID;
  end;  { GetNodeID }

  function GetRootParentIDIndex: Integer;
  var
    RootID: Integer;
  begin
    RootID:= GetNodeID(tvTree.Items[0]);
    for Result:= 0 to ParentIDs.Count - 1 do
      if (StrToInt(ParentIDs[Result]) = RootID) then
        Exit;
    Result:= -1;
  end;  { GetRootParentIDIndex }

  procedure ExpandParents(ANode: TTreeNode; AParentIDIndex: Integer);
  var
    ParentID: Integer;
    i: Integer;
  begin
    ParentID:= StrToInt(ParentIDs[AParentIDIndex]);

    if (GetNodeID(ANode) = ParentID) then
      begin
        if (AParentIDIndex = ParentIDs.Count - 1) then
          tvTree.Selected:= ANode
        else
          begin
            ANode.Expanded:= True;
            for i:= 0 to ANode.Count - 1 do
              ExpandParents(ANode[i], AParentIDIndex + 1)
          end;
      end;
  end;  { ExpandParents }

begin
  if cdsFind.Active and (cdsFind.RecordCount > 0) then
    begin
      ParentIDs:= TStringList.Create;
      try
        ParentIDs.Delimiter:= ';';
        ParentIDs.StrictDelimiter:= True;
        ParentIDs.DelimitedText:= cdsFindPARENT_NODE_IDS.AsString;

        RootParentIDIndex:= GetRootParentIDIndex;
        if (RootParentIDIndex >= 0) then
          begin
            ExpandParents(tvTree.Items[0], RootParentIDIndex);
            cdsNodeChildren.TempDisableControls /
              procedure begin
                cdsNodeChildren.Locate('NODE_ID', cdsFindNODE_ID.AsVariant, []);
              end;
          end;
      finally
        FreeAndNil(ParentIDs);
      end;

      UpdateResultStatus;
    end;
end;

procedure TTreeNomForm.actFindOptionsExecute(Sender: TObject);
begin
  inherited;
  if pnlFindDetails.Visible then
    begin
      pnlFindDetails.Visible:= False;
      pnlFind.Height:= pnlFind.Height - pnlFindDetails.Height;
    end
  else
    begin
      pnlFind.Height:= pnlFind.Height + pnlFindDetails.Height;
      pnlFindDetails.Visible:= True;
    end;

  pnlBottomButtons.Top:= 10000;
end;

procedure TTreeNomForm.actFindOptionsUpdate(Sender: TObject);
var
  ShortCutText: string;
begin
  inherited;

  with Sender as TAction do
    begin
      if pnlFindDetails.Visible then
        begin
          ImageIndex:= 197;
          ShortCutText:= 'Alt+Down';
        end
      else
        begin
          ImageIndex:= 198;
          ShortCutText:= 'Alt+Up';
        end;

      if (ActiveControl = edtFind) then
        ShortCut:= TextToShortCut(ShortCutText)
      else
        ShortCut:= scNone;
    end;
end;

procedure TTreeNomForm.actFindUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetFindEnabled;
end;

procedure TTreeNomForm.actFocusFindExecute(Sender: TObject);
begin
  inherited;
  ActiveControl:= edtFind;
  edtFind.SelectAll;
end;

procedure TTreeNomForm.actFormUpdate(Sender: TObject);
var
  act: TAction;
begin
  inherited;

  btnFind.Default:= FindControlActive;

  if FindControlActive then
    begin
      actFind.SecondaryShortCuts.Add(ShortCutToText(FFindSecondaryShortCut));
      actLocalFind.ShortCut:= FLocalFindShortCut;
      actLocalFind.SecondaryShortCuts.Add(ShortCutToText(FLocalFindSecondaryShortCut));
    end
  else
    begin
      actFind.SecondaryShortCuts.Clear;
      actLocalFind.ShortCut:= scNone;
      actLocalFind.SecondaryShortCuts.Clear;
    end;

  btnOK.Default:= not btnFind.Default;

  for act in FChildrenActions do
    if (ActiveControl = grdChildren) then
      act.ShortCut:= act.Tag
    else
      act.ShortCut:= scNone;
end;

procedure TTreeNomForm.actLocalFindExecute(Sender: TObject);
begin
  inherited;
  LocalFind;
end;

procedure TTreeNomForm.actLocalFindUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetFindEnabled;
end;

procedure TTreeNomForm.cdsNodeChildrenBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  if Assigned(FTreeNodeParams) then
    OwnerData:= PackedTreeNodeParams(FTreeNodeParams)
  else
    OwnerData:= Unassigned;
end;

procedure TTreeNomForm.hcChildrenMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  NodeID: Integer;
begin
  Assert(cdsNodeChildren.Active);

  NodeID:= cdsNodeChildrenNODE_ID.AsInteger;

  inherited;

  if (NodeID <> cdsNodeChildrenNODE_ID.AsInteger) then
    with cdsNodeChildren do
      begin
        DisableControls;
        try
          Locate('NODE_ID', NodeID, []);
        finally
          EnableControls;
        end;   { try }
      end;   { with }
end;

procedure TTreeNomForm.tvTreeCompare(Sender: TObject; Node1,
  Node2: TTreeNode; Data: Integer; var Compare: Integer);
begin
  inherited;

  if FSortTreeByName then
    Compare:= CompareStr(Node1.Text, Node2.Text)
  else
    begin
      Compare:= CompareStr(TNomNodeData(Node1.Data).ShowNo, TNomNodeData(Node2.Data).ShowNo);
      if (Compare = 0) then
        Compare:= Sign(TNomNodeData(Node1.Data).NodeNo - TNomNodeData(Node2.Data).NodeNo);
    end;

  if SortDescending then
    Compare:= -Compare;
end;

procedure TTreeNomForm.SortByFieldName(AFieldName: string);
begin
  inherited;

  if (AFieldName = grdChildren.Columns[0].FieldName) or
     (AFieldName = grdChildren.Columns[1].FieldName) then
    begin
      FSortTreeByName:= (AFieldName = grdChildren.Columns[0].FieldName);
      tvTree.AlphaSort(True);
    end;
end;

procedure TTreeNomForm.cdsPrintTreeBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  if Assigned(FTreeNodeParams) then
    OwnerData:= PackedTreeNodeParams(FTreeNodeParams)
  else
    OwnerData:= Unassigned;
end;

procedure TTreeNomForm.cdsPrintTreeBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsPrintTree.Params.ParamByName('SORT_FIELD_NAMES').AsString:= SortByFieldNames;
  cdsPrintTree.Params.ParamByName('SORT_DESC_FIELD_NAMES').AsString:= SortByDescFieldNames;
end;

procedure TTreeNomForm.cdsPrintTreeCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsPrintTree_IMAGE_INDEX.AsInteger:=
    GetInactiveNodeImageIndex(cdsPrintTreeNODE_TYPE.AsInteger, niImage, cdsPrintTree);
  cdsPrintTree_IS_GROUP.AsBoolean:=
    (cdsPrintTreeNODE_TYPE.AsInteger <> Ord(ntInstance));
end;

function TTreeNomForm.SplitterLowerBound: Integer;
begin
  Result:= 66;
end;

end.
