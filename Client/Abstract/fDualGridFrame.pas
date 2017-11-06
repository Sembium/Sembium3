unit fDualGridFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBFrame, DB, ActnList, ExtCtrls, Buttons, GridsEh, DBGridEh,
  AbmesDBGrid, DBCtrls, ColorNavigator, fEditForm, uClientTypes,
  DBGridEhGrouping, AppEvnts, Generics.Collections, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh, System.Actions;

type
  TBeforeMovingRecordsEvent = procedure(Sender: TObject; AMovingAllRecords: Boolean) of object;
  TAfterMovingRecordsEvent = procedure(Sender: TObject; AMovingAllRecords: Boolean; AException: Exception) of object;
  TActionsShortCuts = TDictionary<TAction, TShortCut>;

type
  TDualGridFrame = class(TDBFrame)
    pnlIncluded: TPanel;
    pnlButtons: TPanel;
    pnlExcluded: TPanel;
    pnlIncludedNavigator: TPanel;
    pnlExcludedNavigator: TPanel;
    navExcluded: TDBColorNavigator;
    navIncluded: TDBColorNavigator;
    grdIncluded: TAbmesDBGrid;
    grdExcluded: TAbmesDBGrid;
    pnlProductButtons: TPanel;
    btnInclude: TSpeedButton;
    btnExclude: TSpeedButton;
    btnIncludeAll: TSpeedButton;
    btnExcludeAll: TSpeedButton;
    dsExcluded: TDataSource;
    actInclude: TAction;
    actExclude: TAction;
    actIncludeAll: TAction;
    actExcludeAll: TAction;
    actIncludedExcelExport: TAction;
    actExcludedExcelExport: TAction;
    actIncludedEdit: TAction;
    actExcludedEdit: TAction;
    AppEvents: TApplicationEvents;
    procedure actIncludeUpdate(Sender: TObject);
    procedure actExcludeUpdate(Sender: TObject);
    procedure actIncludeExecute(Sender: TObject);
    procedure actExcludeExecute(Sender: TObject);
    procedure actIncludeAllExecute(Sender: TObject);
    procedure actExcludeAllExecute(Sender: TObject);
    procedure actIncludedExcelExportExecute(Sender: TObject);
    procedure actIncludedExcelExportUpdate(Sender: TObject);
    procedure actExcludedExcelExportUpdate(Sender: TObject);
    procedure actExcludedExcelExportExecute(Sender: TObject);
    procedure actExcludedEditUpdate(Sender: TObject);
    procedure actIncludedEditUpdate(Sender: TObject);
    procedure grdIncludedDblClick(Sender: TObject);
    procedure grdExcludedDblClick(Sender: TObject);
    procedure navIncludedBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure navExcludedBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure actIncludedEditExecute(Sender: TObject);
    procedure actExcludedEditExecute(Sender: TObject);
    procedure AppEventsMessage(var Msg: tagMSG; var Handled: Boolean);
    procedure GridKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    FCanExclude: TFilterRecordEvent;
    FCanInclude: TFilterRecordEvent;
    FIncludedEditFormClass: TEditFormClass;
    FExcludedEditFormClass: TEditFormClass;
    FIsIncludedInEditMode: Boolean;
    FIsExcludedInEditMode: Boolean;

    FBeforeInclude: TBeforeMovingRecordsEvent;
    FAfterInclude: TAfterMovingRecordsEvent;
    FBeforeExclude: TBeforeMovingRecordsEvent;
    FAfterExclude: TAfterMovingRecordsEvent;
    FSavedGridCol: Integer;
    FOriginalRowMultiSelect: Boolean;
    FActionShortCuts: TActionsShortCuts;

    procedure CheckCanInclude;
    procedure CheckCanExclude;
    function GetDualGridEditMode(AIsInEditMode: Boolean): TEditMode;
    procedure DoBeforeInclude(AMovingAllRecords: Boolean);
    procedure DoAfterInclude(AMovingAllRecords: Boolean; AException: Exception);
    procedure DoBeforeExclude(AMovingAllRecords: Boolean);
    procedure DoAfterExclude(AMovingAllRecords: Boolean; AException: Exception);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DoIncludeAll;
    procedure DoIncludeRecordsWhere(const APredicate: TFunc<Boolean>);
    procedure DoExcludeAll;
    procedure DoExcludeRecordsWhere(const APredicate: TFunc<Boolean>);
    procedure DoInclude(CurrentOnly: Boolean);
    procedure DoExclude(CurrentOnly: Boolean);
    function GetIncludeEnabled: Boolean; virtual;
    function GetExcludeEnabled: Boolean; virtual;
    procedure Initialize; override;

    property CanInclude: TFilterRecordEvent read FCanInclude write FCanInclude;
    property CanExclude: TFilterRecordEvent read FCanExclude write FCanExclude;
    property IncludedEditFormClass: TEditFormClass read FIncludedEditFormClass write FIncludedEditFormClass;
    property ExcludedEditFormClass: TEditFormClass read FExcludedEditFormClass write FExcludedEditFormClass;
    property IsIncludedInEditMode: Boolean read FIsIncludedInEditMode write FIsIncludedInEditMode;
    property IsExcludedInEditMode: Boolean read FIsExcludedInEditMode write FIsExcludedInEditMode;
    property BeforeInclude: TBeforeMovingRecordsEvent read FBeforeInclude write FBeforeInclude;
    property AfterInclude: TAfterMovingRecordsEvent read FAfterInclude write FAfterInclude;
    property BeforeExclude: TBeforeMovingRecordsEvent read FBeforeExclude write FBeforeExclude;
    property AfterExclude: TAfterMovingRecordsEvent read FAfterExclude write FAfterExclude;
  end;

