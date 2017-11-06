unit fStoreRequestMultiEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, ParamDataSet, ActnList,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, uClientTypes, fStoreRequest,
  Db, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls,
  Menus, JvButtons, AbmesFields, ComCtrls, ToolWin, dDocClient,
  JvComponent, JvCaptionButton, JvComponentBase, fGridForm, uProducts,
  DBGridEhGrouping;

type
  TfmStoreRequestMultiEdit = class(TGridForm)
    btnDeleteData: TBitBtn;
    btnEditData: TBitBtn;
    actOtherStoreRequests: TAction;
    btnOtherStoreRequests: TBitBtn;
    cdsGridDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsGridDataPSD_DEPT_CODE: TAbmesFloatField;
    cdsGridDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    cdsGridDataBND_PROCESS_ABBREV: TAbmesWideStringField;
    cdsGridDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataPRIORITY_CODE: TAbmesFloatField;
    cdsGridDataPRIORITY_NO: TAbmesFloatField;
    cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsGridDataWORK_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataSTORE_CODE: TAbmesFloatField;
    cdsGridDataSTORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataPLAN_QUANTITY: TAbmesFloatField;
    cdsGridDataCOMPLETED_QUANTITY: TAbmesFloatField;
    cdsGridDataREMAINING_QUANTITY: TAbmesFloatField;
    cdsGridDataOTHER_REQUESTED_QUANTITY: TAbmesFloatField;
    cdsGridDataREQUEST_QUANTITY: TAbmesFloatField;
    cdsGridData_PRIORITY_COLOR: TAbmesFloatField;
    cdsGridData_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    pdsGridDataParamsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSTORE_REQUEST_CODE: TAbmesFloatField;
    pdsGridDataParamsIN_OUT: TAbmesFloatField;
    pdsGridDataParamsPRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsPRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParamsPRODUCT_NO: TAbmesFloatField;
    pdsGridDataParamsSTORE_CODE: TAbmesFloatField;
    pdsGridDataParamsSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDEPT_CODE: TAbmesFloatField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    pdsGridDataParamsBND_PROCESS: TAbmesWideStringField;
    actPlannedStoreDeal: TAction;
    btnPlannedStoreDeal: TBitBtn;
    cdsGridDataIN_OUT: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField;
    pdsGridDataParamsPARTNER_CODE: TAbmesFloatField;
    pdsGridDataParamsPARTNER_ACCOUNT_CODE: TAbmesFloatField;
    actSetAllRequestQuantity: TAction;
    btnSetAllRequestQuantity: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure actDelRecordExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure actEditRecordExecute(Sender: TObject);
    procedure actOtherStoreRequestsUpdate(Sender: TObject);
    procedure actOtherStoreRequestsExecute(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataSTORE_DEAL_BEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsPRODUCT_CODEChange(Sender: TField);
    procedure AllWhenNullGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actPlannedStoreDealUpdate(Sender: TObject);
    procedure actPlannedStoreDealExecute(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataIN_OUTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actSetAllRequestQuantityExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actSetAllRequestQuantityUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FInOut: Integer;
    FStoreRequestBranchCode: Integer;
    FStoreRequestCode: Integer;
    FBranchesCDS: TCustomClientDataSet;
    FCompletedStores: TCompletedStores;
    FRequestDeptCode: Integer;
    FOriginalFormCaption: string;
    FPartnerCode: Variant;
    FPartnerAccountCode: Variant;
    FDeliveryProcessAndIdentifierSelected: Boolean;
    procedure UpdateLocalData;
    procedure UpdateOuterData;
  protected
    class function ParamsFromOuterDataSet: Boolean; override;
    procedure CloseDataSets; override;
    procedure OpenDataSets; override;
    function GetDelRecordEnabled: Boolean; override;
    function GetEditRecordEnabled: Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
    procedure DoApplyUpdates; override;
    function GetFormCaption: string; override;
    function GetOriginalFormCaption: string; override;
    function ShowFilterForm: Boolean; override;
    procedure DoBeforeShow; override;
  public
    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      AInOut: Integer;
      AStoreRequestBranchCode: Integer;
      AStoreRequestCode: Integer;
      ABranchesCDS: TCustomClientDataSet;
      ACompletedStores: TCompletedStores;
      ARequestDeptCode: Integer;
      AProductClass: TProductClass;
      APartnerCode: Variant;
      APartnerAccountCode: Variant); reintroduce; virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      AInOut: Integer;
      AStoreRequestBranchCode: Integer;
      AStoreRequestCode: Integer;
      ABranchesCDS: TCustomClientDataSet;
      ACompletedStores: TCompletedStores;
      ARequestDeptCode: Integer;
      AProductClass: TProductClass;
      APartnerCode: Variant;
      APartnerAccountCode: Variant): Boolean;

    property InOut: Integer read FInOut;
    property StoreRequestBranchCode: Integer read FStoreRequestBranchCode;
    property StoreRequestCode: Integer read FStoreRequestCode;
    property CompletedStores: TCompletedStores read FCompletedStores;

    procedure Initialize; override;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  Variants, uUtils, fStoreRequestItemEdit, dMain, fOtherStoreRequests,
  fStoreRequestMultiEditFilter, uTreeClientUtils, uClientUtils,
  fPlannedStoreDealIn, fPlannedStoreDealOut, AbmesDialogs, uProductClientUtils,
  uDealTypes, Math, uColorConsts, uClientDateTime;

