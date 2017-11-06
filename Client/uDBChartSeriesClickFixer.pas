unit uDBChartSeriesClickFixer;

interface

uses
  DBChart, TeEngine, Classes, Types;

type
  TDBChartSeriesClickFixer = class
  strict private
    FChart: TDBChart;
    FOldOnClick: TNotifyEvent;
    FOldOnDblClick: TNotifyEvent;
    type TMouseClickType = (mctSingle, mctDouble);
    procedure HookEvents;
    procedure UnhookEvents;
    procedure ChartOnClick(Sender: TObject);
    procedure ChartOnDblClick(Sender: TObject);
    procedure ChartClick(AMouseClickType: TMouseClickType);
    procedure DoSeriesClick(const APart: TChartClickedPart; const ACursorPos: TPoint; AOnClickEventHandler: TSeriesClick);
  public
    constructor Create(AChart: TDBChart);
    destructor Destroy; override;
  end;

implementation

uses
  SysUtils, Forms, Controls, Series, uUtils, TeeProcs;

{ TChartSeriesClickFixer }

constructor TDBChartSeriesClickFixer.Create(AChart: TDBChart);
begin
  inherited Create;

  FChart:= AChart;
  HookEvents;
end;

destructor TDBChartSeriesClickFixer.Destroy;
begin
  UnhookEvents;

  inherited;
end;

procedure TDBChartSeriesClickFixer.HookEvents;
begin
  FOldOnClick:= FChart.OnClick;
  FChart.OnClick:= ChartOnClick;

  FOldOnDblClick:= FChart.OnDblClick;
  FChart.OnDblClick:= ChartOnDblClick;
end;

procedure TDBChartSeriesClickFixer.UnhookEvents;
begin
  FChart.OnDblClick:= FOldOnDblClick;
  FOldOnDblClick:= nil;

  FChart.OnClick:= FOldOnClick;
  FOldOnClick:= nil;
end;

procedure TDBChartSeriesClickFixer.DoSeriesClick(const APart: TChartClickedPart; const ACursorPos: TPoint; AOnClickEventHandler: TSeriesClick);
begin
  if Assigned(AOnClickEventHandler) then
    AOnClickEventHandler(APart.ASeries, APart.PointIndex, mbLeft, KeyboardStateToShiftState, ACursorPos.X, ACursorPos.Y);
end;

procedure TDBChartSeriesClickFixer.ChartClick(AMouseClickType: TMouseClickType);
var
  CursorPos: TPoint;
  p: TChartClickedPart;
begin
  CursorPos:= FChart.GetCursorPos;
  FChart.CalcClickedPart(CursorPos, p);

  if Assigned(p.ASeries) and (p.ASeries is TLineSeries) then
    case p.Part of
      cpSeriesPointer:
        DoSeriesClick(
          p,
          CursorPos,
          Utils.IfThen<TSeriesClick>(AMouseClickType = mctSingle, p.ASeries.OnClick, p.ASeries.OnDblClick));
      cpSeries:
        Abort;
    else
      // do nothing
    end;
end;

procedure TDBChartSeriesClickFixer.ChartOnClick(Sender: TObject);
begin
  ChartClick(mctSingle);

  if Assigned(FOldOnClick) then
    FOldOnClick(Sender);
end;

procedure TDBChartSeriesClickFixer.ChartOnDblClick(Sender: TObject);
begin
  ChartClick(mctDouble);

  if Assigned(FOldOnDblClick) then
    FOldOnDblClick(Sender);
end;

end.
