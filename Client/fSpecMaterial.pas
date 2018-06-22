unit fSpecMaterial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fSpecDetail, JvToolEdit, JvDBControls, JvDBLookup, Db, DBClient,
  AbmesClientDataSet, ImgList, ActnList, fBaseFrame, fDBFrame,
  fFieldEditFrame, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, AbmesDBCheckBox, Menus, JvButtons,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, fDateFieldEditFrame,
  JvComponent, JvCaptionButton, JvComponentBase, System.Actions, JvExMask,
  JvBaseEdits;

type
  TfmSpecMaterial = class(TfmSpecDetail)
    bvlSeparator: TBevel;
    lblProductTechQuantity: TLabel;
    edtProductTechQuantity: TJvDBCalcEdit;
    txtProductTechMeasure: TDBText;
    lblProductTotalTechQuantity: TLabel;
    edtProductTotalTechQuantity: TDBEdit;
    lblProductTotalAccountQuantity: TLabel;
    edtProductTotalAccountQuantity: TDBEdit;
    txtAccountTechMeasure: TDBText;
    edtProductSecondarySinglePrice: TDBEdit;
    edtProductSecondaryTotalPrice: TDBEdit;
    lblSecondaryCurrencyAbbrev: TLabel;
    lblProductSecondarySinglePrice: TLabel;
    lblProductSecondaryTotalPrice: TLabel;
    actCopyDetailToProduct: TAction;
    pnlCopyDetailToProduct: TPanel;
    btnCopyDetailToProduct: TSpeedButton;
    frProduct: TfrProductFieldEditFrame;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actCopyDetailToProductUpdate(Sender: TObject);
    procedure actCopyDetailToProductExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoApplyUpdates; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    { Public declarations }
  end;

implementation

uses
  fTreeSelectForm, uUtils, uClientUtils, uClientTypes;

{$R *.DFM}

procedure TfmSpecMaterial.FormCreate(Sender: TObject);
begin
  inherited;

  lblSecondaryCurrencyAbbrev.Caption:=
    LoginContext.SecondaryCurrencyAbbrev;

  frProduct.TreeDetailSelection:= tdsInstance;
end;

procedure TfmSpecMaterial.actFormUpdate(Sender: TObject);
var
  EnableDetailQuantity: Boolean;
begin
  inherited;

  with dsData.DataSet do
    EnableDetailQuantity:=
      (FieldByName('DETAIL_CODE').AsInteger <>
       FieldByName('PRODUCT_CODE').AsInteger) and
      (not FieldByName('DETAIL_CODE').IsNull) and
      (not FieldByName('PRODUCT_CODE').IsNull);

  with edtProductTechQuantity do
    begin
      ReadOnly:=
        (not EnableDetailQuantity) or
        EditQuantityOnly or
        (EditMode = emReadOnly);
      TabStop:= not ReadOnly;
      Color:= ReadOnlyColors[ReadOnly];
    end;   { with }
end;

procedure TfmSpecMaterial.DoApplyUpdates;
begin
  with dsData.DataSet do
    if (not FieldByName('PRODUCT_CODE').IsNull) or
       (not FieldByName('PRODUCT_TECH_QUANTITY').IsNull) then
    CheckRequiredFields(dsData.DataSet,
      'PRODUCT_NAME; PRODUCT_TECH_QUANTITY');

  inherited;
end;

procedure TfmSpecMaterial.actCopyDetailToProductUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (not dsData.DataSet.FieldByName('DETAIL_CODE').IsNull) and
    (not frProduct.ReadOnly); 
end;

procedure TfmSpecMaterial.actCopyDetailToProductExecute(Sender: TObject);
begin
  inherited;

  with dsData, DataSet do
    begin
      CheckEditMode(DataSet);
      
      FieldByName('PRODUCT_CODE').AsInteger:= FieldByName('DETAIL_CODE').AsInteger;
    end;   { with }
end;

procedure TfmSpecMaterial.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProduct) then
    AFrame.ReadOnly:= EditQuantityOnly or (EditMode = emReadOnly)
  else
    inherited;
end;

end.
