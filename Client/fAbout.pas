unit fAbout;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBaseForm, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls, ComCtrls,
  JvExExtCtrls, JvComponent, JvSecretPanel, JvCaptionButton,
  JvComponentBase, fButtonForm, uUtils, JvExtComponent, JvPanel, System.Actions,
  JvExControls, JvLabel;

type
  TfmAbout = class(TBaseForm)
    pnlAbout: TPanel;
    imgBackground: TImage;
    lblVersion: TLabel;
    pnlEasterEgg: TPanel;
    imgEasterEgg: TImage;
    pnlTitle: TJvPanel;
    lblAppFullName: TLabel;
    lblAdditionalInfo: TLabel;
    lblServiceAgreements: TLabel;
    lblLogoAppName: TJvLabel;
    procedure imgBackgroundClick(Sender: TObject);
    procedure imgEasterEggClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure lblServiceAgreementsClick(Sender: TObject);
  protected
    { Protected declarations }
  public
    class function HasCaptionMenu: Boolean; override;
  end;

implementation

uses
  uClientUtils, uClientApp, uDocClientUtils, uClientConnectionInfo;

{$R *.DFM}

resourcestring
  SVersion = 'Версия';

{ TfmAbout }

procedure TfmAbout.actFormUpdate(Sender: TObject);
begin
  inherited;
  pnlTitle.Visible:=
    pnlAbout.Visible or
    pnlEasterEgg.Visible;
end;

procedure TfmAbout.FormCreate(Sender: TObject);
begin
  inherited;

  lblLogoAppName.Caption:= ReplaceAppParams(lblLogoAppName.Caption);
  TryLoadPictureFromResource(imgBackground.Picture, AppAboutBitmapResourceName);
  TryLoadPictureFromResource(imgEasterEgg.Picture, AppEasterEggBitmapResourceName);

  lblVersion.Caption:= Format('%s %s', [SVersion, GetExeVersion]);
  pnlAbout.Visible:= True;
  pnlEasterEgg.Visible:= False;
end;

class function TfmAbout.HasCaptionMenu: Boolean;
begin
  Result:= False;
end;

procedure TfmAbout.imgEasterEggClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmAbout.imgBackgroundClick(Sender: TObject);
begin
  inherited;

  if ControlIsPressed and AltIsPressed and ShiftIsPressed and
     Assigned(imgEasterEgg.Picture.Graphic) and (not imgEasterEgg.Picture.Graphic.Empty) then
    begin
      pnlAbout.Visible:= False;
      pnlEasterEgg.Visible:= True;
    end
  else
    Close;
end;

procedure TfmAbout.lblServiceAgreementsClick(Sender: TObject);
var
  DomainName: string;
begin
  inherited;

  DomainName:= GetDomainName(ClientConnectionInfo.ActiveServerName);

  if (DomainName = '') then
    DomainName:= DefaultDomain;

  ExecURI(Format('http://%s/terms', [DomainName]));
end;

end.
