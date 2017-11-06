unit fBaseForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, ActnList, fBaseFrame, Menus, dDocClient, uClientLoginContext,
  JvComponent, JvCaptionButton, JvComponentBase, DB, Generics.Collections,
  uUtils, uAttributeUtils, System.Actions;

type
  TBaseForm = class(TForm)
    alActions: TActionList;
    actForm: TAction;
    actStartNewAppInstance: TAction;
    actPopupCaptionMenu: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure actFormExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MenuCaptionButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actStartNewAppInstanceExecute(Sender: TObject);
    procedure actPopupCaptionMenuExecute(Sender: TObject);
    procedure actPopupCaptionMenuUpdate(Sender: TObject);
  private
    FFrames: TBaseFrameList;
    FdmDocClient: TdmDocClient;
    FOuterdmDocClient: TdmDocClient;
    FOriginalFormCaption: string;
    FSpeedButtonsDownTextColor: TColor;
    MenuCaptionButton: TJvCaptionButton;
    procedure InternalInitialize;
    procedure InternalFinalize;
    procedure InternalDoBeforeShow;
    procedure InternalDoAfterHide;
    function GetdmDocClient: TdmDocClient;
    function GetIsOuterdmDocClient: Boolean;
    function GetDocsDelta: Variant;
    function GetLoginContext: TClientLoginContext;
    procedure NormalizeToolbars;
    procedure SpeedButtonCanvasChanging(Sender: TObject);
    procedure SetSpeedButtonsCanvasChanging(AComponent: TComponent);
    procedure SetSpeedButtonsDownTextColor(AColor: TColor);
    procedure OnAbmesDBDateEditGetCurrentDate(Sender: TObject; var ACurrentDate: TDateTime);
    procedure SetAbmesDBDateEditsCurrentDateHandler;
  protected
    procedure FillFramesList;
    procedure CreateParams(var Params: TCreateParams); override;

    function IsLevelOneInvestedValueVisible: Boolean;
    function IsHighLevelInvestedValueVisible: Boolean;
    function IsSalePriceVisible: Boolean;

    function IsFullInvestedValueVisible: Boolean;
    function IsLevelOneInvestedAndSalePriceVisible: Boolean;
    function IsFullInvestedAndSalePriceVisible: Boolean;

    function IsSalaryVisible: Boolean;
    function IsEGNVisible: Boolean;

    procedure RegisterFieldTextVisibility(AIsTextVisible: TBoolMethod; const AField: TField);
    procedure UnregisterFieldTextVisibility(const AField: TField);
    procedure RegisterFieldsTextVisibility(AIsTextVisible: TBoolMethod; const AFields: array of TField);
    procedure UnregisterFieldsTextVisibility(const AFields: array of TField);

    class function CanUseDocs: Boolean; virtual;
    function InternalShowForm: Integer;
    procedure DoBeforeShow; virtual;
    procedure DoAfterHide; virtual;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure Loaded; override;
    procedure DoCreate; override;
    procedure UpdateAllActions;
    function GetOriginalFormCaption: string; virtual;
    function GetFormCaption: string; virtual;
    procedure RefreshDataSet(ADataSet: TDataSet);
    procedure BeforeNormalizeToolbars; virtual;

    property Frames: TBaseFrameList read FFrames;

    property LoginContext: TClientLoginContext read GetLoginContext;
  public
    constructor CreateEx;
    constructor Create(AOwner: TComponent); override;
    constructor CreateDockedTo(NewDockSite: TWinControl;
      DropControl: TControl = nil; ControlSide: TAlign = alNone); virtual;
    destructor Destroy; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil); virtual;
    procedure Initialize; virtual;
    procedure Finalize; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil): Integer;
    class function HasCaptionMenu: Boolean; virtual;

    procedure ReleaseForm; virtual;
{$IFOPT D+}
    procedure Free;
    procedure Release;
    function ShowModal: Integer; override;
{$ENDIF}

    property OuterdmDocClient: TdmDocClient read FOuterdmDocClient write FOuterdmDocClient;
    property dmDocClient: TdmDocClient read GetdmDocClient;
    property IsOuterdmDocClient: Boolean read GetIsOuterdmDocClient;
    property DocsDelta: Variant read GetDocsDelta;
    property OriginalFormCaption: string read GetOriginalFormCaption;
  end;

