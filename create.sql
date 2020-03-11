
CREATE TABLE IF NOT EXISTS fara_filings (
    document_url text,
    registration_number text,
    registrant_name text,
    document_type text,
    stamped_received_date text
);

DELETE FROM fara_filings;


CREATE TABLE IF NOT EXISTS fara_foreign_principals (
    termination_date text,
    foreign_principal text,
    registration_date text,
    country_location_represented text,
    registration_number text,
    registrant_date text,
    registrant_name text,
    address_1 text,
    address_2 text,
    city text,
    state text,
    zip text
);

DELETE FROM fara_foreign_principals;


CREATE TABLE IF NOT EXISTS fara_registrant_docs (
    date_stamped text,
    registrant_name text,
    registration_number text,
    document_type text,
    short_form_name text,
    foreign_principal_name text,
    foreign_principal_country text,
    url text
);

DELETE FROM fara_registrant_docs;


CREATE TABLE IF NOT EXISTS fara_registrants (
    registration_number text,
    registration_date text,
    termination_date text,
    name text,
    business_name text,
    address_1 text,
    address_2 text,
    city text,
    state text,
    zip text
);

DELETE FROM fara_registrants;


CREATE TABLE IF NOT EXISTS fara_short_forms (
    short_form_termination_date text,
    short_form_date text,
    short_form_last_name text,
    short_form_first_name text,
    registration_number text,
    registration_date text,
    registrant_name text,
    address_1 text,
    address_2 text,
    city text,
    state text,
    zip text
);

DELETE FROM fara_short_forms;
