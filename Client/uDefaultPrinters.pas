unit uDefaultPrinters;

interface

uses
  qrprntr, Vcl.Printers, db;

type
  TPaperSize = (psA3, psA4, psA5);

const
  DefaultPaperSize = psA4;

function PaperSizeToStr(const AValue: TPaperSize): string;
function StrToPaperSize(const AValue: string): TPaperSize;

function PaperSizeToQRPaperSize(const AValue: TPaperSize): TQRPaperSize;
function QRPaperSizeToPaperSize(const AValue: TQRPaperSize): TPaperSize;

function PaperSizeToWinPaperSize(const AValue: TPaperSize): Integer;
function WinPaperSizeToPaperSize(const AValue: Integer): TPaperSize;  // returns DefaultPaperSize if not found

function PaperSizeName(const AValue: TPaperSize): string;

type
  TDefaultPrinter = record
    PaperSize: TPaperSize;
    PrinterName: string;
  end;

  TDefaultPrinters = array of TDefaultPrinter;

function LoadDefaultPrinters: TDefaultPrinters; overload;
procedure LoadDefaultPrinters(ADataSet: TDataSet; APaperSizeField, APrinterNameField: TField); overload;

procedure SaveDefaultPrinters(const ADefaultPrinters: TDefaultPrinters); overload;
procedure SaveDefaultPrinters(ADataSet: TDataSet; APaperSizeField, APrinterNameField: TField); overload;

function LoadMergedDefaultPrinters: TDefaultPrinters;

function GetDefaultPrinterName(APaperSize: TPaperSize): string;
function GetDefaultPrinterIndex(APaperSize: TPaperSize): Integer;
procedure SetDefaultPrinter(APrinter: TPrinter;APaperSize: TPaperSize);

type
  TPageConversion = (pcDefault, pcYes, pcNo);

const
  DefaultA5LToA4PConversion = pcYes;

function PageConversionToStr(const AValue: TPageConversion): string;
function StrToPageConversion(const AValue: string): TPageConversion;

function PageConversionName(const AValue: TPageConversion): string;

function LoadA5LToA4PConversion: TPageConversion; overload;
procedure LoadA5LToA4PConversion(ADataSet: TDataSet; AA5LToA4PConversionField: TField); overload;

procedure SaveA5LToA4PConversion(const AValue: TPageConversion); overload;
procedure SaveA5LToA4PConversion(ADataSet: TDataSet; AA5LToA4PConversionField: TField); overload;

function A5LandscapeToA4Portrait: Boolean;

type
  TDefaultPrintersLocation = (dplNone, dplUser, dplComputer);

procedure LaunchEditDefaultPrinters(const ADefaultPrintersLocation: TDefaultPrintersLocation);
function EditDefaultPrintersLocation: TDefaultPrintersLocation;
procedure EditDefaultPrinters;

implementation

uses
  uUtils, System.TypInfo, System.Win.Registry, Winapi.Windows, System.SysUtils,
  System.Classes, System.StrUtils, Winapi.ShellAPI, fDefaultPrinters,
  uClientUtils, uClientConsts, uLanguageOverride, uClientApp;

const
  SRegPrintKey = '\' + AppRegistryKey + '\Print';
  SRegDefaultPrintersKey = SRegPrintKey + '\DefaultPrinters';
  SRegA5LToA4PValueName = 'A5LandscapeToA4Portrait';
  SRegPaperSizeValueName = 'PaperSize';
  SRegPrinterNameValueName = 'PrinterName';

  SUserPrintersCmdLineSwitch = 'userprinters';
  SComputerPrintersCmdLineSwitch = 'computerprinters';

resourcestring
  SPortraitDescrition = 'Portrait';
  SLandscapeDescription = 'Landscape';

{ TPaperSize }

function PaperSizeToStr(const AValue: TPaperSize): string;
begin
  Result:= MidStr(GetEnumName(TypeInfo(TPaperSize), Ord(AValue)), 3, 100);
end;

function StrToPaperSize(const AValue: string): TPaperSize;
begin
  Result:= TPaperSize(GetEnumValue(TypeInfo(TPaperSize), Format('ps%s', [AValue])));
end;

function PaperSizeToQRPaperSize(const AValue: TPaperSize): TQRPaperSize;
begin
  Result:= TQRPaperSize(GetEnumValue(TypeInfo(TQRPaperSize), PaperSizeToStr(AValue)));
end;

