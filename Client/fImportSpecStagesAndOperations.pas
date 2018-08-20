unit fImportSpecStagesAndOperations;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fBevelEditForm, Data.DB,
  Datasnap.DBClient, AbmesClientDataSet, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  JvExControls, JvDBLookup;

type
  TfmImportSpecStagesAndOperations = class(TBevelEditForm)
    frSpecProduct: TfrProductFieldEditFrame;
    cbSpecModelVariant: TJvDBLookupCombo;
    lblSpecModelVariant: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfmImportSpecStagesAndOperations.FormCreate(Sender: TObject);
begin
  inherited;
  frSpecProduct.FieldNames:= 'SPEC_PRODUCT_CODE';
end;

end.
