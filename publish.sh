#!/bin/sh

SRCDIR=/home/nathaniel/src/git/ramborghini_web/public/
DEPLOYDIR=/usr/share/nginx/ramborghini.com/

if [ "`hostname`" == "mx.ewb.ai" ]; then
  rsync -avz -e ssh $SRCDIR publish@mx.ewb.ai:$DEPLOYDIR
else
  rsync -avz -e ssh $SRCDIR publish@mx.ewb.ai:$DEPLOYDIR

fi
