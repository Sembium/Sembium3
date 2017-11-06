unit fStoreDealProcessObject;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fProcessObjectFrame, ParamDataSet, Db, DBClient, ImgList,
  ActnList, StdCtrls, JvDBLookup, Mask, DBCtrls, AbmesClientDataSet,
  AbmesFields, JvToolEdit, JvDBControls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  fDateFieldEditFrame, System.Actions;

type
  TfrStoreDealProcessObject = class(TProcessObjectFrame)
    cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSTORE_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    pdsProcessObjectParamsSTORE_DEAL_TYPE_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSTORE_DEAL_NO: TAbmesFloatField;
    lblStoreDealProcessObjectStore: TLabel;
    lblStoreDealDate: TLabel;
    lblStoreDealNo: TLabel;
    edtStoreDealNo: TDBEdit;
    frStoreDealProcessObjectStore: TfrDeptFieldEditFrameBald;
    frStoreDealDate: TfrDateFieldEditFrame;
    cdsProcessObjectCustomIDSTORE_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsProcessObjectCustomIDSTORE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDSTORE_DEAL_NO: TAbmesFloatField;
    cdsProcessObjectCustomIDSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    btnShowProcessObjectForm: TButton;
    pdsProcessObjectParamsSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    procedure frStoreDealProcessObjectStoreactFrameUpdate(Sender: TObject);
    procedure cdsProcessObjectCustomIDAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure NewReadOnlySet; override;
    procedure SetFocusOnError; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure HideFrame; override;
  end;

implementation

uses
  Variants, dMain, uClientUtils, uUtils;

{$R *.DFM}

procedure TfrStoreDealProcessObject.SetFocusOnError;
begin
  edtStoreDealNo.SetFocus;
end;

procedure TfrStoreDealProcessObject.HideFrame;
begin
  actClearFieldValues.Execute;
  inherited;
end;

procedure TfrStoreDealProcessObject.NewReadOnlySet;
begin
  inherited;
  frStoreDealDate.ReadOnly:= ReadOnly;
  edtStoreDealNo.ReadOnly:= ReadOnly;
end;

procedure TfrStoreDealProcessObject.frStoreDealProcessObjectStoreactFrameUpdate(
  Sender: TObject);
begin
  inherited;
  // tui delphi-to go generira
  frStoreDealProcessObjectStore.actFrameUpdate(Sender);
  frStoreDealDate.actFrameUpdate(Sender);
end;

procedure TfrStoreDealProcessObject.cdsProcessObjectCustomIDAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  if (FieldCount > 0) then
    begin
      CheckEditMode(pdsProcessObjectParams);
      pdsProcessObjectParamsSTORE_DEAL_OBJECT_BRANCH_CODE.Assign(Fields[0]);
      pdsProcessObjectParamsSTORE_DEAL_OBJECT_CODE.Assign(Fields[1]);
    end;
end;

constructor TfrStoreDealProcessObject.Create(AOwner: TComponent);
begin
  inherited;
  frStoreDealProcessObjectStore.FieldNames:= 'STORE_CODE';
  frStoreDealProcessObjectStore.SelectStore:= True;
  frStoreDealDate.FieldNames:= 'STORE_DEAL_DATE';
end;

end.
