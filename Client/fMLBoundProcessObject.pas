unit fMLBoundProcessObject;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fDBFrame, Db, ImgList, ActnList, StdCtrls, DBClient, Mask, DBCtrls,
  ExtCtrls, JvToolEdit, JvDBControls, AbmesClientDataSet, AbmesFields,
  fBaseFrame, fFieldEditFrame, fDateFieldEditFrame, Buttons, ToolWin,
  ComCtrls, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald;

type
  TfrMLBoundProcessObject = class(TDBFrame)
    cdsData: TAbmesClientDataSet;
    gbProductionOrder: TGroupBox;
    lblStatus: TLabel;
    lblSaleBranchNo: TLabel;
    lblSaleNo: TLabel;
    lblSaleType: TLabel;
    edtStatus: TDBEdit;
    edtSaleBranchNo: TDBEdit;
    edtSaleNo: TDBEdit;
    edtSaleType: TDBEdit;
    gbManagerEmployee: TGroupBox;
    edtManagerEmployeeName: TDBEdit;
    gbProductionStart: TGroupBox;
    lblProductionStartDate: TLabel;
    lblProductionStartReserveDays: TLabel;
    edtStartCoef2: TLabel;
    edtProductionStartReserveDays: TDBEdit;
    edtStartCoef: TDBEdit;
    cdsDataPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataPROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsDataPROCESS_OBJECT_CLASS_CODE: TAbmesFloatField;
    cdsDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsDataSALE_BRANCH_NO: TAbmesFloatField;
    cdsDataSALE_NO: TAbmesFloatField;
    cdsDataSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsDataSALE_PRODUCT_CODE: TAbmesFloatField;
    cdsDataSALE_PRODUCT_NAME: TAbmesWideStringField;
    cdsDataSALE_PRODUCT_NO: TAbmesFloatField;
    cdsDataSALE_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataSALE_MANUFACTURE_QUANTITY: TAbmesFloatField;
    cdsDataSALE_MANUFACTURE_TECH_QUANTITY: TAbmesFloatField;
    cdsDataSALE_MANAGER_CODE: TAbmesFloatField;
    cdsDataSALE_MANAGER_NAME: TAbmesWideStringField;
    cdsDataS_ENTER_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataS_ENTER_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsDataOKIDU_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataSALE_CLIENT_COMPANY_SHORT_NAME: TAbmesWideStringField;
    cdsDataSALE_CLIENT_COUNTRY_ABBREV: TAbmesWideStringField;
    cdsDataSALE_CLIENT_PRODUCT_SIGNATURE: TAbmesWideStringField;
    cdsDataSALE_CLIENT_REQUEST_NO: TAbmesWideStringField;
    cdsDataSALE_PRODUCTION_DEPT_CODE: TAbmesFloatField;
    cdsDataSALE_TRANSIENT_STATUS_CODE: TAbmesFloatField;
    cdsDataSALE_WORKDAYS_TO_EXIST: TAbmesFloatField;
    cdsDataML_STATE_CODE: TAbmesFloatField;
    cdsDataMIN_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsDataPRODUCTION_START_RESERVE_DAYS: TAbmesFloatField;
    cdsDataSTART_STAGE_COEF: TAbmesFloatField;
    cdsDataSHIPMENT_STORE_CODE: TAbmesFloatField;
    frProductionStartDate: TfrDateFieldEditFrame;
    pnlDocs: TToolBar;
    btnDocs: TSpeedButton;
    lblProductionOrderType: TLabel;
    edtProductionOrderType: TDBEdit;
    cdsDataPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsDataINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    cdsDataPRODUCTION_WORKDAYS: TAbmesFloatField;
    cdsDataMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField;
    cdsDataMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField;
    cdsDataMODEL_WORKDAYS: TAbmesFloatField;
    cdsDataIS_WASTE_COMPENSATING_ORDER: TAbmesFloatField;
    cdsDataWASTING_SALE_OBJ_BRANCH_CODE: TAbmesFloatField;
    cdsDataWASTING_SALE_OBJ_CODE: TAbmesFloatField;
    cdsDataWASTING_SALE_BRANCH_NO: TAbmesFloatField;
    cdsDataWASTING_SALE_NO: TAbmesFloatField;
    cdsDataWASTING_ML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataWASTING_ML_OBJECT_CODE: TAbmesFloatField;
    cdsDataSALE_BRANCH_CODE: TAbmesFloatField;
    cdsDataPRIORITY_COLOR: TAbmesFloatField;
    cdsDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_WASTE: TAbmesFloatField;
    cdsDataWASTE_COMPENSATOR_COUNT: TAbmesFloatField;
    cdsDataREAL_PRODUCTION_WORKDAYS: TAbmesFloatField;
    cdsDataSTART_AFTER_LIMITING_DAYS: TAbmesFloatField;
    cdsDataPRIORITY_NO: TAbmesFloatField;
    cdsDataWORK_PRIORITY_NO: TAbmesFloatField;
    cdsDataCOMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    cdsDataMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    cdsDataMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsDataPRODUCTION_START_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsDataPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField;
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsDataML_STATE_CODEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actFrameUpdate(Sender: TObject);
    procedure cdsDataIS_WASTE_COMPENSATING_ORDERGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  public
    procedure Initialize; override;

    procedure CloseDataSets; override;
    procedure SetProcessObject(AProcessObjectBranchCode, AProcessObjectCode: Integer);
  end;

