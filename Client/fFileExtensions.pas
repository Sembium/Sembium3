unit fFileExtensions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvButtons, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, JvComponent, JvCaptionButton;

type
  TfmFileExtensions = class(TBottomButtonGridForm)
    cdsGridData_MAX_FILE_EXTENSION_CODE: TAggregateField;
    cdsGridDataFILE_EXTENSION_CODE: TAbmesFloatField;
    cdsGridDataFILE_EXTENSION_NAME: TAbmesWideStringField;
    cdsGridDataFILE_EXTENSION_ABBREV: TAbmesWideStringField;
    cdsGridDataDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;                           
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  fFileExtension, uUtils;

{ TfmFileExtensions }

procedure TfmFileExtensions.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmFileExtension;
end;

procedure TfmFileExtensions.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataFILE_EXTENSION_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_FILE_EXTENSION_CODE.AsVariant) + 1;
end;

end.
