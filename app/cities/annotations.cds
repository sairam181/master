using CatalogService as service from '../../srv/interaction_srv';

annotate service.cities with @(
    UI.SelectionFields : [name],
    
    UI.LineItem        : [
        {
            $Type: 'UI.DataField',
            Value: name,
            
            
        },
        {
            $Type: 'UI.DataField',
            Value: area,
        },
        {
            $Type      : 'UI.DataField',
            Value      : population,
            @UI.Importance: #High
        },
        {
            $Type: 'UI.DataField',
            Value: density,
        },

    ],
    UI.LineItem.@UI.Criticality: #Critical,
    UI.SelectionVariant: {SelectOptions: [{
        $Type       : 'UI.SelectOptionType',
        PropertyName: name,
        Ranges      : [{
            $Type : 'UI.SelectionRangeType',
            Sign  : #I,
            Option: #CP,
            Low   : 'ABC'
        }]
    }]}
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
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);
