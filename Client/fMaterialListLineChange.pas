unit fMaterialListLineChange;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, Db, Menus, DBClient, AbmesClientDataSet, JvButtons, ImgList,
  ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields, Mask, DBCtrls,
  JvToolEdit, JvDBControls, ComCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fEditForm, dDocClient,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fProductFieldEditFrame,
  fDateFieldEditFrame, JvComponent, JvCaptionButton, JvComponentBase,
  fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald;

type
  TMllChangeStatus =
    (csNew, csWaitingReply, csChangeAccepted, csChangeRejectedWaitingReplyAccept, csChangeRejectedReplyAccepted, csInlineChange);

type
  TfmMaterialListLineChange = class(TEditForm)
    cdsDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataMLL_OBJECT_CODE: TAbmesFloatField;
    cdsDataMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField;
    cdsDataN_DETAIL_CODE: TAbmesFloatField;
    cdsDataN_PRODUCT_CODE: TAbmesFloatField;
    cdsDataN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsDataN_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsDataN_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsDataN_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsDataN_STORE_CODE: TAbmesFloatField;
    cdsDataN_PRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataN_PRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField;
    cdsDataO_DETAIL_CODE: TAbmesFloatField;
    cdsDataO_PRODUCT_CODE: TAbmesFloatField;
    cdsDataO_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsDataO_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsDataO_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsDataO_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsDataO_STORE_CODE: TAbmesFloatField;
    cdsDataO_PRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataO_PRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField;
    cdsDataREQUEST_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataREQUEST_DATE: TAbmesSQLTimeStampField;
    cdsDataREQUEST_TIME: TAbmesSQLTimeStampField;
    cdsDataMLL_CHANGE_REPLY_TYPE_CODE: TAbmesFloatField;
    cdsDataREPLY_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataREPLY_DATE: TAbmesSQLTimeStampField;
    cdsDataREPLY_TIME: TAbmesSQLTimeStampField;
    cdsDataREPLY_ACCEPT_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataREPLY_ACCEPT_DATE: TAbmesSQLTimeStampField;
    cdsDataREPLY_ACCEPT_TIME: TAbmesSQLTimeStampField;
    cdsDataN_PRODUCT_NAME: TAbmesWideStringField;
    cdsDataN_PRODUCT_NO: TAbmesFloatField;
    cdsDataN_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsDataO_PRODUCT_NAME: TAbmesWideStringField;
    cdsDataO_PRODUCT_NO: TAbmesFloatField;
    cdsDataO_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsMeasuresMEASURE_NAME: TAbmesWideStringField;
    cdsData_DETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsData_N_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsData_O_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataMLL_OBJECT_IDENTIFIER: TAbmesWideStringField;
    pnlMain: TPanel;
    pcMain: TPageControl;
    tsChange: TTabSheet;
    grpOld: TGroupBox;
    grpOldProductTechQuantity: TGroupBox;
    lblOldProductTechMeasure: TDBText;
    edtOldProductTechQuantity: TDBEdit;
    grpNew: TGroupBox;
    grpNewProductTechQuantity: TGroupBox;
    lblNewProductTechMeasure: TDBText;
    edtNewProductTechQuantity: TDBEdit;
    cbMllIdentifier: TGroupBox;
    edtMllIdentifier: TDBEdit;
    tsCommunication: TTabSheet;
    grpRequest: TGroupBox;
    lblRequestEmployee: TLabel;
    lblRequestDate: TLabel;
    lblRequestTime: TLabel;
    edtRequestTime: TDBEdit;
    grpReply: TGroupBox;
    lblReplyEmployee: TLabel;
    lblReplyDate: TLabel;
    lblReplyTime: TLabel;
    edtReplyTime: TDBEdit;
    grpReplyAccept: TGroupBox;
    lblReplyAcceptEmployee: TLabel;
    lblReplyAcceptDate: TLabel;
    lblReplyAcceptTime: TLabel;
    edtReplyAcceptTime: TDBEdit;
    btnCopyOldToNew: TSpeedButton;
    pnlStatus: TPanel;
    pnlReplyAccept: TPanel;
    pnlReplyAcceptInner1: TPanel;
    pnlReplyAcceptInner2: TPanel;
    pnlReply: TPanel;
    pnlReplyInner1: TPanel;
    pnlReplyInner2: TPanel;
    rgReply: TDBRadioGroup;
    chkReplyAccept: TDBCheckBox;
    cdsDataREPLY: TAbmesFloatField;
    cdsDataREPLY_ACCEPT: TAbmesFloatField;
    cdsMaterialListLine: TAbmesClientDataSet;
    cdsMaterialListLineMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsMaterialListLineMLL_OBJECT_CODE: TAbmesFloatField;
    cdsMaterialListLineML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsMaterialListLineML_OBJECT_CODE: TAbmesFloatField;
    cdsMaterialListLineDETAIL_CODE: TAbmesFloatField;
    cdsMaterialListLineDETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsMaterialListLineLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsMaterialListLineTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsMaterialListLinePRODUCT_CODE: TAbmesFloatField;
    cdsMaterialListLinePRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsMaterialListLineSTORE_CODE: TAbmesFloatField;
    cdsMaterialListLinePRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsMaterialListLinePRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField;
    cdsDataDETAIL_CODE: TAbmesFloatField;
    cdsDataDETAIL_NAME: TAbmesWideStringField;
    cdsDataDETAIL_NO: TAbmesFloatField;
    cdsDataDETAIL_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsMaterialListLineFORK_0_DETAIL_CODE: TAbmesFloatField;
    cdsMaterialListLineMLL_OBJECT_IDENTIFIER: TAbmesWideStringField;
    actCopyOldToNew: TAction;
    cdsDataOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    cdsMaterialListLineOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    frOldStore: TfrDeptFieldEditFrame;
    frNewStore: TfrDeptFieldEditFrame;
    frOldProduct: TfrProductFieldEditFrame;
    frNewProduct: TfrProductFieldEditFrame;
    frOldDetail: TfrProductFieldEditFrame;
    frRequestDate: TfrDateFieldEditFrame;
    frReplyDate: TfrDateFieldEditFrame;
    frReplyAcceptDate: TfrDateFieldEditFrame;
    frRequestEmployee: TfrEmployeeFieldEditFrameBald;
    frReplyEmployee: TfrEmployeeFieldEditFrameBald;
    frReplyAcceptEmployee: TfrEmployeeFieldEditFrameBald;
    procedure FormCreate(Sender: TObject);
    procedure cdsDataN_PRODUCT_CODEChange(Sender: TField);
    procedure cdsDataO_PRODUCT_CODEChange(Sender: TField);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataDETAIL_CODEChange(Sender: TField);
    procedure actFormUpdate(Sender: TObject);
    procedure actCopyOldToNewUpdate(Sender: TObject);
    procedure actCopyOldToNewExecute(Sender: TObject);
    procedure cdsDataBeforeOpen(DataSet: TDataSet);
    procedure cdsDataAfterClose(DataSet: TDataSet);
  private
    FOuterDataSet: TDataSet;
    FUpdateOuterDataSet: Boolean;
    function GetMllChangeStatus: TMllChangeStatus;
  protected
    function GetRecordReadOnly: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure DoApplyUpdates; override;
    class function CanUseDocs: Boolean; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil; AEditMode: TEditMode = emEdit;
      AUpdateOuterDataSet: Boolean = False); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil; AEditMode: TEditMode = emEdit;
      AUpdateOuterDataSet: Boolean = False): Boolean;
  end;

