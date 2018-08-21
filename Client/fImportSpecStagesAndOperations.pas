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
    btnThoroughlyEngProduct: TButton;
    actThoroughlyEngProduct: TAction;
    procedure FormCreate(Sender: TObject);
    procedure actThoroughlyEngProductUpdate(Sender: TObject);
    procedure actThoroughlyEngProductExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uUtils, dMain;

resourcestring
  SThoroughlyEngineeredProductNotFound = 'Не е открит Еталон';

{$R *.dfm}

procedure TfmImportSpecStagesAndOperations.actThoroughlyEngProductExecute(
  Sender: TObject);
var
  ThoroughlyEngineeredProductCode: Integer;
begin
  inherited;

  ThoroughlyEngineeredProductCode:=
    dmMain.SvrProductsTree.GetThoroughlyEngineeredProductCode(
      dsData.DataSet.FieldByName('SPEC_PRODUCT_CODE').AsInteger);

  if (ThoroughlyEngineeredProductCode = 0) then
    raise Exception.Create(SThoroughlyEngineeredProductNotFound);

  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('SPEC_PRODUCT_CODE').AsInteger:= ThoroughlyEngineeredProductCode;
end;

procedure TfmImportSpecStagesAndOperations.actThoroughlyEngProductUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('SPEC_PRODUCT_CODE').IsNull;
end;

procedure TfmImportSpecStagesAndOperations.FormCreate(Sender: TObject);
begin
  inherited;
  frSpecProduct.FieldNames:= 'SPEC_PRODUCT_CODE';
end;

end.
