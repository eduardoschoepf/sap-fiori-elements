@EndUserText.label : ' Draft table for entity ZI_FE_Booking_001023'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #NOT_ALLOWED
define table zfe_dbook_001023 {

  key client         : mandt not null;
  key bookinguuid    : sysuuid_x16 not null;
  traveluuid         : sysuuid_x16;
  bookingid          : /dmo/booking_id;
  bookingdate        : /dmo/booking_date;
  customerid         : /dmo/customer_id;
  carrierid          : /dmo/carrier_id;
  connectionid       : /dmo/connection_id;
  flightdate         : /dmo/flight_date;
  @Semantics.amount.currencyCode : 'zfe_dbook_001023.currencycode'
  flightprice        : /dmo/flight_price;
  currencycode       : /dmo/currency_code;
  createdby          : syuname;
  lastchangedby      : syuname;
  locallastchangedat : timestampl;
  "%admin"           : include sych_bdl_draft_admin_inc;

}