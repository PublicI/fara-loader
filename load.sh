#!/bin/bash

psql -f create.sql
psql -c "COPY fara_filings FROM STDIN WITH CSV HEADER" < results.csv
cat FARA_All_ForeignPrincipals.csv | sed 's/("OPG)/(OPG)/g' | sed 's/V\/O "Vneshtorgreklama/V\/O Vneshtorgreklama/g' | sed 's/Cafe")/Cafe)/g' | psql -c "COPY fara_foreign_principals FROM STDIN WITH CSV HEADER"
psql -c "COPY fara_registrant_docs FROM STDIN WITH CSV HEADER" < FARA_All_RegistrantDocs.csv
psql -c "COPY fara_registrants FROM STDIN WITH CSV HEADER" < FARA_All_Registrants.csv
psql -c "COPY fara_short_forms FROM STDIN WITH CSV HEADER" < FARA_All_ShortForms.csv
