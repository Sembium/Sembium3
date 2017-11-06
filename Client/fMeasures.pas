unit fMeasures;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient, GridsEh,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fBottomButtonGridForm, AbmesClientDataSet, DBGridEh, AbmesDBGrid, AbmesFields,
  Menus, JvButtons, ComCtrls, ToolWin, JvComponentBase, JvCaptionButton,
  dDocClient, uClientTypes, uProducts, DBGridEhGrouping;

type
  TfmMeasures = class(TBottomButtonGridForm)
    cdsGridDataMEASURE_CODE: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataMEASURE_NAME: TAbmesWideStringField;
    cdsGridDataEXPORT_NO: TAbmesFloatField;
    cdsGridDataROUNDER: TAbmesFloatField;
    cdsGridDataPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsGridData_MAX_MEASURE_CODE: TAggregateField;
    cdsRounders: TAbmesClientDataSet;
    cdsRoundersROUNDER: TAbmesFloatField;
    cdsRoundersROUNDER_TEXT: TAbmesWideStringField;
    cdsGridData_ROUNDER_TEXT: TAbmesWideStringField;
    cdsGridDataI_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataI_MEASURE_NAME: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
  private
    FProductClass: TProductClass;
    MsgParams: TStrings;
    FOriginalFormCaption: string;
  protected
    function GetOriginalFormCaption: string; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNormal): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNormal); reintroduce; virtual;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, fMeasure, Math, uProductClientUtils, uClientUtils, uUtils;

{$R *.DFM}

procedure TfmMeasures.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmMeasure;
end;

function TfmMeasures.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmMeasures.Initialize;
begin
  inherited;

  MsgParams:=
    CreateCommonMsgParams(
      LoginContext,
      FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmMeasures.OpenDataSets;
const
  MaxPower = 4;
var
  i: Integer;
begin
  cdsRounders.CreateDataSet;
  for i:= -MaxPower to MaxPower do
    cdsRounders.AppendRecord([i, IntPower(10, -i)]);

  inherited;
end;

procedure TfmMeasures.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode,
    ADefaultsOrigin, AFilterFormEnabled);

  FProductClass:= AProductClass;
end;

class function TfmMeasures.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass): Boolean;
var
  f: TfmMeasures;
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

procedure TfmMeasures.CloseDataSets;
begin
  inherited;
  cdsRounders.Close;
end;

procedure TfmMeasures.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
end;

procedure TfmMeasures.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataMEASURE_CODE.AsFloat:=
    VarToInt(cdsGridData_MAX_MEASURE_CODE.AsVariant) + 1;
  cdsGridDataROUNDER.AsInteger:= 0;
  cdsGridDataPRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
end;

end.
