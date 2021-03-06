﻿unit uSQLScriptor.Parser;

interface

uses
  uUtils;

type
  TLineType = (
    ltUnknownCommand,
    ltNoCommand,
    ltComment,
    ltLabel,
    ltGoto,
    ltBindLabel,
    ltTerm,
    ltInclude,
    ltParams,
    ltParallel,
    ltMaxParallel,
    ltSql
  );

const
  SSqlComment = '/*';
  SCommandRow = '/';

procedure ParseLine(const ALineText: string; var ALineType: TLineType; var ACommandParams: TStringArray);

implementation

uses
  SysUtils,
  StrUtils;

const
  LineCommandTypes: set of TLineType = [Succ(ltNoCommand)..Pred(ltSql)];

const
  LineTypeTexts: array[TLineType] of string = (
    'Some Unkonwn Command', // ltUnknownCommand
    '',                     // ltNoCommand
    '/',                    // ltComment
    ':',                    // ltLabel
    'goto',                 // ltGoto
    'bindlabel',            // ltBindLabel
    'term',                 // ltTerm
    'include',              // ltInclude
    'params',               // ltParams
    'parallel',             // ltParallel
    'maxparallel',          // ltMaxParallel
    'Some SQL Text'         // ltSql
  );

{ Routines }

function TrimEquals(const s: string): string;
const
  EqualsSign = '=';
begin
  Result:= Trim(s);
  if StartsText(EqualsSign, s) then
    Result:= TrimLeft(StuffString(s, 1, Length(EqualsSign), ''));
end;

procedure ParseLine(const ALineText: string; var ALineType: TLineType; var ACommandParams: TStringArray);
var
  lt: TLineType;
begin
  ALineType:= ltUnknownCommand;
  SetLength(ACommandParams, 0);

  if not StartsText(SCommandRow, ALineText) or
     StartsText(SSqlComment, ALineText) then
    begin
      ALineType:= ltSql;
      SetLength(ACommandParams, 1);
      ACommandParams[0]:= ALineText;
      Exit;
    end;

  if (TrimRight(ALineText) = SCommandRow) then
    begin
      ALineType:= ltNoCommand;
      Exit;
    end;

  for lt in LineCommandTypes do
    if StartsText(SCommandRow + LineTypeTexts[lt], ALineText) then
      begin
        ALineType:= lt;

        ACommandParams:=
          uUtils.SplitString(
            TrimEquals(
              Copy(ALineText, Length(SCommandRow + LineTypeTexts[lt])+1, Length(ALineText))));

        Break;
      end;
end;

end.
