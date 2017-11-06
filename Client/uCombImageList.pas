unit uCombImageList;

interface

uses
  Controls, Graphics, SysUtils, uUtils;

type
  TImageListHelper = class helper (TComponentHelper) for TImageList
  public
    procedure GenerateCombImages(const AImageLists: array of TImageList);
    function GetCombImageIndex(const AImageLists: array of TImageList; const AImageIndeces: array of Integer): Integer;
  end;

implementation

type
  TBitmapHelper = class helper (TObjectHelper) for TBitmap
  public
    procedure Merge(AImage: TBitmap);
  end;

procedure TBitmapHelper.Merge(AImage: TBitmap);
var
  x, y: Integer;
  ImageTransparentColor: TColor;

begin
  Assert(Height = AImage.Height);
  Assert(Width = AImage.Width);

  ImageTransparentColor:= AImage.Canvas.Pixels[0, Height - 1];

  for x:= 0 to Width - 1 do
    for y:= 0 to Height - 1 do
      if (AImage.Canvas.Pixels[x, y] <> ImageTransparentColor) then
        Canvas.Pixels[x, y]:= AImage.Canvas.Pixels[x, y];
end;

{ TImageListHelper }

procedure TImageListHelper.GenerateCombImages(const AImageLists: array of TImageList);
var
  bmp, bmpFirstInList, bmpCurrent: TBitmap;
  ImageHeight, ImageWidth, i, j: Integer;
  TransparentColor: TColor;

  procedure CombineWithCurrentList(ACurrentListIndex: Integer);
  var
    i: Integer;
    bmpOld, bmpTemp: TBitmap;
  begin
    if (ACurrentListIndex > High(AImageLists)) then
      begin
        Add(bmp, nil);
        Exit;
      end;

    if (ACurrentListIndex = Low(AImageLists)) then
      begin
        bmp.Canvas.Brush.Style:= bsSolid;
        bmp.Canvas.Brush.Color:= TransparentColor;
        bmp.Canvas.FillRect(bmp.Canvas.ClipRect);
      end;

    bmpOld:= TBitmap.Create;
    try
      for i:= 0 to AImageLists[ACurrentListIndex].Count - 1 do
        begin
          bmpOld.Assign(bmp);

          bmpTemp:= TBitmap.Create;
          try
            AImageLists[ACurrentListIndex].GetBitmap(i, bmpTemp);
            bmp.Merge(bmpTemp);
          finally
            FreeAndNil(bmpTemp);
          end;

          CombineWithCurrentList(ACurrentListIndex + 1);

          bmp.Assign(bmpOld);
        end;
    finally
      FreeAndNil(bmpOld);
    end;
  end;

begin
  Assert(Count = 0);
  Assert(Length(AImageLists) > 0);

  Assert(Assigned(AImageLists[Low(AImageLists)]));

  ImageHeight:= AImageLists[Low(AImageLists)].Height;
  ImageWidth:= AImageLists[Low(AImageLists)].Width;

  for i:= Low(AImageLists) + 1 to High(AImageLists) do
    begin
      Assert(AImageLists[i].Height = ImageHeight);
      Assert(AImageLists[i].Width = ImageWidth);
    end;

  Assert(AImageLists[Low(AImageLists)].Count > 0);
  bmpFirstInList:= TBitmap.Create;
  try
    AImageLists[Low(AImageLists)].GetBitmap(0, bmpFirstInList);
    TransparentColor:= bmpFirstInList.Canvas.Pixels[0, Height - 1];
  finally
    FreeAndNil(bmpFirstInList);
  end;

  bmpCurrent:= TBitmap.Create;
  try
    for i:= Low(AImageLists) to High(AImageLists) do
      for j:= 0 to AImageLists[i].Count - 1 do
        begin
          AImageLists[i].GetBitmap(j, bmpCurrent);
          Assert(bmpCurrent.Canvas.Pixels[0, Height - 1] = TransparentColor);
        end;
  finally
    FreeAndNil(bmpCurrent);
  end;

  bmp:= TBitmap.Create;
  try
    bmp.Height:= ImageHeight;
    bmp.Width:= ImageWidth;
    CombineWithCurrentList(Low(AImageLists));
  finally
    FreeAndNil(bmp);
  end;
end;

function TImageListHelper.GetCombImageIndex(const AImageLists: array of TImageList;
  const AImageIndeces: array of Integer): Integer;
var
  ImageListsProduct: array of Integer;
  i: Integer;
begin
  Assert(Length(AImageLists) = Length(AImageIndeces));

  for i:= 0 to Length(AImageIndeces) - 1 do
    Assert(AImageIndeces[i] < AImageLists[i].Count);

  SetLength(ImageListsProduct, Length(AImageLists) + 1);
  ImageListsProduct[Length(ImageListsProduct) - 1]:= 1;
  for i:= Length(ImageListsProduct) - 2 downto 0 do
    ImageListsProduct[i]:= AImageLists[i].Count * ImageListsProduct[i + 1];

  Assert(ImageListsProduct[0] = Count);

  Result:= 0;
  for i:= 0 to Length(AImageIndeces) - 1 do
    Result:= Result + AImageIndeces[i] * ImageListsProduct[i + 1];
end;

end.
