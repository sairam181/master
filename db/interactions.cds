namespace db;

using {sap.common.CodeList,Country} from '@sap/cds/common';


entity cities  {
    key Id: UUID @UI.Hidden; 
    name : String(20) @title: 'Name';
    area : Decimal(20, 2) @title : 'Area';
    
    population: Integer @title : 'Population';
    density : Integer @title : 'Density';
    critical: Association to Criticality;
    
}

entity Criticality : CodeList  {
  key code    : Integer default 0 @Common.Text : name @Common.TextArrangement : #TextFirst;
}