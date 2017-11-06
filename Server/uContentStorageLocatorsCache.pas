unit uContentStorageLocatorsCache;

interface

uses
  System.Generics.Collections;

type
  TContentStorageLocatorsCacheEntry = class
  strict private
    FLocatorURL: string;
    FContentStorageURL: string;
    FCreateDateTime: TDateTime;
    FExpirySeconds: Integer;
  private
    property ContentStorageURL: string read FContentStorageURL;

    constructor Create(const ALocatorURL, AContentStorageURL: string; const AExpirySeconds: Integer);
    function IsExpired: Boolean;
  end;

type
  TContentStorageLocatorsCache = class
  private
    FEntries: TObjectDictionary<string, TContentStorageLocatorsCacheEntry>;
    FExpirySeconds: Integer;
  public
    constructor Create(const AExpirySeconds: Integer);
    destructor Destroy; override;
    function GetContentStorageURL(const ALocatorURL: string): string;
    procedure SetContentStorageURL(const ALocatorURL, AContentStorageURL: string);
  end;

implementation

uses
  System.SysUtils, System.TimeSpan;

{ TContentStorageLocatorsCacheEntry }

constructor TContentStorageLocatorsCacheEntry.Create(const ALocatorURL, AContentStorageURL: string;
  const AExpirySeconds: Integer);
begin
  FLocatorURL:= ALocatorURL;
  FContentStorageURL:= AContentStorageURL;
  FCreateDateTime:= Now;
  FExpirySeconds:= AExpirySeconds;
end;

function TContentStorageLocatorsCacheEntry.IsExpired: Boolean;
begin
  Result:= (TTimeSpan.FromDays(Now - FCreateDateTime).TotalSeconds > FExpirySeconds);
end;

{ TContentStorageLocatorsCache }

constructor TContentStorageLocatorsCache.Create(const AExpirySeconds: Integer);
begin
  FExpirySeconds:= AExpirySeconds;
  FEntries:= TObjectDictionary<string, TContentStorageLocatorsCacheEntry>.Create([doOwnsValues]);
end;

destructor TContentStorageLocatorsCache.Destroy;
begin
  FreeAndNil(FEntries);
  inherited;
end;

procedure TContentStorageLocatorsCache.SetContentStorageURL(
  const ALocatorURL, AContentStorageURL: string);
var
  CacheEntry: TContentStorageLocatorsCacheEntry;
begin
  if not FEntries.TryGetValue(ALocatorURL, CacheEntry) or
     CacheEntry.IsExpired or
     (CacheEntry.ContentStorageURL <> AContentStorageURL) then
    begin
      FEntries.AddOrSetValue(
        ALocatorURL,
        TContentStorageLocatorsCacheEntry.Create(ALocatorURL, AContentStorageURL, FExpirySeconds)
      );
    end;
end;

function TContentStorageLocatorsCache.GetContentStorageURL(const ALocatorURL: string): string;
var
  CacheEntry: TContentStorageLocatorsCacheEntry;
begin
  if FEntries.TryGetValue(ALocatorURL, CacheEntry) and not CacheEntry.IsExpired then
    Result:= CacheEntry.ContentStorageURL
  else
    Result:= '';
end;

end.
