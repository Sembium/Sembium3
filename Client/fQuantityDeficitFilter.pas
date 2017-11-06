unit fQuantityDeficitFilter;

interface
      
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFilterForm, Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, ComCtrls, DBCtrls,
  JvDBLookup, uPeriods, AbmesFields, AbmesDBCheckBox, Menus, JvButtons,
  dDocClient, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fProductFieldEditFrame, fDateUnitsIntervalEditFrame, JvComponent,
  JvCaptionButton, JvExControls, fDeptFilter, fTreeNodeFilter,
  fProductFilter, fParamProductFilter, JvComponentBase, uProducts, fFilterFrame, fTreeNodeGridFilter;

type
  TfmQuantityDeficitFilter = class(TFilterForm)
    gbPlannedSecondLevel: TGroupBox;
    cbQuantitiesOut: TAbmesDBCheckBox;
    gbFlags: TGroupBox;
    pnlDeficit: TPanel;
    rbDeficitOn: TRadioButton;
    rbDeficitOff: TRadioButton;
    rbDeficitAll: TRadioButton;
    pnlPSDIn: TPanel;
    pnlDeficitTowardsReserve: TPanel;
    rbDeficitTowardsReserveOn: TRadioButton;
    rbDeficitTowardsReserveOff: TRadioButton;
    rbDeficitTowardsReserveAll: TRadioButton;
    pnlPSDOut: TPanel;
    rbPSDOutOn: TRadioButton;
    rbPSDOutOff: TRadioButton;
    rbPSDOutAll: TRadioButton;
    rbPSDInOn: TRadioButton;
    rbPSDInOff: TRadioButton;
    rbPSDInAll: TRadioButton;
    frDateUnitsInterval: TfrDateUnitsIntervalEditFrame;
    frParamProductFilter: TfrParamProductFilter;
    frDeptFilter: TfrDeptFilter;
    procedure RadioButtonsClick(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FMinColumnsCount, FMaxColumnsCount: Integer;
    FChanging: Boolean;
  protected
    function GetOriginalFormCaption: string; override;
    function GetFilterFormVariantCode: Integer; override;
  public
    class function ShowForm(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AMinColumnsCount, AMaxColumnsCount: Integer;
      AProductClass: TProductClass = pcNone): Boolean;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AMinColumnsCount, AMaxColumnsCount: Integer;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;

    procedure Initialize; override;
  end;

  TfmQuantityDeficitFilterClass = class of TfmQuantityDeficitFilter;

implementation

uses
  dMain, uClientTypes, fTreeSelectForm, uTreeNodes, uUtils, uClientPeriods,
  uClientUtils, uProductClientUtils;

{$R *.DFM}

procedure TfmQuantityDeficitFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AMinColumnsCount, AMaxColumnsCount: Integer; AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, emEdit);

  FMinColumnsCount:= AMinColumnsCount;
  FMaxColumnsCount:= AMaxColumnsCount;
  FProductClass:= AProductClass;
end;

class function TfmQuantityDeficitFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AMinColumnsCount, AMaxColumnsCount: Integer; AProductClass: TProductClass): Boolean;
var
  f: TfmQuantityDeficitFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AMinColumnsCount, AMaxColumnsCount, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmQuantityDeficitFilter.RadioButtonsClick(Sender: TObject);
begin
  inherited;

  if FChanging then
    Exit;
  
  FChanging:= True;
  try
    CheckEditMode(dsData.DataSet);

    with dsData.DataSet do
      begin
        FieldByName('HAS_DEFICIT_CODE').AsFloat:= Ord(rbDeficitOn.Checked) + 2 * Ord(rbDeficitOff.Checked);
        FieldByName('HAS_DEFICIT_RSV_CODE').AsFloat:= Ord(rbDeficitTowardsReserveOn.Checked) + 2 * Ord(rbDeficitTowardsReserveOff.Checked);
        FieldByName('HAS_DEALS_IN_CODE').AsFloat:= Ord(rbPSDInOn.Checked) + 2 * Ord(rbPSDInOff.Checked);
        FieldByName('HAS_DEALS_OUT_CODE').AsFloat:= Ord(rbPSDOutOn.Checked) + 2 * Ord(rbPSDOutOff.Checked);
      end;

  finally
    FChanging:= False;
  end;  { try }
end;

procedure TfmQuantityDeficitFilter.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if FChanging then
    Exit;
  
  FChanging:= True;
  try
    with dsData.DataSet do
      begin
        rbDeficitAll.Checked:= (FieldByName('HAS_DEFICIT_CODE').AsFloat = 0);
        rbDeficitOn.Checked:= (FieldByName('HAS_DEFICIT_CODE').AsFloat = 1);
        rbDeficitOff.Checked:= (FieldByName('HAS_DEFICIT_CODE').AsFloat = 2);

        rbDeficitTowardsReserveAll.Checked:= (FieldByName('HAS_DEFICIT_RSV_CODE').AsFloat = 0);
        rbDeficitTowardsReserveOn.Checked:= (FieldByName('HAS_DEFICIT_RSV_CODE').AsFloat = 1);
        rbDeficitTowardsReserveOff.Checked:= (FieldByName('HAS_DEFICIT_RSV_CODE').AsFloat = 2);

        rbPSDInAll.Checked:= (FieldByName('HAS_DEALS_IN_CODE').AsFloat = 0);
        rbPSDInOn.Checked:= (FieldByName('HAS_DEALS_IN_CODE').AsFloat = 1);
        rbPSDInOff.Checked:= (FieldByName('HAS_DEALS_IN_CODE').AsFloat = 2);

        rbPSDOutAll.Checked:= (FieldByName('HAS_DEALS_OUT_CODE').AsFloat = 0);
        rbPSDOutOn.Checked:= (FieldByName('HAS_DEALS_OUT_CODE').AsFloat = 1);
        rbPSDOutOff.Checked:= (FieldByName('HAS_DEALS_OUT_CODE').AsFloat = 2);
      end;
      
  finally
    FChanging:= False;
  end;  { try }
end;

procedure TfmQuantityDeficitFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frDeptFilter.FieldNames:= 'CHOSEN_DEPTS';

  frDateUnitsInterval.IsBeginDateOriginOnIntervalChange:= True;
end;

function TfmQuantityDeficitFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= ProductClassToInt(FProductClass);
end;

function TfmQuantityDeficitFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmQuantityDeficitFilter.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  frParamProductFilter.ProductClass:= FProductClass;
  
  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);

  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

end.
