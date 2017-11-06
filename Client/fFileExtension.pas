unit fFileExtension;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, AbmesFields,
  JvExControls, JvComponent, JvDBLookup, JvCaptionButton;

type
  TfmFileExtension = class(TEditForm)
    grpExtension: TGroupBox;
    edtExtensionCode: TDBEdit;
    edtExtensionAbbrev: TDBEdit;
    edtExtensionName: TDBEdit;
    lblExtensionCode: TLabel;
    lblExtensionName: TLabel;
    lblExtensionAbbrev: TLabel;
    lblDocItemViewGenerator: TLabel;
    cdsDocItemViewGenerators: TAbmesClientDataSet;
    dsDocItemViewGenerators: TDataSource;
    cdsDocItemViewGeneratorsDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;
    cdsDocItemViewGeneratorsDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField;
    cdsDocItemViewGeneratorsGENERATOR_PATH: TAbmesWideStringField;
    cdsDocItemViewGeneratorsGENERATOR_PARAMS: TAbmesWideStringField;
    cdsDocItemViewGeneratorsGENERATOR_TIMEOUT_SEC: TAbmesFloatField;
    cdsDocItemViewGeneratorsRESULT_FILE_EXTENSION_CODE: TAbmesFloatField;
    cbDocItemViewGenerator: TJvDBLookupCombo;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TfmFileExtension }

procedure TfmFileExtension.OpenDataSets;
begin
  inherited OpenDataSets;
  cdsDocItemViewGenerators.Open;
end;

procedure TfmFileExtension.CloseDataSets;
begin
  cdsDocItemViewGenerators.Close;
  inherited CloseDataSets;
end;

end.
