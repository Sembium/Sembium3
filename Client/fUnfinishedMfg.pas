unit fUnfinishedMfg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fMasterDetailForm, ExtCtrls, Menus, JvButtons, ImgList, 
  ParamDataSet, ActnList, Db, DBClient, AbmesClientDataSet, Buttons, GridsEh,
  DBGridEh, AbmesDBGrid, DBCtrls, ColorNavigator, StdCtrls, AbmesFields,
  Mask, JvToolEdit, ComCtrls, ToolWin, JvComponent,
  JvCaptionButton, JvComponentBase;

type
  TfmUnfinishedMfg = class(TMasterDetailForm)
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataTOTAL_PRICE: TAbmesFloatField;
    cdsDetailDEPT_CODE: TAbmesFloatField;
    cdsDetailFORK_NO: TAbmesFloatField;                                                                    
    cdsDetailDETAIL_NAME: TAbmesWideStringField;
    cdsDetailQUANTITY: TAbmesFloatField;
    pdsGridDataParamsUNFINISHED_TO_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSUM_TOTAL_PRICE: TAggregateField;
    pnlPrintButton: TPanel;
    cdsDetailDETAIL_NO: TAbmesFloatField;
    cdsDetailNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsDetailMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDetailMLMS_OBJECT_CODE: TAbmesFloatField;
    cdsDetail_SUM_QUANTITY_RAW: TAggregateField;
    cdsDetail_SUM_TOTAL_PRICE: TAggregateField;
    cdsDetail_SUM_DETAIL_MEASURE_CODE: TAggregateField;
    cdsDetail_SUM_QUANTITY: TAbmesFloatField;
    cdsDetail_SUM_DETAIL_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    cdsDetailML_MODEL_STAGE_NO: TAbmesFloatField;
    cdsDetailDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDetailDETAIL_MEASURE_CODE: TAbmesFloatField;
    cdsDetailDETAIL_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDetailMLL_OBJECT_CODE: TAbmesFloatField;
    cdsDetailML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDetailML_OBJECT_CODE: TAbmesFloatField;
    btnEditDetailRecord: TBitBtn;
    cdsDetailDETAIL_TECH_MEASURE_COEF: TAbmesFloatField;
    cdsDetailTECH_QUANTITY: TAbmesFloatField;
    cdsDetailTECH_SINGLE_PRICE: TAbmesFloatField;
    cdsDetailTOTAL_PRICE: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField;
    btnPrint: TSpeedButton;
    actModelCapacityStatus: TAction;
    btnModelCapacityStatus: TBitBtn;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsDetailPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField;
    cdsDetailPRIORITY_NO: TAbmesFloatField;
    cdsDetailPRIORITY_COLOR: TAbmesFloatField;
    cdsDetailPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsDetailWORK_PRIORITY_NO: TAbmesFloatField;
    pdsGridDataParamsPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_NO: TAbmesFloatField;
    pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_SALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsDetailDETAIL_HAS_DOC: TAbmesFloatField;
    tlbDetailDoc: TToolBar;
    sepBeforeDetailDoc: TToolButton;
    lblDetailDoc: TLabel;
    btnDetailDoc: TToolButton;
    actDetailDoc: TAction;
    cdsDetailDETAIL_CODE: TAbmesFloatField;
    sepBeforePrintDetailsButton2: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure cdsDetailCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure cdsDetailAfterOpen(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure actModelCapacityStatusExecute(Sender: TObject);
    procedure actModelCapacityStatusUpdate(Sender: TObject);
    procedure grdDetailGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actDetailDocUpdate(Sender: TObject);
    procedure actDetailDocExecute(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    class function ManualDetailFetch: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    class function CanUseDocs: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uUtils, uClientUtils, uTreeClientUtils, fModelStatus,
  fUnfinishedMfgFilter, rUnfinishedMfg, fModelCapacityStatus,
  uUserActivityConsts, uClientTypes, fBaseForm, uClientDateTime;

{$R *.DFM}

resourcestring
  SPriceColumnCaption = 'ВС1' + SLineBreak + '/%s/';
  SPastDateNotAllowed = 'Избраната дата е извън оперативния Времеви Интервал';

(*
  SCannotChooseLaterDateThanToday = 'При отчетен тип на справката не може да изберете дата по-голяма от днешната!';
  SCannotChooseEarlierDateThanToday = 'При планов тип на справката не може да изберете дата по-малка от днешната!';
*)

{ TfmUnfinishedMfg }

class function TfmUnfinishedMfg.ManualDetailFetch: Boolean;
begin
  Result:= True;
end;

procedure TfmUnfinishedMfg.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmUnfinishedMfgFilter;
  DetailEditFormClass:= TfmModelStatus;
  ReportClass:= TrptUnfinishedMfg;

  DelayDetailFetch:= False;

  grdData.Columns[1].Title.Caption:=
    Format(SPriceColumnCaption, [LoginContext.BaseCurrencyAbbrev]);

  grdDetail.Columns[10].Title.Caption:=
    Format(SPriceColumnCaption, [LoginContext.BaseCurrencyAbbrev]);

  cdsDetail.Params.ParamByName('UNFINISHED_TO_DATE').AsDateTime:= ContextDate();

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridDataTOTAL_PRICE,
      cdsGridDataSUM_TOTAL_PRICE,
      cdsDetailTOTAL_PRICE,
      cdsDetail_SUM_TOTAL_PRICE]);
