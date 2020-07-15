unit uAbmesDSProviderConnectionHelper;

interface

uses
  AbmesDSProviderConnection,
  uUtils,
  uNestProc;

type
  TAbmesDSProviderConnectionHelper = class helper (TComponentHelper) for TAbmesDSProviderConnection
  public
    function TempCacheTimeout(ATimeout: Integer): TNestProcRec;
  end;

implementation

uses
  System.SysUtils;

{ TAbmesDSProviderConnectionHelper }

function TAbmesDSProviderConnectionHelper.TempCacheTimeout(ATimeout: Integer): TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc)
      begin
        AProc;
      end);
end;

end.
