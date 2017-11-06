unit fStoreDealProcessBinding;
                     
interface          

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fProcessBindingFrame, fDeliveryProcessObject, fBaseFrame, fDBFrame,
  fFieldEditFrame, fProcessObjectFrame, Db, ImgList,
  ActnList, DBCtrls, ExtCtrls, StdCtrls, fPPProcessObject,
  fStoreDealProcessObject, fStoreDealInProcessObject,
  fStoreDealOutProcessObject,
  fSDBindingPlannedSD, fSDBindingWorkProcess,
  fMLLProcessObject, fSaleShipmentProcessObject, fEmptyFieldEditFrame,
  fDeficitCoverDecisionProcessObject, fSDBindingSimpleDelivery,
  fMLMSOperation, fBPOIProcessObject, fDeptFieldEditFrameBald,
  fMLBoundProcessObject, fSaleOrderProcessObject, AbmesFields, DBClient,
  AbmesClientDataSet, JvExControls, JvComponent, JvDBLookup,
  fFinOrderLineProcessObject, uProducts, fSaleRequestLineProcessObject,
  System.Actions;

type
  TfrStoreDealProcessBinding = class(TProcessBindingFrame)
    pnlCurrentProcess: TPanel;
    frEmptyFieldEditFrame: TfrEmptyFieldEditFrame;
    frDeliveryProcessObject: TfrDeliveryProcessObject;
    frStoreDealInProcessObject: TfrStoreDealInProcessObject;
    frSDBindingPlannedSD: TfrSDBindingPlannedSD;
    frSDBindingWorkProcess: TfrSDBindingWorkProcess;
    frStoreDealOutProcessObject: TfrStoreDealOutProcessObject;
    frPPProcessObject: TfrPPProcessObject;
    frSaleShipmentProcessObject: TfrSaleShipmentProcessObject;
    frDeficitCoverDecisionProcessObject: TfrDeficitCoverDecisionProcessObject;
    frSDBindingSimpleDelivery: TfrSDBindingSimpleDelivery;
    frBPOIProcessObject: TfrBPOIProcessObject;
    frMLMSOperation: TfrMLMSOperation;
    frMLLProcessObject: TfrMLLProcessObject;
    frSaleOrderProcessObject: TfrSaleOrderProcessObject;
    frFinOrderLineProcessObject: TfrFinOrderLineProcessObject;
    frSaleRequestLineProcessObject: TfrSaleRequestLineProcessObject;
    procedure FrameExit(Sender: TObject);
    procedure actFrameUpdate(Sender: TObject);
  private
    { Private declarations } 
  protected
    procedure NewReadOnlySet; override;
    function GetBindingFrame(ProcessCode: Integer): TFieldEditFrame; override;
  public
    { Public declarations }
  end;

implementation

uses
  uProcesses;

{$R *.DFM}

{ TfrStoreDealProcessBinding }

{ update 17.02.2003: toia warning e outdated, no opisva stranno povedenie, koeto moje da se proiavi niakoi den   
  WARNING!!!
  ako niakoi reshi da dobavia frames tuka, da ima predvid slednata stranna situacia:
  otvariash dfm faila i gledash otpred inline blok. ako go premestish v kraia ne bi triabvalo
  da ima razlika. da, ama ne! nasira se cialata forma, izpolzvashta toia frame. pri tova
  tova se sluchva samo s frPPProcessObjectWithWaste i naslednicite mu. v tiah ne otkrih nishto
  stranno nito na nivo kod, nito na nivo dfm (kakto i vyv vsichki formi, deto gi izpolzvat)
}
function TfrStoreDealProcessBinding.GetBindingFrame(
  ProcessCode: Integer): TFieldEditFrame;
begin
  case ProcessCode of
    pRPD:
      Result:= frStoreDealInProcessObject;

    pNKT:
      Result:= frStoreDealOutProcessObject;

    pDCD:
      Result:= frDeficitCoverDecisionProcessObject;

    pOPWithoutMLL, pOPWithSale, pWaste:
      Result:= frPPProcessObject;

    pPD:
      Result:= frDeliveryProcessObject;

    pSimplePD:
      Result:= frSDBindingSimpleDelivery;

    pOPWithMLMSO:
      Result:= frMLMSOperation;

    pOPWithMLL:
      Result:= frMLLProcessObject;

    pOKMP, pOKPP, pORPO, pNSR, pPEK, pINV, pPESN:
      Result:= frSDBindingWorkProcess;

    pPlannedSD:
      Result:= frSDBindingPlannedSD;

    pEXP:
      Result:= frSaleShipmentProcessObject;

    pSaleRequestLine:
      Result:= frSaleRequestLineProcessObject;

    pNK:
      Result:= frEmptyFieldEditFrame;

    pBPOItem:
      Result:= frBPOIProcessObject;

    pWasteSale:
      Result:= frSaleOrderProcessObject;

    pFinPrdUobZd, pFinPrdUobNl, pFinDstUOb, pFinDstPrc, pFinAdm, pFinVtrRF, pFinVtrOF, pFinPrdFOb, pFinDstFOb:
      Result:= frFinOrderLineProcessObject;

  else
    Result:= inherited GetBindingFrame(ProcessCode);
  end;
end;

procedure TfrStoreDealProcessBinding.NewReadOnlySet;
begin
  inherited;
  frDeliveryProcessObject.ReadOnly:= ReadOnly;
  frStoreDealInProcessObject.ReadOnly:= ReadOnly;
  frStoreDealOutProcessObject.ReadOnly:= ReadOnly;
  frSDBindingPlannedSD.ReadOnly:= ReadOnly;
  frSDBindingWorkProcess.ReadOnly:= ReadOnly;
  frPPProcessObject.ReadOnly:= ReadOnly;
  frSaleShipmentProcessObject.ReadOnly:= ReadOnly;
  frEmptyFieldEditFrame.ReadOnly:= ReadOnly;
  frDeficitCoverDecisionProcessObject.ReadOnly:= ReadOnly;
  frSDBindingSimpleDelivery.ReadOnly:= ReadOnly;
  frMLLProcessObject.ReadOnly:= ReadOnly;
  frMLMSOperation.ReadOnly:= ReadOnly;
end;

procedure TfrStoreDealProcessBinding.FrameExit(Sender: TObject);
begin
  inherited;
  if not ReadOnly then
    DoApplyUpdates;
end;

procedure TfrStoreDealProcessBinding.actFrameUpdate(Sender: TObject);
begin
  inherited;
  // mnogo grozen workaround!!! actFrameUpdate na vytreshnite frameove ne se vika samo. vij frStoreDealProcessObject.actFrameUpdate
  frStoreDealInProcessObject.frStoreDealProcessObjectStoreactFrameUpdate(Sender);
  frStoreDealOutProcessObject.frStoreDealProcessObjectStoreactFrameUpdate(Sender);
  frDeliveryProcessObject.actFrameUpdate(Sender);
  frSDBindingSimpleDelivery.actFrameUpdate(Sender);
end;

end.
