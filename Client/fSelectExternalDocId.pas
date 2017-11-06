unit fSelectExternalDocId;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fButtonForm, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TfmSelectExternalDocId = class(TButtonForm)
    lblText: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FFileName: string;
  public
    class function ShowForm(AFileName: string): Boolean;
    procedure SetDataParams(AFileName: string); reintroduce; virtual;
  end;

implementation

uses
  uUtils;

resourcestring
  SFileIsNotReady = 'Файлът "%s" не съществува или е отворен.';

{$R *.dfm}

{ TfmSelectExternalDocId }

procedure TfmSelectExternalDocId.SetDataParams(AFileName: string);
begin
  inherited SetDataParams;
  FFileName:= AFileName;
end;

class function TfmSelectExternalDocId.ShowForm(AFileName: string): Boolean;
var
  f: TfmSelectExternalDocId;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AFileName);
    Result:= (f.InternalShowForm = mrOk);
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmSelectExternalDocId.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (ModalResult = mrOk) and
     ((not FileExists(FFileName)) or FileInUse(FFileName)) then
    raise Exception.CreateFmt(SFileIsNotReady, [FFileName]);

  inherited;
end;

end.
