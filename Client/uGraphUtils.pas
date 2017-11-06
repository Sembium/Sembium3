unit uGraphUtils;

interface

uses
  uPeriods, DbChart, Classes;

resourcestring
  SToDate = 'към дата: ';
  SRounderStepRequired = 'Ръчният вариант на закръгляване изисква да изберете стъпка на закръглянето.';

function CalcBeginDate(ACenterDate: TDateTime; APeriod: TPeriod; ATimeUnitCount: Integer): TDateTime;

function CalcEndDate(ABeginDate: TDateTime; APeriod: TPeriod; ATimeUnitCount: Integer): TDateTime;

function MoveCenterDateBackward(ACenterDate: TDateTime; APeriod: TPeriod; ATimeUnitCount: Integer): TDateTime;

function MoveCenterDateForward(ACenterDate: TDateTime; APeriod: TPeriod; ATimeUnitCount: Integer): TDateTime;

procedure DrawTodayArea(AChart: TDBChart; APeriod: TPeriod);

procedure SetClippingRectangle(AChart: TDBChart);

// silno jelatelno e AChart.PrinProportional = True za po-dobra kartinka! (ne stava s prost set v print-a)
procedure PrintChart(AChart: TDBChart; ATitleLines: TStrings);

procedure FixGraphStyle(AChart: TDBChart);

implementation

uses
  uColorConsts, Types, SysUtils, uClientDateTime, fChangeCurrentPrinter,
  Controls, uUtils, Graphics, Series, JclGraphUtils, uClientUtils, uAttachedProperty, TeEngine, TeCanvas, TeeProcs;

type
  TBarSeriesHelper = class helper for TBarSeries
  strict private
    class var FSavedSeriesColorProp: IProp<TColor>;
    class var FSavedBrushStyleProp: IProp<TBrushStyle>;
    function GetSavedSeriesColor: TColor;
    procedure SetSavedSeriesColor(const Value: TColor);
    function GetSavedBrushStyle: TBrushStyle;
    procedure SetSavedBrushStyle(const Value: TBrushStyle);
  public
    property SavedSeriesColor: TColor read GetSavedSeriesColor write SetSavedSeriesColor;
    property SavedBrushStyle: TBrushStyle read GetSavedBrushStyle write SetSavedBrushStyle;
  end;

{ Routines }

function CalcBeginDate(ACenterDate: TDateTime; APeriod: TPeriod; ATimeUnitCount: Integer): TDateTime;
begin
  Result:=
    IncDate(
      GetPeriodFirstDate(ACenterDate, APeriod),
      APeriod,
      -(ATimeUnitCount div 2)
    );
end;


function CalcEndDate(ABeginDate: TDateTime; APeriod: TPeriod; ATimeUnitCount: Integer): TDateTime;
begin
  Result:= IncDate(ABeginDate, APeriod, ATimeUnitCount) - 1;
end;


function MoveCenterDateBackward(ACenterDate: TDateTime; APeriod: TPeriod; ATimeUnitCount: Integer): TDateTime;
begin
  Result:=
    IncDate(ACenterDate, APeriod, -(ATimeUnitCount div 2));
end;


function MoveCenterDateForward(ACenterDate: TDateTime; APeriod: TPeriod; ATimeUnitCount: Integer): TDateTime;
begin
  Result:=
    IncDate(ACenterDate, APeriod, ATimeUnitCount div 2);
end;


procedure DrawTodayArea(AChart: TDBChart; APeriod: TPeriod);
var
  NowDateRect: TRect;
begin
  with AChart do
    begin
      with BottomAxis do
        begin
          NowDateRect.Left:= CalcPosValue(IncDate(GetPeriodFirstDate(ContextDate, APeriod), APeriod, -1));
          NowDateRect.Right:= CalcPosValue(IncDate(GetPeriodFirstDate(ContextDate, APeriod), APeriod, 1));
        end;

      with LeftAxis do
        begin
          NowDateRect.Top:= CalcPosValue(Maximum) + 1;
          NowDateRect.Bottom:= CalcPosValue(Minimum) - 1;
        end;

      with Canvas do
        begin
          Brush.Color:= ccChartTodayAreaBackground;
          try
            ClipRectangle(ChartRect);
            FillRect(NowDateRect);
          finally
            UnClipRectangle;
          end;
      end;
    end;
end;

procedure SetClippingRectangle(AChart: TDBChart);
var
  AxisRect: TRect;
begin
  with AChart.BottomAxis do
    begin
      AxisRect.Left:= CalcPosValue(Minimum);
      AxisRect.Right:= CalcPosValue(Maximum);
    end;
  with AChart.LeftAxis do
    begin
      AxisRect.Bottom:= CalcPosValue(Minimum);
      AxisRect.Top:= CalcPosValue(Maximum);
    end;
  AChart.Canvas.ClipRectangle(AxisRect);
