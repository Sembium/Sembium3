unit fProcessBaseOperation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fTreeOnlyNodeFieldEditFrame,
  fProcessBaseOperationFieldEditFrame;

type
  TfmProcessBaseOperation = class(TEditForm)
    frProcessBaseOperation: TfrProcessBaseOperationFieldEditFrame;
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

{ TfmProcessBaseOperation }

procedure TfmProcessBaseOperation.FormCreate(Sender: TObject);
begin
  inherited;
  frProcessBaseOperation.TreeDetailSelection:= tdsInstance;
end;

end.