function QRPaperSizeToPaperSize(const AValue: TQRPaperSize): TPaperSize;
begin
  Result:= StrToPaperSize(GetEnumName(TypeInfo(TQRPaperSize), Ord(AValue)))
end;

function PaperSizeToWinPaperSize(const AValue: TPaperSize): Integer;
begin
  Result:= cQRPaperTranslate[PaperSizeToQRPaperSize(AValue)];
end;

function WinPaperSizeToPaperSize(const AValue: Integer): TPaperSize;
var
  QRPaperSize: TQRPaperSize;
begin
  for QRPaperSize:= Low(cQRPaperTranslate) to High(cQRPaperTranslate) do
    if (cQRPaperTranslate[QRPaperSize] = AValue) then
      Exit(QRPaperSizeToPaperSize(QRPaperSize));

  Result:= DefaultPaperSize;
end;

function PaperSizeName(const AValue: TPaperSize): string;
begin
    Result:= QRPaperName(PaperSizeToQRPaperSize(AValue));
end;

{ default printers routines }

function GetRootKey(const ADefaultPrintersLocation: TDefaultPrintersLocation): HKEY;
begin
  case ADefaultPrintersLocation of
    dplUser:
      Result:= HKEY_CURRENT_USER;

    dplComputer:
      Result:= HKEY_LOCAL_MACHINE;
  else
    raise Exception.Create('Invalid defalut printers location');
  end;
end;

function InternalLoadDefaultPrinters(const ADefaultPrintersLocation: TDefaultPrintersLocation): TDefaultPrinters;

  procedure ReadDefaultPrinter(ARegistry: TRegistry; out ADefaultPrinter: TDefaultPrinter);
  begin
    ADefaultPrinter.PaperSize:= StrToPaperSize(ARegistry.ReadString(SRegPaperSizeValueName));
    ADefaultPrinter.PrinterName:= ARegistry.ReadString(SRegPrinterNameValueName);
  end;

var
  r: TRegistry;
  Keys: TStringList;
  i: Integer;
