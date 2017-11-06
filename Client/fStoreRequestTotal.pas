unit fStoreRequestTotal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBevelEditForm, Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, AbmesFields, Menus, JvButtons,
  uClientTypes, dDocClient, JvComponent, JvCaptionButton, uProducts,
  JvComponentBase;

type
  TfmStoreRequestTotal = class(TBevelEditForm)
    cdsDataSTORE_CODE: TAbmesFloatField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataPRODUCT_NAME: TAbmesWideStringField;
    cdsDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsDataREQUEST_QUANTITY: TAbmesFloatField;
    cdsDataCOMPLETED_QUANTITY: TAbmesFloatField;
    cdsDataREQUEST_ITEMS_COUNT: TAbmesFloatField;
    cdsData_STORE_IDENTIFIER: TAbmesWideStringField;
    lblStore: TLabel;
    lblProductName: TLabel;
    edtProductName: TDBEdit;
    edtStore: TDBEdit;
    lblRequestQuantity: TLabel;
    edtRequestQuantity: TDBEdit;
    lblCompletedQuantity: TLabel;
    edtCompletedQuantity: TDBEdit;
    edtMeasureAbbrev: TDBText;
    btnCopyQuantity: TSpeedButton;
    actCopyQuantity: TAction;
    edtProductNo: TDBEdit;
    pnlAccountQuantityAndTotalPrice: TPanel;
    lblCompletedAccountQuantity: TLabel;
    edtCompletedAccountQuantity: TDBEdit;
    edtAccountMeasureAbbrev: TDBText;
    lblTotalPrice: TLabel;
    edtTotalPrice: TDBEdit;
    lblCalculateAccountQuantity: TLabel;
    edtCalculateAccountQuantity: TDBEdit;
    edtAccountMeasureAbbrev2: TDBText;
    txtCurrencyAbbrev: TDBText;
    procedure actFormUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actCopyQuantityUpdate(Sender: TObject);
    procedure actCopyQuantityExecute(Sender: TObject);
  private
    FInputAccountQuantity: Boolean;
    FProductClass: TProductClass;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AInputAccountQuantity: Boolean = False; AProductClass: TProductClass = pcNormal); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AInputAccountQuantity: Boolean = False; AProductClass: TProductClass = pcNormal): Boolean;
    procedure Initialize; override;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  uClientUtils, uUtils, uProductClientUtils;

{$R *.DFM}

{ TfmStoreRequestTotal }

procedure TfmStoreRequestTotal.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AInputAccountQuantity: Boolean; AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FInputAccountQuantity:= AInputAccountQuantity;
  FProductClass:= AProductClass;
end;

class function TfmStoreRequestTotal.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AInputAccountQuantity: Boolean; AProductClass: TProductClass): Boolean;
var
  f: TfmStoreRequestTotal;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
      AInputAccountQuantity, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmStoreRequestTotal.actFormUpdate(Sender: TObject);
begin
  inherited;

  edtCompletedAccountQuantity.ReadOnly:= not FInputAccountQuantity;
  edtCompletedAccountQuantity.Color:= ReadOnlyColors[not FInputAccountQuantity];

  edtTotalPrice.ReadOnly:=
    (not FInputAccountQuantity) or
    dsData.DataSet.FieldByName('IS_PSD_BOUND_TO_MODEL').AsBoolean;
  edtTotalPrice.Color:=
    ReadOnlyColors[edtTotalPrice.ReadOnly];

  pnlAccountQuantityAndTotalPrice.Visible:= (FProductClass <> pcFinancial);
end;

procedure TfmStoreRequestTotal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModalResult = mrOK) then
    begin
      CheckRequiredField(dsData.DataSet.FieldByName('COMPLETED_QUANTITY'));

      if FInputAccountQuantity and (FProductClass <> pcFinancial) then
        CheckRequiredFields(dsData.DataSet, 'COMPLETED_ACCOUNT_QUANTITY; TOTAL_PRICE');
    end;   { if }

  inherited;
end;

procedure TfmStoreRequestTotal.Initialize;
var
  MsgParams: TStrings;
begin
  inherited;

  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }
end;

procedure TfmStoreRequestTotal.actCopyQuantityUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    ((FProductClass = pcFinancial) or FInputAccountQuantity);
end;

procedure TfmStoreRequestTotal.actCopyQuantityExecute(Sender: TObject);
begin
  inherited;

  with dsData, DataSet do
    begin
      CheckEditMode(DataSet);
      FieldByName('COMPLETED_QUANTITY').Assign(FieldByName('REQUEST_QUANTITY'));
    end;   { with }
end;

end.
