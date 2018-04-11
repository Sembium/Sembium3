unit uProgressHttp;

interface

uses
  System.Classes, System.SysUtils,
  fAnimatedSplash, System.Net.HttpClient, System.Net.URLClient,
  uHttpClientProxyUtils;

type
  TTaskProgress = record
    MaxProgress: Int64;
    Progress: Int64;
  end;

type
  TClosableFileStream = class(TFileStream)
  public
    procedure Close;
  end;

type
  TProgressHttp = class
  private
    FfmSplash: TfmAnimatedSplash;
    FWorkBeginTickCount: Cardinal;
    FLastUpdateTickCount: Cardinal;
    FShowProgress: Boolean;
    FTaskCount: Integer;
    FTasksProgress: array of TTaskProgress;
    FTaskNo: Integer;
    FAborted: Boolean;
    FIsUploading: Boolean;
    FProxyUrl: string;
    procedure DoProgressHttp(const AIsUploading: Boolean; AFunc: TFunc<THTTPClient, IHTTPResponse>; const ATaskNo: Integer; ASuccessProc: TProc<IHTTPResponse>);
    procedure HttpWorkBegin(const AIsUploading: Boolean);
    procedure OnReceiveData(const Sender: TObject; AContentLength: Int64; AReadCount: Int64; var Abort: Boolean);
    procedure HttpWorkEnd;
    procedure SetTaskCount(const Value: Integer);
    procedure UpdateProgress;
    function TotalWorkCountMax: Int64;
    function TotalWorkCount: Int64;
    procedure ReleaseSplashForm;
  public
    const DirectProxyUrl = HTTPClientDirectProxyUrl;
    constructor Create(AShowProgress: Boolean = True; const AProxyUrl: string = '');
    destructor Destroy; override;
    procedure Get(const AURL: string; ADestStream: TStream; const ATaskNo: Integer = 1; ASuccessProc: TProc<IHTTPResponse> = nil);
    procedure Execute(const AHttpMethod: string; const AURL: string; var ASrcStream: TStream; AHeaders: TNetHeaders; const AUseFormFile: Boolean = False; const ATaskNo: Integer = 1; ASuccessProc: TProc<IHTTPResponse> = nil);
    procedure SetTaskMaxProgress(const ATaskNo: Integer; const AValue: Int64);
    property TaskCount: Integer read FTaskCount write SetTaskCount default 1;
    property Aborted: Boolean read FAborted;
  end;

implementation

uses
  Vcl.ComCtrls, uUtils, Winapi.Windows, System.Math, Vcl.Forms, System.Net.Mime,
  System.NetConsts;

resourcestring
  SDownloading = 'Изтегляне...';
  SUploading = 'Качване...';
  SElapsed = 'Изминали';
  SSpeed = 'Скорост';
  SRemaining = 'Остават';
  SSec = 'сек.';
  SSeconds = 'секунди';
  SMinute = 'минута';
  SMinutes = 'минути';
  SAnd = 'и';

{ TClientHttp }

constructor TProgressHttp.Create(AShowProgress: Boolean; const AProxyUrl: string);
begin
  FShowProgress:= AShowProgress;
  TaskCount:= 1;
  FProxyUrl:= AProxyUrl;
end;

destructor TProgressHttp.Destroy;
begin
  ReleaseSplashForm;
  inherited;
end;

procedure TProgressHttp.DoProgressHttp(const AIsUploading: Boolean; AFunc: TFunc<THTTPClient, IHTTPResponse>; const ATaskNo: Integer; ASuccessProc: TProc<IHTTPResponse>);
var
  http: THTTPClient;
  Response: IHTTPResponse;
begin
  http:= THTTPClient.Create;
  try
//    http.ResponseTimeout:= 15000;      // needs Delphi Upgrade

    if (FProxyUrl <> '') then
      http.ProxySettings:= TProxySettings.Create(FProxyUrl);

    FTaskNo:= ATaskNo;

    http.OnReceiveData:= OnReceiveData;

    HttpWorkBegin(AIsUploading);
    try
      try
        Response:= AFunc(http);

        if Assigned(ASuccessProc) and ((Response.StatusCode div 100) = 2) then
          ASuccessProc(Response);
      finally
        if Aborted then
          Abort;
      end;
    finally
      HttpWorkEnd;
    end;
  finally
    FreeAndNil(http);
  end;
