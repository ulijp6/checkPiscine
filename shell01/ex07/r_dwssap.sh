#!/bin/sh
export FT_LINE1=7
export FT_LINE2=15
cat /etc/passwd | sed -n 'n;p' | grep -v "#" | sed -e 's/:.*//g' | rev | sort -r | sed -n ''$FT_LINE1','$FT_LINE2'p' | tr '\n' ',' | sed -e 's/,/, /g' | sed -e 's/, $/./g'
