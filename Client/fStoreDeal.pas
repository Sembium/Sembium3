unit fStoreDeal;
                       
interface                        
                  
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  JvDBLookup, Mask, DBCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeSelectForm,                                                                        
  fStoreDealProcessBinding, fProcessBindingFrame, JvToolEdit, JvDBControls,
  AbmesClientDataSet, AbmesFields, Menus, JvButtons, AbmesReport,
  fEditForm, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, fProductFieldEditFrame, fDateFieldEditFrame,
  JvExControls, JvComponent, JvCaptionButton, ToolWin, ComCtrls,
  JvComponentBase, fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald,
  uProducts, dDocClient, uUtils, uSection, System.Actions;

type
  TfmStoreDeal = class(TEditForm)
    cdsDataSTORE_CODE: TAbmesFloatField;
    cdsDataSTORE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataWANTED_QUANTITY: TAbmesFloatField;
    cdsDataQUANTITY: TAbmesFloatField;
    cdsDataACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDataCURRENCY_CODE: TAbmesFloatField;
    cdsDataTOTAL_PRICE: TAbmesFloatField;
    cdsDataSTORE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataOTHER_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataREQUEST_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataDEPT_CODE: TAbmesFloatField;
    cdsDataWORK_ORDER_NO: TAbmesWideStringField;
    cdsDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    cdsDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataSTORNO_DATE: TAbmesSQLTimeStampField;
    cdsDataSTORNO_TIME: TAbmesSQLTimeStampField;
    cdsDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    cdsData_STORE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsData_OTHER_EMPLOYEE_CODE: TAbmesWideStringField;
    cdsData_REQUEST_EMPLOYEE_CODE: TAbmesWideStringField;
    cdsMeasures: TAbmesClientDataSet;
    cdsDataSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    cdsDataSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsDataBND_PROCESS_CODE: TAbmesFloatField;
    cdsDataOLD_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataOLD_DEAL_OBJECT_CODE: TAbmesFloatField;
    cdsDataPRODUCT_MEASURE_CODE: TAbmesFloatField;
    cdsDataPRODUCT_ACC_MEASURE_CODE: TAbmesFloatField;
    cdsData_PRODUCT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsData_PRODUCT_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataPRODUCT_NO: TAbmesFloatField;
    cdsDataPRODUCT_NAME: TAbmesWideStringField;
    cdsDataPRODUCT_ACC_MEASURE_COEF: TAbmesFloatField;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsProcesses: TAbmesClientDataSet;
    cdsData_BND_PROCESS_ABBREV: TAbmesWideStringField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsData_PLANNED_STORE_DEAL_BRANCH_NAME: TAbmesWideStringField;
    cdsData_BND_PROCESS_NAME: TAbmesWideStringField;
    pnlClient: TPanel;
    pnlStoreDealID: TPanel;
    grpStoreDealID: TGroupBox;
    lblDealNo: TLabel;
    lblTreeNodeName: TLabel;
    lblDealDate: TLabel;
    edtDealNo: TDBEdit;
    pnlProductAndPrice: TPanel;
    gbProduct: TGroupBox;
    lblAccQuantity: TLabel;
    lblQuantity: TLabel;
    dbtMeasure: TDBText;
    dbtAccMeasure: TDBText;
    edtQuantity: TDBEdit;
    edtAccQuantity: TDBEdit;
    pnlEmployees: TPanel;
    gbResponsibleEmployees: TGroupBox;
    lblRequestEmployee: TLabel;
    lblStoreEmployee: TLabel;
    lblOtherEmployee: TLabel;
    cdsDataSTORE_DEAL_NO: TAbmesFloatField;
    cdsDataSINGLE_PRICE: TAbmesFloatField;
    cdsDataSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsDataSTORE_REQUEST_CODE: TAbmesFloatField;
    cdsDataSTORE_REQUEST_ITEM_CODE: TAbmesFloatField;
    cdsDataDEPT_NAME: TAbmesWideStringField;
    cdsDataDEPT_NO: TAbmesWideStringField;
    cdsDataVENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsDataINVOICE_NO: TAbmesFloatField;
    cdsDataINVOICE_DATE: TAbmesSQLTimeStampField;
    cdsData_ACCOUNT_QUANTITY: TAbmesFloatField;
    smrBoundProcess: TAbmesMatrixReport;
    smrStoreDealData: TAbmesMatrixReport;
    mdsBoundProcess: TAbmesClientDataSet;
    dsBoundProcess: TDataSource;
    mdsBoundProcessBND_PROCESS_IDENTIFICATION: TAbmesWideStringField;
    mdsBoundProcessBND_PROCESS_ABBREV: TAbmesWideStringField;
    pnlBottomStuff: TPanel;
    pnlPrintButton: TPanel;
    btnPrint: TBitBtn;
    pnlPrintCheckbox: TPanel;
    chkPrint: TCheckBox;
    btnStorno: TBitBtn;
    smrStoreDealHeader: TAbmesMatrixReport;
    smrStoreDealWasteBoundHeader: TAbmesMatrixReport;
    cdsDataPRODUCT_ESTIMATED_SEC_PRICE: TAbmesFloatField;
    pnlDept: TPanel;
    cdsDataINVOICE_ABBREV: TAbmesWideStringField;
    cdsDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsDataIS_WASTE_BOUND: TAbmesFloatField;
    cdsDataIS_PROFORM_INVOICE: TAbmesFloatField;
    cdsDataIN_OUT: TAbmesFloatField;
    cdsData_STORNO_STATE: TAbmesWideStringField;
    frStore: TfrDeptFieldEditFrameBald;
    cdsDataSTORE_IDENTIFIER: TAbmesWideStringField;
    frDept: TfrDeptFieldEditFrame;
    frProduct: TfrProductFieldEditFrame;
    frDealDate: TfrDateFieldEditFrame;
    cdsDataSTORE_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataSTORE_END_DATE: TAbmesSQLTimeStampField;
    cdsDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataEND_DATE: TAbmesSQLTimeStampField;
    frStoreDealProcessBinding: TfrStoreDealProcessBinding;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    frRequestEmployee: TfrEmployeeFieldEditFrameBald;
    frStoreEmployee: TfrEmployeeFieldEditFrameBald;
    frOtherEmployee: TfrEmployeeFieldEditFrameBald;
    cdsEmployeeFrameAllEmployees: TAbmesClientDataSet;
    cdsProcessesPROCESS_CODE: TAbmesFloatField;
    cdsProcessesPROCESS_NO: TAbmesFloatField;
    cdsProcessesPROCESS_ABBREV: TAbmesWideStringField;
    cdsProcessesPROCESS_NAME: TAbmesWideStringField;
    cdsProcessesIS_INBOUND_PROCESS: TAbmesFloatField;
    cdsProcessesIS_OUTBOUND_PROCESS: TAbmesFloatField;
    mdsBoundProcess_PRINT_BND_PROCESS_ID: TAbmesWideStringField;
    cdsProductData: TAbmesClientDataSet;
    cdsProductDataNODE_NO: TAbmesFloatField;
    cdsProductDataNODE_NAME: TAbmesWideStringField;
    cdsProductDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsProductDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsProductDataESTIMATED_SECONDARY_PRICE: TAbmesFloatField;
    cdsProductDataWORK_MEASURE_CODE: TAbmesFloatField;
    actManualDealDate: TAction;
    tlbManualDealDate: TToolBar;
    btnManualDealDate: TToolButton;
    procedure cdsDataPRODUCT_CODEChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsDataDEPT_CODEChange(Sender: TField);
    procedure actFormUpdate(Sender: TObject);
    procedure btnStornoClick(Sender: TObject);
    procedure cdsDataSTORE_EMPLOYEE_CODEChange(Sender: TField);
    procedure cdsDataOTHER_EMPLOYEE_CODEChange(Sender: TField);
    procedure cdsDataREQUEST_EMPLOYEE_CODEChange(Sender: TField);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure smrBoundProcessBeforePrint(Sender: TObject;
      var ToPrint: Boolean);
    procedure smrBoundProcessAfterPrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsDataBND_PROCESS_OBJECT_BRANCH_CODEChange(Sender: TField);
    procedure cdsDataBND_PROCESS_OBJECT_CODEChange(Sender: TField);
    procedure cdsDataBND_PROCESS_CODEChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataSTORE_CODEChange(Sender: TField);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure btnDocsClick(Sender: TObject);
    procedure mdsBoundProcessCalcFields(DataSet: TDataSet);
    procedure actManualDealDateUpdate(Sender: TObject);
    procedure actManualDealDateExecute(Sender: TObject);
    procedure cdsDataSTORE_DEAL_DATEChange(Sender: TField);
    procedure smrStoreDealDataGetFieldValues(Sender: TObject; FieldValues: TReportFieldValues);
  private
    FOriginalFormCaption: string;
    FBndProcessObjectBranchCode: Integer;
    FBndProcessObjectCode: Integer;
    FBndProcessCode: Integer;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FUnapprovedDocItemCount: Integer;
    FIsStoreComputerized: Boolean;
    FStartBndProcessCode: Integer;
    FChangingBndProcessObject: TTrySinglePassSection;
    FStartStoreDealDate: TDateTime;
    procedure CheckBoundObjectAndUpdateState;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure CheckStore;
    function IsDeptFinStore(AStoreCode: Integer): Boolean;
  protected
    FProductClass: TProductClass;
    FStoreDealTypeCode: Integer;
    FInOut: Integer;
    FDefaultProcessCode: Integer;
    FClientPanelEnabled: Boolean;
    FStoreDealDateReadOnly: Boolean;
    FMsgParams: TStrings;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetOriginalFormCaption: string; override;
    procedure DoBeforeShow; override;
    function GetPrintEnabled: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure SetReadOnly(b: Boolean); virtual;
    procedure CheckBoundObject; virtual;
    procedure DoApplyUpdates; override;
    class function CanUseDocs: Boolean; override;
    function IsQuantityField(const AField: TAbmesFloatField): Boolean; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AProductClass: TProductClass= pcNone); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AProductClass: TProductClass= pcNone): Boolean;

    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

