unit fDeptOWDPriorities;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDualGridFrame, DBGridEhGrouping, DB, ActnList, Buttons, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls,
  ColorNavigator, ExtCtrls, ComCtrls, ToolWin;

type
  TfrDeptOWDPriorities = class(TDualGridFrame)
    actEditDeptOWDPCoverType: TAction;
    tlbIncludedTopButtons: TToolBar;
    btnEditDeptOWDPCoverType: TToolButton;
    procedure actEditDeptOWDPCoverTypeUpdate(Sender: TObject);
    procedure grdIncludedDblClick(Sender: TObject);
    procedure actEditDeptOWDPCoverTypeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  fDeptOWDPriority, uClientTypes, uUtils;

{$R *.dfm}

procedure TfrDeptOWDPriorities.actEditDeptOWDPCoverTypeExecute(Sender: TObject);
begin
  inherited;
  TfmDeptOWDPriority.ShowForm(nil, dsData.DataSet, Utils.IfThen(ReadOnly, emReadOnly, emEdit))
end;

procedure TfrDeptOWDPriorities.actEditDeptOWDPCoverTypeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not dsData.DataSet.IsEmpty;
end;

procedure TfrDeptOWDPriorities.grdIncludedDblClick(Sender: TObject);
begin
  inherited;
  actEditDeptOWDPCoverType.Execute;
end;

end.
