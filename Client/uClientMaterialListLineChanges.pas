unit uClientMaterialListLineChanges;

interface

uses
  Graphics, uMaterialListLineChanges;

function MllChangeStatusAbbrev(MllChangeStatusCode: Integer): string;
function MllChangeStatusColor(MllChangeStatusCode: Integer): TColor;
function MllChangeStatusBackgroundColor(MllChangeStatusCode: Integer): TColor;

function MllChangeReplyTypeAbbrev(AMllChangeReplyType: TMllChangeReplyType; AIsReplyAccepted: Boolean): string;
function MllChangeReplyTypeColor(AMllChangeReplyType: TMllChangeReplyType; AIsReplyAccepted: Boolean): TColor;
function MllChangeReplyTypeBackgroundColor(AMllChangeReplyType: TMllChangeReplyType; AIsReplyAccepted: Boolean): TColor;

resourcestring
  ScrtNoReply = 'П   -   Предложение за Замяна, очакващо приемане или отказ';
  ScrtChangeAccepted = 'З   -   Приета Замяна';
  ScrtChangeRejectNotAccepted = 'О   -   Отказана Замяна и невидян отказ';
  ScrtChangeRejectAccepted = 'В   -   Отказана Замяна и видян отказ';

implementation

const
  SlcsOK = '';

const
  PendingBackgroundColor = $000080FF;  // oranjev

function MllChangeStatusAbbrev(MllChangeStatusCode: Integer): string;
begin
  case MllChangeStatusCode of
    lcsOK:
      Result:= SlcsOK;
    lcsReplyPending:
      Result:= ScrtNoReply;
    lcsUnseenReject:
      Result:= ScrtChangeRejectNotAccepted;
    else
      Result:= '';
  end;  { case }
end;

function MllChangeStatusColor(MllChangeStatusCode: Integer): TColor;
begin
  Result:= clBlack;
end;

function MllChangeStatusBackgroundColor(MllChangeStatusCode: Integer): TColor;
begin
  case MllChangeStatusCode of
    lcsReplyPending:
      Result:= PendingBackgroundColor;
    lcsUnseenReject:
      Result:= clRed;
    else
      Result:= clWhite;
  end;  { case }
end;

function MllChangeReplyTypeAbbrev(AMllChangeReplyType: TMllChangeReplyType; AIsReplyAccepted: Boolean): string;
begin
  case AMllChangeReplyType of
    crtNoReply:
      Result:= ScrtNoReply;
    crtChangeAccepted:
      Result:= ScrtChangeAccepted;
    crtChangeRejected:
      if AIsReplyAccepted then
        Result:= ScrtChangeRejectAccepted
      else
        Result:= ScrtChangeRejectNotAccepted;
    crtChangeAutoAccepted:
      Result:= '';
  end;
end;

function MllChangeReplyTypeColor(AMllChangeReplyType: TMllChangeReplyType; AIsReplyAccepted: Boolean): TColor;
begin
  case AMllChangeReplyType of
    crtNoReply:
      Result:= clBlack;
    crtChangeAccepted:
      Result:= clGreen;
    crtChangeRejected:
      if AIsReplyAccepted then
        Result:= clRed
      else
        Result:= clBlack;
    crtChangeAutoAccepted:
      Result:= clBlack;
    else
      Result:= clBlack
  end;
end;

function MllChangeReplyTypeBackgroundColor(AMllChangeReplyType: TMllChangeReplyType; AIsReplyAccepted: Boolean): TColor;
begin
  case AMllChangeReplyType of
    crtNoReply:
      Result:= PendingBackgroundColor;
    crtChangeAccepted:
      Result:= clWhite;
    crtChangeRejected:
      if AIsReplyAccepted then
        Result:= clWhite
      else
        Result:= clRed;
    crtChangeAutoAccepted:
      Result:= clWhite;
    else
      Result:= clWhite;
  end;
end;

end.
