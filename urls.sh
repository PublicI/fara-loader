#!/bin/bash

psql -c "\copy (SELECT replace(document_url,'http://www.','https://efile.') FROM fara_filings WHERE document_url != 'http://www.fara.gov/contact.html') to 'urls.txt'"
