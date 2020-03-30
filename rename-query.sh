#!/bin/bash

psql -c "\copy (SELECT 'mv \"/data/fara/' || replace(replace(url,'https://www.fara.gov/docs/',''),'\"','\\\"') || '\" \"/data/fara/' || ((row_number() OVER (order by url) / 20000)+1) || '/' || replace(replace(registrant_name || ' - ' || CASE WHEN coalesce(short_form_name,'') != '' THEN short_form_name || ' - ' WHEN coalesce(foreign_principal_name,'') != '' THEN foreign_principal_country || ' - ' || left(foreign_principal_name,50)  || ' - ' ELSE '' END || replace(url,'https://www.fara.gov/docs/',''),'\"','\\\"'),'/',' ') || '\"' FROM fara_registrant_docs WHERE url != 'Available-FARA-Public-Office') to 'rename.sh'"
sed -i 's/\\\\\"/\\\"/g' rename.sh