procedure CheckNewStoreDealUserActivities(AInOut: Integer; AStoreCode: Integer; AProductClass: TProductClass);

implementation

uses
  dMain, uProcesses, AbmesDialogs, uTreeClientUtils, uClientUtils, Math,
  uDocUtils, uProductClientUtils, uClientDateTime, uDealTypes,
  uUserActivityConsts, uClientAppResources;

{$R *.DFM}

resourcestring
  SStoreDealDateOutsideDeptDates = 'Датата на Постъплението/Тегленето е извън ВрмИнт на активност на ТП от втора страна на Постъплението/Тегленето';
  SStoreDealDateOutsideStoreDates = 'Датата на Постъплението/Тегленето е извън ВрмИнт на активност на ТП Задържащото';
  SStoreDealSaved = 'Постъплението/Тегленето е записано под номер %d';
  SStorno = 'Анулирано';
  SNoCurrentStoreCode = ' Не е въведено текущо ТП Задържащо!';
  SModalResultNotSupported = 'Modal Result not supported!';
  SIncorrectEmplyeeCode = 'Не съществува служител с такъв код!';
  SQuantitiesMustBePositive = 'Количествата не могат да бъдат отрицателни или нула';
  SDealDateCannotBeFuture = 'Не можете да запишете Постъпление или Теглене за бъдеща дата';
  SConfirmStorno = 'Анулиране с оставане на екран?';
  SCannotLinkWithAnnuledMLL = 'Не можете да обвържете Постъплението/Тегленето с анулиран ред от МОДЕл';
  SProformAbbrev = 'Проформа';
  SCantApplyWithUnapprovedDocItems = 'Не можете да запишете Постъпление или Теглене с неутвърдени ИИО!';
  SFinStoreRequired = 'Постъпления или Тегления на Финансови Обекти са допустими само за Финансово ТП Задържащо';
  SCantCreateNK = 'Не можете да създавате движение с обвързаност "НКЗ"!';
  SCantChangeNK = 'Не можете да сменяте обвързаност "НКЗ" с друга обвързаност!';

