#!/bin/sh

if title=$(cmus-remote -Q 2> /dev/null | grep -Po '(?<=title.).*'); then
    author=$(cmus-remote -Q | grep -Po '(?<=artist.).*')
    printf "%s" "🎵 $title "-" $author"
else
    printf "%s" "🎵 - None"
fi
