unit fDocItemViewGenerator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, JvToolEdit,
  JvDBControls, AbmesFields, JvExMask, JvComponent, JvCaptionButton, JvDBLookup, JvExControls;

type
  TfmDocItemViewGenerator = class(TEditForm)
    grpDocItemViewGenerator: TGroupBox;
    edtDocItemViewGeneratorCode: TDBEdit;
    edtDocItemViewGeneratorName: TDBEdit;
    edtGeneratorParams: TDBEdit;
    edtGeneratorPath: TJvDBComboEdit;
    dlgDocItemViewGeneratorPath: TOpenDialog;
    lblDocItemViewGeneratorPath: TLabel;
    lblDocItemViewGeneratorParams: TLabel;
    lblDocItemViewGeneratorName: TLabel;
    lblDocItemViewGeneratorCode: TLabel;
    edtGeneratorTimeoutSec: TDBEdit;
    lblGeneratorTimeout: TLabel;
    dsFileExtensions: TDataSource;
    cdsFileExtensions: TAbmesClientDataSet;
    edtFileExtension: TJvDBLookupCombo;
    lblFileExtension: TLabel;
    cdsFileExtensionsFILE_EXTENSION_CODE: TAbmesFloatField;
    cdsFileExtensionsFILE_EXTENSION_NAME: TAbmesWideStringField;
    cdsFileExtensionsFILE_EXTENSION_ABBREV: TAbmesWideStringField;
    cdsFileExtensionsDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;
    lblGeneratorParamsHints: TLabel;
    procedure edtGeneratorPathButtonClick(Sender: TObject);
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    { public declarations } 
  end;

implementation

uses
  uUtils;

{$R *.dfm}

{ TfmDocItemViewGenerator }

procedure TfmDocItemViewGenerator.OpenDataSets;
begin
  inherited;
  cdsFileExtensions.Open;
end;

procedure TfmDocItemViewGenerator.edtGeneratorPathButtonClick(Sender: TObject);
begin
  inherited;
  if dlgDocItemViewGeneratorPath.Execute then
    begin
      CheckEditMode(dsData.DataSet);
      dsData.DataSet.FieldByName('GENERATOR_PATH').AsString:=
        dlgDocItemViewGeneratorPath.FileName;
    end;
end;

procedure TfmDocItemViewGenerator.CloseDataSets;
begin
  cdsFileExtensions.Close;
  inherited;
end;

end.