const
  PastStoreDealUserActivityCodes: array[TProductClass] of Integer =
    (0, uaNewPastStoreDeal, uaNewPastFinStoreDeal, 0);

procedure CheckNewStoreDealUserActivities(AInOut: Integer; AStoreCode: Integer; AProductClass: TProductClass);
const
  NewStoreDealActivities: array[TProductClass, ioOut..ioIn] of Integer =
    ( (0, 0, 0),
      (uaNewStoreDealOut, 0, uaNewStoreDealIn),
      (uaNewFinStoreDealOut, 0, uaNewFinStoreDealIn),
      (0, 0, 0)
    );
  NewWorkStoreDealActivities: array[TProductClass, ioOut..ioIn] of Integer =
    ( (0, 0, 0),
      (uaNewWorkStoreDealOut, 0, uaNewWorkStoreDealIn),
      (uaNewFinWorkStoreDealOut, 0, uaNewFinWorkStoreDealIn),
      (0, 0, 0)
    );
begin
  if not dmMain.LoginContext.HasUserActivity(NewStoreDealActivities[AProductClass, AInOut]) then
    begin
      dmMain.LoginContext.CheckUserActivity(NewWorkStoreDealActivities[AProductClass, AInOut]);
      dmMain.LoginContext.CheckUserWorkDept(AStoreCode);
    end;  { if }
end;

{ TfmStoreDeal }

procedure TfmStoreDeal.OpenDataSets;
var
  SaveCursor: TCursor;
begin
  frStoreDealProcessBinding.cdsProcesses.Params.ParamByName('IS_FINANCIAL_PROCESS').AsInteger:=
    ProductClassToInt(FProductClass) - 1;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    cdsMeasures.Open;
    cdsProcesses.Open;
    cdsBranches.Open;
  finally
    Screen.Cursor:= SaveCursor;
  end;

  inherited;
