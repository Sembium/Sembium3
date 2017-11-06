unit uDatabaseIcons;

interface

uses
  Vcl.Graphics;

type
  TDatabaseIconIndex = 1..12;

type
  TDatabaseIconLoader = class
  private
    class function LoadDatabaseIcon<T: TGraphic, constructor>(const AResourceName: string): T;
  public
    class function LoadSmallDatabaseIcon<T: TGraphic, constructor>(const Index: Integer): T;
    class function LoadLargeDatabaseIcon<T: TGraphic, constructor>(const Index: Integer): T;
  end;

implementation

uses
  System.Classes, System.SysUtils, Winapi.Windows;

{$R 'DatabaseIcons.res'}

class function TDatabaseIconLoader.LoadDatabaseIcon<T>(const AResourceName: string): T;
var
  RS: TResourceStream;
begin
  RS:= TResourceStream.Create(HInstance, AResourceName, RT_RCDATA);
  try
    Result:= T.Create;
    try
      Result.LoadFromStream(RS);
    except
      FreeAndNil(Result);
      raise;
    end;
  finally
    FreeAndNil(RS);
  end;
end;

function LoadSmallDatabaseIcon(const Index: Integer): TIcon;
begin
  Result:= TDatabaseIconLoader.LoadDatabaseIcon<TIcon>('SMALLDATABASEICON' + FormatFloat('00', Index))
end;

function LoadLargeDatabaseIcon(const Index: Integer): TGraphic;
begin
  Result:= TDatabaseIconLoader.LoadDatabaseIcon<TWICImage>('LARGEDATABASEICON' + FormatFloat('00', Index))
end;

class function TDatabaseIconLoader.LoadSmallDatabaseIcon<T>(const Index: Integer): T;
begin
  Result:= LoadDatabaseIcon<T>('SMALLDATABASEICON' + FormatFloat('00', Index))
end;

class function TDatabaseIconLoader.LoadLargeDatabaseIcon<T>(const Index: Integer): T;
begin
  Result:= LoadDatabaseIcon<T>('LARGEDATABASEICON' + FormatFloat('00', Index))
end;

end.
