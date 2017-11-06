unit fSelectSpecFinModel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, uClientTypes,
  dDocClient, uBorderRelTypes, JvExControls, JvDBLookup, AbmesFields;

type
  TfmSelectSpecFinModel = class(TBevelEditForm)
    cdsSpecFinModels: TAbmesClientDataSet;
    cdsSpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    cdsSpecFinModelsFINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecFinModelsSPEC_FIN_MODEL_NAME: TAbmesWideStringField;
    dsSpecFinModels: TDataSource;
    cbSpecFinModel: TJvDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      APartnerCode: Integer = 0; ABorderRelType: TBorderRelType = brtNone;
      ABaseDate: TDateTime = 0); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      APartnerCode: Integer = 0; ABorderRelType: TBorderRelType = brtNone;
      ABaseDate: TDateTime = 0): Integer;
  end;

implementation

uses
  uUtils;

{$R *.dfm}

{ TfmSelectSpecFinModel }

procedure TfmSelectSpecFinModel.CloseDataSets;
begin
  inherited;
  cdsSpecFinModels.Close;
end;

procedure TfmSelectSpecFinModel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModalResult <> mrOK) then
    cbSpecFinModel.KeyValue:= Null;

  inherited;
end;

procedure TfmSelectSpecFinModel.OpenDataSets;
begin
  cdsSpecFinModels.Open;
  inherited;
end;

procedure TfmSelectSpecFinModel.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  APartnerCode: Integer; ABorderRelType: TBorderRelType; ABaseDate: TDateTime);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);

  cdsSpecFinModels.Params.ParamByName('PARTNER_CODE').AsInteger:= APartnerCode;
  cdsSpecFinModels.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:= BorderRelTypeToInt(ABorderRelType);
  cdsSpecFinModels.Params.ParamByName('BEGIN_DATE').AsDateTime:= ABaseDate;
  cdsSpecFinModels.Params.ParamByName('END_DATE').AsDateTime:= ABaseDate;
end;

class function TfmSelectSpecFinModel.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  APartnerCode: Integer; ABorderRelType: TBorderRelType;
  ABaseDate: TDateTime): Integer;
var
  f: TfmSelectSpecFinModel;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
      APartnerCode, ABorderRelType, ABaseDate);
    f.InternalShowForm;
    Result:= VarToInt(f.cbSpecFinModel.KeyValue);
  finally
    f.ReleaseForm;
  end;
end;

end.