end;

procedure TfmStoreDeal.CloseDataSets;
begin
  inherited;

  cdsMeasures.Close;
  cdsProcesses.Close;
  cdsBranches.Close;
end;

procedure TfmStoreDeal.cdsDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  cdsProductData.Params.ParamByName('NODE_ID').AsVarInteger:= Sender.AsInteger;
  cdsProductData.TempOpen/
    procedure begin
      cdsDataPRODUCT_NO.Assign(cdsProductDataNODE_NO);
      cdsDataPRODUCT_NAME.Assign(cdsProductDataNODE_NAME);
      cdsDataPRODUCT_MEASURE_CODE.Assign(cdsProductDataWORK_MEASURE_CODE);
      cdsDataPRODUCT_ACC_MEASURE_CODE.Assign(cdsProductDataACCOUNT_MEASURE_CODE);
      cdsDataPRODUCT_ACC_MEASURE_COEF.Assign(cdsProductDataACCOUNT_MEASURE_COEF);
      cdsDataPRODUCT_ESTIMATED_SEC_PRICE.Assign(cdsProductDataESTIMATED_SECONDARY_PRICE);
    end;
end;

procedure TfmStoreDeal.FormShow(Sender: TObject);
begin
  inherited;

  case EditMode of
    emEdit:
      begin
        pnlClose.Visible:= True;
        pnlOKCancel.Visible:= False;
      end;

    emInsert:
      begin
        btnStorno.Enabled:= False;
        pnlClose.Visible:= False;
        pnlOKCancel.Visible:= True;
      end;

    emReadOnly:
      begin
        btnStorno.Enabled:= False;
        pnlClose.Visible:= True;
        pnlOKCancel.Visible:= False;
      end;
  end;

  frProduct.TreeDetailSelection:= tdsInstance;

  CheckBoundObjectAndUpdateState;
end;

function TfmStoreDeal.IsDeptFinStore(AStoreCode: Integer): Boolean;
var
  DummyString: string;
  DummyInteger: Integer;
  DummyBoolean: Boolean;
  DummyDateTime: TDateTime;
begin
  if (AStoreCode = LoginContext.CurrentDeptCode) then
    Result:= LoginContext.CurrentDeptIsFinStore
  else
    dmMain.SvrDeptsTree.GetDeptData(AStoreCode, DummyString, DummyString, DummyBoolean, DummyInteger, DummyInteger,
      DummyBoolean, DummyDateTime, DummyDateTime, DummyBoolean, Result, DummyBoolean);
end;

function TfmStoreDeal.IsQuantityField(const AField: TAbmesFloatField): Boolean;
begin
  Result:= False;
end;

procedure TfmStoreDeal.CheckStore;
begin
  if (cdsDataSTORE_CODE.AsInteger = 0) then
    raise Exception.Create(SNoCurrentStoreCode);

  if not dmMain.SvrDeptsTree.IsDeptStore(cdsDataSTORE_CODE.AsInteger) then
    if (cdsDataSTORE_CODE.AsInteger = LoginContext.CurrentDeptCode) then
      raise Exception.Create(SCurrentDeptIsNotStore)
    else
      raise Exception.Create(SChosenDeptIsNotStore);

  if (FProductClass = pcFinancial) and not IsDeptFinStore(cdsDataSTORE_CODE.AsInteger) then
    raise Exception.Create(SFinStoreRequired);
end;

procedure TfmStoreDeal.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsData.FieldByName('IS_WASTE_BOUND').AsBoolean:= False;
  cdsData.FieldByName('IS_PROFORM_INVOICE').AsBoolean:= False;
  cdsDataHAS_DOC_ITEMS.AsBoolean:= False;

  // moje da ima defaulti otvyn
  if cdsDataSTORE_CODE.IsNull then
    cdsDataSTORE_CODE.AsInteger:= LoginContext.CurrentDeptCode;

  if cdsDataBND_PROCESS_CODE.IsNull then
    cdsDataBND_PROCESS_CODE.AsInteger:= FDefaultProcessCode;

  if cdsDataSTORE_DEAL_DATE.IsNull then
    cdsDataSTORE_DEAL_DATE.AsDateTime:= ContextDate;

  if cdsDataSTORE_DEAL_TYPE_CODE.IsNull then
    cdsDataSTORE_DEAL_TYPE_CODE.AsInteger:= FStoreDealTypeCode;
end;

procedure TfmStoreDeal.cdsDataDEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(Sender, cdsDataDEPT_NAME, cdsDataDEPT_NO, nil, nil, nil, nil,
    cdsDataBEGIN_DATE, cdsDataEND_DATE);
