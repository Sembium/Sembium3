unit fHyperlink;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fButtonForm, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin, uClientUtils;

type
  TfmHyperlink = class(TButtonForm)
    bvlMain: TBevel;
    edtHyperlink: TLabeledEdit;
    actBrowser: TAction;
    actCopyToClipboard: TAction;
    tlbCommands: TToolBar;
    btnBrowser: TToolButton;
    btnCopyToClipboard: TToolButton;
    procedure actCopyToClipboardExecute(Sender: TObject);
    procedure actBrowserExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FHyperlink: string;
  public
    procedure SetDataParams(const AHyperlink: string); reintroduce; virtual;
    class procedure ShowForm(const AHyperlink: string);
  end;

implementation

uses
  Vcl.Clipbrd, dMain, Winapi.ShellAPI;

{$R *.dfm}

{ TfmHyperlink }

procedure TfmHyperlink.actBrowserExecute(Sender: TObject);
begin
  inherited;
  ShellExecute(0, nil, PChar(FHyperlink), nil, nil, SW_SHOWNORMAL);
end;

procedure TfmHyperlink.actCopyToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= FHyperlink;
end;

procedure TfmHyperlink.FormShow(Sender: TObject);
begin
  inherited;
  edtHyperlink.SetFocus;
  edtHyperlink.SelLength:= 0;
end;

procedure TfmHyperlink.SetDataParams(const AHyperlink: string);
begin
  inherited SetDataParams(nil);
  FHyperlink:= AHyperlink;
  edtHyperlink.Text:= FHyperlink;
end;

class procedure TfmHyperlink.ShowForm(const AHyperlink: string);
var
  f: TfmHyperlink;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AHyperlink);
    f.InternalShowForm;
  finally
    f.ReleaseForm;
  end;
end;

end.
