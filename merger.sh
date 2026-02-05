#!/bin/bash

# Write new header names
echo "PU_datetime,DO_datetime,passenger_count,trip_distance,PU_loc,DO_loc,payment_type,meter_fare,tip" > taxi2019.csv

{
for f in yellow-2019-*.csv; do
	tail -n +2 "$f"
done
} | cut -d',' -f2-5,8-11,14 | cut -c-16,20-36,40- >> taxi2019.csv
