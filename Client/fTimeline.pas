unit fTimeline;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBaseFrame, ActnList, ExtCtrls, AbmesArrow, DB, DBClient,
  AbmesClientDataSet, AbmesFields, System.Actions;

type
  THour = 0..23;

  TfrTimeline = class(TBaseFrame)
    pnlHour0: TPanel;
    shpSep2: TShape;
    shpFirst: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    shpLast: TShape;
    pnlHour1: TPanel;
    pnlHour2: TPanel;
    pnlHour3: TPanel;
    pnlHour4: TPanel;
    pnlHour5: TPanel;
    pnlHour6: TPanel;
    pnlHour7: TPanel;
    pnlHour8: TPanel;
    pnlHour9: TPanel;
    pnlHour10: TPanel;
    pnlHour11: TPanel;
    pnlHour12: TPanel;
    pnlHour14: TPanel;
    pnlHour16: TPanel;
    pnlHour18: TPanel;
    pnlHour20: TPanel;
    pnlHour22: TPanel;
    pnlHour13: TPanel;
    pnlHour15: TPanel;
    pnlHour17: TPanel;
    pnlHour19: TPanel;
    pnlHour21: TPanel;
    pnlHour23: TPanel;
    shpSep1: TShape;
    shpSep3: TShape;
    shpSep4: TShape;
    tmrUpdateTimeline: TTimer;
    saSlider: TAbmesArrow;
    procedure tmrUpdateTimelineTimer(Sender: TObject);
  private
    FUpdateInterval: Cardinal;
    FUpdating: Boolean;
    FHourPanels: array [Low(THour)..High(THour)] of TPanel;
    procedure SetUpdateInterval(Value: Cardinal);
    procedure UpdateTimeline;
    function GetHourCaption(Hour: THour): string;
    function TimeToHour(Value: TDateTime; ToRoundUp: Boolean = False): THour;
  public
    procedure Initialize; override;
    procedure Finalize; override;
    property UpdateInterval: Cardinal read FUpdateInterval write SetUpdateInterval;
  end;

implementation

uses
  DateUtils, uColorConsts, dMain, uClientDateTime, Math;

{$R *.dfm}

{ TfrTimeline }

procedure TfrTimeline.Initialize;
var
  i: THour;
begin
  inherited;

  tmrUpdateTimeline.Enabled:= True;

  SetUpdateInterval(5000); // 5 sekundi
  FUpdating:= False;
  for i:= Low(THour) to High(THour) do
    FHourPanels[i]:= FindComponent('pnlHour' + IntToStr(i)) as TPanel;

  UpdateTimeline;
end;

procedure TfrTimeline.SetUpdateInterval(Value: Cardinal);
begin
  FUpdateInterval:= Value;
  tmrUpdateTimeline.Interval:= Value;
end;

procedure TfrTimeline.UpdateTimeline;
var
  i: THour;
  w: Integer;
  ElapsedSeconds: Integer;
  CurrentHour: THour;
begin
  if FUpdating then
    Exit;

  FUpdating:= True;
  try
    w:= shpLast.Left + shpLast.Width - shpFirst.Left;
    ElapsedSeconds:= SecondsBetween(ContextNow, ContextDate);
    CurrentHour:= ElapsedSeconds div 3600;

    saSlider.Left:=
      shpFirst.Left -
      (saSlider.Width div 2) +
      (ElapsedSeconds * w) div (24*3600);

    for i:= Low(THour) to High(THour) do
      with FHourPanels[i] do
        begin
          Caption:= GetHourCaption(i);

          if (i = CurrentHour) then
            begin
              Color:= ccTimelineCurrentHour;
              Font.Color:= ccTimelineCurrentHourText;
            end
          else
          if (i > CurrentHour) then
            begin
              Color:= ccTimelineRemainingHour;
              Font.Color:= ccTimelineRemainingHourText;
            end
          else
            begin
              Color:= ccTimelinePassedHour;
              Font.Color:= ccTimelinePassedHourText;
            end;
        end;

  finally
    FUpdating:= False;
  end;   { try }
end;

procedure TfrTimeline.tmrUpdateTimelineTimer(Sender: TObject);
begin
  inherited;
  UpdateTimeline;
end;

function TfrTimeline.GetHourCaption(Hour: THour): string;
var
  BeginHour, EndHour: THour;
begin
  BeginHour:= TimeToHour(LoginContext.WorkdayBeginHour);
  EndHour:= TimeToHour(LoginContext.WorkdayEndHour, True);
  if dmMain.LoggedIn and
     ( ( (BeginHour < EndHour) and (BeginHour <= Hour) and (Hour < EndHour)) or
       ( (BeginHour > EndHour) and ((BeginHour <= Hour) or (Hour < EndHour)))
     ) then
    Result:= '•'
  else
    Result:= '';
end;

function TfrTimeline.TimeToHour(Value: TDateTime; ToRoundUp: Boolean = False): THour;
var
  Hour, Min, Sec, MSec: Word;
begin
  DecodeTime(Value, Hour, Min, Sec, MSec);

  if (ToRoundUp) and ((Min > 0) or (Sec > 0) or (MSec > 0)) then
    Inc(Hour);

  if (Hour > High(THour)) then
    Hour:= Low(THour);

  Result:= Hour;
end;

procedure TfrTimeline.Finalize;
begin
  tmrUpdateTimeline.Enabled:= False;
  inherited;
end;

end.
