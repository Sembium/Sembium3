unit uGroupSales;

interface

uses
  Db;

procedure SetTotalPriceField(ADataSet: TDataSet);

procedure SetQuantityChgXField(ADataSet: TDataSet);
procedure SetQuantityClientOfferedChgXField(ADataSet: TDataSet);

procedure SetXFields(ADataSet: TDataSet);

implementation

uses
  uUtils, uSaleDealTypes;

procedure SetTotalPriceField(ADataSet: TDataSet);
var
  Quantity, SinglePrice, LeaseDateUnitQty: Variant;
begin
  with ADataSet do
    begin
      if not FieldByName('SSH_QUANTITY').IsNull then
        Quantity:= FieldByName('SSH_QUANTITY').AsVariant
      else
        begin
          if not FieldByName('QUANTITY').IsNull then
            Quantity:= FieldByName('QUANTITY').AsVariant
          else
            Quantity:= FieldByName('CL_OFFER_QUANTITY').AsVariant
        end;

      if (FieldByName('SALE_DEAL_TYPE_CODE').AsInteger <> sdtLease) then
        LeaseDateUnitQty:= 1
      else
        if not FieldByName('SSH_LEASE_DATE_UNIT_QTY').IsNull then
          LeaseDateUnitQty:= FieldByName('SSH_LEASE_DATE_UNIT_QTY').AsVariant
        else
          if not FieldByName('LEASE_DATE_UNIT_QTY').IsNull then
            LeaseDateUnitQty:= FieldByName('LEASE_DATE_UNIT_QTY').AsVariant
          else
            LeaseDateUnitQty:= FieldByName('CL_OFFER_LEASE_DATE_UNIT_QTY').AsVariant;

      SinglePrice:= FieldByName('SINGLE_PRICE').AsVariant;

      if VarIsNullOrEmpty(SinglePrice) or VarIsNullOrEmpty(Quantity) or VarIsNullOrEmpty(LeaseDateUnitQty) then
        FieldByName('TOTAL_PRICE').Clear
      else
        FieldByName('TOTAL_PRICE').AsVariant:= SinglePrice * Quantity * LeaseDateUnitQty;
    end;  { with }
end;

procedure SetQuantityChgXField(ADataSet: TDataSet);
begin
  with ADataSet do
    if FieldByName('ANNUL_EMPLOYEE_CODE').IsNull then
      begin
        FieldByName('QUANTITY_CHG_X').AsVariant:=
          FieldByName('QUANTITY_CHG').AsVariant;
      end
    else
      begin
        FieldByName('QUANTITY_CHG_X').Clear;
      end;
end;

procedure SetQuantityClientOfferedChgXField(ADataSet: TDataSet);
begin
  with ADataSet do
    if FieldByName('ANNUL_EMPLOYEE_CODE').IsNull then
      begin
        FieldByName('CL_OFFER_QUANTITY_CHG_X').AsVariant:=
          FieldByName('CL_OFFER_QUANTITY_CHG').AsVariant;
      end
    else
      begin
        FieldByName('CL_OFFER_QUANTITY_CHG_X').Clear;
      end;
end;

procedure SetXFields(ADataSet: TDataSet);
begin
  SetQuantityChgXField(ADataSet);
  SetQuantityClientOfferedChgXField(ADataSet);
end;

end.
