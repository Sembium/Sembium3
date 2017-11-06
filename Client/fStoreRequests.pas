unit fStoreRequests;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fStoreRequestsAbstract, Menus, JvButtons, ImgList, ParamDataSet,
  ActnList, Db, AbmesFields, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, uClientTypes,
  ComCtrls, ToolWin, JvComponent, JvCaptionButton, JvComponentBase, dDocClient,
  uProducts, DBGridEhGrouping;

type
  TfmStoreRequests = class(TfmStoreRequestsAbstract)
    btnOpenForEdit: TSpeedButton;
    btnOpenInStore: TSpeedButton;
    pdsGridDataParamsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSTORE_REQUEST_CODE: TAbmesFloatField;
    pdsGridDataParamsREQUEST_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsREQUEST_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsREQUEST_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsREQUEST_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsIS_FINISHED: TAbmesFloatField;
    pdsGridDataParamsIS_NOT_FINISHED: TAbmesFloatField;
    pdsGridDataParamsIS_ANNULED: TAbmesFloatField;
    pdsGridDataParamsIS_NOT_ANNULED: TAbmesFloatField;
    pdsGridDataParams_STORE_REQUEST_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParamsPSD_STORE_CODE: TAbmesFloatField;
    pdsGridDataParamsPSD_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_IN: TAbmesFloatField;
    pdsGridDataParamsIS_OUT: TAbmesFloatField;
    pdsGridDataParamsBND_PROCESS: TAbmesWideStringField;
    pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_SHORT_NAME: TAbmesWideStringField;
    pdsGridDataParamsPARTNER_CODE: TAbmesFloatField;
    pnlNewStoreRequest: TPanel;
    btnNewStoreRequestIn: TBitBtn;
    actNewStoreRequestIn: TAction;
    actNewStoreRequestOut: TAction;
    btnNewStoreRequestOut: TBitBtn;
    actNewFinStoreRequest: TAction;
    pnlNewFinStoreRequest: TPanel;
    btnNewFinStoreRequest: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParamsIN_OUTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure actNewStoreRequestInUpdate(Sender: TObject);
    procedure actNewStoreRequestOutUpdate(Sender: TObject);
    procedure actNewStoreRequestInExecute(Sender: TObject);
    procedure actNewStoreRequestOutExecute(Sender: TObject);
    procedure actNewFinStoreRequestUpdate(Sender: TObject);
    procedure actNewFinStoreRequestExecute(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
  protected
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function GetOriginalFormCaption: string; override;
    function GetFormCaption: string; override;
    procedure DoBeforeShow; override;
  public
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNormal): Boolean;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNormal); reintroduce; virtual;
    procedure Initialize; override;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  dMain, fStoreRequestsFilter, uUserActivityConsts, fStoreRequest,
  uTreeClientUtils, uUtils, uClientUtils, uProductClientUtils,
  uClientStoreUtils, uDealTypes;

{$R *.DFM}

const
  StoreDealsFromStoreRequestInActivities: array[TProductClass] of Integer =
    (0, uaStoreDealsFromStoreRequestIn, uaFinStoreDealsFromStoreRequestIn, 0);

  StoreDealsFromStoreRequestOutActivities: array[TProductClass] of Integer =
    (0, uaStoreDealsFromStoreRequestOut, uaFinStoreDealsFromStoreRequestOut, 0);

  WorkStoreDealsFromStoreRequestInActivities: array[TProductClass] of Integer =
    (0, uaWorkStoreDealsFromStoreRequestIn, uaFinWorkStoreDealsFromStoreRequestIn, 0);

  WorkStoreDealsFromStoreRequestOutActivities: array[TProductClass] of Integer =
    (0, uaWorkStoreDealsFromStoreRequestOut, uaFinWorkStoreDealsFromStoreRequestOut, 0);

  EditStoreRequestInActivities: array[TProductClass] of Integer =
    (0, uaEditStoreRequestIn, uaEditFinStoreRequestIn, 0);

  EditStoreRequestOutActivities: array[TProductClass] of Integer =
    (0, uaEditStoreRequestOut, uaEditFinStoreRequestOut, 0);

{ TfmStoreRequests }

procedure TfmStoreRequests.actFormUpdate(Sender: TObject);
begin
  inherited;
  grdData.Columns[7].Visible:= (FProductClass = pcFinancial);

  pnlNewStoreRequest.Visible:= (FProductClass = pcNormal);
  pnlNewFinStoreRequest.Visible:= (FProductClass = pcFinancial);
end;

procedure TfmStoreRequests.actNewFinStoreRequestExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaNewFinStoreRequest);
  if TfmStoreRequest.ShowForm(nil, nil, emInsert, 0, 0, nil, nil, nil, nil, pcFinancial) then
    RefreshGridData;
