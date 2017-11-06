unit fDeptEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, fBaseFrame, fDBFrame, fFieldEditFrame,
  DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, JvComponentBase, JvCaptionButton;

type
  TfmDeptEdit = class(TEditForm)
    frDept: TfrDeptFieldEditFrame;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    class function CanUseDocs: Boolean; override;
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

class function TfmDeptEdit.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmDeptEdit.FormCreate(Sender: TObject);
begin
  inherited;
  frDept.FieldNames:= 'NODE_CODE';
  frDept.AcceptDefaultDept:= True;
end;

end.
