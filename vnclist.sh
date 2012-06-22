#!/bin/bash
VNCUSER=${1:-$USER}
if [ "$1" != "-all" ]; then
	 VNCPID=`ps aux | grep -e "$VNCUSER .*[X]vnc :" | tr -s ' ' | cut -d ' ' -f2,12`
else
	 VNCPID=`ps aux | grep "[X]vnc :" | tr -s ' ' | cut -d ' ' -f1,2,12 | sort | awk '{printf "%-10s %6s %4s\n", $1, $2, $3}'`
fi
printf "PIDS and vnc ports for $VNCUSER:\n$VNCPID\n"