end;

procedure TfmStoreRequests.actNewFinStoreRequestUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode = emEdit);
end;

procedure TfmStoreRequests.actNewStoreRequestInExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaNewStoreRequestIn);
  if TfmStoreRequest.ShowForm(nil, nil, emInsert, ioIn) then
    RefreshGridData;
end;

procedure TfmStoreRequests.actNewStoreRequestInUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode = emEdit);
end;

procedure TfmStoreRequests.actNewStoreRequestOutExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaNewStoreRequestOut);
  if TfmStoreRequest.ShowForm(nil, nil, emInsert, ioOut) then
    RefreshGridData;
end;

procedure TfmStoreRequests.actNewStoreRequestOutUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode = emEdit);
end;

procedure TfmStoreRequests.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmStoreRequests.DoBeforeShow;
var
  MsgParams: TStrings;
begin
  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  inherited;
end;

procedure TfmStoreRequests.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmStoreRequestsFilter;
end;

function TfmStoreRequests.GetFormCaption: string;
var
  s: string;
begin
  if (FProductClass = pcFinancial) then
    s:= SMovement
  else
    s:= Format('%s %s %s', [SIns, SAnd, SOuts]);

  Result:= Format(OriginalFormCaption, [s]);
end;

function TfmStoreRequests.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmStoreRequests.Initialize;
begin
  inherited;

  if LoginContext.HasUserActivity(StoreDealsFromStoreRequestInActivities[FProductClass]) or
     LoginContext.HasUserActivity(StoreDealsFromStoreRequestOutActivities[FProductClass]) then
    btnOpenInStore.Down:= True;

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmStoreRequests.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FProductClass:= AProductClass;
end;

function TfmStoreRequests.ShowEditForm(AEditMode: TEditMode): Boolean;
var
  StoreCode: Integer;
  CheckActivity: Integer;
  CheckWorkDeptActivity: Integer;
begin
  Assert(Assigned(EditFormClass));

  if btnOpenInStore.Down then
    begin
      if (cdsGridDataIN_OUT.Value > 0) then
        begin
          CheckActivity:= StoreDealsFromStoreRequestInActivities[FProductClass];
          CheckWorkDeptActivity:= WorkStoreDealsFromStoreRequestInActivities[FProductClass];
        end
      else
        begin
          CheckActivity:= StoreDealsFromStoreRequestOutActivities[FProductClass];
          CheckWorkDeptActivity:= WorkStoreDealsFromStoreRequestOutActivities[FProductClass];
        end;

      if not LoginContext.HasUserActivity(CheckActivity) then
        begin
          LoginContext.CheckUserActivity(CheckWorkDeptActivity);
          LoginContext.CheckUserWorkDept(LoginContext.CurrentDeptCode);
        end;                                                           
    end
  else
    begin
      if (cdsGridDataIN_OUT.Value > 0) then
        CheckActivity:= EditStoreRequestInActivities[FProductClass]
      else
        CheckActivity:= EditStoreRequestOutActivities[FProductClass];

      LoginContext.CheckUserActivity(CheckActivity);
    end;

  if btnOpenInStore.Down then
    begin
      if (LoginContext.CurrentDeptCode = 0) then
        raise Exception.Create(SNoCurrentDept);

      if not dmMain.SvrDeptsTree.IsDeptStore(LoginContext.CurrentDeptCode) then
        raise Exception.Create(SCurrentDeptIsNotStore);

      StoreCode:= LoginContext.CurrentDeptCode;
    end
  else
    begin
      StoreCode:= 0;
    end;

  if not cdsGridDataBND_PROCESS_OBJECT_CODE.IsNull and
     not btnOpenInStore.Down then
    AEditMode:= emReadOnly;

  Result:=
    TfmStoreRequestClass(EditFormClass).ShowForm(
      dmDocClient, cdsGridData, AEditMode, cdsGridDataIN_OUT.AsInteger, StoreCode, cdsBranches, cdsEmployees,
      nil, nil, FProductClass);
end;

class function TfmStoreRequests.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass): Boolean;
var
  f: TfmStoreRequests;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmStoreRequests.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;

  pdsGridDataParams_PRODUCT_CLASS_CODE.AsInteger:=
    ProductClassToInt(FProductClass);
end;

procedure TfmStoreRequests.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;
  CheckDatePeriod(pdsGridDataParamsREQUEST_BEGIN_DATE, pdsGridDataParamsREQUEST_END_DATE);
end;

procedure TfmStoreRequests.pdsGridDataParamsIN_OUTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

end.

