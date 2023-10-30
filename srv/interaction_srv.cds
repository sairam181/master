using {db as my} from '../db/interactions';

@path: '/myservice'
service CatalogService {
    entity cities as projection on my.cities;
}

annotate CatalogService.cities with @odata.draft.enabled;