implementation

uses
  dMain, uProcesses, uSaleOrderTypes, uModelUtils, StrUtils;

{$R *.DFM}

resourcestring
  SSale                      = 'ОПП';
  SQuickSale                 = 'ID ОПП';
  SProductionOrder           = 'ID ОПВ';
  SSaleGroup                 = 'Група Продажби';
  SGroupSaleOrder            = 'Ред от Групова Продажба';
  SUnknownProcessObject      = 'Обвързаност - <няма>';
  SUnknownSaleType           = 'Unknown sale type';

{ TfrMLBoundProcessObject }

procedure TfrMLBoundProcessObject.CloseDataSets;
begin
  inherited;
  cdsData.Close;
end;

procedure TfrMLBoundProcessObject.cdsDataAfterOpen(DataSet: TDataSet);
var
  s: string;
begin
  inherited;

  case cdsDataPROCESS_OBJECT_CLASS_CODE.AsInteger of
    pocSale:
      case cdsDataSALE_ORDER_TYPE_CODE.AsInteger of
        sotNormalSaleOrder:
          s:= SSale;
        sotQuickSaleOrder:
          s:= SQuickSale;
        sotProductionOrder:
          s:= SProductionOrder;
        sotCurrentQuantity, sotFutureQuantity:
          s:= SGroupSaleOrder;
        else  { case }
          s:= SUnknownSaleType;
      end;  { case }

    pocSaleGroup:
      s:= SSaleGroup;

    else   { case }
      s:= SUnknownProcessObject;
  end;   { case }

  gbProductionOrder.Caption:= ' ' + s + ' ';
end;

procedure TfrMLBoundProcessObject.SetProcessObject(
  AProcessObjectBranchCode, AProcessObjectCode: Integer);
begin
  with cdsData do
    begin
      with Params do
        begin
          ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').AsInteger:= AProcessObjectBranchCode;
          ParamByName('BND_PROCESS_OBJECT_CODE').AsInteger:= AProcessObjectCode;
        end; { with }

      DisableControls;
      try
        Close;
        Open;
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TfrMLBoundProcessObject.cdsDataML_STATE_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if (Sender.AsInteger >= Low(MLStateNames)) and
     (Sender.AsInteger <= High(MLStateNames)) then
    Text:= MLStateAbbrevs[Sender.AsInteger]
  else
    Text:= '';
end;

procedure TfrMLBoundProcessObject.actFrameUpdate(Sender: TObject);
begin
  inherited;

  frProductionStartDate.actFrameUpdate(Sender);
  frProductionStartDate.ReadOnly:= True;
end;

procedure TfrMLBoundProcessObject.Initialize;
begin
  inherited;
  frProductionStartDate.FieldNames:= 'PRODUCTION_START_PLAN_DATE';
end;

procedure TfrMLBoundProcessObject.cdsDataIS_WASTE_COMPENSATING_ORDERGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:=
    Sender.AsString +
    cdsDataHAS_WASTE.AsString +
    IfThen(cdsDataWASTE_COMPENSATOR_COUNT.AsInteger > 0, '*', '');
end;

end.