{$R *.DFM}

const
  PlanedStoreDealKey = 'PLANNED_STORE_DEAL_BRANCH_CODE; PLANNED_STORE_DEAL_CODE';

resourcestring
  SCantRequest = 'Не можете да заявявате по това планово движение,' + SLineBreak +
                 'тъй като не е настъпила позволената дата на заявяване (%s)';
  SConfirmDelete = 'Изтриване на заявено количество?';

{ TfmStoreRequestMultiEdit }

procedure TfmStoreRequestMultiEdit.UpdateLocalData;
var
  b: TBookmark;
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsGridData.DisableControls;
    try
      with dsData.DataSet do
        begin
          DisableControls;
          try
            b:= Bookmark;
            try
              First;
              while not EOF do
                begin
                  if cdsGridData.Locate(PlanedStoreDealKey, VarArrayOf([
                       FieldByName('PLANNED_STORE_DEAL_BRANCH_CODE').AsInteger,
                       FieldByName('PLANNED_STORE_DEAL_CODE').AsInteger]), []) then
                    begin
                      cdsGridData.Edit;
                      try
                        cdsGridDataREQUEST_QUANTITY.Assign(FieldByName('REQUEST_QUANTITY'));
                        cdsGridData.Post;
                      except
                        cdsGridData.Cancel;
                        raise;
                      end;   { try }
                    end;

                  Next;
                end;   { while }
            finally
              Bookmark:= b;
            end;   { try }
          finally
            EnableControls;
          end;   { try }

          if not cdsGridData.Locate(PlanedStoreDealKey, VarArrayOf([
                   FieldByName('PLANNED_STORE_DEAL_BRANCH_CODE').AsInteger,
                   FieldByName('PLANNED_STORE_DEAL_CODE').AsInteger]), []) then
            cdsGridData.First;
        end;   { with }
    finally
      cdsGridData.EnableControls;
    end;   { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

procedure TfmStoreRequestMultiEdit.UpdateOuterData;
var
  b: TBookmark;
  Located: Boolean;
  OuterDS: TDataSet;
  StoreRequestItemCode: Integer;
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    OuterDS:= dsData.DataSet;

    OuterDS.DisableControls;
    try
      StoreRequestItemCode:= OuterDS.FieldByName('STORE_REQUEST_ITEM_CODE').AsInteger;
      try
        with cdsGridData do
          begin
            DisableControls;
            try
              b:= Bookmark;
              try
                First;
                while not EOF do
                  begin
                    if GetEditRecordEnabled then
                      begin
                        Located:= OuterDS.Locate(PlanedStoreDealKey, VarArrayOf([
                          cdsGridDataPLANNED_STORE_DEAL_BRANCH_CODE.Value,
                          cdsGridDataPLANNED_STORE_DEAL_CODE.Value]), []);

                        if Located then
                          begin
                            if cdsGridDataREQUEST_QUANTITY.IsNull then
                              OuterDS.Delete
                            else   { if }
                              with OuterDS do
                                begin
                                  Edit;
                                  try
                                    OuterDS.AssignFields(cdsGridData);

                                    OuterDS.FieldByName('PSD_BEGIN_DATE').Assign(
                                      cdsGridDataSTORE_DEAL_BEGIN_DATE);
                                    OuterDS.FieldByName('PSD_END_DATE').Assign(
                                      cdsGridDataSTORE_DEAL_END_DATE);

                                    OuterDS.FieldByName('PSD_QUANTITY').Assign(
                                      cdsGridDataPLAN_QUANTITY);
                                    OuterDS.FieldByName('PSD_REMAINING_QUANTITY').Assign(
                                      cdsGridDataREMAINING_QUANTITY);

                                    OuterDS.FieldByName('COMPLETED_QUANTITY').Clear;
                                    OuterDS.FieldByName('COMPLETED_ACCOUNT_QUANTITY').Clear;

                                    Post;
                                  except
                                    Cancel;
                                    raise;
                                  end;   { try }
                                end;   { if }
                          end
                        else   { if }
                          begin
                            if not cdsGridDataREQUEST_QUANTITY.IsNull then
                              with OuterDS do
                                begin
                                  Append;
                                  try
                                    OuterDS.AssignFields(cdsGridData);

                                    OuterDS.FieldByName('PSD_BEGIN_DATE').Assign(
                                      cdsGridDataSTORE_DEAL_BEGIN_DATE);
                                    OuterDS.FieldByName('PSD_END_DATE').Assign(
                                      cdsGridDataSTORE_DEAL_END_DATE);

                                    OuterDS.FieldByName('COMPLETED_QUANTITY').Clear;
                                    OuterDS.FieldByName('COMPLETED_ACCOUNT_QUANTITY').Clear;

                                    Post;
                                  except
                                    Cancel;
                                    raise;
                                  end;   { try }
                                end;   { if }
                          end;   { if }
                      end;   { if }

                    Next;
                  end;   { while }
              finally
                Bookmark:= b;
              end;   { try }
            finally
              EnableControls;
            end;   { try }
          end;   { with }
      finally
        OuterDS.First;
        OuterDS.Locate('STORE_REQUEST_ITEM_CODE', StoreRequestItemCode, []);
      end;   { try }
    finally
      OuterDS.EnableControls;
    end;   { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

procedure TfmStoreRequestMultiEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModalResult = mrOK) then
    UpdateOuterData;

  inherited;
end;

procedure TfmStoreRequestMultiEdit.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  UpdateLocalData;
end;

procedure TfmStoreRequestMultiEdit.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
  cdsGridData.Params.ParamByName('PARTNER_CODE').Value:= FPartnerCode;
  cdsGridData.Params.ParamByName('PARTNER_ACCOUNT_CODE').Value:= FPartnerAccountCode;
end;

procedure TfmStoreRequestMultiEdit.cdsGridDataIN_OUTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
const
  Abbrevs: array[-1..1] of string = (SOutDealAbbrev, '', SInDealAbbrev);
begin
  inherited;
  if InRange(Sender.AsInteger, Low(Abbrevs), High(Abbrevs)) then
    Text:= Abbrevs[Sender.AsInteger]
  else
    Text:= '';
end;

function TfmStoreRequestMultiEdit.GetDelRecordEnabled: Boolean;
begin
  Result:=
    not cdsGridDataREQUEST_QUANTITY.IsNull and
    not CompletedStores[cdsGridDataSTORE_CODE.AsInteger];
end;

procedure TfmStoreRequestMultiEdit.actDelRecordExecute(Sender: TObject);
begin
  if (MessageDlgEx(SConfirmDelete, mtConfirmation, [mbOk, mbCancel], 0) <> mrOk) then
    Abort;
    
  with cdsGridData do
    begin
      Edit;
      try
        cdsGridDataREQUEST_QUANTITY.Clear;
        Post;
      except
        Cancel;
        raise;
      end;   { try }
    end;   { with }
end;

procedure TfmStoreRequestMultiEdit.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmStoreRequestItemEdit;
  FilterFormClass:= TfmStoreRequestMultiEditFilter;
  RegisterDateFields([cdsGridDataSTORE_DEAL_BEGIN_DATE, cdsGridDataSTORE_DEAL_END_DATE]);
end;

procedure TfmStoreRequestMultiEdit.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AInOut, AStoreRequestBranchCode,
  AStoreRequestCode: Integer; ABranchesCDS: TCustomClientDataSet;
  ACompletedStores: TCompletedStores; ARequestDeptCode: Integer;
  AProductClass: TProductClass; APartnerCode, APartnerAccountCode: Variant);