end;

procedure TProgressHttp.Get(const AURL: string; ADestStream: TStream;
  const ATaskNo: Integer; ASuccessProc: TProc<IHTTPResponse>);
begin
  DoProgressHttp(
    False,
    function(http: THTTPClient): IHTTPResponse
    begin
      Result:= http.Get(AURL, ADestStream);
    end,
    ATaskNo,
    ASuccessProc
  );
end;

function GetMultipartFormData(var AStream: TStream): TMultipartFormData;
var
  FileName: string;
  Stream: TClosableFileStream;
begin
  Assert(AStream is TClosableFileStream, 'TClosableFileStream expected');

  Stream:= AStream as TClosableFileStream;

  FileName:= Stream.FileName;
  Stream.Close;  // close the stream to make the file available for the request

  Result:= TMultipartFormData.Create;
  Result.AddFile(ExtractFileName(FileName), FileName);
end;

procedure TProgressHttp.Execute(const AHttpMethod: string; const AURL: string; var ASrcStream: TStream; AHeaders: TNetHeaders; const AUseFormFile: Boolean;
  const ATaskNo: Integer; ASuccessProc: TProc<IHTTPResponse>);
var
  s: TStream;
begin
  s:= ASrcStream;

  DoProgressHttp(
    True,
    function(http: THTTPClient): IHTTPResponse
    var
      LRequest: IHTTPRequest;
      MultipartFormData: TMultipartFormData;
    begin
      LRequest := http.GetRequest(UpperCase(AHttpMethod), AURL);

      if AUseFormFile then
        begin
          MultipartFormData:= GetMultipartFormData(s);

          LRequest.SourceStream:= MultipartFormData.Stream;
          LRequest.SourceStream.Position:= 0;
          LRequest.AddHeader(sContentType, MultipartFormData.MimeTypeHeader);
        end
      else
        begin
          LRequest.SourceStream:= s;
        end;

      Result:= http.Execute(LRequest, nil, AHeaders);
    end,
    ATaskNo,
    ASuccessProc
  );

  ASrcStream:= s;
end;

procedure TProgressHttp.ReleaseSplashForm;
begin
  if Assigned(FfmSplash) then
    begin
      FfmSplash.ReleaseForm;
      FfmSplash:= nil;
    end;
end;

procedure TProgressHttp.SetTaskCount(const Value: Integer);
begin
  if (Value <> FTaskCount) then
    begin
      FTaskCount:= Value;
      SetLength(FTasksProgress, Value);
    end;
end;

procedure TProgressHttp.SetTaskMaxProgress(const ATaskNo: Integer;
  const AValue: Int64);
begin
  Assert(InRange(ATaskNo, 1, Length(FTasksProgress)));
  FTasksProgress[ATaskNo-1].MaxProgress:= AValue;
end;

function TProgressHttp.TotalWorkCount: Int64;
var
  TaskProgress: TTaskProgress;
begin
  Result:= 0;
  for TaskProgress in FTasksProgress do
    Inc(Result, TaskProgress.Progress);
end;

function TProgressHttp.TotalWorkCountMax: Int64;
var
  TaskProgress: TTaskProgress;
begin
  Result:= 0;
  for TaskProgress in FTasksProgress do
    Inc(Result, TaskProgress.MaxProgress);
end;

function FormatSeconds(const ASeconds: Cardinal): string;
const
  SecondsPerMinute = 60;
var
  Minutes: Cardinal;
  Seconds: Cardinal;
begin
  Minutes:= ASeconds div SecondsPerMinute;
  Seconds:= ASeconds mod SecondsPerMinute;

  Result:= '';

  if (Minutes > 1) then
    Result:= Format('%d %s %s ', [Minutes, SMinutes, SAnd]);

  if (Minutes = 1) then
    Result:= Format('1 %s %s ', [SMinute, SAnd]);

  Result:= Result + Format('%d %s', [Seconds, SSeconds]);
