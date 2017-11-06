unit fStoreDealOutProcessObject;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fStoreDealProcessObject, Db, ParamDataSet, DBClient, ImgList,
  ActnList, StdCtrls, Mask, DBCtrls, JvDBLookup, AbmesClientDataSet,
  AbmesFields, JvToolEdit, JvDBControls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  fDateFieldEditFrame, System.Actions;
                                  
type
  TfrStoreDealOutProcessObject = class(TfrStoreDealProcessObject)
    procedure cdsProcessObjectCustomIDAfterOpen(DataSet: TDataSet);
    procedure cdsProcessObjectIDBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    function ProcessObjectName: string; override;
    procedure ShowProcessObjectForm; override;
  public
    { Public declarations }
  end;

resourcestring
  SStoreDealOut = 'Теглене';

implementation

uses
  uDealTypes, uUtils, fStoreDealOut, uClientTypes, uProducts;

{$R *.DFM}

resourcestring
  SWrongDealType = 'Движението с тази идентификация не е Теглене!';

{ TfrStoreDealOutProcessObject }

function TfrStoreDealOutProcessObject.ProcessObjectName: string;
begin
  Result:= SStoreDealOut;
end;

procedure TfrStoreDealOutProcessObject.ShowProcessObjectForm;
begin
  inherited;
  TfmStoreDealOut.ShowForm(dmDocClient, pdsProcessObjectParams, emReadOnly, doNone, pcNormal);
end;

procedure TfrStoreDealOutProcessObject.cdsProcessObjectCustomIDAfterOpen(
  DataSet: TDataSet);
begin
  inherited;

  if (cdsProcessObjectCustomIDSTORE_DEAL_TYPE_CODE.AsInteger <> dtStoreOut) then
    raise Exception.Create(SWrongDealType);
end;

procedure TfrStoreDealOutProcessObject.cdsProcessObjectIDBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsProcessObjectID.Params.ParamByName('STORE_DEAL_TYPE_CODE').AsInteger:= dtStoreOut;
end;

end.
