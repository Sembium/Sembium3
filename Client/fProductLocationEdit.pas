unit fProductLocationEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, Menus,
  JvButtons, ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, JvDBLookup,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, JvComponent,
  JvCaptionButton;

type
  TfmProductLocationEdit = class(TBevelEditForm)
    frStore: TfrDeptFieldEditFrame;
    frDept: TfrDeptFieldEditFrame;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TfmProductLocationEdit }

procedure TfmProductLocationEdit.FormCreate(Sender: TObject);
begin
  inherited;
  frStore.FieldNames:= 'STORE_CODE';
  frStore.SelectStore:= True;
end;

end.
