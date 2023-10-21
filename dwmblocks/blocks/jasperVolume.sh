#!/bin/sh

printf "%s" "🔊$(pulsemixer --id sink-0 --get-volume | sed 's/.[0-9]*$/\%/')"
