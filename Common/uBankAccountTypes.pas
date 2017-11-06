unit uBankAccountTypes;

interface

type
  TBankAccountType = (batNone, batNonBanking, batUndefinedBanking, batDefinedBanking);

function BankAccountTypeToInt(ABankAccountType: TBankAccountType): Integer;
function IntToBankAccountType(ABankAccountTypeCode: Integer): TBankAccountType;

implementation

uses
  Math, SysUtils;

function BankAccountTypeToInt(ABankAccountType: TBankAccountType): Integer;
begin
  Result:= Ord(ABankAccountType);
end;

function IntToBankAccountType(ABankAccountTypeCode: Integer): TBankAccountType;
const
  Values: array[0..3] of TBankAccountType =
    (batNone, batNonBanking, batUndefinedBanking, batDefinedBanking);
begin
  if not InRange(ABankAccountTypeCode, Low(Values), High(Values)) then
    raise Exception.CreateFmt('Unknown BankAccountTypeCode: %d', [ABankAccountTypeCode]);

  Result:= Values[ABankAccountTypeCode];
end;

end.
