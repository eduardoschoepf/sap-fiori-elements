@EndUserText.label : 'Connection persistence for Travel scenario'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #NOT_ALLOWED
define table zfe_aconn_001023 {

  key client        : mandt not null;
  key carrier_id    : /dmo/carrier_id not null;
  key connection_id : /dmo/connection_id not null;
  airport_from_id   : /dmo/airport_from_id;
  airport_to_id     : /dmo/airport_to_id;
  departure_time    : /dmo/flight_departure_time;
  arrival_time      : /dmo/flight_arrival_time;
  distance          : /dmo/distance_fe;
  distance_unit     : msehi;

}