implementation

uses
  uUtils, uExcelExport, AbmesClientDataSet, uClientUtils, Math, uFuncUtils;

resourcestring
  SCantTransfer = 'Има избран елемент, който не може да бъде прехвърлен';

{$R *.dfm}

function TDualGridFrame.GetIncludeEnabled: Boolean;
begin
  Result:=
    Assigned(dsData.DataSet) and
    dsData.DataSet.Active and
    Assigned(dsExcluded.DataSet) and
    dsExcluded.DataSet.Active and
    (not ReadOnly) and
    (dsExcluded.DataSet.RecordCount > 0);
end;

procedure TDualGridFrame.grdExcludedDblClick(Sender: TObject);
begin
  inherited;
  actExcludedEdit.Execute;
end;

procedure TDualGridFrame.grdIncludedDblClick(Sender: TObject);
begin
  inherited;
  actIncludedEdit.Execute;
end;

procedure TDualGridFrame.GridKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  grd: TAbmesDBGrid;
begin
  inherited;

  if FOriginalRowMultiSelect then
    begin
      grd:= (Sender as TAbmesDBGrid);

      if (Key = VK_SHIFT) and
         (grd.SelectedRows.Count <= 1) then
        begin
          grd.SelectedRows.Clear;
          grd.Options:= grd.Options - [dgRowSelect];
          grd.Col:= FSavedGridCol;
        end;
    end;
end;

procedure TDualGridFrame.GridMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  grd: TAbmesDBGrid;
  Cell: TGridCoord;
  P: TPoint;
begin
  inherited;

  if FOriginalRowMultiSelect then
    begin
      grd:= (Sender as TAbmesDBGrid);

      if (grd.SelectedRows.Count <= 1) and not ControlIsPressed then
        begin
          grd.SelectedRows.Clear;
          grd.Options:= grd.Options - [dgRowSelect];

          P:= grd.ScreenToClient(Mouse.CursorPos);
          Cell:= grd.MouseCoord(P.X, P.Y);
          if (Cell.X > 0) then
            grd.Col:= Cell.X;
        end;

      Application.ProcessMessages;
    end;
end;

procedure TDualGridFrame.Initialize;
begin
  inherited;

  FOriginalRowMultiSelect:=
    (dgRowSelect in grdIncluded.Options) and
    (dgRowSelect in grdExcluded.Options) and
    (dgMultiSelect in grdIncluded.Options) and
    (dgMultiSelect in grdExcluded.Options);

  if FOriginalRowMultiSelect then
    begin
      grdIncluded.Options:= grdIncluded.Options - [dgRowSelect];
      grdExcluded.Options:= grdExcluded.Options - [dgRowSelect];
    end;
end;

procedure TDualGridFrame.navExcludedBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  if (Button = nbEdit) then
    begin
      actExcludedEdit.Execute;
      Abort;
    end;  { if }
end;

