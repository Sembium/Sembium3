unit rDBTreeDataReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, DBClient, AbmesClientDataSet, QRExport, QRCtrls,
  QuickRpt, ExtCtrls, Generics.Collections;

type
  TDBTreeDataReport = class(TDBDataReport)
    bndDetail: TQRBand;
    dbtNodeIdentifier: TQRDBText;
    imgNodeIcon: TQRImage;
    shpParentLine1: TQRShape;
    shpParentLine2: TQRShape;
    shpParentLine3: TQRShape;
    shpParentLine4: TQRShape;
    shpParentLine5: TQRShape;
    shpParentLine6: TQRShape;
    shpParentLine7: TQRShape;
    shpParentLine8: TQRShape;
    shpParentLine50: TQRShape;
    shpParentLine49: TQRShape;
    shpParentLine48: TQRShape;
    shpParentLine47: TQRShape;
    shpParentLine46: TQRShape;
    shpParentLine45: TQRShape;
    shpParentLine44: TQRShape;
    shpParentLine43: TQRShape;
    shpParentLine41: TQRShape;
    shpParentLine40: TQRShape;
    shpParentLine22: TQRShape;
    shpParentLine19: TQRShape;
    shpParentLine10: TQRShape;
    shpParentLine9: TQRShape;
    shpParentLine11: TQRShape;
    shpParentLine12: TQRShape;
    shpParentLine13: TQRShape;
    shpParentLine14: TQRShape;
    shpParentLine15: TQRShape;
    shpParentLine16: TQRShape;
    shpParentLine17: TQRShape;
    shpParentLine18: TQRShape;
    shpParentLine20: TQRShape;
    shpParentLine21: TQRShape;
    shpParentLine23: TQRShape;
    shpParentLine24: TQRShape;
    shpParentLine25: TQRShape;
    shpParentLine26: TQRShape;
    shpParentLine29: TQRShape;
    shpParentLine31: TQRShape;
    shpParentLine33: TQRShape;
    shpParentLine35: TQRShape;
    shpParentLine37: TQRShape;
    shpParentLine39: TQRShape;
    shpParentLine38: TQRShape;
    shpParentLine36: TQRShape;
    shpParentLine42: TQRShape;
    shpParentLine34: TQRShape;
    shpParentLine32: TQRShape;
    shpParentLine30: TQRShape;
    shpParentLine28: TQRShape;
    shpParentLine27: TQRShape;
    shpVertLine: TQRShape;
    shpHorLine: TQRShape;
    shpNodeIdentifier: TQRShape;
    procedure bndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure bndDetailAfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    FHasImages: Boolean;
    FOriginalIDColumnRight: Integer;
    FParentLines: TList<TQRShape>;
    function IsLastChild: Boolean;
  protected
    function ImageIndexFieldName: string; virtual;
    function IndentPixelsCount: Integer; virtual;
    function GetImageList: TImageList; virtual;
    function IsLastChildFieldName: string; virtual;
    function HasChildrenFieldName: string; virtual;
    function LevelFieldName: string; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses
  Math, dMain;

const
  ParentLinesCount = 50;

{$R *.dfm}

constructor TDBTreeDataReport.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FParentLines:= TList<TQRShape>.Create;
end;

destructor TDBTreeDataReport.Destroy;
begin
  FreeAndNil(FParentLines);
  inherited;
end;

procedure TDBTreeDataReport.bndDetailBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var
  Level: Integer;
  PixelsOffset: Integer;
  il: TImageList;
begin
  inherited;

  Level:= ReportDataSet.FieldByName(LevelFieldName).AsInteger;
  PixelsOffset:= Level * IndentPixelsCount;

  imgNodeIcon.Enabled:= FHasImages;
  imgNodeIcon.Left:= PixelsOffset;

  dbtNodeIdentifier.Left:= PixelsOffset + IfThen(FHasImages, imgNodeIcon.Width + 1);
  dbtNodeIdentifier.Width:= FOriginalIDColumnRight - dbtNodeIdentifier.Left;

  shpNodeIdentifier.Left:= dbtNodeIdentifier.Left - 1;
  shpNodeIdentifier.Width:= dbtNodeIdentifier.Width + 2;

  if FHasImages then
    begin
      il:= GetImageList;
      Assert(Assigned(il));
      imgNodeIcon.Canvas.Brush.Color:= bndDetail.Color;
      imgNodeIcon.Canvas.FillRect(Rect(0, 0, imgNodeIcon.Width, imgNodeIcon.Height));
      il.GetBitmap(ReportDataSet.FieldByName(ImageIndexFieldName).AsInteger, imgNodeIcon.Picture.Bitmap);
    end;  { if }

  shpVertLine.Left:= PixelsOffset - IndentPixelsCount;
  shpVertLine.Enabled:= (Level > 0) and IsLastChild;

  shpHorLine.Left:= shpVertLine.Left + (shpVertLine.Width mod 2) + 2;
  shpHorLine.Enabled:= (Level > 0);

  if IsLastChild and (Level > 0) then
    FParentLines[Level-1].Enabled:= False;
end;

procedure TDBTreeDataReport.bndDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
var
  Level: Integer;
begin
  inherited;
  Level:= ReportDataSet.FieldByName(LevelFieldName).AsInteger;
  if ReportDataSet.FieldByName(HasChildrenFieldName).AsBoolean then
    FParentLines[Level].Enabled:= True;
end;

procedure TDBTreeDataReport.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  i: Integer;
begin
  inherited;
  FParentLines.Clear;

  for i:= 1 to ParentLinesCount do
    FParentLines.Add(FindComponent(Format('shpParentLine%d', [i])) as TQRShape);

  for i:= 0 to FParentLines.Count - 1 do
    FParentLines[i].Left:= i*IndentPixelsCount;

  FOriginalIDColumnRight:= dbtNodeIdentifier.Left + dbtNodeIdentifier.Width;
  FHasImages:= (ImageIndexFieldName <> '');
end;

procedure TDBTreeDataReport.QuickRepAfterPrint(Sender: TObject);
begin
  inherited;
  FParentLines.Clear;
end;

function TDBTreeDataReport.GetImageList: TImageList;
begin
  Result:= dmMain.ilActions;
end;

function TDBTreeDataReport.ImageIndexFieldName: string;
begin
  Result:= '';
end;

function TDBTreeDataReport.IndentPixelsCount: Integer;
begin
  Result:= 16;
end;

function TDBTreeDataReport.IsLastChild: Boolean;
begin
  Result:= (ReportDataSet.FieldByName(IsLastChildFieldName).AsInteger > 0);
end;

function TDBTreeDataReport.IsLastChildFieldName: string;
begin
  Result:= 'IS_LAST_CHILD';
end;

function TDBTreeDataReport.LevelFieldName: string;
begin
  Result:= 'LEVEL_NO';
end;

function TDBTreeDataREport.HasChildrenFieldName: string;
begin
  Result:= 'HAS_CHILDREN';
end;

end.
