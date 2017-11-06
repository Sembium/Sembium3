unit fProcessConcreteOperation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fTreeOnlyNodeFieldEditFrame, fProcessConcreteOperationFieldEditFrame;

type
  TfmProcessConcreteOperation = class(TEditForm)
    frProcessConcreteOperation: TfrProcessConcreteOperationFieldEditFrame;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  fTreeSelectForm;

{$R *.dfm}

procedure TfmProcessConcreteOperation.FormCreate(Sender: TObject);
begin
  inherited;
  frProcessConcreteOperation.TreeDetailSelection:= tdsInstance;
end;

end.
