using CatalogService as service from '../../srv/interaction_srv';

annotate service.cities with @(
    UI.SelectionFields : [name],
    UI.LineItem : {
        $value : [
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : area,
            },
            {
                $Type : 'UI.DataField',
                Value : population,
            },
            {
                $Type : 'UI.DataField',
                Value : density,
            }
        ]
    }
);

annotate service.cities with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Value: area,
            },
            {
                $Type: 'UI.DataField',
                Value: population,
            },
        ],
    },
    UI.LineItem.@UI.Criticality: criticality,
    
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);

