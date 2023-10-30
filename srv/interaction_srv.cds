using {db as my} from '../db/interactions';

@path: '/myservice'
service CatalogService {
    // @Capabilities : { 
        
    //     InsertRestrictions.Insertable: true,
    //     ReadRestrictions.Readable: true,
    //     UpdateRestrictions.Updatable: true,
    //     DeleteRestrictions.Deletable: true
    // }
    entity cities as projection on my.cities;
}

annotate CatalogService.cities with @odata.draft.enabled;