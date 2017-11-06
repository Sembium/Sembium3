unit uOrganisationTaskUtils;

interface

type
  TOrgTaskProposalResultType = (otprtNone, otprtAccepted, otprtAttached, otprtReturned, otprtDenied);

function IntToOTPResultType(AValue: Integer): TOrgTaskProposalResultType;
function OTPResultTypeToInt(AValue: TOrgTaskProposalResultType): Integer;

implementation

uses
  SysUtils;

function IntToOTPResultType(AValue: Integer): TOrgTaskProposalResultType;
begin
  case AValue of
    0: Result:= otprtNone;
    1: Result:= otprtAccepted;
    2: Result:= otprtAttached;
    3: Result:= otprtReturned;
    4: Result:= otprtDenied;
  else
    raise Exception.Create('Unknown Org Task Proposal Result Type');
  end;  { case }
end;

function OTPResultTypeToInt(AValue: TOrgTaskProposalResultType): Integer;
begin
  case AValue of
    otprtNone: Result:= 0;
    otprtAccepted: Result:= 1;
    otprtAttached: Result:= 2;
    otprtReturned: Result:= 3;
    otprtDenied: Result:= 4;
  else
    raise Exception.Create('Unknown Org Task Proposal Result Type Code');
  end;  { case }
end;

end.
