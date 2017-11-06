unit fParRelProductStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fStatusAbstract, DB, DBClient, AbmesClientDataSet, ActnList,
  StdCtrls, Mask, DBCtrls, Buttons, AbmesFields;

type
  TfrParRelProductStatus = class(TfrStatusAbstract)
    cdsStatusPARTNER_CODE: TAbmesFloatField;
    cdsStatusBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsStatusPRODUCT_CODE: TAbmesFloatField;
    cdsStatusPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    cdsStatusEXISTANCE_MONTHS: TAbmesFloatField;
    cdsStatusCURRENT_STATUS_REACH_MONTHS: TAbmesFloatField;
    cdsStatusqryParRelProductStatusChanges: TDataSetField;
  private
    FOldFieldsValues: Variant;
  protected
    procedure DataChange(Sender: TObject); override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Initialize; override;
  end;

implementation

uses
  fParRelProductStatuses, dMain, uUtils;

{$R *.dfm}

{ TfrParRelProductStatus }

constructor TfrParRelProductStatus.Create(AOwner: TComponent);
begin
  inherited;
  EditFormClass:= TfmParRelProductStatuses;
  FOldFieldsValues:= VarArrayCreate([0, 0], varInteger)
end;

procedure TfrParRelProductStatus.DataChange(Sender: TObject);
begin
  if not VarArraysAreEqual(dsData.DataSet.GetFieldValuesAsVarArray(FieldNames), FOldFieldsValues) then
    begin
      inherited DataChange(Sender);
      FOldFieldsValues:= dsData.DataSet.GetFieldValuesAsVarArray(FieldNames);
    end;  { if }
end;

procedure TfrParRelProductStatus.Initialize;
begin
  inherited;
  FieldNames:= 'PARTNER_CODE; BORDER_REL_TYPE_CODE; PRODUCT_CODE';
end;

end.