procedure TDualGridFrame.navIncludedBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  if (Button = nbEdit) then
    begin
      actIncludedEdit.Execute;
      Abort;
    end;  { if }
end;

function TDualGridFrame.GetExcludeEnabled: Boolean;
begin
  Result:=
    Assigned(dsData.DataSet) and
    dsData.DataSet.Active and
    Assigned(dsExcluded.DataSet) and
    dsExcluded.DataSet.Active and
    (not ReadOnly) and
    (dsData.DataSet.RecordCount > 0);
end;

procedure TDualGridFrame.actIncludeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetIncludeEnabled;
  (Sender as TAction).ShortCut:=
    IfThen(grdExcluded.Focused, FActionShortCuts[(Sender as TAction)], scNone);
end;

procedure TDualGridFrame.AppEventsMessage(var Msg: tagMSG;
  var Handled: Boolean);
var
  grd: TAbmesDBGrid;
begin
  inherited;
  if FOriginalRowMultiSelect and
     ((Msg.hwnd = grdIncluded.Handle) or (Msg.hwnd = grdExcluded.Handle)) and
     ( (Msg.message = WM_LBUTTONDOWN) or
       ( (Msg.message = WM_KEYDOWN) and
         (Msg.wParam = VK_SHIFT)
       )
     ) then
    begin
      if (Msg.hwnd = grdIncluded.Handle) then
        grd:= grdIncluded
      else
        grd:= grdExcluded;

      FSavedGridCol:= grd.Col;
      grd.Options:= grd.Options + [dgRowSelect];

      PreventGridColumnSelection(grd, Msg, Handled);
    end;
end;

procedure TDualGridFrame.actExcludeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetExcludeEnabled;
  (Sender as TAction).ShortCut:=
    IfThen(grdIncluded.Focused, FActionShortCuts[(Sender as TAction)], scNone);
end;

procedure TDualGridFrame.DoBeforeInclude(AMovingAllRecords: Boolean);
begin
  if Assigned(FBeforeInclude) then
    FBeforeInclude(Self, AMovingAllRecords);
end;

procedure TDualGridFrame.DoAfterInclude(AMovingAllRecords: Boolean; AException: Exception);
begin
  if Assigned(FAfterInclude) then
    FAfterInclude(Self, AMovingAllRecords, AException);
end;

procedure TDualGridFrame.DoBeforeExclude(AMovingAllRecords: Boolean);
begin
  if Assigned(FBeforeExclude) then
    FBeforeExclude(Self, AMovingAllRecords);
end;

destructor TDualGridFrame.Destroy;
begin
  FreeAndNil(FActionShortCuts);
  inherited;
end;

procedure TDualGridFrame.DoAfterExclude(AMovingAllRecords: Boolean; AException: Exception);
begin
  if Assigned(FAfterExclude) then
    FAfterExclude(Self, AMovingAllRecords, AException);
end;

procedure TDualGridFrame.DoInclude(CurrentOnly: Boolean);

  procedure IncludeCurrent;
  begin
    dsData.DataSet.Append;
    try
      AssignFields(dsExcluded.DataSet, dsData.DataSet, '', True);
      dsData.DataSet.Post;
    except
      dsData.DataSet.Cancel;
      raise;
    end;   { try }

    dsExcluded.DataSet.Delete;

    grdIncluded.SelectedRows.CurrentRowSelected:= True;
  end;

var
  i: Integer;
  b: TBookmark;
  IncludedSavePoint: Integer;
  ExcludedSavePoint: Integer;
