unit uCellParamsSetters;

interface

uses
  AbmesDBGrid, DBGridEh, GridsEh, Graphics, DB;

type
  TCellParamsSetter = class abstract
  protected
    function GetBackground: TColor; virtual; abstract;
    procedure SetBackground(AValue: TColor); virtual; abstract;
    function GetForeground: TColor; virtual; abstract;
    procedure SetForeground(AValue: TColor); virtual; abstract;
    function GetIsSelected: Boolean; virtual; abstract;
    function GetCurrentFieldName: string; virtual; abstract;
  public
    function GetFieldValue(AFieldName: string): Variant; virtual; abstract;
    property CurrentFieldName: string read GetCurrentFieldName;
    property Background: TColor read GetBackground write SetBackground;
    property Foreground: TColor read GetForeground write SetForeground;
    property IsSelected: Boolean read GetIsSelected;
  end;

  TGridCellParamsSetter = class(TCellParamsSetter)
  private
    FDataSet: TDataSet;
    FColumn: TColumnEh;
    FFont: TFont;
    PBackground: PColor;
    FState: TGridDrawState;
  protected
    function GetBackground: TColor; override;
    procedure SetBackground(AValue: TColor); override;
    function GetForeground: TColor; override;
    procedure SetForeground(AValue: TColor); override;
    function GetIsSelected: Boolean; override;
    function GetCurrentFieldName: string; override;
  public
    function GetFieldValue(AFieldName: string): Variant; override;
    constructor Create(AColumn: TColumnEh; AFont: TFont; var ABackground: TColor;
      AState: TGridDrawState);
  end;

implementation

uses
  StrUtils;

{ TGridCellParamsSetter }

constructor TGridCellParamsSetter.Create(AColumn: TColumnEh;
  AFont: TFont; var ABackground: TColor; AState: TGridDrawState);
begin
  inherited Create;

  Assert(Assigned(AColumn));
  Assert(Assigned(AColumn.Grid));
  Assert(Assigned(AColumn.Grid.DataSource));
  Assert(Assigned(AColumn.Grid.DataSource.DataSet));
  Assert(Assigned(AFont));

  FDataSet:= AColumn.Grid.DataSource.DataSet;
  FColumn:= AColumn;
  FFont:= AFont;
  PBackground:= @ABackground;
  FState:= AState;
end;

function TGridCellParamsSetter.GetBackground: TColor;
begin
  Result:= PBackground^;
end;

function TGridCellParamsSetter.GetCurrentFieldName: string;
begin
  Result:= FColumn.Field.FieldName;
end;

function TGridCellParamsSetter.GetFieldValue(AFieldName: string): Variant;
begin
  Result:= FDataSet.FieldByName(AFieldName).AsVariant;
end;

function TGridCellParamsSetter.GetForeground: TColor;
begin
  Result:= FFont.Color;
end;

function TGridCellParamsSetter.GetIsSelected: Boolean;
begin
  Result:= (gdSelected in FState);
end;

procedure TGridCellParamsSetter.SetBackground(AValue: TColor);
begin
  PBackground^:= AValue;
end;

procedure TGridCellParamsSetter.SetForeground(AValue: TColor);
begin
  FFont.Color:= AValue;
end;

end.
