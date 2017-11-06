unit fReportParent;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TfmReportParent = class(TForm)
  private
    { Private declarations }
  protected
    procedure Loaded; override;
    procedure DoCreate; override;
  public
    { Public declarations }
  end;

var
  fmReportParent: TfmReportParent;

implementation

uses
  uUtils, uClientUtils;

{$R *.DFM}

{ TfmReportParent }

procedure TfmReportParent.Loaded;
begin
  inherited Loaded;
  TClientComponentChecker.CheckForDisconnectedEventHandlers(Self);
end;

procedure TfmReportParent.DoCreate;
begin
  TClientComponentChecker.CheckComponentsNotConnected(Self);
  inherited DoCreate;
end;

end.
