unit uWndProcHooker;

interface

uses
  Windows, Messages;

type
  TWndProcHooker = class;

  TWndProcHookerEvent = procedure(Sender: TWndProcHooker; var AMessage: TMessage) of object;

  TWndProcHooker = class
  private
    FWindowHandle: HWND;
    FOldWndProc: Pointer;
    FNewWndProcInstance: Pointer;
    FBeforeWndProc: TWndProcHookerEvent;
    FAfterWndProc: TWndProcHookerEvent;
    procedure HookWndProc;
    procedure UnhookWndProc;
    procedure NewWndProc(var AMessage: TMessage);
  public
    constructor Create(AWindowHandle: HWND);
    destructor Destroy; override;
    property BeforeWndProc: TWndProcHookerEvent read FBeforeWndProc write FBeforeWndProc;
    property AfterWndProc: TWndProcHookerEvent read FAfterWndProc write FAfterWndProc;
  end;

implementation

uses
  Classes;

{ TWndProcHooker }

constructor TWndProcHooker.Create(AWindowHandle: HWND);
begin
  FWindowHandle:= AWindowHandle;
  HookWndProc;
end;

destructor TWndProcHooker.Destroy;
begin
  UnhookWndProc;
  inherited;
end;

procedure TWndProcHooker.HookWndProc;
begin
  FOldWndProc:= Pointer(GetWindowLongPtr(FWindowHandle, GWL_WNDPROC));
  FNewWndProcInstance:= MakeObjectInstance(NewWndProc);
  SetWindowLongPtr(FWindowHandle, GWL_WNDPROC, NativeInt(FNewWndProcInstance));
end;

procedure TWndProcHooker.UnhookWndProc;
begin
  SetWindowLongPtr(FWindowHandle, GWL_WNDPROC, NativeInt(FOldWndProc));
  FreeObjectInstance(FNewWndProcInstance);
end;

procedure TWndProcHooker.NewWndProc(var AMessage: TMessage);
begin
  if Assigned(FBeforeWndProc) then
    FBeforeWndProc(Self, AMessage);

  AMessage.Result:= CallWindowProc(FOldWndProc, FWindowHandle, AMessage.Msg, AMessage.WParam, AMessage.LParam);

  if Assigned(FAfterWndProc) then
    FAfterWndProc(Self, AMessage);
end;

end.
