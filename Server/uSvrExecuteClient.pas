//
// Created by the DataSnap proxy generator.
//

unit uSvrExecuteClient;

interface

uses DBXCommon, Classes, SysUtils, DB, SqlExpr, DBXDBReaders;

type
  TdmSvrExecuteClient = class
  private
    FDBXConnection: TDBXConnection;
    FInstanceOwner: Boolean;
    FExecuteExternalFileCommand: TDBXCommand;
    FExecuteInternalFileCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function ExecuteExternalFile(ExecutePath: string; ExecuteParams: string; InputFileName: string; ResultExt: string; Timeout: Integer): OleVariant;
    function ExecuteInternalFile(ExecutePath: string; ExecuteParams: string; var InputExt: OleVariant; var InputData: OleVariant; ResultExt: string; Timeout: Integer): OleVariant;
  end;

implementation

function TdmSvrExecuteClient.ExecuteExternalFile(ExecutePath: string; ExecuteParams: string; InputFileName: string; ResultExt: string; Timeout: Integer): OleVariant;
begin
  if FExecuteExternalFileCommand = nil then
  begin
    FExecuteExternalFileCommand := FDBXConnection.CreateCommand;
    FExecuteExternalFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExecuteExternalFileCommand.Text := 'TdmSvrExecute.ExecuteExternalFile';
    FExecuteExternalFileCommand.Prepare;
  end;
  FExecuteExternalFileCommand.Parameters[0].Value.SetWideString(ExecutePath);
  FExecuteExternalFileCommand.Parameters[1].Value.SetWideString(ExecuteParams);
  FExecuteExternalFileCommand.Parameters[2].Value.SetWideString(InputFileName);
  FExecuteExternalFileCommand.Parameters[3].Value.SetWideString(ResultExt);
  FExecuteExternalFileCommand.Parameters[4].Value.SetInt32(Timeout);
  FExecuteExternalFileCommand.ExecuteUpdate;
  Result := FExecuteExternalFileCommand.Parameters[5].Value.AsVariant;
end;

function TdmSvrExecuteClient.ExecuteInternalFile(ExecutePath: string; ExecuteParams: string; var InputExt: OleVariant; var InputData: OleVariant; ResultExt: string; Timeout: Integer): OleVariant;
begin
  if FExecuteInternalFileCommand = nil then
  begin
    FExecuteInternalFileCommand := FDBXConnection.CreateCommand;
    FExecuteInternalFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExecuteInternalFileCommand.Text := 'TdmSvrExecute.ExecuteInternalFile';
    FExecuteInternalFileCommand.Prepare;
  end;
  FExecuteInternalFileCommand.Parameters[0].Value.SetWideString(ExecutePath);
  FExecuteInternalFileCommand.Parameters[1].Value.SetWideString(ExecuteParams);
  FExecuteInternalFileCommand.Parameters[2].Value.AsVariant := InputExt;
  FExecuteInternalFileCommand.Parameters[3].Value.AsVariant := InputData;
  FExecuteInternalFileCommand.Parameters[4].Value.SetWideString(ResultExt);
  FExecuteInternalFileCommand.Parameters[5].Value.SetInt32(Timeout);
  FExecuteInternalFileCommand.ExecuteUpdate;
  InputExt := FExecuteInternalFileCommand.Parameters[2].Value.AsVariant;
  InputData := FExecuteInternalFileCommand.Parameters[3].Value.AsVariant;
  Result := FExecuteInternalFileCommand.Parameters[6].Value.AsVariant;
end;


constructor TdmSvrExecuteClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create;
  if ADBXConnection = nil then
    raise EInvalidOperation.Create('Connection cannot be nil.  Make sure the connection has been opened.');
  FDBXConnection := ADBXConnection;
FInstanceOwner := True;
end;


constructor TdmSvrExecuteClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create;
  if ADBXConnection = nil then
    raise EInvalidOperation.Create('Connection cannot be nil.  Make sure the connection has been opened.');
  FDBXConnection := ADBXConnection;
FInstanceOwner := AInstanceOwner;
end;


destructor TdmSvrExecuteClient.Destroy;
begin
  FreeAndNil(FExecuteExternalFileCommand);
  FreeAndNil(FExecuteInternalFileCommand);
  inherited;
end;

end.

