namespace capmdev1;

using {
    managed,
    Country
} from '@sap/cds/common';

entity Siteinformation : managed {
    key ID      : UUID;
        store   : String(4);
        country : Country;
        persons : Composition of many Siteperson
                      on persons.store = $self;
}

entity Siteperson {
    key ID         : UUID;
    key store : Association to Siteinformation;
    key employeeid : String(8);
        employeename : String(20);
}