end;

procedure PrintChart(AChart: TDBChart; ATitleLines: TStrings);

const
  PrintLabelsFontSize = 6;
  PrintTitleFontSize = 8;
  PrintMarksFontSize = 4;
  ViewMarksFontSize = 7;
  DarkSeriesColorPct = 25;
  MarginPct = 8;

  procedure PrepareSeriesForPrint;
  var
    s: TBarSeries;
  begin
    for s in AChart.AllSeries.OfType<TBarSeries> do
      begin
        s.SavedBrushStyle:= s.BarBrush.Style;
        s.SavedSeriesColor:= s.SeriesColor;
        if (s.BarBrush.Style <> bsSolid) then
          begin
            s.BarBrush.Style:= bsSolid;
            s.SeriesColor:= DarkColor(s.SeriesColor, DarkSeriesColorPct);
          end;
      end;
  end;

  procedure UnprepareSeriesForPrint;
  var
    s: TBarSeries;
  begin
    for s in AChart.AllSeries.OfType<TBarSeries> do
      begin
        s.BarBrush.Style:= s.SavedBrushStyle;
        s.SeriesColor:= s.SavedSeriesColor;
      end;
  end;

  procedure DoPrint;
  var
    i, j: Integer;
    OldLabelsFontSize: Integer;
    OldTitleFontSize: Integer;
  begin
    with AChart do
      begin
        PrintMargins:= Rect(MarginPct, MarginPct, MarginPct, MarginPct);

        UndoZoom;

        OldLabelsFontSize:= BottomAxis.LabelsFont.Size;
        OldTitleFontSize:= Title.Font.Size;

        BottomAxis.LabelsFont.Size:= PrintLabelsFontSize;
        LeftAxis.LabelsFont.Size:= PrintLabelsFontSize;
        Title.Font.Size:= PrintTitleFontSize;
        for i:= 0 to SeriesCount-1 do
          SeriesList[i].Marks.Font.Size:= PrintMarksFontSize;

        PrepareSeriesForPrint;
        try
          PrintLandscape;
        finally
          // TChart bug workaround - zatova 2 pyti
          for j:= 1 to 2 do
            begin
              UnprepareSeriesForPrint;
              BottomAxis.LabelsFont.Size:= OldLabelsFontSize;
              LeftAxis.LabelsFont.Size:= OldLabelsFontSize;
              Title.Font.Size:= OldTitleFontSize;
              for i:= 0 to SeriesCount-1 do
                SeriesList[i].Marks.Font.Size:= ViewMarksFontSize;
              Refresh;
            end;
        end;
      end;
  end;

var
  SavedTitle: string;
  SavedTitleVisible: Boolean;
begin
  if not Assigned(ATitleLines) then
    DoPrint
  else
    begin
      SavedTitle:= AChart.Title.Text.Text;
      AChart.Title.Text.Text:= ATitleLines.Text;
      try
        SavedTitleVisible:= AChart.Title.Visible;
        AChart.Title.Visible:= True;
        try
          if (TfmChangeCurrentPrinter.ShowForm = mrOk) then
            DoPrint;
        finally
          AChart.Title.Visible:= SavedTitleVisible;
        end;
      finally
        AChart.Title.Text.Text:= SavedTitle;
      end;
    end;
end;

{ TBarSeriesHelper }

function TBarSeriesHelper.GetSavedSeriesColor: TColor;
begin
  Result:= TProp<TColor>.GetPropValue(FSavedSeriesColorProp, Self);
end;

procedure TBarSeriesHelper.SetSavedSeriesColor(const Value: TColor);
begin
  TProp<TColor>.SetPropValue(FSavedSeriesColorProp, Self, Value);
end;

function TBarSeriesHelper.GetSavedBrushStyle: TBrushStyle;
begin
  Result:= TProp<TBrushStyle>.GetPropValue(FSavedBrushStyleProp, Self);
end;

procedure TBarSeriesHelper.SetSavedBrushStyle(const Value: TBrushStyle);
begin
  TProp<TBrushStyle>.SetPropValue(FSavedBrushStyleProp, Self, Value);
end;

procedure FixGraphStyle(AChart: TDBChart);

  procedure FixChartSeriesMarks(Marks: TSeriesMarks);
  begin
    Marks.Pen.Width:= 0;
    Marks.Shadow.Visible:= False;
    Marks.RoundSize:= 0;
  end;

var
  i: Integer;
begin
  for i:= 0 to AChart.SeriesList.Count - 1 do
    begin
      if (AChart.SeriesList[i] is TBarSeries) then
        (AChart.SeriesList[i] as TBarSeries).BarPen.Width:= 0;

      FixChartSeriesMarks(AChart.SeriesList[i].Marks);
    end;
end;

end.
