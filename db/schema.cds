using {
    managed,
    Country
} from '@sap/cds/common';

entity siteinformation : managed {
    key ID      : UUID;
        store   : String(4);
        country : Country;
        persons : Composition of many siteperson
                      on persons.employeeid = $self;
}

entity siteperson {
    key ID         : UUID;
        employeeid : Association to siteinformation;
}
