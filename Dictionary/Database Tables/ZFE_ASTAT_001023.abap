@EndUserText.label : 'Status Description persistence for Travel scenario'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #NOT_ALLOWED
define table zfe_astat_001023 {

  key client           : mandt not null;
  key travel_status_id : /dmo/overall_status not null;
  travel_status_text   : /dmo/description;

}