end;

procedure TProgressHttp.HttpWorkBegin(const AIsUploading: Boolean);
const
  Operations: array[Boolean] of string = (SDownloading, SUploading);
begin
  FIsUploading:= AIsUploading;

  if (not FShowProgress) or (FWorkBeginTickCount <> 0) then
    Exit;

  if (FTaskNo = 1) then
    begin
      FWorkBeginTickCount:= GetTickCount;
      FLastUpdateTickCount:= FWorkBeginTickCount - 10000;

      Application.CreateForm(TfmAnimatedSplash, FfmSplash);

      FfmSplash.ProgressBarVisible:= True;

      if AIsUploading then
        FfmSplash.pbMain.Style:= pbstMarquee;

      SetTaskMaxProgress(FTaskNo, 1000);
      FTasksProgress[FTaskNo-1].Progress:= 0;
      UpdateProgress;

      FfmSplash.ShowForm(aviNone, Operations[AIsUploading]);
    end;
end;

procedure TProgressHttp.HttpWorkEnd;
begin
  if not FShowProgress then
    Exit;

  if (FTaskNo = Length(FTasksProgress)) then
    begin
      ReleaseSplashForm;
      FWorkBeginTickCount:= 0;
    end;
end;

procedure TProgressHttp.OnReceiveData(const Sender: TObject; AContentLength: Int64; AReadCount: Int64; var Abort: Boolean);
begin
  SetTaskMaxProgress(FTaskNo, Max(AReadCount, AContentLength));
  FTasksProgress[FTaskNo-1].Progress:= AReadCount;

  try
    UpdateProgress;
  except
    on E: EAbort do
      begin
        FAborted:= True;
        Abort:= True;
      end;
  end;
end;

procedure TProgressHttp.UpdateProgress;
const
  RefreshMilliseconds = 200;
var
  ElapsedTicks: Cardinal;
  ElapsedBytesPerTick: Extended;
  RemainingTicks: Extended;
  ProgressInfo: string;
  TickCount: Cardinal;
  WorkCount: Int64;
  WorkCountMax: Int64;
begin
  if not FShowProgress then
    Exit;

  WorkCount:= TotalWorkCount;
  WorkCountMax:= TotalWorkCountMax;

  TickCount:= GetTickCount;

  ElapsedTicks:= TickCountDiff(FWorkBeginTickCount, TickCount);

  if (ElapsedTicks <= 0) then
    ElapsedBytesPerTick:= 0
  else
    ElapsedBytesPerTick:= WorkCount / ElapsedTicks;

  if (ElapsedBytesPerTick <= 0) then
    RemainingTicks:= 0
  else
    RemainingTicks:= Max(0, WorkCountMax - WorkCount) / ElapsedBytesPerTick;

  ProgressInfo:=
    SLineBreak +
    Format('%s: %s / %s за %s', [SElapsed, FormatByteSize(WorkCount), FormatByteSize(WorkCountMax), FormatSeconds(Trunc(SimpleRoundTo(ElapsedTicks / 1000)))]) + SLineBreak +
    Format('%s: %s/%s', [SSpeed, FormatByteSize(Trunc(ElapsedBytesPerTick * 1000)), SSec]) + SLineBreak +
    Format('%s: %s', [SRemaining, FormatSeconds(Trunc(SimpleRoundTo(RemainingTicks / 1000)) + 1)]) + SLineBreak;

  if FIsUploading then
    ProgressInfo:= '';

  if (WorkCount = WorkCountMax) or (TickCountDiff(FLastUpdateTickCount, TickCount) >= RefreshMilliseconds) then
    begin
      FfmSplash.SetProgress(WorkCount, WorkCountMax, ProgressInfo);
      FLastUpdateTickCount:= TickCount;
    end;
end;

{ TClosableFileStream }

procedure TClosableFileStream.Close;
begin
  FileClose(FHandle);
  FHandle:= INVALID_HANDLE_VALUE;
end;

end.
