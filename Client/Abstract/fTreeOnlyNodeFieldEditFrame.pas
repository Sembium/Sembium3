unit fTreeOnlyNodeFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeNodeFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, ComCtrls, ToolWin, Buttons, JvExMask,
  JvToolEdit, JvDBControls, StdCtrls, Mask, DBCtrls, ExtCtrls, System.Actions;

type
  TTreeOnlyNodeFieldEditFrame = class(TTreeNodeFieldEditFrame)
  private
    FCanSelectInactive: Boolean;
  protected
    procedure ValidateNode(ANodeCode: Integer); override;
    function GetTreeNodeIsInactive(ANodeCode: Integer): Boolean; virtual; abstract;
    function TreeNodeIsInactiveErrorMsg: string; virtual; abstract;
  public
    property CanSelectInactive: Boolean read FCanSelectInactive write FCanSelectInactive default False;
  end;

implementation

{$R *.dfm}

{ TfrClassifierTreeNodeFieldEditFrame }

procedure TTreeOnlyNodeFieldEditFrame.ValidateNode(ANodeCode: Integer);
begin
  inherited ValidateNode(ANodeCode);

  if not FCanSelectInactive and GetTreeNodeIsInactive(ANodeCode) then
    raise Exception.Create(TreeNodeIsInactiveErrorMsg);
end;

end.