implementation

uses
  dMain, uUtils, uMaterialListLineChanges, uUserActivityConsts,
  uTreeClientUtils, fMain, uClientMaterialListLineChanges, fTreeSelectForm;

{$R *.DFM}

resourcestring
  SProductTechQuantity = ' К-во за 1 %s КСЧ ';
  SgrpReplyNoReply =  ' Приета / Отказана замяна ';
  SgrpReplyReplyAccepted =  ' Приета замяна ';
  SgrpReplyReplyRejected =  ' Отказана замяна ';
  SNoDiffBetweenOldAndNewData = 'Не можете да предложите замяна, в която старите и новите данни съвпадат';
  SCannotChangeQuantityOnly = 'Не можете да предложите замяна, в която е променено количеството, без да е променен Управляемия Обект';
  ScsNew = 'Ново Предложение за Замяна';
  ScsInlineChange = 'Директна промяна в модела';

const
  MllChangeStatusTexts: array[TMllChangeStatus] of string = (
    ScsNew,
    ScrtNoReply,
    ScrtChangeAccepted,
    ScrtChangeRejectNotAccepted,
    ScrtChangeRejectAccepted,
    ScsInlineChange);

{ TfmMaterialListLineChange }

procedure TfmMaterialListLineChange.FormCreate(Sender: TObject);
begin
  inherited;
  frOldDetail.FieldNames:= 'DETAIL_CODE';
  frOldProduct.FieldNames:= 'O_PRODUCT_CODE';
  frNewProduct.FieldNames:= 'N_PRODUCT_CODE';
  frNewProduct.TreeDetailSelection:= tdsInstance;
  frOldStore.FieldNames:= 'O_STORE_CODE';
  frNewStore.FieldNames:= 'N_STORE_CODE';
  frNewStore.SelectStore:= True;
  frRequestDate.FieldNames:= 'REQUEST_DATE';
  frReplyDate.FieldNames:= 'REPLY_DATE';
  frReplyAcceptDate.FieldNames:= 'REPLY_ACCEPT_DATE';
  frRequestEmployee.FieldNames:= 'REQUEST_EMPLOYEE_CODE';
  frRequestEmployee.DocButtonVisible:= False;
  frReplyEmployee.FieldNames:= 'REPLY_EMPLOYEE_CODE';
  frReplyEmployee.DocButtonVisible:= False;
  frReplyAcceptEmployee.FieldNames:= 'REPLY_ACCEPT_EMPLOYEE_CODE';
  frReplyAcceptEmployee.DocButtonVisible:= False;
