@EndUserText.label : 'Booking persistence for Travel scenario'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #NOT_ALLOWED
define table zfe_abook_001023 {

  key client            : mandt not null;
  key booking_uuid      : sysuuid_x16 not null;
  travel_uuid           : sysuuid_x16 not null;
  booking_id            : /dmo/booking_id;
  booking_date          : /dmo/booking_date;
  customer_id           : /dmo/customer_id;
  carrier_id            : /dmo/carrier_id;
  connection_id         : /dmo/connection_id;
  flight_date           : /dmo/flight_date;
  @Semantics.amount.currencyCode : 'zfe_abook_001023.currency_code'
  flight_price          : /dmo/flight_price;
  currency_code         : /dmo/currency_code;
  created_by            : syuname;
  last_changed_by       : syuname;
  local_last_changed_at : timestampl;

}