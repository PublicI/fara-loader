#!/bin/bash

psql -f create.sql
psql -c "COPY fara_filings FROM STDIN WITH CSV HEADER" < results.csv
