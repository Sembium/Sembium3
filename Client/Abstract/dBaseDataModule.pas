unit dBaseDataModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TBaseDataModule = class(TDataModule)
  private
    { Private declarations }
  protected
    procedure Loaded; override;
    procedure DoCreate; override;
  public
    { Public declarations }
  end;

implementation

uses
  uUtils, uClientUtils;

{$R *.DFM}

{ TBaseDataModule }

procedure TBaseDataModule.Loaded;
begin
  inherited Loaded;
  TClientComponentChecker.CheckForDisconnectedEventHandlers(Self);
end;

procedure TBaseDataModule.DoCreate;
begin
  TClientComponentChecker.CheckComponentsNotConnected(Self);
  inherited DoCreate;
end;

end.
