unit fStoreRequestItemEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBevelEditForm, Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, AbmesFields, Menus, JvButtons,
  JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmStoreRequestItemEdit = class(TBevelEditForm)
    cdsDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    cdsDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    cdsDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataPRODUCT_NAME: TAbmesWideStringField;
    cdsDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsDataSTORE_CODE: TAbmesFloatField;
    cdsDataPLAN_QUANTITY: TAbmesFloatField;
    cdsDataCOMPLETED_QUANTITY: TAbmesFloatField;
    cdsDataREMAINING_QUANTITY: TAbmesFloatField;
    cdsDataOTHER_REQUESTED_QUANTITY: TAbmesFloatField;
    cdsDataREQUEST_QUANTITY: TAbmesFloatField;
    cdsData_STORE_IDENTIFIER: TAbmesWideStringField;
    edtProcessObjectIdentifier: TDBEdit;
    lblProductName: TLabel;
    edtProductName: TDBEdit;
    lblStoreIdentifier: TLabel;
    edtStoreIdentifier: TDBEdit;
    lblPlanQuantity: TLabel;
    edtPlanQuantity: TDBEdit;
    lblCompletedQuantity: TLabel;
    edtCompletedQuantity: TDBEdit;
    lblOtherRequestedQuantity: TLabel;
    edtOtherRequestedQuantity: TDBEdit;
    lblRemainingQuantity: TLabel;
    edtRemainingQuantity: TDBEdit;
    lblRequestQuantity: TLabel;
    edtRequestQuantity: TDBEdit;
    txtMeasureAbbrev: TDBText;
    dsStoreRequestPSDQuantities: TDataSource;
    cdsStoreRequestPSDQuantities: TAbmesClientDataSet;
    cdsStoreRequestPSDQuantitiesPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    cdsStoreRequestPSDQuantitiesPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    cdsStoreRequestPSDQuantitiesPLAN_QUANTITY: TAbmesFloatField;
    cdsStoreRequestPSDQuantitiesCOMPLETED_QUANTITY: TAbmesFloatField;
    cdsStoreRequestPSDQuantitiesOTHER_REQUESTED_QUANTITY: TAbmesFloatField;
    cdsStoreRequestPSDQuantitiesREMAINING_QUANTITY: TAbmesFloatField;
    edtProcessObjectClassAbbrev: TDBEdit;
    lblProcessObjectClass: TLabel;
    edtProductNo: TDBEdit;
    edtPriority: TDBEdit;
    lblSalePriority: TLabel;
    actCopyQuantity: TAction;
    btnCopyQuantity: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFormUpdate(Sender: TObject);
    procedure actCopyQuantityExecute(Sender: TObject);
    procedure actCopyQuantityUpdate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uUtils, uClientTypes;

{$R *.DFM}

const
  AllowedExceed = 1.01;

resourcestring
  SQuantityExceeds = 'Количеството за заявяване надхвърля %d%% от оставащото!';
  SNonPositiveQuantity = 'Трябва да въведете количество за заявяване > 0';

{ TfmStoreRequestItemEdit }

procedure TfmStoreRequestItemEdit.OpenDataSets;
begin
  inherited;

  if Assigned(dsData.DataSet.FindField('REMAINING_QUANTITY')) then
    dsStoreRequestPSDQuantities.DataSet:= dsData.DataSet
  else   { if }
    with cdsStoreRequestPSDQuantities do
      begin
        SetParams(Params, dsData.DataSet);
        Open;

        dsStoreRequestPSDQuantities.DataSet:= cdsStoreRequestPSDQuantities;
      end;
end;

procedure TfmStoreRequestItemEdit.CloseDataSets;
begin
  cdsStoreRequestPSDQuantities.Close;
  inherited;
end;

procedure TfmStoreRequestItemEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Percent: Integer;
begin
  if (ModalResult = mrOK) then
    with dsData.DataSet do
      begin
        ActiveControl:= btnOK;

        with FieldByName('REQUEST_QUANTITY') do
          begin
            if (AsFloat <= 0) then
              raise Exception.Create(SNonPositiveQuantity);

            if (AsFloat > AllowedExceed*edtRemainingQuantity.Field.AsFloat) then
              begin
                Percent:= Trunc(AllowedExceed*100);
                FieldByName('REQUEST_QUANTITY').FocusControl;
                raise Exception.CreateFmt(SQuantityExceeds, [Percent]);
              end;
          end;
      end;   { if }

  inherited;
end;

procedure TfmStoreRequestItemEdit.actCopyQuantityExecute(Sender: TObject);
begin
  inherited;
  with dsData, DataSet do
    begin
      CheckEditMode(DataSet);
      FieldByName('REQUEST_QUANTITY').Assign(
        dsStoreRequestPSDQuantities.DataSet.FieldByName('REMAINING_QUANTITY'));
    end;   { with }
end;

procedure TfmStoreRequestItemEdit.actCopyQuantityUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly);
end;

procedure TfmStoreRequestItemEdit.actFormUpdate(Sender: TObject);
begin
  inherited;
  if Assigned(dsData.DataSet) then
    begin
      edtPriority.Color:= dsData.DataSet.FieldByName('_PRIORITY_BACKGROUND_COLOR').AsInteger;
      edtPriority.Font.Color:= dsData.DataSet.FieldByName('_PRIORITY_COLOR').AsInteger;
    end;  { if }
end;

end.