type
  CanUseDocsAttribute = class(TPositiveBooleanValueAttribute);

implementation

uses
  Variants, AbmesDialogs, uClientUtils, dMain, fMain, StrUtils, AbmesReport,
  uToolbarUtils, Buttons, uComboBoxUtils, uClientDateTime, uClientApp,
  AbmesDBDateEdit, uUserActivityConsts, uFieldTextVisibility, Types,
  uScalingUtils;

resourcestring
  SAppMenuSysMenuItem = '%AppName% меню';
  SNewAppInstanceSysMenuItem = 'Нова %AppName%';

{$R *.DFM}

{ TBaseForm }

{$IFOPT D+}

procedure TBaseForm.Free;
begin
  inherited Free;
  ShowMessageEx('Do NOT call Free! Call ReleaseForm instead.');
end;

procedure TBaseForm.Release;
begin
  inherited Release;
  ShowMessageEx('Do NOT call Release! Call ReleaseForm instead.');
end;

function TBaseForm.ShowModal: Integer;
begin
  raise Exception.CreateFmt('%s: Do not call ShowModal. Call class method ShowForm instead!', [Name]);
end;

{$ENDIF}

procedure TBaseForm.ReleaseForm;
begin
  if Assigned(Self) then
    inherited Release;
end;

constructor TBaseForm.CreateEx;
begin
  if (dmMain.ParentWindowHandle = 0) then
    Create(Application)
  else
    CreateParented(dmMain.ParentWindowHandle);
end;

constructor TBaseForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  RecreateWnd;  // Workaround na Delphi 10. Ne si opravia iconata i sys menu-to. QC#22819

  FFrames:= TBaseFrameList.Create;
  FillFramesList;
end;

constructor TBaseForm.CreateDockedTo(NewDockSite: TWinControl;
  DropControl: TControl = nil; ControlSide: TAlign = alNone);
begin
  Assert(Assigned(NewDockSite), ClassName + '.CreateDockedTo param NewDockSite can not be nil');

  Create(NewDockSite.Owner);

  Assert(not Visible, ClassName + '.CreateDockedTo requires Visible = False');

  DragKind:= dkDock;

  if not ManualDock(NewDockSite, DropControl, ControlSide) then
    raise Exception.CreateFmt('CreateDockedTo could not dock %s instance', [ClassName]);

  Visible:= True;
end;

destructor TBaseForm.Destroy;
begin
  FreeAndNil(FFrames);

  inherited Destroy;
end;

function TBaseForm.InternalShowForm: Integer;
begin
  Result:= mrNone;
  if not Visible then
    begin
      try
        InternalDoBeforeShow;
      except
        InternalDoAfterHide;
        raise;
      end;

      if Floating then
        Result:= inherited ShowModal
      else
        inherited Show;
    end;

  Application.ProcessMessages;
end;

function TBaseForm.IsEGNVisible: Boolean;
begin
  Result:= dmMain.LoginContext.HasUserActivity(uaShowEGN);
end;

function TBaseForm.IsFullInvestedAndSalePriceVisible: Boolean;
begin
  Result:= IsFullInvestedValueVisible and IsSalePriceVisible;
end;

function TBaseForm.IsLevelOneInvestedAndSalePriceVisible: Boolean;
begin
  Result:= IsLevelOneInvestedValueVisible and IsSalePriceVisible;
end;

function TBaseForm.IsLevelOneInvestedValueVisible: Boolean;
begin
  Result:= dmMain.LoginContext.HasUserActivity(uaShowLevelOneInvestedValues);
end;

function TBaseForm.IsFullInvestedValueVisible: Boolean;
begin
  Result:= IsLevelOneInvestedValueVisible and IsHighLevelInvestedValueVisible;
end;

function TBaseForm.IsHighLevelInvestedValueVisible: Boolean;
begin
  Result:= dmMain.LoginContext.HasUserActivity(uaShowHighLevelInvestedValues);
end;

function TBaseForm.IsSalaryVisible: Boolean;
begin
  Result:= dmMain.LoginContext.HasUserActivity(uaShowSalary);
end;

function TBaseForm.IsSalePriceVisible: Boolean;
begin
  Result:= dmMain.LoginContext.HasUserActivity(uaShowSalePrices);
end;

