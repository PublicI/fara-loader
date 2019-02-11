
CREATE TABLE IF NOT EXISTS fara_filings (
    document_url text,
    registration_number text,
    registrant_name text,
    document_type text,
    stamped_received_date text
);

DELETE FROM fara_filings;