end;

procedure TfmStoreDeal.DoBeforeShow;
begin
  inherited;
  FClientPanelEnabled:= (EditMode = emInsert);
end;

class function TfmStoreDeal.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmStoreDeal.actFormUpdate(Sender: TObject);
begin
  inherited;

  SetReadOnly(not FClientPanelEnabled);
  pnlPrintCheckbox.Visible:= (cdsData.State in dsEditModes);
  pnlPrintButton.Visible:= not (cdsData.State in dsEditModes);

  edtDealNo.Color:= ReadOnlyColors[edtDealNo.ReadOnly];

  btnDocs.ImageIndex:= cdsDataHAS_DOC_ITEMS.AsInteger;

  tlbManualDealDate.Visible:= FIsStoreComputerized;
end;

procedure TfmStoreDeal.actManualDealDateExecute(Sender: TObject);
begin
  inherited;

  LoginContext.CheckUserActivity(PastStoreDealUserActivityCodes[FProductClass]);

  with Sender as TAction do
    begin
      Checked:= not Checked;
      btnManualDealDate.Down:= Checked;
    end;
end;

procedure TfmStoreDeal.actManualDealDateUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= FIsStoreComputerized and FClientPanelEnabled;
end;

procedure TfmStoreDeal.btnStornoClick(Sender: TObject);
var
  DialogResult: Word;
begin
  inherited;

  Assert(cdsDataSTORNO_DATE.IsNull);

  DialogResult:=
    MessageDlgEx(SConfirmStorno, mtConfirmation, mbYesNoCancel, 0);

  case DialogResult of
    mrCancel:;
    mrYes:
      begin
        cdsData.Edit;

        FClientPanelEnabled:= True;
        pnlOKCancel.Visible:= True;
        pnlClose.Visible:= False;

        btnStorno.Enabled:= False;

        CheckBoundObject;

        // novo iio kato staroto
        if not cdsDataDOC_CODE.IsNull then
          begin
            cdsDataDOC_CODE.AsInteger:=
              dmDocClient.CreateDocLike(cdsDataDOC_BRANCH_CODE.AsInteger, cdsDataDOC_CODE.AsInteger, True);
            cdsDataDOC_BRANCH_CODE.AsInteger:= LoginContext.LocalBranchCode;
          end;
      end;
    mrNo:
      begin
        cdsData.Edit;
        cdsDataSTORNO_DATE.AsDateTime:= ContextDate;  // za da razbere Server-a, che stornirame bez ostavane na ekran

        ModalResult:= mrOK;

        btnStorno.Enabled:= False;
      end;
  else
    raise Exception.Create(SModalResultNotSupported);
  end;
end;

procedure TfmStoreDeal.cdsDataSTORE_EMPLOYEE_CODEChange(Sender: TField);
begin
  inherited;

  if (not cdsDataSTORE_EMPLOYEE_CODE.IsNull) and cdsData_STORE_EMPLOYEE_NAME.IsNull then
    begin
      cdsDataSTORE_EMPLOYEE_CODE.Clear;
      raise Exception.Create(SIncorrectEmplyeeCode);
    end;
end;

procedure TfmStoreDeal.cdsDataOTHER_EMPLOYEE_CODEChange(Sender: TField);
begin
  inherited;

  if (not cdsDataOTHER_EMPLOYEE_CODE.IsNull) and cdsData_OTHER_EMPLOYEE_CODE.IsNull then
    begin
      cdsDataOTHER_EMPLOYEE_CODE.Clear;
      raise Exception.Create(SIncorrectEmplyeeCode);
    end;
end;

procedure TfmStoreDeal.cdsDataREQUEST_EMPLOYEE_CODEChange(Sender: TField);
begin
  inherited;

  if (not cdsDataREQUEST_EMPLOYEE_CODE.IsNull) and cdsData_REQUEST_EMPLOYEE_CODE.IsNull then
    begin
      cdsDataREQUEST_EMPLOYEE_CODE.Clear;
      raise Exception.Create(SIncorrectEmplyeeCode);
    end;
end;

