unit fSpecAndXModelTaskDeptEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, fBaseFrame, fDBFrame, fFieldEditFrame, 
  Db, Menus, DBClient, AbmesClientDataSet, JvButtons, ImgList,
  ActnList, StdCtrls, Buttons, ExtCtrls, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame;

type
  TfmSpecAndXModelTaskDeptEdit = class(TEditForm)
    frDept: TfrDeptFieldEditFrame;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
