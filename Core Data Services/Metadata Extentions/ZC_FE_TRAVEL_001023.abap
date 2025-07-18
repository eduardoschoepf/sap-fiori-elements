@Metadata.layer: #CORE
@UI: {
    headerInfo: {
        typeName: 'Travel',
        typeNamePlural: 'Travels',
        title: {  type: #STANDARD, value: 'Description' },
        description: {  type: #STANDARD, value: 'TravelID' }
    }
}

annotate entity ZC_FE_Travel_001023
    with 
{
    @UI.facet: [
        /* Header facets */ 
        { 
        purpose: #HEADER,
        position: 10,
        type: #DATAPOINT_REFERENCE,
        targetQualifier: 'PriceData'
        },
        { 
        purpose: #HEADER,
        position: 20,
        type: #DATAPOINT_REFERENCE,
        targetQualifier: 'StatusData'
        },
        
        /* Standart facets */
        // Section 'General Information'
        { 
        label: 'General Information',
        id: 'GeneralInfo',
        type: #COLLECTION,
        position: 10
        },
        { 
        label: 'General',
        purpose: #STANDARD,
        position: 10,
        type: #IDENTIFICATION_REFERENCE,
        parentId: 'GeneralInfo'
        },
        // Field groups Prices and Dates
        { 
        label: 'Prices',
        purpose: #STANDARD,
        position: 20,
        type: #FIELDGROUP_REFERENCE,
        parentId: 'GeneralInfo',
        targetQualifier: 'PriceGroup'
        },
        { 
        label: 'Dates',
        purpose: #STANDARD,
        position: 30,
        type: #FIELDGROUP_REFERENCE,
        parentId: 'GeneralInfo',
        targetQualifier: 'DatesGroup'
        },
        // Section Bookings
        { 
        id: 'Booking',
        label: 'Bookings',
        purpose: #STANDARD,
        type: #LINEITEM_REFERENCE,
        position: 20,
        targetElement: '_Booking' }
    ]
    
    @UI.identification: [{ position: 10 }]
    Description;
    
    @UI.lineItem: [{ position: 10 }]
    TravelID;
    
    @UI.lineItem: [{ position: 30}]
    @UI.selectionField: [{ position: 10 }]
    @UI.identification: [{ position: 20 }]
    AgencyID;
    
    @UI.lineItem: [{ position: 40 }]
    @UI.selectionField: [{ position: 20 }]
    @UI.identification: [{ position: 30 }]
    CustomerID;
    
    @UI.lineItem: [{ position: 50 }]
    @UI.fieldGroup: [{ qualifier: 'DatesGroup', position: 10}]
    BeginDate;
    
    @UI.lineItem: [{ position: 60 }]
    @UI.fieldGroup: [{ qualifier: 'DatesGroup', position: 20}]
    EndDate;
    
    @UI.lineItem: [{ position: 70 }]
    @UI.fieldGroup: [{ qualifier: 'PriceGroup', position: 10}]
    BookingFee;
    
    @UI.lineItem: [{ position: 80 }]
    @UI.dataPoint: { qualifier: 'PriceData', title: 'Total Price' }
    @UI.fieldGroup: [{ qualifier: 'PriceGroup', position: 20}]
    TotalPrice;
    
    @UI.lineItem: [{ position: 90, criticality: 'OverallStatusCriticality' }]
    @UI.selectionField: [{ position: 30 }]
    @UI.textArrangement: #TEXT_ONLY
    @UI.dataPoint: { qualifier: 'StatusData', title: 'Status', criticality: 'OverallStatusCriticality' }
    OverallStatus;
    
    @UI.lineItem: [{ position: 100 }]
    LocalLastChangedAt;
}