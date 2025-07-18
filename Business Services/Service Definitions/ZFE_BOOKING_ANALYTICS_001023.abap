define service zfe_booking_analytics_001023 {
  expose ZC_FE_BOOKING_ANALYTICS_001023 as Booking;
  expose ZI_FE_TRAVEL_ANALYTICS_001023 as Travel;
  expose ZI_FE_CONN_001023 as Connection;
  expose ZI_FE_FLIG_001023 as Flight;
  expose ZI_FE_CARR_001023 as Airline;
  expose I_CURRENCY as Currency;
  expose /DMO/I_CUSTOMER as Customer;
  expose /DMO/I_AGENCY as Agency;
}