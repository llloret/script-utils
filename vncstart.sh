#!/bin/bash
geometry=${1:-'1500x1070'}
VNCDISP=`vncserver -geometry $geometry 2>&1 | grep ^New | cut -d: -f2`
if [ -z $VNCDISP ]; then
	 echo "Could not create VNC session"; exit 1
fi
VNCPID=`ps aux | grep "[X]vnc :$VNCDISP" | tr -s ' ' | cut -d ' ' -f2`
echo "Created new Xvnc server :$VNCDISP with pid $VNCPID"
