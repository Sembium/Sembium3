unit fMLMSOperation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMLLProcessObject, DB, ParamDataSet, AbmesFields,
  DBClient, AbmesClientDataSet, ActnList, StdCtrls, AbmesDBCheckBox,
  JvDBLookup, Mask, DBCtrls, JvExControls, JvComponent, System.Actions,
  fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fProductFieldEditFrameBald;

type
  TfrMLMSOperation = class(TfrMLLProcessObject)
    lblModelStageNo: TLabel;
    edtModelStageNo: TDBEdit;
    lblMLMSOperationNo: TLabel;
    edtMLMSOperationNo: TDBEdit;
    cdsProcessObjectCustomIDML_MODEL_STAGE_NO: TAbmesFloatField;
    pdsProcessObjectParamsML_MODEL_STAGE_NO: TAbmesFloatField;
    pdsProcessObjectParamsMLMS_OPERATION_NO: TAbmesFloatField;
    pdsProcessObjectParamsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsProcessObjectCustomIDMLMS_OPERATION_NO: TAbmesFloatField;
    cdsProcessObjectCustomIDMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    edtMLMSOperationVariantNo: TDBEdit;
    lblMLMSOperationVariantNo: TLabel;
    cdsProcessObjectCustomIDMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDMLMS_OBJECT_CODE: TAbmesFloatField;
    pdsProcessObjectParamsMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsMLMS_OBJECT_CODE: TAbmesFloatField;
  private
    { Private declarations }
  protected
    procedure NewReadOnlySet; override;
    function ProcessObjectName: string; override;
    procedure ShowProcessObjectForm; override;
  public
    { Public declarations }
  end;

implementation

uses
  fMLMSOperationVariants, uClientTypes;

{$R *.dfm}

resourcestring
  SMLLMSOperation = 'Комплектовка за Операция Разпределяна';

{ TfrMLMSOperation }

procedure TfrMLMSOperation.NewReadOnlySet;
begin
  inherited;
  edtModelStageNo.ReadOnly:= ReadOnly;
  edtMLMSOperationNo.ReadOnly:= ReadOnly;
  edtMLMSOperationVariantNo.ReadOnly:= ReadOnly;
end;

function TfrMLMSOperation.ProcessObjectName: string;
begin
  Result:= SMLLMSOperation;
end;

procedure TfrMLMSOperation.ShowProcessObjectForm;
begin
  // do not call inherited
  TfmMLMSOperationVariants.ShowForm(dmDocClient, pdsProcessObjectParams, emReadOnly);
end;

end.
 