class function TBaseForm.ShowForm(AdmDocClient: TdmDocClient): Integer;
var
  f: TBaseForm;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient);
    Result:= f.InternalShowForm;
  finally
    f.ReleaseForm;
  end;
end;

procedure TBaseForm.SetDataParams(AdmDocClient: TdmDocClient);
begin
  FOuterdmDocClient:= AdmDocClient;
end;

procedure TBaseForm.SpeedButtonCanvasChanging(Sender: TObject);
begin
  Assert(Sender is TCanvas);
  if ((Sender as TCanvas).Font.Color = clHighlightText) then
    (Sender as TCanvas).Font.Color:= FSpeedButtonsDownTextColor;
end;

type
  TGraphicControlHack = class(TGraphicControl)
  public
    property Canvas;
  end;

procedure TBaseForm.SetSpeedButtonsCanvasChanging(AComponent: TComponent);
var
  i: Integer;
begin
  with AComponent do
    for i := 0 to ComponentCount - 1 do
      if Components[i] is TSpeedButton then
        TGraphicControlHack(Components[i]).Canvas.OnChanging:= SpeedButtonCanvasChanging
      else
        SetSpeedButtonsCanvasChanging(Components[i]);
end;

procedure TBaseForm.Initialize;

  procedure AddSystemMenuItem(const AMenuItemName: string; const AMenuItemID: UInt; AShortCut: TShortCut);
  var
    SysMenu: HMenu;
    MenuItemName: string;
  begin
    MenuItemName:= AMenuItemName;

    if (AShortCut <> scNone) then
      MenuItemName:= MenuItemName + #8 + ShortCutToText(AShortCut);

    SysMenu:= GetSystemMenu(Handle, False);
    AppendMenu(SysMenu, MF_SEPARATOR, 0, '');
    AppendMenu(SysMenu, MF_STRING, AMenuItemID, PChar(MenuItemName));
  end;

begin
  AddSystemMenuItem(uClientApp.ReplaceAppParams(SNewAppInstanceSysMenuItem), NEW_APP_INSTANCE_SYS_MENU_ITEM, actStartNewAppInstance.ShortCut);

  if HasCaptionMenu then
    AddSystemMenuItem(uClientApp.ReplaceAppParams(SAppMenuSysMenuItem), APP_MENU_SYS_MENU_ITEM, actPopupCaptionMenu.ShortCut);

  SetAbmesDBDateEditsCurrentDateHandler;
end;

procedure TBaseForm.Finalize;
begin
end;

procedure TBaseForm.SetSpeedButtonsDownTextColor(AColor: TColor);
begin
  FSpeedButtonsDownTextColor:= AColor;
  SetSpeedButtonsCanvasChanging(Self);
end;

procedure TBaseForm.DoBeforeShow;
begin
end;

procedure TBaseForm.DoAfterHide;
begin
end;

procedure TBaseForm.FormShow(Sender: TObject);
begin
  InternalInitialize;
  NormalizeToolbars;
  SetSpeedButtonsDownTextColor(clBtnText);

  if IsAppThemed then
    ReplaceAllDBComboBoxesWithJvDBLookupComboOf(Self);

  Rescale;

  if (Position = poDesigned) then
    PositionFormInScreen;

  ForceForegroundWindow(Handle);
end;

procedure TBaseForm.FormHide(Sender: TObject);
begin
  InternalFinalize;
  InternalDoAfterHide;
end;

procedure TBaseForm.actPopupCaptionMenuExecute(Sender: TObject);
begin
  fmMain.PopupCaptionMenu;
end;

procedure TBaseForm.actPopupCaptionMenuUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:= HasCaptionMenu;
end;

procedure TBaseForm.actFormExecute(Sender: TObject);
begin
// never do anything
end;

procedure TBaseForm.actFormUpdate(Sender: TObject);
var
  f: TBaseFrame;
begin
  for f in Frames do
    f.actFrame.Update;

  actForm.Caption:= GetFormCaption;
end;

procedure TBaseForm.actStartNewAppInstanceExecute(Sender: TObject);
begin
  dmMain.StartNewAppInstance;
end;

procedure TBaseForm.BeforeNormalizeToolbars;
begin
  // do nothing
end;

procedure TBaseForm.FillFramesList;

  procedure AddComponentFrames(AComponent: TComponent);
  var
    c: TComponent;
  begin
    for c in AComponent.AllComponents do
      if (c is TBaseFrame) then
        FFrames.Add(c as TBaseFrame)
      else
        AddComponentFrames(c);
  end;   { AddComponentFrames }