begin
  Assert(
    ((AProductClass <> pcFinancial) and (AInOut <> 0)) or
    ((AProductClass = pcFinancial) and (AInOut = 0))
  );

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);

  FInOut:= AInOut;
  FStoreRequestBranchCode:= AStoreRequestBranchCode;
  FStoreRequestCode:= AStoreRequestCode;
  FBranchesCDS:= ABranchesCDS;

  FCompletedStores:= ACompletedStores;
  FRequestDeptCode:= ARequestDeptCode;

  FProductClass:= AProductClass;

  FPartnerCode:= APartnerCode;
  FPartnerAccountCode:= APartnerAccountCode;
end;

function TfmStoreRequestMultiEdit.ShowFilterForm: Boolean;
begin
  Result:=
    TfmStoreRequestMultiEditFilter.ShowForm(dmDocClient, pdsGridDataParams, emEdit, doNone,
      @FDeliveryProcessAndIdentifierSelected);
end;

class function TfmStoreRequestMultiEdit.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AInOut, AStoreRequestBranchCode,
  AStoreRequestCode: Integer; ABranchesCDS: TCustomClientDataSet;
  ACompletedStores: TCompletedStores; ARequestDeptCode: Integer;
  AProductClass: TProductClass; APartnerCode, APartnerAccountCode: Variant): Boolean;
