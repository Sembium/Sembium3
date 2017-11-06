unit uDBUtils;

interface

uses
  Classes, SysUtils, AbmesSQLConnection;

procedure SetSqlConnectionParams(const ASqlConnection: TAbmesSQLConnection; const AObjParams: TStrings);

implementation

uses
  uObjParams, DbxOdaDriverLoader, DBXCommon, DriverOptions;

resourcestring
  SInvalidDBConnectionType = 'Invalid database connection type (%s)';

{ Routines }

procedure SetSqlConnectionParams(const ASqlConnection: TAbmesSQLConnection; const AObjParams: TStrings);
const
  Sdbexpoda40DLL = 'dbexpoda40.dll';
  SociDLL = 'oci.dll';
  SOraDirectDriverFuncName = 'getSQLDriverORADirect';
  SOraClientDriverFuncName = 'getSQLDriverORA';
  SFalse = 'False';
  STrue = 'True';
begin
  if (AObjParams.Values[SDBConnectionTypeParamName] <> SOraDirectConnectionType) and
     (AObjParams.Values[SDBConnectionTypeParamName] <> SOraClientConnectionType) then
    raise Exception.CreateFmt(SInvalidDBConnectionType, [AObjParams.Values[SDBConnectionTypeParamName]]);

  if (AObjParams.Values[SDBConnectionTypeParamName] = SOraDirectConnectionType) then
    begin
      ASqlConnection.DriverName:= DbxOdaDriverLoader.sDirectBuiltinDriverName;
//      ASqlConnection.DriverName:= 'DevartOracleDirect';
      ASqlConnection.VendorLib:= Sdbexpoda40DLL;
      ASqlConnection.GetDriverFunc:= SOraDirectDriverFuncName;
    end
  else
    begin
      ASqlConnection.DriverName:= DbxOdaDriverLoader.sBuiltinDriverName;
//      ASqlConnection.DriverName:= 'DevartOracle';
      ASqlConnection.VendorLib:= SociDLL;
      ASqlConnection.GetDriverFunc:= SOraClientDriverFuncName;
    end;

  ASqlConnection.LibraryName:= Sdbexpoda40DLL;

  ASqlConnection.Params.Clear;

////////  ASqlConnection.Params.Values[TDBXPropertyNames.DriverPackageLoader]:= TDbxOdaDriverLoader.ClassName;

  if (AObjParams.Values[SDBConnectionTypeParamName] = SOraDirectConnectionType) then
    ASqlConnection.Params.Values[TDBXPropertyNames.Database]:=
      Format('%s:%s:%s', [
        AObjParams.Values[SDBHostParamName],
        AObjParams.Values[SDBPortParamName],
        AObjParams.Values[SDBServiceParamName]
      ])
  else
    ASqlConnection.Params.Values[TDBXPropertyNames.Database]:= AObjParams.Values[SDBServiceParamName];


  ASqlConnection.Params.Values[TDBXPropertyNames.UserName]:= AObjParams.Values[SDBUserParamName];
  ASqlConnection.Params.Values[TDBXPropertyNames.Password]:= AObjParams.Values[SDBPasswordParamName];

  ASqlConnection.Params.Values[SReconnect]:= SFalse;
  ASqlConnection.Params.Values[SEnableBCD]:= SFalse;
  ASqlConnection.Params.Values[SLongStrings]:= STrue;
  ASqlConnection.Params.Values[SUseUnicode]:= STrue;
  ASqlConnection.Params.Values[SUseUnicodeMemo]:= STrue;

  // sledniata parametar:
  // ASqlConnection.Params.Values[SUnicodeEnvironment]:= STrue;
  // v direkten rejim predizvikva zabivane pri mnogozadachna rabota
  // i zatova ne go vkluchvame
end;

end.
