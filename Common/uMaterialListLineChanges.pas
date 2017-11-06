unit uMaterialListLineChanges;

interface

type
  TMllChangeReplyType =
    (crtNoReply, crtChangeAccepted, crtChangeRejected, crtChangeAutoAccepted);

const
// MLL Change Stauts Codes
  lcsOK = 0;            // no change request
  lcsReplyPending = 1;  // change request with no reply
  lcsUnseenReject = 2;  // not seen rejected request

function IntToMllChangeReplyType(Value: Integer): TMllChangeReplyType;
function MllChangeReplyTypeToInt(Value: TMllChangeReplyType): Integer;

implementation

function IntToMllChangeReplyType(Value: Integer): TMllChangeReplyType;
begin
  Assert(Value >= Ord(Low(TMllChangeReplyType)));
  Assert(Value <= Ord(High(TMllChangeReplyType)));

  Result:= TMllChangeReplyType(Value);
end;

function MllChangeReplyTypeToInt(Value: TMllChangeReplyType): Integer;
begin
  Result:= Ord(Value);
end;

end.
