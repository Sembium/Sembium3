unit uProcessObjectIdentifierFormats;

interface

const
  poifTemp = 'temp %d/%d';
  poifStoreDeal = '%s/%s/%s/%d';
  poifStornoStoreDeal = '%s/%s/%s/%d /С:%s,%s';
  poifMaterialList = '%g/%d';
  poifMaterialListLine = poifMaterialList + ' / %s/%d';  // must not contain the '-' symbol
  poifModelStage = poifMaterialListLine + ' > %d';
  poifModelOperation = poifModelStage + ' > %d.%d';
  poifSale = '%g / %d';
  poifSaleOrder = '%g / %d / %d';
  poifGroupSaleOrder = '%g / %d / %d';
  poifSaleGroup = '%g / %d';
  poifSaleShipment = '%g / %d / %d';
  poifDeficitCoverDecision = '%g / %d';
  poifDeliveryContract = poifDeficitCoverDecision + ' / %d';
  poifBOIOrder = '%g / %d / %d / %d';
  poifRealFinModelLine = '%g/%d/%s.%d';

implementation

end.
