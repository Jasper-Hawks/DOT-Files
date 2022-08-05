#!/bin/sh

tot=$(free | grep -Poi '\d+' | sed -n 1p)
free=$(free | grep -Poi '\d+' | sed -n 2p)


dec=$(bc <<<"scale=2;$free/$tot")

per=$(bc <<< "$dec * 100" | sed 's/[.*].*//')
printf "%s" "💾$per%"

