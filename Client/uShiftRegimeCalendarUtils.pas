unit uShiftRegimeCalendarUtils;

interface

uses
  Graphics, Windows, SysUtils;

resourcestring
  SNotSupportedMode = 'Not supported calendar mode';

const
  HiddenShifts = '****';
  NotWorkingShiftCycleChar = '@';

type
  TCalendarMode = (cmShowAllIntervals, cmShowCurrentInterval);
  TDateOffState = (dosWorkday, dosDayOff);
  TShiftOffState = (sosWorking, sosShiftOff);
  TMasterMonth = (mmCurrent, mmOther);
  TMasterInterval = (miNone, miCurrent, miOther);

  function GetMasterInterval(AIsDateCovered, AIsInCurrentInterval: Boolean): TMasterInterval;
  procedure DrawCalendarCell(ACanvas: TCanvas; ARect: TRect; ADayOfMonth: Integer;
    AShifts: string; AIsSelected: Boolean; ACalendarMode: TCalendarMode;
    AMasterInterval: TMasterInterval; AMasterMonth: TMasterMonth; ADateOffState: TDateOffState);

implementation

uses
  Classes, Math, uUtils;

const
  LightGray = $00E0E0E0;
  DarkGray = $00C0C0C0;

  CalendarDateColors: array[TMasterMonth, TDateOffState] of TColor =
    ( // current month
      ( clWindowText,  // working
        clRed  // off
      ),
      // other month
      ( DarkGray,  // working
        clDkGray  // off
      )
    );

  CalendarShiftColors: array[TMasterMonth, TShiftOffState] of TColor =
    ( // current month
      ( clWindowText,  // working
        clRed  // off
      ),
      // other month
      ( DarkGray,  // working
        clDkGray  // off
      )
    );

  CalendarBackColors: array[TCalendarMode, TMasterInterval] of TColor =
    ( // show all intervals
      ( LightGray,  // none
        clWhite,  // current
        clWhite  // other
      ),
      // show current interval
      ( LightGray,  // none
        clWhite,  // current
        LightGray  // other
      )
    );

function GetCalendarColor(AHighlight: Boolean; AColor: TColor): TColor;
begin
  if AHighlight then
    case AColor of
      clWindowText:
        Result:= clHighlightText;
      clSilver:
        Result:= clHighlightText;
      clWhite:
        Result:= clHighlight;
      LightGray:
        Result:= DarkGray;
      else
        Result:= AColor;
    end
  else
    Result:= AColor;
end;

function GetMasterInterval(AIsDateCovered, AIsInCurrentInterval: Boolean): TMasterInterval;
begin
  if AIsInCurrentInterval then
    Result:= miCurrent
  else
    if AIsDateCovered then
      Result:= miOther
    else
      Result:= miNone;
end;

function NegateShiftOffState(AShiftOffState: TShiftOffState): TShiftOffState;
begin
  case AShiftOffState of
    sosWorking:
      Result:= sosShiftOff;
    sosShiftOff:
      Result:= sosWorking;
    else
      raise Exception.Create('Not supported shift off state');
  end;  { case }
end;

function ShrinkRect(ARect: TRect; AMargin: Integer): TRect;
begin
  Inc(ARect.Left, AMargin);
  Inc(ARect.Top, AMargin);
  Dec(ARect.Right, AMargin);
  Dec(ARect.Bottom, AMargin);

  Result:= Rect(ARect.Left, ARect.Top, ARect.Right, ARect.Bottom);
end;

procedure DrawCalendarCell(ACanvas: TCanvas; ARect: TRect; ADayOfMonth: Integer;
  AShifts: string; AIsSelected: Boolean; ACalendarMode: TCalendarMode;
  AMasterInterval: TMasterInterval; AMasterMonth: TMasterMonth; ADateOffState: TDateOffState);
const
  MarginPercent = 12;

var
  ShiftOffState: TShiftOffState;
  DateRect: TRect;
  ShiftsRect: TRect;
  TextHeight: Integer;
  Margin: Integer;
  i: Integer;
begin
  ACanvas.Lock;
  try
    TextHeight:= ACanvas.TextHeight(IntToStr(ADayOfMonth));
    Margin:= RealRound((ARect.Bottom - ARect.Top + 1) * MarginPercent / 100);

    DateRect:= ShrinkRect(ARect, Margin);
    DateRect.Bottom:= DateRect.Top + TextHeight;

    ShiftsRect:= ShrinkRect(ARect, Margin);
    ShiftsRect.Top:= ShiftsRect.Bottom - TextHeight;

    // izrisuwane na fona ( i setwane na back color za TextRect(...) )
    ACanvas.Brush.Color:=
      GetCalendarColor(AIsSelected, CalendarBackColors[ACalendarMode, AMasterInterval]);
    ACanvas.FillRect(ARect);

    // izpiswane na datata
    ACanvas.Font.Color:=
      GetCalendarColor(AIsSelected, CalendarDateColors[AMasterMonth, ADateOffState]);
    ACanvas.TextRect(DateRect, DateRect.Left, DateRect.Top, IntToStr(ADayOfMonth));

    // izpiswane na smenite
    ShiftOffState:= sosWorking;
    for i:= 1 to Length(AShifts) do
      if (AShifts[i] = NotWorkingShiftCycleChar) then
        ShiftOffState:= NegateShiftOffState(ShiftOffState)
      else
        begin
          ACanvas.Font.Color:=
            GetCalendarColor(AIsSelected, CalendarShiftColors[AMasterMonth, ShiftOffState]);
          ACanvas.TextRect(ShiftsRect, ShiftsRect.Left, ShiftsRect.Top, AShifts[i]);

          Inc(ShiftsRect.Left, ACanvas.TextWidth(AShifts[i]));
          ShiftsRect.Left:= Min(ShiftsRect.Left, ShiftsRect.Right);
        end;
  finally
    ACanvas.Unlock;
  end;  { try }
end;

end.
