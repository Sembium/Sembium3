unit fSelectSpecReplaceProducts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, Menus, DBClient, AbmesClientDataSet,
  JvButtons, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields,
  fBaseFrame, fDBFrame, fFieldEditFrame, uClientTypes,
  dDocClient, fTreeNodeFieldEditFrame, fProductFieldEditFrame, JvComponentBase,
  JvCaptionButton;

type
  TfmSelectSpecReplaceProducts = class(TBevelEditForm)
    cdsDataOLD_PRODUCT_CODE: TAbmesFloatField;
    cdsDataOLD_PRODUCT_NAME: TAbmesWideStringField;
    cdsDataOLD_PRODUCT_NO: TAbmesFloatField;
    cdsDataNEW_PRODUCT_CODE: TAbmesFloatField;
    cdsDataNEW_PRODUCT_NAME: TAbmesWideStringField;
    cdsDataNEW_PRODUCT_NO: TAbmesFloatField;
    cdsDataOLD_PRODUCT_MEASURE_CODE: TAbmesFloatField;
    cdsDataOLD_PRODUCT_ACC_MEASURE_CODE: TAbmesFloatField;
    cdsDataOLD_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsDataNEW_PRODUCT_MEASURE_CODE: TAbmesFloatField;
    cdsDataNEW_PRODUCT_ACC_MEASURE_CODE: TAbmesFloatField;
    cdsDataNEW_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    frOldProduct: TfrProductFieldEditFrame;
    frNewProduct: TfrProductFieldEditFrame;
    procedure cdsDataOLD_PRODUCT_CODEChange(Sender: TField);
    procedure cdsDataNEW_PRODUCT_CODEChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FOldProductCodePtr: PInteger;
    FNewProductCodePtr: PInteger;
  public
    procedure OpenDataSets; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AOldProductCodePtr: PInteger = nil;
      ANewProductCodePtr: PInteger = nil); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AOldProductCodePtr: PInteger = nil;
      ANewProductCodePtr: PInteger = nil): Boolean;
    class function SelectProducts(AdmDocClient:TdmDocClient; var OldProductCode, NewProductCode: Integer): Boolean;
    procedure Initialize; override;
  end;

implementation

uses
  uUtils, uTreeClientUtils;

{$R *.dfm}

resourcestring
  SSameProducts = 'Не сте посочили различни Управляеми Обекти';
  SIncompatibleProducts = 'Избраните Управляеми Обекти не са съвместими по мерни единици';

{ TfmSelectSpecReplaceProducts }

procedure TfmSelectSpecReplaceProducts.OpenDataSets;
begin
//  inherited;
  cdsData.CreateDataSet;
end;

procedure TfmSelectSpecReplaceProducts.cdsDataOLD_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(cdsDataOLD_PRODUCT_CODE,
    cdsDataOLD_PRODUCT_NAME, cdsDataOLD_PRODUCT_NO,
    cdsDataOLD_PRODUCT_MEASURE_CODE,
    cdsDataOLD_PRODUCT_ACC_MEASURE_CODE, nil,
    cdsDataOLD_PRODUCT_TECH_MEASURE_CODE);
end;

procedure TfmSelectSpecReplaceProducts.cdsDataNEW_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(cdsDataNEW_PRODUCT_CODE,
    cdsDataNEW_PRODUCT_NAME, cdsDataNEW_PRODUCT_NO,
    cdsDataNEW_PRODUCT_MEASURE_CODE,
    cdsDataNEW_PRODUCT_ACC_MEASURE_CODE, nil,
    cdsDataNEW_PRODUCT_TECH_MEASURE_CODE);
end;

procedure TfmSelectSpecReplaceProducts.FormCreate(Sender: TObject);
begin
  inherited;
  frOldProduct.FieldNames:= 'OLD_PRODUCT_CODE';
  frNewProduct.FieldNames:= 'NEW_PRODUCT_CODE';
end;

procedure TfmSelectSpecReplaceProducts.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AOldProductCodePtr, ANewProductCodePtr: PInteger);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FOldProductCodePtr:= AOldProductCodePtr;
  FNewProductCodePtr:= ANewProductCodePtr;
end;

class function TfmSelectSpecReplaceProducts.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AOldProductCodePtr,
  ANewProductCodePtr: PInteger): Boolean;
var
  f: TfmSelectSpecReplaceProducts;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
    AOldProductCodePtr, ANewProductCodePtr);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

class function TfmSelectSpecReplaceProducts.SelectProducts(
  AdmDocClient:TdmDocClient; var OldProductCode, NewProductCode: Integer): Boolean;
begin
  Result:= ShowForm(AdmDocClient, nil, emEdit, doNone, @OldProductCode, @NewProductCode)
end;

procedure TfmSelectSpecReplaceProducts.Initialize;
begin
  inherited;

  Assert(Assigned(FOldProductCodePtr));
  Assert(Assigned(FNewProductCodePtr));

  CheckEditMode(cdsData);

  if (FOldProductCodePtr^ > 0) then
    cdsDataOLD_PRODUCT_CODE.AsInteger:= FOldProductCodePtr^;
  if (FNewProductCodePtr^ > 0) then
    cdsDataNEW_PRODUCT_CODE.AsInteger:= FNewProductCodePtr^;
end;

procedure TfmSelectSpecReplaceProducts.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModalResult = mrOK) then
    begin
      CheckRequiredField(cdsDataOLD_PRODUCT_CODE);
      CheckRequiredField(cdsDataNEW_PRODUCT_CODE);

      if (cdsDataOLD_PRODUCT_CODE.AsInteger = cdsDataNEW_PRODUCT_CODE.AsInteger) then
        raise Exception.Create(SSameProducts);

      if (cdsDataOLD_PRODUCT_MEASURE_CODE.AsInteger <> cdsDataNEW_PRODUCT_MEASURE_CODE.AsInteger) or
         (cdsDataOLD_PRODUCT_ACC_MEASURE_CODE.AsInteger <> cdsDataNEW_PRODUCT_ACC_MEASURE_CODE.AsInteger) or
         (cdsDataOLD_PRODUCT_TECH_MEASURE_CODE.AsInteger <> cdsDataNEW_PRODUCT_TECH_MEASURE_CODE.AsInteger) then
        raise Exception.Create(SIncompatibleProducts);

      FOldProductCodePtr^:= cdsDataOLD_PRODUCT_CODE.AsInteger;
      FNewProductCodePtr^:= cdsDataNEW_PRODUCT_CODE.AsInteger;
    end;   { if }

  inherited;
end;

end.