begin
  Assert(Assigned(dsData.DataSet));
  Assert(dsData.DataSet is TAbmesClientDataSet);
  Assert(Assigned(dsExcluded.DataSet));
  Assert(dsExcluded.DataSet is TAbmesClientDataSet);
  Assert(dsExcluded.DataSet.RecordCount > 0);

  DoBeforeInclude(False);
  try
    IncludedSavePoint:= (dsData.DataSet as TAbmesClientDataSet).SavePoint;
    try
      ExcludedSavePoint:= (dsExcluded.DataSet as TAbmesClientDataSet).SavePoint;
      try
        grdExcluded.SelectedRows.Refresh(False);

        dsData.DataSet.DisableControls;
        dsExcluded.DataSet.DisableControls;
        try
          b:= dsExcluded.DataSet.Bookmark;
          try
            if CurrentOnly or (grdExcluded.SelectedRows.Count = 0) then
              CheckCanInclude
            else
              for i:= 0 to grdExcluded.SelectedRows.Count - 1 do
                begin
                  dsExcluded.DataSet.Bookmark:= grdExcluded.SelectedRows[i];
                  CheckCanInclude;
                end;
          finally
            dsExcluded.DataSet.Bookmark:= b;
          end;  { try }

          grdIncluded.SelectedRows.Clear;

          if CurrentOnly or (grdExcluded.SelectedRows.Count = 0) then
            IncludeCurrent
          else
            for i:= 0 to grdExcluded.SelectedRows.Count - 1 do
              begin
                dsExcluded.DataSet.Bookmark:= grdExcluded.SelectedRows[i];
                IncludeCurrent;
              end;

          grdExcluded.SelectedRows.Clear;
        finally
          dsData.DataSet.EnableControls;
          dsExcluded.DataSet.EnableControls;
        end;  { try }

        if grdIncluded.CanFocus then
          grdIncluded.SetFocus;
      except
        (dsExcluded.DataSet as TAbmesClientDataSet).SavePoint:= ExcludedSavePoint;
        raise;
      end;  { try }
    except
      (dsData.DataSet as TAbmesClientDataSet).SavePoint:= IncludedSavePoint;
      raise;
    end;  { try }
  except
    on e: Exception do
      begin
        DoAfterInclude(False, e);
        raise;
      end;
  end;  { try }

  DoAfterInclude(False, nil);
end;

procedure TDualGridFrame.actIncludeExecute(Sender: TObject);
begin
  inherited;
  DoInclude(False);
end;

procedure TDualGridFrame.DoExclude(CurrentOnly: Boolean);

  procedure ExcludeCurrent;
  begin
    dsExcluded.DataSet.Append;
    try
      AssignFields(dsData.DataSet, dsExcluded.DataSet);
      dsExcluded.DataSet.Post;
    except
      dsExcluded.DataSet.Cancel;
      raise;
    end;   { try }

    dsData.DataSet.Delete;

    grdExcluded.SelectedRows.CurrentRowSelected:= True;
  end;

var
  i: Integer;
  b: TBookmark;
  IncludedSavePoint: Integer;
  ExcludedSavePoint: Integer;
begin
  Assert(Assigned(dsData.DataSet));
  Assert(dsData.DataSet is TAbmesClientDataSet);
  Assert(Assigned(dsExcluded.DataSet));
  Assert(dsExcluded.DataSet is TAbmesClientDataSet);
  Assert(dsData.DataSet.RecordCount > 0);

  DoBeforeExclude(False);
  try
    IncludedSavePoint:= (dsData.DataSet as TAbmesClientDataSet).SavePoint;
    try
      ExcludedSavePoint:= (dsExcluded.DataSet as TAbmesClientDataSet).SavePoint;
      try
        grdIncluded.SelectedRows.Refresh(False);

        dsData.DataSet.DisableControls;
        dsExcluded.DataSet.DisableControls;
        try
          b:= dsData.DataSet.Bookmark;
          try
            if CurrentOnly or (grdIncluded.SelectedRows.Count = 0) then
              CheckCanExclude
            else
              for i:= 0 to grdIncluded.SelectedRows.Count - 1 do
                begin
                  dsData.DataSet.Bookmark:= grdIncluded.SelectedRows[i];
                  CheckCanExclude;
                end;
          finally
            dsData.DataSet.Bookmark:= b;
          end;  { try }

          grdExcluded.SelectedRows.Clear;

          if CurrentOnly or (grdIncluded.SelectedRows.Count = 0) then
            ExcludeCurrent
          else
            for i:= 0 to grdIncluded.SelectedRows.Count - 1 do
              begin
                dsData.DataSet.Bookmark:= grdIncluded.SelectedRows[i];
                ExcludeCurrent;
              end;

          grdIncluded.SelectedRows.Clear;
        finally
          dsData.DataSet.EnableControls;
          dsExcluded.DataSet.EnableControls;
        end;  { try }

        if grdExcluded.CanFocus then
          grdExcluded.SetFocus;
      except
        (dsExcluded.DataSet as TAbmesClientDataSet).SavePoint:= ExcludedSavePoint;
        raise;
      end;  { try }
    except
      (dsData.DataSet as TAbmesClientDataSet).SavePoint:= IncludedSavePoint;
      raise;
    end;  { try }
  except
    on e: Exception do
      begin
        DoAfterExclude(False, e);
        raise;
      end;
  end;  { try }

  DoAfterExclude(False, nil);