var
  f: TfmStoreRequestMultiEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AInOut,
      AStoreRequestBranchCode, AStoreRequestCode,
      ABranchesCDS, ACompletedStores, ARequestDeptCode,
      AProductClass, APartnerCode, APartnerAccountCode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmStoreRequestMultiEdit.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;

  pdsGridDataParams.Edit;
  try
    pdsGridDataParamsIN_OUT.Value:= InOut;
    pdsGridDataParamsSTORE_REQUEST_BRANCH_CODE.Value:= StoreRequestBranchCode;
    pdsGridDataParamsSTORE_REQUEST_CODE.Value:= StoreRequestCode;

    if (InOut < 0) then
      pdsGridDataParamsDEPT_CODE.AsInteger:= FRequestDeptCode;

    pdsGridDataParams.Post;
  except
    pdsGridDataParams.Cancel;
    raise;
  end;   { try }
end;

procedure TfmStoreRequestMultiEdit.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams_PRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmStoreRequestMultiEdit.pdsGridDataParamsPRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(Sender, pdsGridDataParamsPRODUCT_NAME,
    pdsGridDataParamsPRODUCT_NO);
end;

procedure TfmStoreRequestMultiEdit.DoApplyUpdates;
begin
// do nothing
//  inherited;
end;

procedure TfmStoreRequestMultiEdit.DoBeforeShow;
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

procedure TfmStoreRequestMultiEdit.navDataBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbDelete) then
    begin
      actDelRecord.Execute;
      Abort;
    end;   { if }

  inherited;
end;

function TfmStoreRequestMultiEdit.GetEditRecordEnabled: Boolean;
begin
  Result:=
    (inherited GetEditRecordEnabled) and
    (not CompletedStores[cdsGridDataSTORE_CODE.AsInteger]) and
    (cdsGridDataREMAINING_QUANTITY.AsFloat > 0);
end;

function TfmStoreRequestMultiEdit.GetFormCaption: string;
var
  s: string;
begin
  if (FProductClass = pcFinancial) then
    s:= SMovements
  else
    begin
      if (InOut = 1) then
        s:= SInPSDs
      else
        s:= SOutPSDs;
    end;

  Result:= Format(OriginalFormCaption, [s]);
end;

function TfmStoreRequestMultiEdit.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

function TfmStoreRequestMultiEdit.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmStoreRequestMultiEdit.actEditRecordExecute(Sender: TObject);
var
  RequestAllowDate: TDateTime;
begin
  RequestAllowDate:=
    dmMain.IncDateByWorkdays(
      cdsGridDataSTORE_DEAL_BEGIN_DATE.AsDateTime, -LoginContext.PSDRequestInAdvanceWorkdays);

  if (ContextDate < RequestAllowDate) then
    raise Exception.CreateFmt(SCantRequest, [LoginContext.DateToStr(RequestAllowDate)]);

  inherited;
