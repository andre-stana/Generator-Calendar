#!/bin/bash

echo "BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//hacksw/handcal//NONSGML v1.0//EN" > calendar.ics

while IFS= read -r line
do
    if [[ $line != *"Début"* && $line != *"Fin"* ]]; then
        event=$line
    fi

    if [[ $line == *"Début"* ]]; then
        start_date=$(date -j -f "%d %B %Y" "$(echo $line | cut -d':' -f2 | xargs)" "+%Y%m%d")
    elif [[ $line == *"Fin"* ]]; then
        end_date=$(date -j -f "%d %B %Y" "$(echo $line | cut -d':' -f2 | xargs)" "+%Y%m%d")

        echo "BEGIN:VEVENT
DTSTART;VALUE=DATE:$start_date
DTEND;VALUE=DATE:$end_date
SUMMARY:$event
END:VEVENT" >> calendar.ics
    fi
done < data.txt

echo "END:VCALENDAR" >> calendar.ics