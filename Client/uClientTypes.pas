unit uClientTypes;

interface

uses
  Classes, ActnList, Menus;

type
  TEditMode = (emEdit, emInsert, emReadOnly);

type
  TDefaultsOrigin = (doNone, doDataset, doServer);
  
type
  TActionClass = class of TAction;

type
  TDynamicMenuItem = class(TMenuItem);

type
  TDynamicAction = class(TAction)
  protected
    procedure AssignTo(Dest: TPersistent); override;
  end;

type
  TDocMenuItem = class(TDynamicMenuItem);

implementation

uses
  SysUtils, Actions;

{ TDynamicAction }

procedure TDynamicAction.AssignTo(Dest: TPersistent);
begin
  inherited AssignTo(Dest);
  if (Dest is TDynamicAction) then
    with TDynamicAction(Dest) do
      begin
        ActionList:= Self.ActionList;
        Category:= Self.Category;
      end;  { with, if }
end;

end.
