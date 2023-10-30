namespace db;

entity cities  {
    key Id: UUID @UI.Hidden; 
    name : String(20) @title: 'Name';
    area : Decimal(20, 2) @title : 'Area';
    population: Integer @title : 'Population';
    density : Integer @title : 'Density';
    criticality: Integer @UI.Hidden;
}


