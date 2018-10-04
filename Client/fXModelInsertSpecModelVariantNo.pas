unit fXModelInsertSpecModelVariantNo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, Menus, JvButtons, ImgList, ParamDataSet, ActnList,
  Db, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesFields, ComCtrls,
  ToolWin, dDocClient, JvComponentBase, JvCaptionButton, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  System.Actions, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TfmXModelInsertSpecModelVariantNo = class(TGridForm)
    cdsGridDataSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsGridDataMAIN_DEPT_CODE: TAbmesFloatField;
    cdsGridDataMAIN_DEPT_NAME: TAbmesWideStringField;
    cdsGridDataMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataRESULT_STORE_CODE: TAbmesFloatField;
    cdsGridDataMIN_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataMAX_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataAUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataAUTHORIZATION_DATE: TAbmesSQLTimeStampField;
    cdsGridDataAUTHORIZATION_EMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataNOTES: TAbmesWideStringField;
    cdsGridDataIS_EST_VARIANT: TAbmesFloatField;
    cdsGridDataAUTHORIZATION_OF_OPERATIONS: TAbmesFloatField;
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure grdDataDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FSpecProductCode: Integer;
    FToDate: TDateTime;
    FSpecModelVariantNo: Integer;
    FMainDeptCode: Integer;
    FTechQuantity: Real;
    FIsOperationsModel: Boolean;
  public
    class function GetSpecModelVariantNo(AdmDocClient: TdmDocClient;
      ASpecProductCode: Integer; AToDate: TDateTime; AMainDeptCode: Integer = 0;
      ATechQuantity: Real = 0; AIsOperationsModel: Boolean = False): Integer;
  end;

implementation

uses
  dMain, uClientTypes;

{$R *.DFM}

{ TfmXModelInsertSpecModelVariantNo }

class function TfmXModelInsertSpecModelVariantNo.GetSpecModelVariantNo(
  AdmDocClient: TdmDocClient; ASpecProductCode: Integer; AToDate: TDateTime;
  AMainDeptCode: Integer; ATechQuantity: Real; AIsOperationsModel: Boolean): Integer;
var
  f: TfmXModelInsertSpecModelVariantNo;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, nil, emEdit, doNone, False);
    f.FSpecProductCode:= ASpecProductCode;
    f.FToDate:= AToDate;
    f.FMainDeptCode:= AMainDeptCode;
    f.FTechQuantity:= ATechQuantity;
    f.FIsOperationsModel:= AIsOperationsModel;
    f.InternalShowForm;
    Result:= f.FSpecModelVariantNo;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmXModelInsertSpecModelVariantNo.cdsGridDataBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('SPEC_PRODUCT_CODE').AsFloat:= FSpecProductCode;
  cdsGridData.Params.ParamByName('TO_DATE').AsDateTime:= FToDate;

  if (FMainDeptCode > 0) then
    cdsGridData.Params.ParamByName('MAIN_DEPT_CODE').AsInteger:= FMainDeptCode;

  if (FTechQuantity > 0) then
    cdsGridData.Params.ParamByName('TECH_QUANTITY').AsFloat:= FTechQuantity;

  cdsGridData.Filtered:= FIsOperationsModel;
end;

procedure TfmXModelInsertSpecModelVariantNo.grdDataDblClick(
  Sender: TObject);
begin
  if (cdsGridData.RecordCount > 0) then
    ModalResult:= mrOk;
end;

procedure TfmXModelInsertSpecModelVariantNo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModalResult = mrOK) then
    begin
      if (cdsGridData.RecordCount > 0) then
        FSpecModelVariantNo:= cdsGridDataSPEC_MODEL_VARIANT_NO.AsInteger
      else
        Abort;
    end   { if }
  else
    FSpecModelVariantNo:= 0;

  inherited;
end;

end.
