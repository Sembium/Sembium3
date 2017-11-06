unit fExecFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fButtonForm, JvButtons, ActnList, StdCtrls, Buttons, ExtCtrls,
  JvComponentBase, JvCaptionButton, System.Actions;

type
  TfmExecFile = class(TButtonForm)
    lblText: TLabel;
    lblFileName: TLabel;
    edtFileName: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FFileName: string;
    FFirstOnActivateTriggered: Boolean;
  public
    class function ShowForm(AFileName: string): Boolean;
    procedure SetDataParams(AFileName: string); reintroduce; virtual;
    procedure Initialize; override;
  end;

implementation

uses
  uDocClientUtils, uUtils;

resourcestring
  SFileIsNotReady = 'Моля запишете и затворете файла %s';

{$R *.dfm}

{ TfmExecFile }

procedure TfmExecFile.SetDataParams(AFileName: string);
begin
  inherited SetDataParams;
  FFileName:= AFileName;
end;

class function TfmExecFile.ShowForm(AFileName: string): Boolean;
var
  f: TfmExecFile;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AFileName);
    Result:= (f.InternalShowForm = mrOk);
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmExecFile.FormActivate(Sender: TObject);
begin
  inherited;
  if FFirstOnActivateTriggered then
    Exit;

  FFirstOnActivateTriggered:= True;
  ExecFile(FFileName);
end;

procedure TfmExecFile.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (ModalResult = mrOk) and
     ((not FileExists(FFileName)) or FileInUse(FFileName)) then
    raise Exception.CreateFmt(SFileIsNotReady, [ExtractFileName(FFileName)]);

  inherited;
end;

procedure TfmExecFile.Initialize;
begin
  inherited;
  edtFileName.Text:= ExtractFileName(FFileName);
end;

end.
