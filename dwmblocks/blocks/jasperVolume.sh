#!/bin/sh

printf "%s" "🔊$(pulsemixer --id sink-1 --get-volume | sed 's/.[0-9]*$/\%/')"
