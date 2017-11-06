unit uDocClientUtils;

interface

uses
  uDocUtils, DB, DBGridEh, GridsEh, Graphics;

procedure ExecFile(const AFileName: string; const AVerb: string = '');
procedure ExecURI(const AURI: string);
procedure ExecCommand(const ACommand: string);
function GetLocalFileName(const AFileName, ARelativePath: string): string;

function DocEmptinessRequirementAbbrev(ADocEmptinessRequirement: TDocEmptinessRequirement; ADocIsComplete: Boolean): string;
function DocItemsUnauthorizedStatus(UnauthorizedDocItemCount, DocItemCount: Integer): string;
function DocStatusToStr(LevelNo: Integer; LevelIsComplete: Boolean; MaxLevelNo: Integer;
  HasMissingChildren: Boolean): string;
function IsDocStatusComplete(DocStatus: string): Boolean;

procedure DocEmptinessRequirementFieldGetText(Sender: TField; var Text: String; DisplayText: Boolean);
procedure UnauthorizedActiveDocItemCountFieldGetText(Sender: TField; var Text: String; DisplayText: Boolean);
procedure DocFieldsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState; FieldNameFormat: string = '');

function GetAppTempPath: string;

type
  TExternalDocStorageCommand = (edscSelect, edscView, edscEdit);

implementation

uses
  SysUtils, Classes, Windows, Dialogs, Controls, ShellAPI, uUtils, dMain,
  AbmesDialogs, JclFileUtils, Variants, StrUtils, uClientApp;

resourcestring
  SCannotOpenFile = 'Файлът %s не може да бъде отворен';
  SCannotOpenURI = 'URI %s не може да бъде отворен';
  SCannotExecCommand = 'Не може да бъде изпълнена команда "%s".' + SLineBreak + 'Грешка: %s';

procedure ExecFile(const AFileName, AVerb: string);
var
  LongFileName: string;
  Verb: PChar;
begin
  LongFileName:= PathGetLongName(AFileName);

  if (AVerb = '') then
    Verb:= nil
  else
    Verb:= PChar(AVerb);

  if (ShellExecute(0, Verb, PChar(LongFileName), nil, PChar(GetAppTempPath), SW_SHOW) <= 32) then
    raise Exception.CreateFmt(SCannotOpenFile, [AFileName]);
end;  { ExecFile }

procedure ExecURI(const AURI: string);
begin
  if (ShellExecute(0, nil, PChar(AURI), nil, nil, SW_SHOW) <= 32) then
    raise Exception.CreateFmt(SCannotOpenURI, [AURI]);
end;

procedure ExecCommand(const ACommand: string);
begin
  if (ShellExecute(0, nil, PChar(ACommand), nil, nil, SW_SHOWNORMAL) <= 32) then
    if (WinExec(PAnsiChar(AnsiString(ACommand)), SW_SHOWNORMAL) < 32) then
      raise Exception.CreateFmt(SCannotExecCommand, [ACommand, SysErrorMessage(GetLastError)]);
end;

function GetLocalFileName(const AFileName, ARelativePath: string): string;
begin
  Result:=
    MakeFileName(
      ExcludeTrailingPathDelimiter(dmMain.LoginContext.DocsLocalRootPath) + ARelativePath,
      AFileName);
end;   { GetLocalFileName }

function DocEmptinessRequirementAbbrev(ADocEmptinessRequirement: TDocEmptinessRequirement;
  ADocIsComplete: Boolean): string;
const
  DocEmptinessRequirementAbbrevs: array[TDocEmptinessRequirement] of string = ('?', '?', '=0', '>0');
  DocNotEmptyComplete = '√';
begin
  if (ADocEmptinessRequirement = derNotEmpty) and ADocIsComplete then
    Result:= DocNotEmptyComplete
  else
    Result:= DocEmptinessRequirementAbbrevs[ADocEmptinessRequirement];
end;

function DocItemsUnauthorizedStatus(UnauthorizedDocItemCount, DocItemCount: Integer): string;
begin
  if (DocItemCount = 0) then
    Result:= ''
  else
    Result:= Format('%d/%d', [-UnauthorizedDocItemCount, DocItemCount]);
