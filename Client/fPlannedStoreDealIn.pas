unit fPlannedStoreDealIn;

interface

uses                          
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fPlannedStoreDeal, Db, AbmesFields, DBClient, AbmesClientDataSet,
  ImgList, ActnList, fProcessBindingFrame, fStoreDealProcessBinding,
  JvToolEdit, JvDBControls, fBaseFrame, fDBFrame, fFieldEditFrame,
  DBCtrls, JvDBLookup, StdCtrls, Mask,
  Buttons, ExtCtrls, Menus, JvButtons, fProductFieldEditFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, JvComponent,
  JvCaptionButton, fDateIntervalFrame, JvExControls, JvComponentBase;

type
  TfmPlannedStoreDealIn = class(TfmPlannedStoreDeal)
    procedure cdsDataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }              
  end;

implementation

uses
  uDealTypes;

{$R *.DFM}

procedure TfmPlannedStoreDealIn.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataSTORE_DEAL_TYPE_CODE.AsInteger:= sdtIn;
end;

end.
