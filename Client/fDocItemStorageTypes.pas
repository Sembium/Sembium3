unit fDocItemStorageTypes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fGridForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, Vcl.Menus, Data.DB,
  AbmesFields, ParamDataSet, System.Actions, Vcl.ActnList, Datasnap.DBClient, AbmesClientDataSet, GridsEh,
  DBGridEh, AbmesDBGrid, Vcl.ComCtrls, Vcl.ToolWin, Vcl.DBCtrls, ColorNavigator, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, fDocItemStorageType;

type
  [EditFormClass(TfmDocItemStorageType)]
  TfmDocItemStorageTypes = class(TGridForm)
    cdsGridDataDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataDOC_ITEM_STORAGE_TYPE_NO: TAbmesFloatField;
    cdsGridDataDOC_ITEM_STORAGE_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataIS_FIXED: TAbmesFloatField;
    cdsGridDataSELECT_COMMAND: TAbmesWideStringField;
    cdsGridDataVIEW_COMMAND: TAbmesWideStringField;
    cdsGridDataEDIT_COMMAND: TAbmesWideStringField;
    cdsGridData_MAX_DOC_ITEM_STORAGE_TYPE_NO: TAggregateField;
    cdsGridDataDI_STORAGE_BASE_TYPE_CODE: TAbmesFloatField;
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
  private
    { Private declarations }
  protected
    function GetDelRecordEnabled: Boolean; override;
    function GetEditRecordEnabled: Boolean; override;
    procedure RecordDblClick; override;
  public
    { Public declarations }
  end;

implementation

uses
  uUtils, uDocItemStorageBaseTypes;

const
  FixedDocItemStorageTypeBackgroundColor = $00DFDFDF;

{$R *.dfm}

procedure TfmDocItemStorageTypes.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  CheckRequiredField(cdsGridDataVIEW_COMMAND);
end;

procedure TfmDocItemStorageTypes.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataDOC_ITEM_STORAGE_TYPE_CODE.AsInteger:= -1;
  cdsGridDataIS_FIXED.AsBoolean:= False;
  cdsGridDataDOC_ITEM_STORAGE_TYPE_NO.AsInteger:= VarToInt(cdsGridData_MAX_DOC_ITEM_STORAGE_TYPE_NO.Value) + 1;
  cdsGridDataDI_STORAGE_BASE_TYPE_CODE.AsDocItemStorageBaseType:= disbtCommandStorage;
end;

function TfmDocItemStorageTypes.GetDelRecordEnabled: Boolean;
begin
  Result:= inherited and not cdsGridDataIS_FIXED.AsBoolean;
end;

function TfmDocItemStorageTypes.GetEditRecordEnabled: Boolean;
begin
  Result:= inherited and not cdsGridDataIS_FIXED.AsBoolean;
end;

procedure TfmDocItemStorageTypes.grdDataGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont;
  var Background: TColor; State: TGridDrawState);
begin
  inherited;
  if cdsGridDataIS_FIXED.AsBoolean then
    Background:= FixedDocItemStorageTypeBackgroundColor;
end;

procedure TfmDocItemStorageTypes.RecordDblClick;
begin
  // do not call inherited
  actEditRecord.Execute;
end;

end.
