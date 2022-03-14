#!/bin/ash
configdir="/home/ramiel/werc/werc-1.5.0/sites/samotsvety.org/_werc"
configfile="$configdir/config"
configfiletemp="$configdir/config_temp"

numlines="$(wc -l "$configdir/titles.txt" | cut -d ' ' -f 1)"
linenum="$(echo "1 + ($RANDOM % $numlines)" | bc )"
line="$( cat "$configdir/titles.txt" | head -n "$linenum" | tail -n 1  )"
# line="$(sort -Ru "$configdir/titles.txt" | head -n 1)"
# echo "$line"
title="$(echo "$line" | sed 's/: .*//g')"
subtitle="$(echo "$line" | sed 's/.*: //g')"

echo "$title"
echo "$subtitle"

rm -f "$configfiletemp"
echo "masterSite=samotsvety.org" > "$configfiletemp"
echo "siteTitle='$title'" >> "$configfiletemp"
echo "siteSubTitle='$subtitle'" >> "$configfiletemp"

mv "$configfiletemp" "$configfile"
## masterSite=samotsvety.org
## siteTitle='Learning'
## siteSubTitle='is about to occur'