end;

procedure TDualGridFrame.actExcludedEditExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(ExcludedEditFormClass));
  ExcludedEditFormClass.ShowForm(dmDocClient, dsExcluded.DataSet, GetDualGridEditMode(IsExcludedInEditMode));
end;

procedure TDualGridFrame.actExcludedEditUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not dsExcluded.DataSet.IsEmpty and
    Assigned(ExcludedEditFormClass);
end;

procedure TDualGridFrame.actExcludedExcelExportExecute(Sender: TObject);
begin
  inherited;
  GridExcelExport(grdExcluded);
end;

procedure TDualGridFrame.actExcludedExcelExportUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= dsExcluded.DataSet.Active and (dsExcluded.DataSet.RecordCount > 0);
  (Sender as TAction).Visible:= ExcelExportAvailable;
end;

procedure TDualGridFrame.actExcludeExecute(Sender: TObject);
begin
  inherited;
  DoExclude(False);
end;

procedure TDualGridFrame.DoIncludeRecordsWhere(const APredicate: TFunc<Boolean>);
var
  IncludedSavePoint: Integer;
  ExcludedSavePoint: Integer;
begin
  Assert(Assigned(dsData.DataSet));
  Assert(dsData.DataSet is TAbmesClientDataSet);
  Assert(Assigned(dsExcluded.DataSet));
  Assert(dsExcluded.DataSet is TAbmesClientDataSet);
  Assert(dsExcluded.DataSet.RecordCount > 0);

  DoBeforeInclude(True);
  try
    IncludedSavePoint:= (dsData.DataSet as TAbmesClientDataSet).SavePoint;
    try
      ExcludedSavePoint:= (dsExcluded.DataSet as TAbmesClientDataSet).SavePoint;
      try
        dsData.DataSet.DisableControls;
        dsExcluded.DataSet.DisableControls;
        try
          dsExcluded.DataSet.PreserveBookmark/
            dsExcluded.DataSet.ForEach/
              ToProc(CheckCanInclude);

          grdIncluded.SelectedRows.Clear;

          dsExcluded.DataSet.First;
          while not dsExcluded.DataSet.Eof do
            begin
              if APredicate then
                begin
                  dsData.DataSet.SafeAppend/
                    dsData.DataSet.AssignFieldsProc(dsExcluded.DataSet, '', True);

                  dsExcluded.DataSet.Delete;
                end
              else
                dsExcluded.DataSet.Next;

              grdIncluded.SelectedRows.CurrentRowSelected:= True;
            end;

          dsData.DataSet.First;
          grdIncluded.SelectedIndex:= -1;
        finally
          dsData.DataSet.EnableControls;
          dsExcluded.DataSet.EnableControls;
        end;  { try }

        if grdIncluded.CanFocus then
          grdIncluded.SetFocus;
      except
        (dsExcluded.DataSet as TAbmesClientDataSet).SavePoint:= ExcludedSavePoint;
        raise;
      end;  { try }
    except
      (dsData.DataSet as TAbmesClientDataSet).SavePoint:= IncludedSavePoint;
      raise;
    end;  { try }
  except
    on e: Exception do
      begin
        DoAfterInclude(True, e);
        raise;
      end;
  end;  { try }

  DoAfterInclude(True, nil);
end;

procedure TDualGridFrame.DoIncludeAll;
begin
  DoIncludeRecordsWhere(Funcs.Constant(True));
end;

procedure TDualGridFrame.actIncludeAllExecute(Sender: TObject);
begin
  inherited;
  DoIncludeAll;
end;

function TDualGridFrame.GetDualGridEditMode(AIsInEditMode: Boolean): TEditMode;
begin
  if AIsInEditMode then
    Result:= emEdit
  else
    Result:= emReadOnly;
end;

procedure TDualGridFrame.actIncludedEditExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(IncludedEditFormClass));
  IncludedEditFormClass.ShowForm(dmDocClient, dsData.DataSet, GetDualGridEditMode(IsIncludedInEditMode));
end;

procedure TDualGridFrame.actIncludedEditUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
     not dsData.DataSet.IsEmpty and
     Assigned(IncludedEditFormClass);
