unit uVariantMemoryMap;

interface

uses
  MemoryMap, Classes;

type
  TVariantMemoryMap = class
  private
    FMemoryMapStream: TMemoryMapStream;
    FMemoryStream: TMemoryStream;
    function GetAsVariant: Variant;
    procedure SetAsVariant(const Value: Variant);
  public
    constructor Create(const AMemoryMapFileName: string);
    destructor Destroy; override;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

implementation

uses
  SysUtils, DSUtil;

{ TVariantMemoryMap }

constructor TVariantMemoryMap.Create(const AMemoryMapFileName: string);
begin
  inherited Create;
  FMemoryMapStream:= TMemoryMapStream.Create(AMemoryMapFileName, False);
  FMemoryStream:= TMemoryStream.Create;
end;

destructor TVariantMemoryMap.Destroy;
begin
  FreeAndNil(FMemoryStream);
  FreeAndNil(FMemoryMapStream);
  inherited;
end;

function TVariantMemoryMap.GetAsVariant: Variant;
var
  DataSize: Integer;
  OV: OleVariant;
begin
  FMemoryMapStream.Size:= SizeOf(DataSize);
  FMemoryMapStream.Position:= 0;
  FMemoryMapStream.ReadBuffer(DataSize, SizeOf(DataSize));

  FMemoryStream.Clear;
  FMemoryStream.Size:= DataSize;

  FMemoryMapStream.Size:= SizeOf(DataSize) + DataSize;
  FMemoryMapStream.Position:= SizeOf(DataSize);

  FMemoryMapStream.Read(FMemoryStream.Memory^, DataSize);

  StreamToVariant(FMemoryStream, OV);
  Result:= OV;
end;

procedure TVariantMemoryMap.SetAsVariant(const Value: Variant);
var
  OV: OleVariant;
  DataSize: Integer;
begin
  OV:= Value;

  FMemoryStream.Clear;
  VariantToStream(OV, FMemoryStream);

  FMemoryMapStream.Clear;

  DataSize:= FMemoryStream.Size;
  FMemoryMapStream.Write(DataSize, SizeOf(DataSize));

  FMemoryStream.Position:= 0;
  FMemoryMapStream.Write(FMemoryStream.Memory^, DataSize);
end;

end.
