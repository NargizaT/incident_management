namespace incident_mamagement;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Incidents : cuid, managed, {

    title       : String(100) not null;
    description : String(1000) not null;
    priority    : Int16;
    status      : Association to one IncidentStatus;
}

entity IncidentStatus : cuid, managed, {
    key code        : String(1) enum {
            new = 'N';
            assigned = 'A';
            inProcess = 'I';
            onHold = 'H';
            resolved = 'R';
            closed = 'C';
        };
        criticality : Integer;
        name        : String(100);
}
