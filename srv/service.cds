using capmdev1 as dev from '../db/schema';

service Sitedata {
    entity SiteInformation as projection on dev.Siteinformation;
    entity SiteUsers       as projection on dev.Siteperson;
}
