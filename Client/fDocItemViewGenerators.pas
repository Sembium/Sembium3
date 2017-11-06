unit fDocItemViewGenerators;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvButtons, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, JvComponent, JvCaptionButton;

type
  TfmDocItemViewGenerators = class(TBottomButtonGridForm)
    cdsGridData_MAX_DOC_ITEM_VIEW_GEN_CODE: TAggregateField;
    cdsGridDataDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;
    cdsGridDataDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField;
    cdsGridDataGENERATOR_PATH: TAbmesWideStringField;
    cdsGridDataGENERATOR_PARAMS: TAbmesWideStringField;
    cdsGridDataGENERATOR_TIMEOUT_SEC: TAbmesFloatField;
    cdsGridDataRESULT_FILE_EXTENSION_CODE: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);                                   
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
 
uses
  fDocItemViewGenerator, uUtils;

{$R *.dfm}

{ TfmDocItemViewGenerators }

procedure TfmDocItemViewGenerators.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmDocItemViewGenerator;
end;

procedure TfmDocItemViewGenerators.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataDOC_ITEM_VIEW_GENERATOR_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_DOC_ITEM_VIEW_GEN_CODE.AsVariant) + 1;
end;

end.
