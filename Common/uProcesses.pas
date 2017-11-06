unit uProcesses;

interface

const
{  pSupportOfEffectiveStoreQuantities = 10;
  pClaimOnProductDelivery = 20;
  pProductSale = 30;
  pProductDelivery = 40;
  pOvertakenQuantities = 50;
  pMedialProcess = 60;
  pProductSaleManufactureEnsure = 70;
  pSpecialEvents = 80;
  pOtherBusinessDecisions = 90;
  pEquipmentManufacture = 100;
  pOvertakenQuantity = 110;
  pPlannedStoreDeal = 200;
  pSaleGroup = 210;
}

// Processes
  pINV          =    1;  // InvIN
  pPESN         =   10;  // PESN
  pRPD          =   20;  // RD
  pDCD          =   39;  // PDD
  pPD           =   40;  // Final OPD
  pSimplePD     =   41;  // Final DSR
  pNKT          =   50;  // VNK
  pOPWithSale   =   60;  // Final OPV
  pOPWithMLL    =   61;  // ORM OPV
  pOPWithMLMSO  =   62;  // KOpC
  pNSR          =   90;  // NSR
  pWaste        =   91;  // BlokOPV
  pWasteSale    =   92;  // !!! iztrito ot bazata - da se mahne ottuk !!!
  pPEK          =  100;  // VtrPB
  pNK           =  110;  // NKZ
  pOKMP         =  130;  // OKonsF
  pOKPP         =  140;  // OKompTP
  pORPO         =  150;  // ORPO
  pEXP          =  160;  // Eksp OPP
  pSaleRequestLine =  165;  // ODK
  pOPWithoutMLL =  180;  // bMO OPV
  pBPOItem      =  190;  // OLBS

// Fin Processes
  pFinPrdUobZd  = 201;  // PrdUobZd
  pFinPrdUobNl  = 202;  // PrdUobNl
  pFinDstUOb    = 203;  // DstUOb
  pFinPrdFOb    = 204;  // PrdFOb
  pFinDstFOb    = 205;  // DstFOb
  pFinDstPrc    = 206;  // DstPrc
  pFinAdm       = 207;  // Adm
  pFinVtrRF     = 208;  // FinVtrRF
  pFinVtrOF     = 209;  // FinVtrOF


  pPlannedSD    = 1111;
// Tva e process, s koito ne bi triabvalo da ima nito edna Skladova operacia - toi sluji
//samo tehnicheski da se vavede obvarzanost, a pri zapisa na skladovata operacia obvarzanostta
//se kopira ot obvarzanostta na Planovata Skladova Operacia

// Process Object Classes
  pocStoreDeal              =  10;
  pocMaterialListLine       =  20;
  pocMaterialList           =  21;
  pocSale                   =  30;
  pocDeficitCoverDecision   =  39;
  pocDeliveryContract       =  40;
  pocSaleGroup              = 210;
  pocSaleShipment           =  50;
  pocModelStage             =  60;
  pocModelOperation         =  70;
  pocBOIOrder               =  80;
  pocRealFinModelLine       = 100;

implementation

end.
