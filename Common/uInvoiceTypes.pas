unit uInvoiceTypes;

interface

const
  itFaktura= 1;
  itDebitnoIzvestie= 2;
  itKreditnoIzvestie= 3;
  
  itMitnicheskaDeklaracia= 7;
  itOtchetZaProdajbite= 8;
  itProtokol= 9;
  itKorigirashtProtokol = 10;

type
  TInvoiceInOut = (iioNone, iioIn, iioOut);

implementation

end.
