unit fStoreDealInProcessObject;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fStoreDealProcessObject, Db, ParamDataSet, DBClient, ImgList,
  ActnList, StdCtrls, Mask, DBCtrls, JvDBLookup, AbmesClientDataSet,
  AbmesFields, JvToolEdit, JvDBControls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  fDateFieldEditFrame, System.Actions;

type
  TfrStoreDealInProcessObject = class(TfrStoreDealProcessObject)
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
  SStoreDealIn = 'Постъпление';
  
implementation

uses
  uDealTypes, uUtils, fStoreDealIn, uClientTypes, uProducts;

{$R *.DFM}

resourcestring
  SWrongDealType = 'Движението с тази идентификация не е Постъпление!';

{ TfrStoreDealInProcessObject }

function TfrStoreDealInProcessObject.ProcessObjectName: string;
begin
  Result:= SStoreDealIn;
end;

procedure TfrStoreDealInProcessObject.ShowProcessObjectForm;
begin
  inherited;
  TfmStoreDealIn.ShowForm(dmDocClient, pdsProcessObjectParams, emReadOnly, doNone, pcNormal);
end;

procedure TfrStoreDealInProcessObject.cdsProcessObjectCustomIDAfterOpen(
  DataSet: TDataSet);
begin
  inherited;

  if (cdsProcessObjectCustomIDSTORE_DEAL_TYPE_CODE.AsInteger <> dtStoreIn) then
    raise Exception.Create(SWrongDealType);
end;

procedure TfrStoreDealInProcessObject.cdsProcessObjectIDBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsProcessObjectID.Params.ParamByName('STORE_DEAL_TYPE_CODE').AsInteger:= dtStoreIn;
end;

end.

