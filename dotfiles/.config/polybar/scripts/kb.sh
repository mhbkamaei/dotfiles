#!/bin/sh
COMMAND=$(xset -q | grep LED | awk '{ print $10 }')

case "$COMMAND" in

 "00000002"|"00000001") LAYOUT="us" ;;

 "00001002"|"00001001") LAYOUT="ir" ;;

  *) LAYOUT="??" ;;

esac

echo $LAYOUT