end;

procedure TfmMaterialListLineChange.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frOldDetail) or
     (AFrame = frOldProduct) or
     (AFrame = frOldStore) or
     (AFrame = frRequestDate) or
     (AFrame = frReplyDate) or
     (AFrame = frReplyAcceptDate) or
     (AFrame = frRequestEmployee) or
     (AFrame = frReplyEmployee) or
     (AFrame = frReplyAcceptEmployee) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  if (AFrame = frNewProduct) or
     (AFrame = frNewStore) then
    begin
      AFrame.ReadOnly:= (EditMode <> emInsert);
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmMaterialListLineChange.cdsDataN_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(
    cdsDataN_PRODUCT_CODE,
    cdsDataN_PRODUCT_NAME,
    cdsDataN_PRODUCT_NO,
    nil,
    nil,
    nil,
    cdsDataN_PRODUCT_TECH_MEASURE_CODE);
end;

procedure TfmMaterialListLineChange.cdsDataO_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(
    cdsDataO_PRODUCT_CODE,
    cdsDataO_PRODUCT_NAME,
    cdsDataO_PRODUCT_NO,
    nil,
    nil,
    nil,
    cdsDataO_PRODUCT_TECH_MEASURE_CODE);
end;

procedure TfmMaterialListLineChange.cdsDataDETAIL_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(
    cdsDataDETAIL_CODE,
    cdsDataDETAIL_NAME,
    cdsDataDETAIL_NO,
    nil,
    nil,
    nil,
    cdsDataDETAIL_TECH_MEASURE_CODE);
end;

procedure TfmMaterialListLineChange.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataREPLY.AsInteger:= 0;
  cdsDataREPLY_ACCEPT.AsInteger:= 0;
  cdsDataMATERIAL_LIST_LINE_CHANGE_NO.AsInteger:= 1;

  cdsMaterialListLine.Open;
  try
    cdsDataMLL_OBJECT_BRANCH_CODE.AsVariant:=         cdsMaterialListLineMLL_OBJECT_BRANCH_CODE.AsVariant;
    cdsDataMLL_OBJECT_CODE.AsVariant:=                cdsMaterialListLineMLL_OBJECT_CODE.AsVariant;
    cdsDataO_DETAIL_CODE.AsVariant:=                  cdsMaterialListLineDETAIL_CODE.AsVariant;
    cdsDataO_DETAIL_TECH_QUANTITY.AsVariant:=         cdsMaterialListLineDETAIL_TECH_QUANTITY.AsVariant;
    cdsDataO_LINE_DETAIL_TECH_QUANTITY.AsVariant:=    cdsMaterialListLineLINE_DETAIL_TECH_QUANTITY.AsVariant;
    cdsDataO_TOTAL_DETAIL_TECH_QUANTITY.AsVariant:=   cdsMaterialListLineTOTAL_DETAIL_TECH_QUANTITY.AsVariant;
    cdsDataO_PRODUCT_CODE.AsVariant:=                 cdsMaterialListLinePRODUCT_CODE.AsVariant;
    cdsDataO_PRODUCT_TECH_QUANTITY.AsVariant:=        cdsMaterialListLinePRODUCT_TECH_QUANTITY.AsVariant;
    cdsDataO_STORE_CODE.AsVariant:=                   cdsMaterialListLineSTORE_CODE.AsVariant;
    cdsDataO_PRODUCT_NEED_BEGIN_DATE.AsVariant:=      cdsMaterialListLinePRODUCT_NEED_BEGIN_DATE.AsVariant;
    cdsDataO_PRODUCT_NEED_END_DATE.AsVariant:=        cdsMaterialListLinePRODUCT_NEED_END_DATE.AsVariant;
    cdsDataMLL_OBJECT_IDENTIFIER.AsVariant:=          cdsMaterialListLineMLL_OBJECT_IDENTIFIER.AsVariant;

    cdsDataDETAIL_CODE.AsVariant:=                    cdsMaterialListLineFORK_0_DETAIL_CODE.AsVariant;
    cdsDataOWNER_EMPLOYEE_CODE.AsVariant:=            cdsMaterialListLineOWNER_EMPLOYEE_CODE.AsVariant;
  finally
    cdsMaterialListLine.Close;
  end;  { try }

  cdsDataN_DETAIL_CODE.AsVariant:=                  cdsDataO_DETAIL_CODE.AsVariant;
  cdsDataN_DETAIL_TECH_QUANTITY.AsVariant:=         cdsDataO_DETAIL_TECH_QUANTITY.AsVariant;
  cdsDataN_LINE_DETAIL_TECH_QUANTITY.AsVariant:=    cdsDataO_LINE_DETAIL_TECH_QUANTITY.AsVariant;
  cdsDataN_TOTAL_DETAIL_TECH_QUANTITY.AsVariant:=   cdsDataO_TOTAL_DETAIL_TECH_QUANTITY.AsVariant;
  cdsDataN_PRODUCT_NEED_BEGIN_DATE.AsVariant:=      cdsDataO_PRODUCT_NEED_BEGIN_DATE.AsVariant;
  cdsDataN_PRODUCT_NEED_END_DATE.AsVariant:=        cdsDataO_PRODUCT_NEED_END_DATE.AsVariant;
