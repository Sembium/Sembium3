unit fProductDeptOptions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, Menus, JvButtons, ParamDataSet,
  ActnList, DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  AbmesFields, JvComponent, JvCaptionButton, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions;

type
  TfmProductDeptOptions = class(TBottomButtonGridForm)
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDEPT_NAME: TAbmesWideStringField;
    cdsGridData_DEPT_FULL_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataIS_INHERITED: TAbmesFloatField;                                           
    cdsGridDataPRODUCT_LEVEL: TAbmesFloatField;
    cdsGridDataIS_PSD_PRICE_FROM_DELIVERY: TAbmesFloatField;
    cdsGridDataOVERRIDE_IS_PSD_PRICE_FROM_DLV: TAbmesFloatField;
    cdsGridData_IS_PSD_PRICE_FROM_DELIVERY: TAbmesWideStringField;
    procedure cdsGridDataDEPT_CODEChange(Sender: TField);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
  private
    FProductLevel: Integer;
  protected
    function GetGridRecordReadOnly: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
  public
    ChangeProc: procedure of object;
  end;

implementation

uses
  dMain, fProductDeptOptionEdit, uUtils, uColorConsts, uTreeClientUtils,
  uParRelProducts, uBorderRelTypeClientUtils;

{$R *.dfm}

resourcestring
  SManufactoring = 'Създаване';

{ TfmProductDeptOptions }

procedure TfmProductDeptOptions.cdsGridDataDEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsGridDataDEPT_CODE,
    cdsGridDataDEPT_NAME, cdsGridDataDEPT_IDENTIFIER);
end;

procedure TfmProductDeptOptions.cdsGridDataCalcFields(DataSet: TDataSet);
const
  IsPsdPriceFromDeliveryTexts: array[Boolean] of string =
    (SManufactoring, SBorderRelTypeActionVendor);
begin
  inherited;

  if cdsGridDataDEPT_CODE.IsNull then
    cdsGridData_DEPT_FULL_IDENTIFIER.Clear
  else
    cdsGridData_DEPT_FULL_IDENTIFIER.AsString:=
      Format('%s - %s', [cdsGridDataDEPT_IDENTIFIER.AsString, cdsGridDataDEPT_NAME.AsString]);

  if cdsGridDataIS_PSD_PRICE_FROM_DELIVERY.IsNull then
    cdsGridData_IS_PSD_PRICE_FROM_DELIVERY.Clear
  else
    cdsGridData_IS_PSD_PRICE_FROM_DELIVERY.AsString:=
      IsPsdPriceFromDeliveryTexts[cdsGridDataIS_PSD_PRICE_FROM_DELIVERY.AsBoolean];
end;

procedure TfmProductDeptOptions.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmProductDeptOptionEdit;
end;

procedure TfmProductDeptOptions.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  CheckRequiredField(cdsGridDataDEPT_IDENTIFIER);
  CheckRequiredField(cdsGridDataIS_PSD_PRICE_FROM_DELIVERY);

//  if cdsGridDataOVERRIDE_IS_PSD_PRICE_FROM_DLV.AsBoolean then
//    CheckRequiredField(cdsGridDataIS_PSD_PRICE_FROM_DELIVERY)
//  else
//    cdsGridDataIS_PSD_PRICE_FROM_DELIVERY.Clear;
end;

procedure TfmProductDeptOptions.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  ChangeProc;
end;

procedure TfmProductDeptOptions.cdsGridDataAfterDelete(DataSet: TDataSet);
begin
  inherited;
  ChangeProc;
end;

procedure TfmProductDeptOptions.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataIS_INHERITED.AsBoolean:= False;
  cdsGridDataPRODUCT_LEVEL.AsInteger:= FProductLevel;
  cdsGridDataOVERRIDE_IS_PSD_PRICE_FROM_DLV.AsBoolean:= False;
end;

function TfmProductDeptOptions.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    (inherited GetGridRecordReadOnly) or
    cdsGridDataIS_INHERITED.AsBoolean;
end;

function TfmProductDeptOptions.GetDelRecordEnabled: Boolean;
begin
  Result:=
    (inherited GetDelRecordEnabled) and
    (not cdsGridDataIS_INHERITED.AsBoolean);
end;

procedure TfmProductDeptOptions.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if cdsGridDataIS_INHERITED.AsBoolean and
     not (gdSelected in State) then
    Background:= ccGridTreeInheritedItem;
end;

procedure TfmProductDeptOptions.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  FProductLevel:= MaxInt;

  with cdsGridData do
    if not (Bof and Eof) then
    begin
      DisableControls;
      try
        Last;

        if not cdsGridDataIS_INHERITED.AsBoolean then
          FProductLevel:= cdsGridDataPRODUCT_LEVEL.AsInteger;

        First;
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

end.