procedure TfmStoreDeal.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (cdsDataSTORE_DEAL_DATE.AsDateTime < cdsDataSTORE_BEGIN_DATE.AsDateTime) or
     ( not cdsDataSTORE_END_DATE.IsNull and
       (cdsDataSTORE_DEAL_DATE.AsDateTime > cdsDataSTORE_END_DATE.AsDateTime) )then
    raise Exception.Create(SStoreDealDateOutsideStoreDates);

  if not cdsDataDEPT_CODE.IsNull and
     ( (cdsDataSTORE_DEAL_DATE.AsDateTime < cdsDataBEGIN_DATE.AsDateTime) or
       ( not cdsDataEND_DATE.IsNull and
         (cdsDataSTORE_DEAL_DATE.AsDateTime > cdsDataEND_DATE.AsDateTime) ) ) then
    raise Exception.Create(SStoreDealDateOutsideDeptDates);

  if (cdsDataSTORE_DEAL_DATE.AsDateTime > ContextDate) then
    raise Exception.Create(SDealDateCannotBeFuture);

  if (cdsDataQUANTITY.AsFloat <= 0) or
     (cdsDataACCOUNT_QUANTITY.AsFloat <= 0) then
    raise Exception.Create(SQuantitiesMustBePositive);

  case cdsDataBND_PROCESS_CODE.AsInteger of
    pOPWithMLL:
      begin
        CheckRequiredFields([
          cdsDataBND_PROCESS_OBJECT_BRANCH_CODE,
          cdsDataBND_PROCESS_OBJECT_CODE]);

//        if not frStoreDealProcessBinding.frMLLProcessObject.cdsProcessObjectCustomIDANNUL_EMPLOYEE_CODE.IsNull then
//          raise Exception.Create(SCannotLinkWithAnnuledMLL);
      end;

    pDCD, pPD, pOPWithSale, pEXP, pOPWithoutMLL, pBPOItem:
      CheckRequiredFields([
        cdsDataBND_PROCESS_OBJECT_BRANCH_CODE,
        cdsDataBND_PROCESS_OBJECT_CODE]);

    pSimplePD:
      CheckRequiredFields([
        cdsDataVENDOR_COMPANY_CODE,
        cdsDataINVOICE_NO,
        cdsDataINVOICE_DATE]);

    pPESN:
      CheckRequiredField(cdsDataDEPT_CODE);
  end;

  if (FProductClass = pcFinancial) then
    begin
      CheckRequiredField(cdsDataBND_PROCESS_CODE);
      if (cdsDataBND_PROCESS_CODE.AsInteger <> pINV) then
        CheckRequiredFields([cdsDataBND_PROCESS_OBJECT_BRANCH_CODE, cdsDataBND_PROCESS_OBJECT_CODE]);
    end;  { if }
end;

procedure TfmStoreDeal.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if (cdsDataQUANTITY.IsNull or cdsDataPRODUCT_ACC_MEASURE_COEF.IsNull) then
    cdsData_ACCOUNT_QUANTITY.Clear
  else
    cdsData_ACCOUNT_QUANTITY.AsFloat:=
      cdsDataQUANTITY.AsFloat * cdsDataPRODUCT_ACC_MEASURE_COEF.AsFloat;

  if cdsDataSTORNO_EMPLOYEE_CODE.IsNull then
    cdsData_STORNO_STATE.Clear
  else
    cdsData_STORNO_STATE.AsString:= SStorno;
end;

procedure TfmStoreDeal.actPrintExecute(Sender: TObject);
begin
  if cdsDataIS_WASTE_BOUND.AsBoolean then
    smrStoreDealWasteBoundHeader.Print(True)
  else
    smrStoreDealHeader.Print(True);
end;

function TfmStoreDeal.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

function TfmStoreDeal.GetPrintEnabled: Boolean;
begin
  Result:= True;
end;

procedure TfmStoreDeal.smrBoundProcessBeforePrint(Sender: TObject; var ToPrint: Boolean);
begin
  inherited;

  mdsBoundProcess.CreateDataSet;
  CheckEditMode(mdsBoundProcess);

  mdsBoundProcessBND_PROCESS_ABBREV.AsVariant:=
    frStoreDealProcessBinding.cdsProcesses.Lookup('PROCESS_CODE', cdsDataBND_PROCESS_CODE.AsInteger, 'PROCESS_ABBREV');

  if (cdsDataBND_PROCESS_CODE.AsInteger in [pINV, pPESN, pNSR, pPEK, pOKMP, pOKPP, pORPO]) then
    mdsBoundProcessBND_PROCESS_IDENTIFICATION.Assign(cdsDataWORK_ORDER_NO)
  else
    mdsBoundProcessBND_PROCESS_IDENTIFICATION.AsString:=
      dmMain.SvrStore.GetBoundProcessIdentification(
        cdsDataSTORE_DEAL_OBJECT_BRANCH_CODE.AsInteger,
        cdsDataSTORE_DEAL_OBJECT_CODE.AsInteger,
        SProformAbbrev);
end;

