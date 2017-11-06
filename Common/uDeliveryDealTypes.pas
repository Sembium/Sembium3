unit uDeliveryDealTypes;

interface

const
  ddtDeliveryForSales = 3;
  ddtLeaseForSales = 4;
  ddtImport = 5;
  ddtDeliveryForEnvironment = 6;
  ddtLeaseForEnvironment = 7;
  ddtDeliveryForOccupations = 9;

  ddtDelivery = [ddtDeliveryForSales, ddtDeliveryForEnvironment];
  ddtLease = [ddtLeaseForSales, ddtLeaseForEnvironment, ddtDeliveryForOccupations];

implementation

end.
