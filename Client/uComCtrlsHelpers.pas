unit uComCtrlsHelpers;

interface

uses
  Vcl.ComCtrls;

type
  TTabControlHelper = class helper for TTabControl
    function RealTabHeight: Integer;
  end;

type
  TPageControlHelper = class helper for TPageControl
    function RealTabHeight: Integer;
  end;

implementation

{ TTabControlHelper }

function TTabControlHelper.RealTabHeight: Integer;
begin
  Result:= TabRect(0).Bottom;
end;

{ TPageControlHelper }

function TPageControlHelper.RealTabHeight: Integer;
begin
  Result:= TabRect(0).Bottom;
end;

end.
