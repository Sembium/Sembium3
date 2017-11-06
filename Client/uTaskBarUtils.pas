unit uTaskBarUtils;

interface

uses
  Winapi.Windows, Vcl.Graphics, Vcl.Controls;

procedure SetOverlayIcon(AIcon: TIcon); overload;
procedure SetTaskbarGroupingIdentifier(const AExeVersion, ADBName: string); overload;
procedure SetTaskbarGroupingIdentifier(const AExeVersion: string); overload;

procedure EnableCustomPeekView;
procedure InvalidateCustomPeekView;

function CaptureWinControlImage(AWinControl: TWinControl): TBitmap;

implementation

uses
  System.Classes, System.SysUtils, Winapi.ShlObj, System.Win.ComObj, Vcl.Forms,
  Winapi.DwmApi, Winapi.WinSpool;

procedure SetOverlayIcon(AIcon: TIcon);
var
  TaskbarList: ITaskbarList4;
  FormHandle: HWnd;
  IconHandle: HICON;
begin
  if CheckWin32Version(6, 1) then  // windows 7
    begin
      TaskbarList:= CreateComObject(CLSID_TaskbarList) as ITaskbarList4;
      TaskbarList.HrInit;

      if Application.MainFormOnTaskBar then
        FormHandle:= Application.MainForm.Handle
      else
        FormHandle:= Application.Handle;

      if Assigned(AIcon) then
        IconHandle:= AIcon.Handle
      else
        IconHandle:= 0;

      TaskbarList.SetOverlayIcon(FormHandle, IconHandle, nil);
    end;
end;

procedure InternalSetTaskbarGroupingIdentifier(const AIdentifier: string);
begin
  if CheckWin32Version(6, 1) then  // windows 7
    begin
      SetCurrentProcessExplicitAppUserModelID(PChar(AIdentifier));
    end;
end;

procedure SetTaskbarGroupingIdentifier(const AExeVersion, ADBName: string);
begin
  InternalSetTaskbarGroupingIdentifier(
    Format('%s-%s-%s', [ExtractFileName(Application.ExeName),AExeVersion, ADBName]));
end;

procedure SetTaskbarGroupingIdentifier(const AExeVersion: string);
begin
  InternalSetTaskbarGroupingIdentifier(Format('%s-%s', [ExtractFileName(Application.ExeName), AExeVersion]));
end;

procedure EnableCustomPeekView;
var
  EnableAttribute: Cardinal;
begin
  if CheckWin32Version(6, 1) then  // windows 7
    begin
      EnableAttribute:= DWORD(True);
      DwmSetWindowAttribute(Application.Handle, DWMWA_HAS_ICONIC_BITMAP, @EnableAttribute, SizeOf(EnableAttribute));
      DwmSetWindowAttribute(Application.Handle, DWMWA_FORCE_ICONIC_REPRESENTATION, @EnableAttribute, SizeOf(EnableAttribute));
      DwmSetWindowAttribute(Application.Handle, DWMWA_DISALLOW_PEEK, @EnableAttribute, SizeOf(EnableAttribute));
    end;
end;

procedure InvalidateCustomPeekView;
begin
  DwmInvalidateIconicBitmaps(Application.Handle);
end;

function CaptureWinControlImage(AWinControl: TWinControl): TBitmap;
var
  vControlDC: HDC;
  R: TRect;
begin
  // if the TWinControl has not been initialized, raise error
  if not AWinControl.HandleAllocated then
    raise Exception.Create('The control''s window handle has not been allocated');

  vControlDC:= GetDC(AWinControl.Handle);
  try
    Result:= TBitmap.Create;
    try
      Result.PixelFormat:= pf24bit;

      GetClientRect(AWinControl.Handle, R);

      Result.Height:= R.Height;
      Result.Width := R.Width;

      BitBlt(Result.Canvas.Handle, 0, 0, Result.Width, Result.Height, vControlDC, 0, 0, SRCCOPY);
    except
      FreeAndNil(Result);
      raise;
    end;
  finally
    ReleaseDC(AWinControl.Handle, vControlDC);
  end;
end;

end.