end;

function DocStatusToStr(LevelNo: Integer; LevelIsComplete: Boolean; MaxLevelNo: Integer;
  HasMissingChildren: Boolean): string;
begin
  if (LevelNo = -1) then
    Result:= '-'
  else
    Result:= IntToStr(LevelNo);

  if not LevelIsComplete then
    Result:= '(' + Result + ')';

  Result:= Result + '/';

  if HasMissingChildren then
    Result:= Result + Format('(%d)', [MaxLevelNo])
  else
    Result:= Result + IntToStr(MaxLevelNo);
end;

function IsDocStatusComplete(DocStatus: string): Boolean;
begin
  Result:=
    (Pos('(', DocStatus) = 0) and
    (LeftStr(DocStatus, Pos('/', DocStatus)-1) =
     RightStr(DocStatus, Length(DocStatus) - Pos('/', DocStatus)));
end;

const
  DocEmptinessRequirementCodeFieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE';
  DocEmptinessRequirementCodeShortFieldName = 'DOC_EMPTINESS_REQ_CODE';
  DocIsCompleteFileName = 'DOC_IS_COMPLETE';
  UnauthorizedActiveDocItemCountFieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT';
  ActiveDocItemCountFieldName = 'ACTIVE_DI_COUNT';
  UnapprovedActiveDocItemCountFieldName = 'UNAPPROVED_ACTIVE_DI_COUNT';

procedure DocEmptinessRequirementFieldGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
var
  DocIsCompleteFN: string;
begin
  if DisplayText and (not Sender.DataSet.IsEmpty) then
    begin
      DocIsCompleteFN:= Sender.FieldName;
      DocIsCompleteFN:= StringReplace(DocIsCompleteFN, DocEmptinessRequirementCodeFieldName, DocIsCompleteFileName, []);
      DocIsCompleteFN:= StringReplace(DocIsCompleteFN, DocEmptinessRequirementCodeShortFieldName, DocIsCompleteFileName, []);

      Text:=
        DocEmptinessRequirementAbbrev(
          IntToDocEmptinessRequirement(Sender.AsInteger),
          (Sender.DataSet.FieldByName(DocIsCompleteFN).AsInteger = 1))
    end
  else
    Text:= Sender.AsString;
end;

procedure UnauthorizedActiveDocItemCountFieldGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
var
  ActiveDocItemCountFN: string;
begin
  if DisplayText then
    begin
      ActiveDocItemCountFN:= StringReplace(Sender.FieldName, UnauthorizedActiveDocItemCountFieldName, ActiveDocItemCountFieldName, []);

      Text:=
        DocItemsUnauthorizedStatus(Sender.AsInteger,
          Sender.DataSet.FieldByName(ActiveDocItemCountFN).AsInteger);
    end
  else
    Text:= Sender.AsString;
end;

procedure DocFieldsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState; FieldNameFormat: string);
begin
  if (FieldNameFormat = '') then
    FieldNameFormat:= '%s';

  if (Column.FieldName = Format(FieldNameFormat, [DocEmptinessRequirementCodeFieldName])) or
     (Column.FieldName = Format(FieldNameFormat, [DocEmptinessRequirementCodeShortFieldName])) then
    begin
      if (Column.Field.DataSet.FieldByName(Format(FieldNameFormat, [DocIsCompleteFileName])).AsInteger = 1) then
        AFont.Color:= clGreen
      else
        AFont.Color:= clRed;
    end;

  if (Column.FieldName = Format(FieldNameFormat, [UnauthorizedActiveDocItemCountFieldName])) then
    begin
      if (Column.Field.DataSet.FieldByName(Format(FieldNameFormat, [UnauthorizedActiveDocItemCountFieldName])).AsInteger = 0) and
         (Column.Field.DataSet.FieldByName(Format(FieldNameFormat, [UnapprovedActiveDocItemCountFieldName])).AsInteger = 0) then
        AFont.Color:= clGreen
      else
        AFont.Color:= clRed;
    end;
end;

function GetAppTempPath: string;
begin
  Result:= MakeFileName(TempPath, AppTempDirName);
  Result:= MakeFileName(Result, dmMain.DBName);
end;

end.

