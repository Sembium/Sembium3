unit uSvrDocUtils;

interface

uses
  uContentStorageLocatorsCache;

function GetContentStorageAddress(const AContentStorageLocatorURL, AContentStorageContainerName: string;
  AContentStorageLocatorsCache: TContentStorageLocatorsCache): string;

const
  ContentStorageLocatorsCacheExpirySeconds = 5 * 60;

implementation

uses
  System.SysUtils, System.StrUtils, JclStrings, System.Net.HttpClient,
  REST.HttpClient, System.Classes, uCommonApp;

function GetContentStorageAddress(const AContentStorageLocatorURL, AContentStorageContainerName: string;
  AContentStorageLocatorsCache: TContentStorageLocatorsCache): string;
var
  ContentStorageLocatorURL: string;
  ContentStorageURL: string;
  http: TRESTHTTP;
  SS: TStringStream;
begin
  if AContentStorageContainerName.Contains('@') then
    begin
      ContentStorageURL:= AContentStorageContainerName.Split(['@'])[1];
    end
  else
    begin
      ContentStorageLocatorURL:=
        StringReplace(AContentStorageLocatorURL, '{ContainerName}', AContentStorageContainerName, [rfReplaceAll]);

      if Assigned(AContentStorageLocatorsCache) then
        ContentStorageURL:= AContentStorageLocatorsCache.GetContentStorageURL(ContentStorageLocatorURL)
      else
        ContentStorageURL:= '';
    end;

  if (ContentStorageURL = '') then
    begin
      http:= TRESTHTTP.Create;
      try
        http.Request.Accept:= 'text/plain ';
        http.Request.AcceptCharSet:= 'UTF-8';
        http.Request.UserAgent:= SWebRequestUserAgentName;

        SS:= TStringStream.Create('', TEncoding.UTF8);
        try
          http.Get(ContentStorageLocatorURL, SS);
          ContentStorageURL:= SS.DataString;
        finally
          SS.Free;
        end;
      finally
        FreeAndNil(http);
      end;

      if Assigned(AContentStorageLocatorsCache) then
        AContentStorageLocatorsCache.SetContentStorageURL(ContentStorageLocatorURL, ContentStorageURL);
    end;

  Result:= StrTrimCharRight(ContentStorageURL, '/');
end;

end.