end;

class function TfmMaterialListLineChange.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmMaterialListLineChange.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AUpdateOuterDataSet: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);

  SetParams(cdsMaterialListLine.Params, ADataSet);

  FOuterDataSet:= ADataSet;
  FUpdateOuterDataSet:= AUpdateOuterDataSet;
end;

procedure TfmMaterialListLineChange.cdsDataBeforePost(DataSet: TDataSet);
var
  st: TMllChangeStatus;
begin
  inherited;
  st:= GetMllChangeStatus;

  case st of
    csNew:
      begin
        LoginContext.CheckUserActivity(uaMllChangeRequest);
        if (cdsDataN_PRODUCT_CODE.AsInteger = cdsDataO_PRODUCT_CODE.AsInteger) and
           (cdsDataN_STORE_CODE.AsInteger = cdsDataO_STORE_CODE.AsInteger) and
           (cdsDataN_PRODUCT_TECH_QUANTITY.AsFloat = cdsDataO_PRODUCT_TECH_QUANTITY.AsFloat) then
          raise Exception.Create(SNoDiffBetweenOldAndNewData);

        if (cdsDataN_PRODUCT_CODE.AsInteger = cdsDataO_PRODUCT_CODE.AsInteger) and
           (cdsDataN_PRODUCT_TECH_QUANTITY.AsFloat <> cdsDataO_PRODUCT_TECH_QUANTITY.AsFloat) then
          raise Exception.Create(SCannotChangeQuantityOnly);
      end;

    csWaitingReply:
      if (cdsDataOWNER_EMPLOYEE_CODE.AsInteger <> LoginContext.UserCode) then
        LoginContext.CheckUserActivity(uaMllChangeReplyInNotOwnMll);

    csChangeRejectedWaitingReplyAccept:
      if (cdsDataREQUEST_EMPLOYEE_CODE.AsInteger <> LoginContext.UserCode) then
        LoginContext.CheckUserActivity(uaMllChangeReplyAcceptInNotOwnRequest);
  end;  { case }
end;

procedure TfmMaterialListLineChange.actFormUpdate(Sender: TObject);
const
  EditColors: array[Boolean] of TColor = (clWindow, clBtnFace);
var
  st: TMllChangeStatus;
  s: string;
begin
  inherited;
  st:= GetMllChangeStatus;

  pnlStatus.Caption:= MllChangeStatusTexts[st];
  pnlReply.Visible:= (st = csWaitingReply);
  pnlReplyAccept.Visible:= (st = csChangeRejectedWaitingReplyAccept);

  edtNewProductTechQuantity.ReadOnly:= (EditMode <> emInsert);

  edtNewProductTechQuantity.Color:= EditColors[EditMode <> emInsert];

  s:= Format(SProductTechQuantity, [cdsData_DETAIL_TECH_MEASURE_ABBREV.DisplayText]);
  grpOldProductTechQuantity.Caption:= s;
  grpNewProductTechQuantity.Caption:= s;

  grpReplyAccept.Visible:= (st in [csChangeRejectedWaitingReplyAccept, csChangeRejectedReplyAccepted]);

  case st of
    csChangeAccepted, csInlineChange:
      grpReply.Caption:= SgrpReplyReplyAccepted;

    csChangeRejectedWaitingReplyAccept, csChangeRejectedReplyAccepted:
      grpReply.Caption:= SgrpReplyReplyRejected;
    else
      grpReply.Caption:= SgrpReplyNoReply;
  end;  { case }