end;

procedure TDualGridFrame.actIncludedExcelExportExecute(Sender: TObject);
begin
  inherited;
  GridExcelExport(grdIncluded);
end;

procedure TDualGridFrame.actIncludedExcelExportUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= dsData.DataSet.Active and (dsData.DataSet.RecordCount > 0);
  (Sender as TAction).Visible:= ExcelExportAvailable;
end;

procedure TDualGridFrame.DoExcludeAll;
begin
  DoExcludeRecordsWhere(Funcs.Constant(True));
end;

procedure TDualGridFrame.DoExcludeRecordsWhere(const APredicate: TFunc<Boolean>);
var
  IncludedSavePoint: Integer;
  ExcludedSavePoint: Integer;
begin
  Assert(Assigned(dsData.DataSet));
  Assert(dsData.DataSet is TAbmesClientDataSet);
  Assert(Assigned(dsExcluded.DataSet));
  Assert(dsExcluded.DataSet is TAbmesClientDataSet);

  DoBeforeExclude(True);
  try
    IncludedSavePoint:= (dsData.DataSet as TAbmesClientDataSet).SavePoint;
    try
      ExcludedSavePoint:= (dsExcluded.DataSet as TAbmesClientDataSet).SavePoint;
      try
        dsData.DataSet.DisableControls;
        dsExcluded.DataSet.DisableControls;
        try
          dsData.DataSet.PreserveBookmark/
            dsData.DataSet.ForEach/
              ToProc(CheckCanExclude);

          grdExcluded.SelectedRows.Clear;

          dsData.DataSet.First;
          while not dsData.DataSet.Eof do
            begin
              if APredicate then
                begin
                  dsExcluded.DataSet.SafeAppend/
                    dsExcluded.DataSet.AssignFieldsProc(dsData.DataSet);

                  dsData.DataSet.Delete;
                end
              else
                dsData.DataSet.Next;

              grdExcluded.SelectedRows.CurrentRowSelected:= True;
            end;

          dsExcluded.DataSet.First;
          grdExcluded.SelectedIndex:= -1;
        finally
          dsData.DataSet.EnableControls;
          dsExcluded.DataSet.EnableControls;
        end;  { try }

        if grdExcluded.CanFocus then
          grdExcluded.SetFocus;
      except
        (dsExcluded.DataSet as TAbmesClientDataSet).SavePoint:= ExcludedSavePoint;
        raise;
      end;  { try }
    except
      (dsData.DataSet as TAbmesClientDataSet).SavePoint:= IncludedSavePoint;
      raise;
    end;  { try }
  except
    on e: Exception do
      begin
        DoAfterExclude(True, e);
        raise;
      end;
  end;  { try }

  DoAfterExclude(True, nil);
end;

procedure TDualGridFrame.actExcludeAllExecute(Sender: TObject);
begin
  inherited;
  DoExcludeAll;
end;

procedure TDualGridFrame.CheckCanInclude;
var
  Accept: Boolean;
begin
  Accept:= True;

  if Assigned(CanInclude) then
    CanInclude(dsExcluded.DataSet, Accept);

  if not Accept then
    raise Exception.Create(SCantTransfer);
end;

constructor TDualGridFrame.Create(AOwner: TComponent);
begin
  inherited;
  grdIncluded.OnKeyUp:= GridKeyUp;
  grdIncluded.OnMouseUp:= GridMouseUp;
  grdExcluded.OnKeyUp:= GridKeyUp;
  grdExcluded.OnMouseUp:= GridMouseUp;
  AppEvents.OnMessage:= AppEventsMessage;;

  FActionShortCuts:= TActionsShortCuts.Create;
  FActionShortCuts.Add(actInclude, actInclude.ShortCut);
  FActionShortCuts.Add(actExclude, actExclude.ShortCut);
  FActionShortCuts.Add(actIncludeAll, actIncludeAll.ShortCut);
  FActionShortCuts.Add(actExcludeAll, actExcludeAll.ShortCut);
end;

procedure TDualGridFrame.CheckCanExclude;
var
  Accept: Boolean;
begin
  Accept:= True;

  if Assigned(CanExclude) then
    CanExclude(dsData.DataSet, Accept);

  if not Accept then
    raise Exception.Create(SCantTransfer);
end;

end.

