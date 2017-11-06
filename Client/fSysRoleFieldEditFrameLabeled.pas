unit fSysRoleFieldEditFrameLabeled;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fSysRoleFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, JvExControls, JvDBLookup, StdCtrls, Mask,
  DBCtrls;

type
  TfrSysRoleFieldEditFrameLabeled = class(TfrSysRoleFieldEditFrame)
    lblSysRoleNo: TLabel;
    lblSysRoleName: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
