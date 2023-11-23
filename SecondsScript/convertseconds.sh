#!/bin/bash

convert_seconds() {
    seconds=$1

    minutes=$((seconds / 60))
    minutes_remainder=$((seconds % 60))

    hours=$((minutes / 60))
    hours_remainder=$((minutes % 60))

    days=$((hours / 24))
    days_remainder=$((hours % 24))

    months=$((days / 30))
    months_remainder=$((days % 30))

    years=$((months / 12))
    years_remainder=$((months % 12))

    echo "Minutes: $minutes min and $minutes_remainder sec"
    echo "Hours: $hours hrs and $hours_remainder min"
    echo "Days: $days days and $days_remainder hrs"
    echo "Months: $months months $months_remainder days" 
    echo "Years: $years years  $years_remainder months"  $months_remainder days"  $days_remainder hrs"  $hours_remainder min" and $minutes_remainder sec"
}

read -p "Enter the number of seconds: " seconds_input
convert_seconds "$seconds_input"
