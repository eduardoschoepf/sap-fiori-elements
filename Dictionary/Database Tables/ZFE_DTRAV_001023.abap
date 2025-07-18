@EndUserText.label : ' Draft table for entity ZI_FE_Travel_001023'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #NOT_ALLOWED
define table zfe_dtrav_001023 {

  key client               : mandt not null;
  key traveluuid           : sysuuid_x16 not null;
  travelid                 : /dmo/travel_id;
  agencyid                 : /dmo/agency_id;
  customerid               : /dmo/customer_id;
  begindate                : /dmo/begin_date;
  enddate                  : /dmo/end_date;
  @Semantics.amount.currencyCode : 'zfe_dtrav_001023.currencycode'
  bookingfee               : /dmo/booking_fee;
  @Semantics.amount.currencyCode : 'zfe_dtrav_001023.currencycode'
  totalprice               : /dmo/total_price;
  currencycode             : /dmo/currency_code;
  description              : /dmo/description;
  overallstatus            : /dmo/overall_status;
  overallstatuscriticality : abap.int1;
  createdby                : syuname;
  createdat                : timestampl;
  lastchangedby            : syuname;
  lastchangedat            : timestampl;
  locallastchangedat       : timestampl;
  "%admin"                 : include sych_bdl_draft_admin_inc;

}