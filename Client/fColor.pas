unit fColor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, Buttons, StdCtrls, System.Actions;

type
  TfrColor = class(TFieldEditFrame)
    btnColor: TBitBtn;
    btnClearColor: TSpeedButton;
    cdlgMain: TColorDialog;
    procedure btnColorClick(Sender: TObject);
  private
    FCurrentColor: TColor;
    procedure SetColor(Value: TColor);
    procedure UpdateCurrentColor;
    function ScaledColorRectSize: Integer;
  protected
    procedure DataChange(Sender: TObject); override;
    procedure UpdateData(Sender: TObject); override;
  public
    procedure Initialize; override;
    property CurrentColor: TColor read FCurrentColor write SetColor;
  end;

implementation

uses
  uUtils, uClientUtils, uScalingUtils;

{$R *.dfm}

{ TfrColor }

procedure TfrColor.DataChange(Sender: TObject);
begin
  inherited;
  UpdateCurrentColor;
end;

procedure TfrColor.UpdateData(Sender: TObject);
begin
  inherited;
  Assert((FieldCount > 0) and Assigned(Fields[0]));
  CheckEditMode(dsData.DataSet);
  if (CurrentColor = clNone) then
    Fields[0].Clear
  else
    Fields[0].AsInteger:= Integer(CurrentColor);
end;

function TfrColor.ScaledColorRectSize: Integer;
begin
  Result:= ScalePixels(15);
end;

procedure TfrColor.SetColor(Value: TColor);

  procedure DrawColorRect(AColor: TColor);
  begin
    with btnColor.Glyph.Canvas do
      begin
        Brush.Color:= AColor;
        FillRect(Rect(1, 1, ScaledColorRectSize - 1, ScaledColorRectSize - 1));
      end;
  end;

begin
  FCurrentColor:= Value;

  with btnColor.Glyph.Canvas do
    if (Value = clNone) then
      begin
        DrawColorRect(clWhite);
        Pen.Color:= clBlack;
        MoveTo(0, 0);
        LineTo(ScaledColorRectSize, ScaledColorRectSize);
        MoveTo(0, ScaledColorRectSize);
        LineTo(ScaledColorRectSize, 0);
      end
    else
      DrawColorRect(Value);
end;

procedure TfrColor.btnColorClick(Sender: TObject);
begin
  inherited;

  if ReadOnly then
    Abort;

  cdlgMain.Color:= CurrentColor;
  if cdlgMain.Execute then
    begin
      CurrentColor:= cdlgMain.Color;
      ForceUpdateRecord;
    end;
end;

procedure TfrColor.Initialize;
begin
  inherited;
  btnColor.Glyph:= TBitmap.Create;
  with btnColor.Glyph do
    begin
      Height:= ScaledColorRectSize;
      Width:= ScaledColorRectSize;
      TransparentMode:= tmFixed;
      TransparentColor:= clNone;
      Canvas.Pen.Color:= clBlack;
      Canvas.Rectangle(0, 0, ScaledColorRectSize, ScaledColorRectSize);
    end;
  UpdateCurrentColor;
end;

procedure TfrColor.UpdateCurrentColor;
begin
  if (FieldCount > 0) and
     Assigned(Fields[0]) and
     not Fields[0].IsNull then
    CurrentColor:= TColor(Fields[0].AsInteger)
  else
    CurrentColor:= clNone;
end;

end.