end;

procedure TfmMaterialListLineChange.actCopyOldToNewUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (GetMllChangeStatus = csNew);
end;

procedure TfmMaterialListLineChange.actCopyOldToNewExecute(
  Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  cdsDataN_PRODUCT_CODE.AsVariant:= cdsDataO_PRODUCT_CODE.AsVariant;
  cdsDataN_STORE_CODE.AsVariant:= cdsDataO_STORE_CODE.AsVariant;
  cdsDataN_PRODUCT_TECH_QUANTITY.AsVariant:= cdsDataO_PRODUCT_TECH_QUANTITY.AsVariant;
end;

function TfmMaterialListLineChange.GetMllChangeStatus: TMllChangeStatus;
begin
  if (EditMode = emInsert) then
    Result:= csNew
  else
    begin
      case IntToMllChangeReplyType(cdsDataMLL_CHANGE_REPLY_TYPE_CODE.AsInteger) of
        crtNoReply:
          Result:= csWaitingReply;
        crtChangeAccepted:
          Result:= csChangeAccepted;
        crtChangeAutoAccepted:
          Result:= csInlineChange;
        crtChangeRejected:
          if cdsDataREPLY_ACCEPT_EMPLOYEE_CODE.IsNull then
            Result:= csChangeRejectedWaitingReplyAccept
          else
            Result:= csChangeRejectedReplyAccepted;
      else
        raise Exception.Create('Unsupported MllChangeReplyType');
      end;  { case }
    end;
end;

function TfmMaterialListLineChange.GetRecordReadOnly: Boolean;
begin
  Result:= not cdsDataREPLY_ACCEPT_EMPLOYEE_CODE.IsNull;
end;

procedure TfmMaterialListLineChange.cdsDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsMeasures.Open;
end;

procedure TfmMaterialListLineChange.cdsDataAfterClose(DataSet: TDataSet);
begin
  inherited;
  cdsMeasures.Close;
end;

class function TfmMaterialListLineChange.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AUpdateOuterDataSet: Boolean): Boolean;
var
  f: TfmMaterialListLineChange;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AUpdateOuterDataSet);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmMaterialListLineChange.DoApplyUpdates;
var
  OldMllChangeStatus: TMllChangeStatus;
begin
  OldMllChangeStatus:= GetMllChangeStatus;

  inherited;

  fmMain.ForceRefreshPendingMllChangeCounts;

  if FUpdateOuterDataSet then
    with FOuterDataSet do
      begin
        DisableControls;
        try
          Edit;
          try
            case OldMllChangeStatus of
              csNew:
                FieldByName('MLL_CHANGE_STATUS').AsInteger:= lcsReplyPending;

              csWaitingReply:
                case cdsDataREPLY.AsInteger of
                  1:
                    begin
                      FieldByName('MLL_CHANGE_STATUS').AsInteger:= lcsOK;

                      FieldByName('PRODUCT_CODE').Assign(cdsDataN_PRODUCT_CODE);
                      FieldByName('STORE_CODE').Assign(cdsDataN_STORE_CODE);
                      FieldByName('PRODUCT_TECH_QUANTITY').Assign(cdsDataN_PRODUCT_TECH_QUANTITY);
                    end;
                  2:
                    begin
                      FieldByName('MLL_CHANGE_STATUS').AsInteger:= lcsUnseenReject;
                    end;
                end;   { case }
              csChangeRejectedWaitingReplyAccept:
                FieldByName('MLL_CHANGE_STATUS').AsInteger:= lcsOK;
            end;   { case }

            FieldByName('MATERIAL_LIST_LINE_CHANGE_NO').Assign(
              cdsDataMATERIAL_LIST_LINE_CHANGE_NO);

            Post;
          except
            Cancel;
            raise;
          end;   { try }
        finally
          EnableControls;
        end;   { try }
      end;   { with }
end;

class function TfmMaterialListLineChange.CanUseDocs: Boolean;
begin
  Result:= True;
end;

end.
