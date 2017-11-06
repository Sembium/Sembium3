unit fDocItemType;

interface                       

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDualGridForm, JvButtons, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, AbmesDBCheckBox, JvToolEdit, JvDBControls, Mask,
  JvExMask, JvComponent, JvCaptionButton, JvComponentBase, Menus, JvDBLookup, DBGridEhGrouping, JvExControls,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL,
  DBAxisGridsEh;

type
  TfmDocItemType = class(TDualGridForm)
    pnlTop: TPanel;
    pnlDocItemType: TPanel;
    lblDocFileTypeName: TLabel;
    edtDocItemTypeName: TDBEdit;
    edtDocItemTypeCode: TDBEdit;
    lblDocFileTypeCode: TLabel;
    chbIsDNC: TAbmesDBCheckBox;
    cdsGridDataDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsGridDataFILE_EXTENSION_CODE: TAbmesFloatField;
    cdsGridDataFILE_EXTENSION_NAME: TAbmesWideStringField;
    cdsGridDataFILE_EXTENSION_ABBREV: TAbmesWideStringField;
    cdsOtherGridDataDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsOtherGridDataFILE_EXTENSION_CODE: TAbmesFloatField;
    cdsOtherGridDataFILE_EXTENSION_NAME: TAbmesWideStringField;
    cdsOtherGridDataFILE_EXTENSION_ABBREV: TAbmesWideStringField;
    cdsDataDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsDataDOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    cdsDataIS_DNC_DOC: TAbmesFloatField;
    cdsDataDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDataqryDocItemTypeFileExtensions: TDataSetField;
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
  public
    class function CanEditOuterDataSet: Boolean; override;
  end;

implementation

{$R *.dfm}

uses
  uClientTypes, uClientUtils, uUtils, dMain;

{ TfmDocItemType }

class function TfmDocItemType.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmDocItemType.actFormUpdate(Sender: TObject);
var
  c: TColor;
begin
  inherited;
  c:= ReadOnlyColors[EditMode = emReadOnly];

  edtDocItemTypeCode.Color:= c;
  edtDocItemTypeName.Color:= c;
end;

procedure TfmDocItemType.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataDOC_ITEM_TYPE_CODE.AsInteger:= dmMain.SvrDoc.GetNewDocItemTypeCode;
  cdsDataDOC_ITEM_BASE_TYPE_CODE.AsInteger:= 1;
  cdsDataIS_DNC_DOC.AsBoolean:= False;
end;

end.