procedure TfmStoreDeal.smrStoreDealDataGetFieldValues(Sender: TObject; FieldValues: TReportFieldValues);
begin
  inherited;
  FieldValues.Values['COMPANY_SHORT_NAME']:= LoginContext.CompanyShortName;
  FieldValues.Values['AppName']:= SAppName;
end;

procedure TfmStoreDeal.smrBoundProcessAfterPrint(Sender: TObject);
begin
  inherited;
  mdsBoundProcess.Close;
end;

procedure TfmStoreDeal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (ModalResult = mrOk) and pnlPrintCheckbox.Visible and chkPrint.Checked then
    actPrint.Execute;
end;

procedure TfmStoreDeal.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass);
begin
  FProductClass:= AProductClass;
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
end;

procedure TfmStoreDeal.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
//  inherited;

  if (AFrame = frStore) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  if (AFrame = frDealDate) then
    begin
      AFrame.ReadOnly:= FStoreDealDateReadOnly;
      Exit;
    end;

  if (AFrame = frStoreDealProcessBinding) then
    begin
      AFrame.ReadOnly:=
        (EditMode = emReadOnly) or
        not FClientPanelEnabled or
        ((DefaultsOrigin = doDataSet) and not cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.IsNull);

      Exit;
    end;

  AFrame.ReadOnly:= (EditMode = emReadOnly) or not FClientPanelEnabled;
end;

procedure TfmStoreDeal.SetReadOnly(b: Boolean);
begin
  FStoreDealDateReadOnly:=
    b or
    (FIsStoreComputerized and not actManualDealDate.Checked);
  edtDealNo.ReadOnly:= FIsStoreComputerized or b;
  edtQuantity.ReadOnly:= b;
  edtAccQuantity.ReadOnly:= b;
end;

class function TfmStoreDeal.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass): Boolean;
var
  f: TfmStoreDeal;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmStoreDeal.CheckBoundObject;
begin
  // do nothing
end;

procedure TfmStoreDeal.cdsDataBND_PROCESS_OBJECT_BRANCH_CODEChange(
  Sender: TField);
begin
  inherited;
  FChangingBndProcessObject.TempEnter/
    procedure begin
      CheckBoundObjectAndUpdateState;
    end;
end;

procedure TfmStoreDeal.cdsDataBND_PROCESS_OBJECT_CODEChange(
  Sender: TField);
begin
  inherited;
  FChangingBndProcessObject.TempEnter/
    procedure begin
      CheckBoundObjectAndUpdateState;
    end;
end;

procedure TfmStoreDeal.cdsDataBND_PROCESS_CODEChange(Sender: TField);
begin
  inherited;
  FChangingBndProcessObject.TempEnter/
    procedure begin
      CheckBoundObjectAndUpdateState;
    end;
end;

procedure TfmStoreDeal.FormCreate(Sender: TObject);
begin
  inherited;

  cdsEmployeeFrameAllEmployees.Open;

  frStore.FieldNames:= 'STORE_CODE';
  frDealDate.FieldNames:= 'STORE_DEAL_DATE';
  frRequestEmployee.FieldNames:= 'REQUEST_EMPLOYEE_CODE';
  frRequestEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;
  frStoreEmployee.FieldNames:= 'STORE_EMPLOYEE_CODE';
  frStoreEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;
  frOtherEmployee.FieldNames:= 'OTHER_EMPLOYEE_CODE';
  frOtherEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsDataSINGLE_PRICE,
      cdsDataTOTAL_PRICE]);
end;

class function TfmStoreDeal.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmStoreDeal.cdsDataSTORE_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsDataSTORE_CODE, nil, cdsDataSTORE_IDENTIFIER, nil, nil, nil, nil,
    cdsDataSTORE_BEGIN_DATE, cdsDataSTORE_END_DATE);
end;

procedure TfmStoreDeal.cdsDataSTORE_DEAL_DATEChange(Sender: TField);
begin
  inherited;
  cdsDataSTORE_DEAL_NO.Value:=
    dmMain.SvrStore.GetNewStoreDealNo(cdsDataSTORE_CODE.AsInteger, cdsDataSTORE_DEAL_DATE.AsDateTime, FStoreDealTypeCode);
end;

procedure TfmStoreDeal.CheckBoundObjectAndUpdateState;
begin
  if not (
       (cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger = FBndProcessObjectBranchCode) and
       (cdsDataBND_PROCESS_OBJECT_CODE.AsInteger = FBndProcessObjectCode) and
       (cdsDataBND_PROCESS_CODE.AsInteger = FBndProcessCode)
     ) then
    begin
      try
        CheckBoundObject;
      except
        cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.Clear;
        cdsDataBND_PROCESS_OBJECT_CODE.Clear;
        raise;
      end;

      FBndProcessObjectBranchCode:= cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger;
      FBndProcessObjectCode:= cdsDataBND_PROCESS_OBJECT_CODE.AsInteger;
      FBndProcessCode:= cdsDataBND_PROCESS_CODE.AsInteger;
    end;
