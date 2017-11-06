unit uIPAddressUtils;

interface

type
  TIPAddressUtils = class
  public
    class function IPAddressMatchesPattern(const AIPAddress, AIPAddressPattern: string): Boolean;
  end;

implementation

uses
  System.StrUtils, System.Types, System.SysUtils, IdIPAddress, IdStack,
  IdGlobal, IdStackWindows;

function IPAddressToBytes(const AIPAddress: string): TIdBytes;
var
  a: TIdIPAddress;
begin
  TIdStack.IncUsage;
  try
    a:= TIdIPAddress.MakeAddressObject(AIPAddress);
    try
      Result:= a.HToNBytes;
    finally
      FreeAndNil(a);
    end;
  finally
    TIdStack.DecUsage;
  end;
end;

{ TIPAddressUtils }

class function TIPAddressUtils.IPAddressMatchesPattern(const AIPAddress, AIPAddressPattern: string): Boolean;
var
  PatternParts: TStringDynArray;
  MaskBitCount: Integer;
  PatternIPAddress: string;
  IPAddressBytes: TIdBytes;
  PatternIPAddressBytes: TIdBytes;
  index: Integer;
  b1: Byte;
  b2: Byte;
  m: Integer;
  mask: Byte;
begin
  Assert(AIPAddress <> '');
  Assert(AIPAddressPattern <> '');

  PatternParts:= SplitString(AIPAddressPattern, '/');

  if (Length(PatternParts) = 2) then
    MaskBitCount:= StrToIntDef(PatternParts[1], -1)
  else
    MaskBitCount:= -1;

  PatternIPAddress:= PatternParts[0];

  IPAddressBytes:= IPAddressToBytes(AIPAddress);
  PatternIPAddressBytes:= IPAddressToBytes(PatternIPAddress);

  if (Length(IPAddressBytes) <> Length(PatternIPAddressBytes)) then
    Exit(False);

  if (MaskBitCount = -1) then
    MaskBitCount:= Length(IPAddressBytes) * 8;

  index:= 0;
  while (MaskBitCount > 0) and (index < Length(IPAddressBytes)) do
    begin
      if (MaskBitCount >= 8) then
        begin
          mask:= (1 shl 8) - 1;
        end
      else
        begin
          m:= MaskBitCount mod 8;
          mask:= (1 shl m) - 1;
        end;

      b1:= IPAddressBytes[index] and mask;
      b2:= PatternIPAddressBytes[index] and mask;

      if (b1 <> b2) then
        Exit(False);

      Dec(MaskBitCount, 8);
      Inc(index);
    end;

  Result:= True;
end;

initialization
  SetStackClass(TIdStackWindows);
end.
