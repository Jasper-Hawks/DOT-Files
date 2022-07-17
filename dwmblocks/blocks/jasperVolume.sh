#!/bin/sh

printf "%s" "$(pulsemixer --id sink-0 --get-volume | grep -E --regexp='[0-9]')"
#pulsemixer --id sink-1 --get-volume | awk '/[0-9]*\b$/'
