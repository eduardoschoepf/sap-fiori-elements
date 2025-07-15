@EndUserText.label : 'Carrier persistence for Travel scenario'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #NOT_ALLOWED
define table zfe_acarr_001023 {

  key client      : mandt not null;
  key carrier_id  : /dmo/carrier_id not null;
  name            : /dmo/carrier_name;
  carrier_pic_url : /dmo/carrier_pic;
  currency_code   : /dmo/currency_code;

}