end;

procedure TfmStoreDeal.actApplyUpdatesExecute(Sender: TObject);
var
  StoreDealNo: Integer;
begin
  StoreDealNo:= cdsDataSTORE_DEAL_NO.AsInteger;
  inherited;
  if (StoreDealNo <> cdsDataSTORE_DEAL_NO.AsInteger) then
    ShowMessageFmtEx(SStoreDealSaved, [cdsDataSTORE_DEAL_NO.AsInteger]);
end;

procedure TfmStoreDeal.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmStoreDeal.btnDocsClick(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if btnStorno.Enabled then
    em:= emReadOnly
  else
    em:= EditMode;

  dmDocClient.DSOpenDoc(em, btnDocs, dotStoreDeal, cdsData);
end;

procedure TfmStoreDeal.dmDocClientOnDataChanged(Sender: TObject);
var
  DocItemCount: Integer;
  ActiveDocItemCount: Integer;
begin
  if dmDocClient.DSIsCurrent(cdsData) then
    begin
      DocItemCount:= dmDocClient.DSDocItemCount(cdsData, False);
      ActiveDocItemCount:= dmDocClient.DSDocItemCount(cdsData, True);
      FUnapprovedDocItemCount:=
        ActiveDocItemCount - dmDocClient.DSApprovedDocItemCount(cdsData, True);

      CheckEditMode(cdsData);
      cdsDataHAS_DOC_ITEMS.AsBoolean:= (DocItemCount > 0);
    end;
end;

procedure TfmStoreDeal.Initialize;
begin
  inherited Initialize;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  Assert(FProductClass in [pcNormal, pcFinancial]);

  frProduct.ProductClass:= FProductClass;
  frStoreDealProcessBinding.frDeficitCoverDecisionProcessObject.ProductClass:= FProductClass;
  frStoreDealProcessBinding.frDeliveryProcessObject.ProductClass:= FProductClass;
  frStoreDealProcessBinding.frPPProcessObject.ProductClass:= FProductClass;
  frStoreDealProcessBinding.frSaleShipmentProcessObject.ProductClass:= FProductClass;

  FMsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);

  RecursivelyFormatCaptions(Self, FMsgParams);

  FOriginalFormCaption:= actForm.Caption;

  FStartBndProcessCode:= cdsDataBND_PROCESS_CODE.AsInteger;
  FStartStoreDealDate:= cdsDataSTORE_DEAL_DATE.AsDateTime;

  CheckStore;

  FIsStoreComputerized:= dmMain.SvrStore.IsStoreComputerized(cdsDataSTORE_CODE.AsInteger);
  cdsData.SetOptionalParam('STORE_IS_COMPUTERIZED', Ord(FIsStoreComputerized), True);

  if FIsStoreComputerized and (EditMode = emInsert) then
    cdsDataSTORE_DEAL_NO.Value:=
      dmMain.SvrStore.GetNewStoreDealNo(cdsDataSTORE_CODE.AsInteger, ContextDate, FStoreDealTypeCode);
end;

procedure TfmStoreDeal.mdsBoundProcessCalcFields(DataSet: TDataSet);
begin
  inherited;
  mdsBoundProcess_PRINT_BND_PROCESS_ID.AsString:=
    Format('%s: %s', [mdsBoundProcessBND_PROCESS_ABBREV.AsString, mdsBoundProcessBND_PROCESS_IDENTIFICATION.AsString]);
end;

procedure TfmStoreDeal.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  FreeAndNil(FMsgParams);
end;

procedure TfmStoreDeal.DoApplyUpdates;
begin
  if (FStartBndProcessCode <> pNK) and
     (cdsDataBND_PROCESS_CODE.AsInteger = pNK) then
    raise Exception.Create(SCantCreateNK);

  if (FStartBndProcessCode = pNK) and
     (cdsDataBND_PROCESS_CODE.AsInteger <> pNK) then
    raise Exception.Create(SCantChangeNK);

  if (FUnapprovedDocItemCount > 0) then
    raise Exception.Create(SCantApplyWithUnapprovedDocItems);

  if ( (EditMode = emInsert) and
       (cdsDataSTORE_DEAL_DATE.AsDateTime < ContextDate) ) or
     ( (EditMode = emEdit) and
       (cdsDataSTORE_DEAL_DATE.AsDateTime <> FStartStoreDealDate) ) then
    LoginContext.CheckUserActivity(PastStoreDealUserActivityCodes[FProductClass]);

  inherited;
end;

end.