end;

procedure TfmStoreRequestMultiEdit.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnSetAllRequestQuantity.Visible:=
    (ProductClass = pcFinancial) or
    FDeliveryProcessAndIdentifierSelected;
end;

procedure TfmStoreRequestMultiEdit.actOtherStoreRequestsUpdate(
  Sender: TObject);
begin
  inherited;

  with cdsGridData do
    (Sender as TAction).Enabled:=
      Active and
      (not (Bof and Eof)) and
      (not cdsGridDataOTHER_REQUESTED_QUANTITY.IsNull);
end;

procedure TfmStoreRequestMultiEdit.actPlannedStoreDealExecute(Sender: TObject);
begin
  inherited;

  case cdsGridDataIN_OUT.AsInteger of
    1:
      TfmPlannedStoreDealIn.ShowForm(dmDocClient, cdsGridData, emReadOnly, doNone, FProductClass);

    -1:
      TfmPlannedStoreDealOut.ShowForm(dmDocClient, cdsGridData, emReadOnly, doNone, FProductClass);

    else
      raise Exception.Create('TfmStoreRequestMultiEdit: unknown InOut');
  end;
  
end;

procedure TfmStoreRequestMultiEdit.actPlannedStoreDealUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmStoreRequestMultiEdit.actSetAllRequestQuantityExecute(
  Sender: TObject);
begin
  inherited;

  Screen.TempCursor(crHourGlass) /
    cdsGridData.TempDisableControls /
      cdsGridData.PreserveBookmark /
        cdsGridData.ForEach /
          cdsGridData.SafeEdit /
            procedure begin
              cdsGridDataREQUEST_QUANTITY.Assign(cdsGridDataREMAINING_QUANTITY);
            end;
end;

procedure TfmStoreRequestMultiEdit.actSetAllRequestQuantityUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmStoreRequestMultiEdit.AllWhenNullGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmStoreRequestMultiEdit.actOtherStoreRequestsExecute(
  Sender: TObject);
begin
  inherited;
  
  TfmOtherStoreRequests.ShowForm(
    dmDocClient,
    cdsGridDataPLANNED_STORE_DEAL_BRANCH_CODE.AsInteger,
    cdsGridDataPLANNED_STORE_DEAL_CODE.AsInteger,
    StoreRequestBranchCode,
    StoreRequestCode
  );
end;

procedure TfmStoreRequestMultiEdit.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if ( (not (gdSelected in State)) or
       (ActiveControl <> Sender) ) and
     cdsGridDataREMAINING_QUANTITY.IsNull then
    begin
      Background:= $00E7EAEB;

      if not (Sender as TAbmesDBGrid).Focused then
        AFont.Color:= clBlack;
    end;

  if (Column.Field = cdsGridDataPRIORITY_FULL_NAME) and not Column.Field.IsNull then
    begin
      if not cdsGridData_PRIORITY_COLOR.IsNull then
        AFont.Color:= cdsGridData_PRIORITY_COLOR.AsInteger;

      if not cdsGridData_PRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsGridData_PRIORITY_BACKGROUND_COLOR.AsInteger;
    end;  { if }

  if (Column.Field = cdsGridDataIN_OUT) then
    begin
      if (cdsGridDataIN_OUT.AsInteger < 0) then
        Background:= ccStoreDealOut;
      if (cdsGridDataIN_OUT.AsInteger > 0) then
        Background:= ccStoreDealIn;
    end;                          
end;

procedure TfmStoreRequestMultiEdit.Initialize;
begin
  inherited Initialize;

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmStoreRequestMultiEdit.cdsGridDataSTORE_DEAL_BEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsShortString(Sender.AsDateTime, cdsGridDataSTORE_DEAL_END_DATE.AsDateTime);
end;

procedure TfmStoreRequestMultiEdit.OpenDataSets;
begin
  cdsPriorities.Open;
  CloneOrOpen(cdsBranches, FBranchesCDS);
  inherited;
end;

class function TfmStoreRequestMultiEdit.ParamsFromOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmStoreRequestMultiEdit.CloseDataSets;
begin
  inherited;
  cdsBranches.Close;
  cdsPriorities.Close;
end;

end.
