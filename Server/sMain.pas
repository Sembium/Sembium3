unit sMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs;

type
  TsvcMain = class(TService)
  private
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
  end;

var
  svcMain: TsvcMain;

implementation

{$R *.DFM}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  svcMain.Controller(CtrlCode);
end;

{ TsvcMain }

function TsvcMain.GetServiceController: TServiceController;
begin
  Result:= ServiceController;
end;

end.
