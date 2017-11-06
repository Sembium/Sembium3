unit uAutoMouseWheel;

interface

implementation

uses
  Windows, Controls, Messages, Classes, Forms, Math;

type
  THackWinControl = class(TWinControl);

var
  MouseHookHandle: HHOOK;

function DoCtrlMouseWheel(ACtrl: TWinControl; AWheelDelta: Integer; APoint: TPoint): Boolean;
var
  KeyState: TKeyboardState;
  ShiftState: TShiftState;
begin
  ACtrl.SetFocus;
  GetKeyboardState(KeyState);
  ShiftState:= KeyboardStateToShiftState(KeyState);

  if (ssCtrl in ShiftState) then
    Result:= PostMessage(ACtrl.Handle, WM_VSCROLL, IfThen(AWheelDelta < 0, SB_PAGEDOWN, SB_PAGEUP), 0)
  else
    Result:= THackWinControl(ACtrl).DoMouseWheel(ShiftState, AWheelDelta, APoint);
end;

function MouseHookProc(Code: Integer; MessageID: WPARAM; MsgData: LPARAM): LRESULT; stdcall;
var
  Ctrl: TWinControl;
  MsgStruct: TMouseHookStructEx;
  WheelDelta: Integer;
  Point: TPoint;
begin
  if (Code >= 0) and (MessageID = WM_MOUSEWHEEL) then
    begin
      MsgStruct:= PMouseHookStructEx(MsgData)^;

      Point:= MsgStruct.MouseHookStruct.pt;
      Ctrl:= FindVCLWindow(Point);

      if Assigned(Ctrl) and Ctrl.Enabled and Ctrl.Visible and Ctrl.CanFocus and not (Ctrl is TFrame) then
        begin
          WheelDelta:= SmallInt(MsgStruct.mouseData shr 16);
          if DoCtrlMouseWheel(Ctrl, WheelDelta, Point) then
            Exit(1);
        end;  { if }
    end;  { if }

  Result:= CallNextHookEx(MouseHookHandle, Code, MessageID, MsgData);
end;

initialization
  MouseHookHandle:= SetWindowsHookEx(WH_MOUSE, @MouseHookProc, HInstance, GetCurrentThreadId);

finalization
  if (MouseHookHandle <> 0) then
    UnhookWindowsHookEx(MouseHookHandle);

end.