begin
  FFrames.Clear;
  AddComponentFrames(Self);
end;

procedure TBaseForm.NormalizeToolbars;
var
  f: TBaseFrame;
begin
  BeforeNormalizeToolbars;

  NormalizeAllToolbarsOf(Self);

  for f in Frames do
    NormalizeAllToolbarsOf(f);
end;

procedure TBaseForm.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited;

  if (AComponent is TBaseFrame) and
    (ComponentState = []) and (ControlState = []) then
    begin
      if (Operation = opInsert) then
        FFrames.Add(AComponent as TBaseFrame)
      else
        FFrames.Remove(AComponent as TBaseFrame);
    end;
end;

procedure TBaseForm.InternalInitialize;
var
  f: TBaseFrame;
begin
  try
    for f in Frames do
      f.dmDocClient:= dmDocClient;

    Initialize;

    for f in Frames do
      f.Initialize;
  except
    Application.HandleException(Self);
    PostMessage(Handle, WM_CLOSE, 0, 0);
    Height:= 0;
    Width:= 0;
  end;  { try }
end;

procedure TBaseForm.InternalFinalize;
var
  f: TBaseFrame;
begin
  Finalize;

  for f in Frames do
    f.Finalize;
end;

procedure TBaseForm.InternalDoBeforeShow;
var
  f: TBaseFrame;
begin
  DoBeforeShow;

  for f in Frames do
    f.DoBeforeShow;
end;

procedure TBaseForm.InternalDoAfterHide;
var
  f: TBaseFrame;
begin
  DoAfterHide;

  for f in Frames do
    f.DoAfterHide;
end;

procedure TBaseForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  f: TBaseFrame;
begin
  for f in Frames do
    f.FormClose(ModalResult);

  inherited;
end;

procedure TBaseForm.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  FOriginalFormCaption:= actForm.Caption;
  if (FOriginalFormCaption = '') then
    FOriginalFormCaption:= '%s';

  for i:= 0 to ComponentCount - 1 do
    if Components[i] is TAbmesMatrixReport then
      (Components[i] as TAbmesMatrixReport).DOSPrint:= LoginContext.DOSPrint;

  if HasCaptionMenu and not IsAppThemed then
    begin
      MenuCaptionButton:= TJvCaptionButton.Create(Self);
      MenuCaptionButton.Alignment:= taCenter;
      MenuCaptionButton.Caption:= '6';
      MenuCaptionButton.Font.Charset:= DEFAULT_CHARSET;
      MenuCaptionButton.Font.Color:= clWindowText;
      MenuCaptionButton.Font.Height:= -12;
      MenuCaptionButton.Font.Name:= 'Marlett';
      MenuCaptionButton.Font.Style:= [fsBold];
      MenuCaptionButton.Position:= 1;
      MenuCaptionButton.Spacing:= 0;
      MenuCaptionButton.OnClick:= MenuCaptionButtonClick;
    end;  { if }

  Position:= poDesigned;

  ReplaceAppParams(Self);
end;

procedure TBaseForm.FormDestroy(Sender: TObject);
begin
  if Assigned(FdmDocClient) and not IsDataModuleReleased(FdmDocClient) then
    FreeAndNil(FdmDocClient);
end;

procedure TBaseForm.MenuCaptionButtonClick(Sender: TObject);
var
  p: TPoint;
  MenuCaptionButtonPosition: Integer;
begin
  Assert(Assigned(fmMain));
  Assert(fmMain.Visible);

  if ([biMinimize, biMaximize] * BorderIcons <> []) then
    MenuCaptionButtonPosition:= 4
  else
    MenuCaptionButtonPosition:= 2;

  p:= ClientToScreen(Point(Width - (24 + 18*MenuCaptionButtonPosition), -3));
  fmMain.pmCaption.Popup(p.x, p.y);
end;

function TBaseForm.GetdmDocClient: TdmDocClient;
begin
  if Assigned(FOuterdmDocClient) then
    Result:= FOuterdmDocClient
  else
    begin
      if CanUseDocs and not Assigned(FdmDocClient) then
        FdmDocClient:= TdmDocClient.Create(Application);

      Result:= FdmDocClient;
    end;
