unit fBaseFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, ActnList, dDocClient, uClientLoginContext, Generics.Collections,
  uEnumeratorUtils, uFuncUtils, System.Actions;

type
  TBaseFrameList = class;

  TBaseFrame = class(TFrame)
    alActions: TActionList;
    actFrame: TAction;
    procedure actFrameExecute(Sender: TObject);
    procedure actFrameUpdate(Sender: TObject);
  private
    FFrames: TBaseFrameList;
    FdmDocClient: TdmDocClient;
    procedure FillFramesList;
    function GetLoginContext: TClientLoginContext;
    procedure SetdmDocClient(const Value: TdmDocClient);
    procedure OnAbmesDBDateEditGetCurrentDate(Sender: TObject; var ACurrentDate: TDateTime);
    procedure SetAbmesDBDateEditsCurrentDateHandler;
  protected
    procedure Loaded; override;
    function GetFocusControl: TWinControl; virtual;

    property Frames: TBaseFrameList read FFrames;

    property LoginContext: TClientLoginContext read GetLoginContext;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Initialize; virtual;
    procedure Finalize; virtual;
    procedure DoBeforeShow; virtual;
    procedure DoAfterHide; virtual;
    procedure FormClose(ModalResult: Integer); virtual;
    procedure UpdateAllActions;
    procedure SetFocus; override;

    property dmDocClient: TdmDocClient read FdmDocClient write SetdmDocClient;
  end;

  TBaseFrameList = class(TList<TBaseFrame>)
  private
    function GetEnumeratorObject: TEnumerator<TBaseFrame>;
  public
    function All: TEnumerableRec<TBaseFrame>;
    function OfType<ResultItemType: TBaseFrame>: TEnumerableRec<ResultItemType>;
  end;

implementation

uses
  dMain, uUtils, uClientUtils, uClientDateTime, AbmesDBDateEdit;

{$R *.DFM}

{ TBaseFrame }

constructor TBaseFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FFrames:= TBaseFrameList.Create;
  FillFramesList;
end;

destructor TBaseFrame.Destroy;
begin
  FreeAndNil(FFrames);

  inherited Destroy;
end;

procedure TBaseFrame.FillFramesList;

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
  AddComponentFrames(Self);
end;

procedure TBaseFrame.Initialize;
var
  f: TBaseFrame;
begin
  for f in Frames do
    f.Initialize;

  SetAbmesDBDateEditsCurrentDateHandler;
end;

procedure TBaseFrame.Finalize;
var
  f: TBaseFrame;
begin
  for f in Frames do
    f.Finalize;
end;

procedure TBaseFrame.DoBeforeShow;
var
  f: TBaseFrame;
begin
  for f in Frames do
    f.DoBeforeShow;
end;

procedure TBaseFrame.DoAfterHide;
var
  f: TBaseFrame;
begin
  for f in Frames do
    f.DoAfterHide;
end;

procedure TBaseFrame.FormClose(ModalResult: Integer);
var
  f: TBaseFrame;
begin
  for f in Frames do
    f.FormClose(ModalResult);
end;

procedure TBaseFrame.Loaded;
begin
  inherited Loaded;
  TClientComponentChecker.CheckForDisconnectedEventHandlers(Self);
  TClientComponentChecker.CheckComponentsNotConnected(Self);
end;

procedure TBaseFrame.UpdateAllActions;
var
  f: TBaseFrame;
  a: TContainedAction;
begin
  for a in alActions do
    a.Update;

  for f in Frames do
    f.UpdateAllActions;
end;

function TBaseFrame.GetLoginContext: TClientLoginContext;
begin
  Result:= dmMain.LoginContext;
end;

procedure TBaseFrame.actFrameExecute(Sender: TObject);
begin
  // do nothing
end;

procedure TBaseFrame.actFrameUpdate(Sender: TObject);
var
  f: TBaseFrame;
begin
  for f in Frames do
    f.actFrame.Update;
end;

procedure TBaseFrame.SetdmDocClient(const Value: TdmDocClient);
var
  f: TBaseFrame;
begin
  FdmDocClient:= Value;

  for f in Frames do
    f.dmDocClient:= dmDocClient;
end;

procedure TBaseFrame.SetFocus;

  function ContainsFocusedControl(AControl: TWinControl): Boolean;
  var
    i: Integer;
  begin
    Result:= True;
    for i:= 0 to AControl.ControlCount - 1 do
      if (AControl.Controls[i] is TWinControl) and
         ( (AControl.Controls[i] as TWinControl).Focused or
           ContainsFocusedControl(AControl.Controls[i] as TWinControl) ) then
        Exit;
    Result:= False;
  end;  { ContainsFocusedControl }

var
  fc: TWinControl;
begin
  fc:= GetFocusControl;

  if (not Assigned(fc)) or ContainsFocusedControl(Self) then
    inherited
  else
    fc.SetFocus;
end;

function TBaseFrame.GetFocusControl: TWinControl;

  function FirstControlOf(AControl: TWinControl): TWinControl;
  var
    i: Integer;
  begin
    Result:= nil;
    for i:= 0 to AControl.ControlCount - 1 do
      if (AControl.Controls[i] is TWinControl) and
         AControl.Controls[i].Visible and
         (AControl.Controls[i].Name <> '') then
        begin
          Result:= (AControl.Controls[i] as TWinControl);
          Exit;
        end;
  end;  { FirstControlOf }

var
  c: TWinControl;
begin
  Result:= nil;
  c:= FirstControlOf(Self);
  while Assigned(c) do
    begin
      Result:= c;
      c:= FirstControlOf(c);
    end;  { while }
end;

procedure TBaseFrame.OnAbmesDBDateEditGetCurrentDate(Sender: TObject; var ACurrentDate: TDateTime);
begin
  ACurrentDate:= ContextDate;
end;

procedure TBaseFrame.SetAbmesDBDateEditsCurrentDateHandler;
var
  edt: TAbmesDBDateEdit;
begin
  for edt in AllComponents.OfType<TAbmesDBDateEdit> do
    edt.OnGetCurrentDate:= OnAbmesDBDateEditGetCurrentDate;
end;

{ TBaseFrameList }

function TBaseFrameList.All: TEnumerableRec<TBaseFrame>;
begin
  Result:= TEnumerableRec<TBaseFrame>.Create(GetEnumeratorObject);
end;

function TBaseFrameList.GetEnumeratorObject: TEnumerator<TBaseFrame>;
begin
  Result:= GetEnumerator;
end;

function TBaseFrameList.OfType<ResultItemType>: TEnumerableRec<ResultItemType>;
begin
  Result:= All._OfType<ResultItemType>;
end;

end.