end;

procedure TfmUnfinishedMfg.OpenDataSets;
begin
  inherited;
  cdsBranches.Open;
  cdsSaleTypes.Open;
end;

procedure TfmUnfinishedMfg.CloseDataSets;
begin
  cdsBranches.Close;
  cdsSaleTypes.Close;
  inherited;
end;

procedure TfmUnfinishedMfg.cdsDetailCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (cdsDetail_SUM_DETAIL_MEASURE_CODE.AsVariant = 0) then
    begin
      cdsDetail_SUM_DETAIL_MEASURE_ABBREV.AsVariant:= cdsDetailDETAIL_MEASURE_ABBREV.AsVariant;
      cdsDetail_SUM_QUANTITY.AsVariant:= cdsDetail_SUM_QUANTITY_RAW.AsVariant;
    end
  else
    begin
      cdsDetail_SUM_DETAIL_MEASURE_ABBREV.Clear;
      cdsDetail_SUM_QUANTITY.Clear;
    end;
end;

procedure TfmUnfinishedMfg.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;

  CheckRequiredField(pdsGridDataParamsUNFINISHED_TO_DATE);

  if not LoginContext.HasUserActivity(uaUnfinishedMfgToAnyDate) and
     (pdsGridDataParamsUNFINISHED_TO_DATE.AsDateTime < ContextDate - LoginContext.MaxUnfinishedMfgPastDays) then
    raise Exception.Create(SPastDateNotAllowed);

(*
  if dsData.DataSet.FieldByName('UNFINISHED_MFG_TYPE').AsFloat = 1 then
    if (dsData.DataSet.FieldByName('UNFINISHED_TO_DATE').AsDateTime > ContextDate()) and
       (not dsData.DataSet.FieldByName('UNFINISHED_TO_DATE').IsNull) then
      raise Exception.Create(SCannotChooseLaterDateThanToday);

  if dsData.DataSet.FieldByName('UNFINISHED_MFG_TYPE').AsFloat = 2 then
    if (dsData.DataSet.FieldByName('UNFINISHED_TO_DATE').AsDateTime < ContextDate()) and
       (not dsData.DataSet.FieldByName('UNFINISHED_TO_DATE').IsNull) then
      raise Exception.Create(SCannotChooseEarlierDateThanToday);
*)
end;

procedure TfmUnfinishedMfg.cdsDetailAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsDetail.DisableControls;
  try
    cdsGridData.DisableControls;
    try
      cdsDetail.MasterSource:= nil;
      cdsDetail.MasterFields:= '';

      cdsDetail.First;
      while not cdsDetail.Eof do
        begin
          if (gbFirst in cdsDetail.GetGroupState(1)) then
            begin
              cdsGridData.AppendRecord([
                cdsDetailDEPT_CODE.AsVariant,
                cdsDetailDEPT_IDENTIFIER.AsVariant,
                cdsDetail_SUM_TOTAL_PRICE.AsVariant]);
            end;  { if }

          cdsDetail.Next;
        end;  { while }

      cdsGridData.First;
      cdsDetail.MasterSource:= dsGridData;
      cdsDetail.MasterFields:= 'DEPT_CODE';
      cdsDetail.First;
    finally
      cdsGridData.EnableControls;
    end;  { try }
  finally
    cdsDetail.EnableControls;
  end;  { try }
end;

procedure TfmUnfinishedMfg.actFilterExecute(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  if FilterFormClass.ShowForm(dmDocClient, pdsGridDataParams) then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        cdsGridData.Close;
        cdsGridData.CreateDataSet;

        RefreshDataSet(cdsDetail);
      finally
        Screen.Cursor:= SaveCursor;
      end;  { try }
    end;  { if }
end;

procedure TfmUnfinishedMfg.actModelCapacityStatusExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaModelCapacityStatus);
  TfmModelCapacityStatus.ShowForm(dmDocClient, cdsDetail, emReadOnly);
end;

procedure TfmUnfinishedMfg.actModelCapacityStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
     cdsDetail.Active and
     (not cdsDetail.IsEmpty);
end;

procedure TfmUnfinishedMfg.grdDetailGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if (Column.Field = cdsDetailPRIORITY_NO) then
    begin
      if not cdsDetailPRIORITY_COLOR.IsNull then
        AFont.Color:= cdsDetailPRIORITY_COLOR.AsInteger;

      if not cdsDetailPRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsDetailPRIORITY_BACKGROUND_COLOR.AsInteger;
    end;  { if }
end;

procedure TfmUnfinishedMfg.actDetailDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
  btnDetailDoc.ImageIndex:= cdsDetailDETAIL_HAS_DOC.AsInteger;
end;

procedure TfmUnfinishedMfg.actDetailDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, (Sender as TAction).ActionComponent as TControl, cdsDetailDETAIL_CODE.AsInteger);
end;

class function TfmUnfinishedMfg.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmUnfinishedMfg.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  InitializePriorityInterval(pdsGridDataParamsBEGIN_PRIORITY_CODE, pdsGridDataParamsEND_PRIORITY_CODE);
end;

end.