end;

class function TBaseForm.CanUseDocs: Boolean;
var
  CanUseDocsAttr: CanUseDocsAttribute;
begin
  CanUseDocsAttr:= FindAttribute<CanUseDocsAttribute>;
  Result:= Assigned(CanUseDocsAttr) and CanUseDocsAttr.Value;
end;

function TBaseForm.GetIsOuterdmDocClient: Boolean;
begin
  Result:= Assigned(FOuterdmDocClient);
end;

function TBaseForm.GetDocsDelta: Variant;
begin
  Result:= Unassigned;

  if Assigned(dmDocClient) then
    Result:= dmDocClient.Delta;
end;

procedure TBaseForm.Loaded;
begin
  inherited Loaded;
  TClientComponentChecker.CheckForDisconnectedEventHandlers(Self);
end;

procedure TBaseForm.DoCreate;
begin
  TClientComponentChecker.CheckComponentsNotConnected(Self);
  inherited DoCreate;
end;

procedure TBaseForm.UnregisterFieldsTextVisibility(
  const AFields: array of TField);
var
  f: TField;
begin
  for f in AFields do
    UnregisterFieldTextVisibility(f);
end;

procedure TBaseForm.UnregisterFieldTextVisibility(const AField: TField);
var
  i: Integer;
begin
  i:= 0;
  while (i < AField.ComponentCount) do
    begin
      if (AField.Components[i] is TFieldTextVisibility) then
        AField.Components[i].Free
      else
        Inc(i);
    end;  { while }
end;

procedure TBaseForm.UpdateAllActions;
var
  f: TBaseFrame;
  a: TContainedAction;
begin
  for a in alActions do
    a.Update;

  for f in Frames do
    f.UpdateAllActions;
end;

procedure TBaseForm.FormActivate(Sender: TObject);
begin
//  UpdateAllActions;  ne stava tuka
end;

function TBaseForm.GetLoginContext: TClientLoginContext;
begin
  Result:= dmMain.LoginContext;
end;

procedure TBaseForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  if (dmMain.ParentWindowHandle <> 0) then
    Params.Style := Params.Style and not WS_CHILD;
end;

function TBaseForm.GetFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

function TBaseForm.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

class function TBaseForm.HasCaptionMenu: Boolean;
begin
  Result:= True;
end;

procedure TBaseForm.RefreshDataSet(ADataSet: TDataSet);

  function DocFieldsPairExist(ADataSet: TDataSet): Boolean;
  const
    DocBranchCodeSuffix = 'DOC_BRANCH_CODE';
    DocCodeSuffix = 'DOC_CODE';
  var
    i: Integer;
  begin
    Result:= False;
    for i:= 0 to ADataSet.FieldCount - 1 do
      if AnsiEndsText(DocBranchCodeSuffix, ADataSet.Fields[i].FieldName) and
         Assigned(ADataSet.FindField(
           StringReplace(ADataSet.Fields[i].FieldName, DocBranchCodeSuffix, DocCodeSuffix, []))) then
        begin
          Result:= True;
          Exit;
        end;
  end;

begin
  uClientUtils.RefreshDataSet(ADataSet);

  if Assigned(dmDocClient) and
     not dmDocClient.Modified and
     DocFieldsPairExist(ADataSet) then
    begin
      dmDocClient.ClearDocs;
    end;  { if }
end;

procedure TBaseForm.RegisterFieldsTextVisibility(AIsTextVisible: TBoolMethod; const AFields: array of TField);
var
  f: TField;
begin
  for f in AFields do
    RegisterFieldTextVisibility(AIsTextVisible, f);
end;

procedure TBaseForm.RegisterFieldTextVisibility(AIsTextVisible: TBoolMethod; const AField: TField);
begin
  TFieldTextVisibility.Create(AField, AIsTextVisible);
end;

procedure TBaseForm.OnAbmesDBDateEditGetCurrentDate(Sender: TObject; var ACurrentDate: TDateTime);
begin
  ACurrentDate:= ContextDate;
end;

procedure TBaseForm.SetAbmesDBDateEditsCurrentDateHandler;
var
  edt: TAbmesDBDateEdit;
begin
  for edt in AllComponents.OfType<TAbmesDBDateEdit> do
    edt.OnGetCurrentDate:= OnAbmesDBDateEditGetCurrentDate;
end;

end.
