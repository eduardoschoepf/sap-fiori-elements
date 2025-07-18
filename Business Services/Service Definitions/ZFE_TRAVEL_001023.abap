define service ZFE_Travel_001023 {
  expose ZC_FE_TRAVEL_001023 as Travel;
  expose ZC_FE_BOOKING_001023 as Booking;
  expose ZI_FE_CONN_001023 as Connection;
  expose ZI_FE_FLIG_001023 as Flight;
  expose ZI_FE_CARR_001023 as Airline;
  expose I_CURRENCY as Currency;
  expose /DMO/I_CUSTOMER as Customer;
}