begin
  r:= TRegistry.Create(KEY_READ);
  try
    r.RootKey:= GetRootKey(ADefaultPrintersLocation);

    if r.OpenKeyReadOnly(SRegDefaultPrintersKey) then
      try
        Keys:= TStringList.Create;
        try
          r.GetKeyNames(Keys);
          SetLength(Result, Keys.Count);
          for i:= 0 to Keys.Count - 1 do
            if r.OpenKeyReadOnly(SRegDefaultPrintersKey + '\' + Keys[i]) then
              try
                ReadDefaultPrinter(r, Result[i]);
              finally
                r.CloseKey;
              end;
        finally
          FreeAndNil(Keys);
        end;
      finally
        r.CloseKey;
      end;
  finally
    FreeAndNil(r);
  end;  { try }
end;

function LoadDefaultPrinters: TDefaultPrinters;
begin
  Result:= InternalLoadDefaultPrinters(EditDefaultPrintersLocation);
end;

procedure SaveDefaultPrinters(const ADefaultPrinters: TDefaultPrinters);

  procedure DeleteKeys(ARegistry: TRegistry);
  var
    Keys: TStringList;
    key: string;
  begin
    Keys:= TStringList.Create;
    try
      ARegistry.GetKeyNames(Keys);
      for key in Keys do
        ARegistry.DeleteKey(key);
    finally
      FreeAndNil(Keys);
    end;
  end;

  procedure WriteDefaultPrinter(ARegistry: TRegistry; const ADefaultPrinter: TDefaultPrinter);
  begin
    ARegistry.WriteString(SRegPaperSizeValueName, PaperSizeToStr(ADefaultPrinter.PaperSize));
    ARegistry.WriteString(SRegPrinterNameValueName, ADefaultPrinter.PrinterName);
  end;

var
  r: TRegistry;
  i: Integer;
begin
  r:= TRegistry.Create(KEY_READ or KEY_WRITE);
  try
    r.RootKey:= GetRootKey(EditDefaultPrintersLocation);

    if r.OpenKey(SRegDefaultPrintersKey, True) then
      try
        DeleteKeys(r);

        for i:= 0 to Length(ADefaultPrinters)-1 do
          if r.OpenKey(SRegDefaultPrintersKey + '\' + IntToStr(i), True) then
            try
              WriteDefaultPrinter(r, ADefaultPrinters[i]);
            finally
              r.CloseKey;
            end;
      finally
        r.CloseKey;
      end;
  finally
    FreeAndNil(r);
  end;  { try }
end;

procedure LoadDefaultPrinters(ADataSet: TDataSet; APaperSizeField, APrinterNameField: TField);
begin
  ADataSet.TempDisableControls/
    procedure
    var
      DefaultPrinter: TDefaultPrinter;
    begin
      for DefaultPrinter in LoadDefaultPrinters do
        ADataSet.SafeAppend/
          procedure begin
            APaperSizeField.AsString:= PaperSizeToStr(DefaultPrinter.PaperSize);
            APrinterNameField.AsString:= DefaultPrinter.PrinterName;
          end;

      ADataSet.First;
    end;
end;

procedure SaveDefaultPrinters(ADataSet: TDataSet; APaperSizeField, APrinterNameField: TField);
var
  DefaultPrinters: TDefaultPrinters;
begin
  SetLength(DefaultPrinters, ADataSet.RecordCount);

  ADataSet.TempDisableControls/
    ADataSet.PreserveRecNo/
      ADataSet.ForEach/
        procedure begin
          DefaultPrinters[ADataSet.RecNo-1].PaperSize:= StrToPaperSize(APaperSizeField.AsString);
          DefaultPrinters[ADataSet.RecNo-1].PrinterName:= APrinterNameField.AsString;
        end;

  SaveDefaultPrinters(DefaultPrinters);
end;

function LoadMergedDefaultPrinters: TDefaultPrinters;

  function KeyExists(const ADefaultPrinter: TDefaultPrinter;
    const ADefaultPrinters: TDefaultPrinters): Boolean;
  var
    dp: TDefaultPrinter;
  begin
    for dp in ADefaultPrinters do
      if (dp.PaperSize = ADefaultPrinter.PaperSize) then
        Exit(True);

    Result:= False;
  end;

  procedure Append(const ADefaultPrinter: TDefaultPrinter;
    var ADefaultPrinters: TDefaultPrinters);
  begin
    SetLength(ADefaultPrinters, Length(ADefaultPrinters) + 1);
    ADefaultPrinters[Length(ADefaultPrinters)-1]:= ADefaultPrinter;
  end;

var
  ComputerDefaultPrinters: TDefaultPrinters;
  UserDefaultPrinters: TDefaultPrinters;
  dp: TDefaultPrinter;
begin
  ComputerDefaultPrinters:= InternalLoadDefaultPrinters(dplComputer);
  UserDefaultPrinters:= InternalLoadDefaultPrinters(dplUser);

  Result:= nil;

  for dp in UserDefaultPrinters do
    if not KeyExists(dp, Result) then
      Append(dp, Result);

  for dp in ComputerDefaultPrinters do
    if not KeyExists(dp, Result) then
      Append(dp, Result);
end;

{ A5LToA4PConversion }

function PageConversionToStr(const AValue: TPageConversion): string;
begin
  Result:= MidStr(GetEnumName(TypeInfo(TPageConversion), Ord(AValue)), 3, 100);
end;

function StrToPageConversion(const AValue: string): TPageConversion;
begin
  Result:= TPageConversion(GetEnumValue(TypeInfo(TPageConversion), Format('pc%s', [AValue])));
end;

function PageConversionName(const AValue: TPageConversion): string;
const
  Names: array[TPageConversion] of string = (SDefault, SYes, SNo);
begin
  Result:= Names[AValue];
end;

function InternalLoadA5LToA4PConversion(const ADefaultPrintersLocation: TDefaultPrintersLocation): TPageConversion;
var
  r: TRegistry;
  s: string;
begin
  r:= TRegistry.Create(KEY_READ);
  try
    r.RootKey:= GetRootKey(ADefaultPrintersLocation);

    Result:= pcDefault;
    s:= '';

    if r.OpenKeyReadOnly(SRegPrintKey) then
      try
        s:= r.ReadString(SRegA5LToA4PValueName);
      finally
        r.CloseKey;
      end;

    if (s <> '') then
      Result:= StrToPageConversion(s);
  finally
    FreeAndNil(r);
  end;  { try }
end;

function LoadA5LToA4PConversion: TPageConversion;
begin
  Result:= InternalLoadA5LToA4PConversion(EditDefaultPrintersLocation);
end;

procedure SaveA5LToA4PConversion(const AValue: TPageConversion);
var
  r: TRegistry;
begin
  r:= TRegistry.Create(KEY_READ or KEY_WRITE);
  try
    r.RootKey:= GetRootKey(EditDefaultPrintersLocation);

    if r.OpenKey(SRegPrintKey, True) then
      try
        if (AValue = pcDefault) then
          r.DeleteValue(SRegA5LToA4PValueName)
        else
          r.WriteString(SRegA5LToA4PValueName, PageConversionToStr(AValue));
      finally
        r.CloseKey;
      end;
  finally
    FreeAndNil(r);
  end;  { try }
end;

procedure LoadA5LToA4PConversion(ADataSet: TDataSet; AA5LToA4PConversionField: TField);
begin
  ADataSet.TempDisableControls/
    ADataSet.SafeAppend/
      procedure begin
        AA5LToA4PConversionField.AsString:= PageConversionToStr(LoadA5LToA4PConversion);
      end;
end;

procedure SaveA5LToA4PConversion(ADataSet: TDataSet; AA5LToA4PConversionField: TField);
begin
  SaveA5LToA4PConversion(StrToPageConversion(AA5LToA4PConversionField.AsString));
end;

function A5LandscapeToA4Portrait: Boolean;
var
  UserA5LToA4PConversion: TPageConversion;
  ComputerA5LToA4PConversion: TPageConversion;
begin
  UserA5LToA4PConversion:= InternalLoadA5LToA4PConversion(dplUser);

  if (UserA5LToA4PConversion <> pcDefault) then
    Result:= (UserA5LToA4PConversion = pcYes)
  else
    begin
      ComputerA5LToA4PConversion:= InternalLoadA5LToA4PConversion(dplComputer);

      if (ComputerA5LToA4PConversion = pcDefault) then
        Result:= (DefaultA5LToA4PConversion = pcYes)
      else
        Result:= (ComputerA5LToA4PConversion = pcYes);
    end;
end;

{ Launch routines }

procedure LaunchEditDefaultPrinters(const ADefaultPrintersLocation: TDefaultPrintersLocation);
var
  Parameters: string;
  Verb: string;
begin

  case ADefaultPrintersLocation of
    dplNone:
      Abort;

    dplUser:
      begin
        Parameters:= ' /' + SUserPrintersCmdLineSwitch;
        Verb:= '';
      end;

    dplComputer:
      begin
        Parameters:= ' /' + SComputerPrintersCmdLineSwitch;
        Verb:= RunAsVerb;
      end;
  end;  { case ADefaultPrintersLocation }

  if (LanguageOverrideParamValue <> '') then
    Parameters:= Parameters + ' /' + SLanguageParamName + ':' + LanguageOverrideParamValue;

  ShellExecute(0, PChar(Verb), PChar(ParamStr(0)), PChar(Parameters), nil, SW_SHOWNORMAL);
end;

function EditDefaultPrintersLocation: TDefaultPrintersLocation;
begin
  if FindCmdLineSwitch(SUserPrintersCmdLineSwitch) then
    Exit(dplUser);

  if FindCmdLineSwitch(SComputerPrintersCmdLineSwitch) then
    Exit(dplComputer);

  Result:= dplNone;
end;

procedure EditDefaultPrinters;
begin
  if (EditDefaultPrintersLocation = dplComputer) then
    EnsureAdminElevation;

  TfmDefaultPrinters.ShowForm;
  KillApplication(0);
end;

function GetDefaultPrinterName(APaperSize: TPaperSize): string;
var
  dp: TDefaultPrinter;
begin
  for dp in LoadMergedDefaultPrinters do
    if (dp.PaperSize = APaperSize) then
      Exit(dp.PrinterName);

  Result:= '';
end;

function GetDefaultPrinterIndex(APaperSize: TPaperSize): Integer;
var
  DefaultPrinterName: string;
begin
  DefaultPrinterName:= GetDefaultPrinterName(APaperSize);

  if (DefaultPrinterName <> '') then
    Result:= Printer.Printers.IndexOf(DefaultPrinterName)
  else
    Result:= -1;
end;

procedure SetDefaultPrinter(APrinter: TPrinter; APaperSize: TPaperSize);
var
  DefaultPrinterIndex: Integer;
begin
  DefaultPrinterIndex:= GetDefaultPrinterIndex(APaperSize);

  if (DefaultPrinterIndex >= 0) then
    APrinter.PrinterIndex:= DefaultPrinterIndex;
end;

end.
