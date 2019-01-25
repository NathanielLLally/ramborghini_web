#!/bin/sh

SSH_AUTH_SOCK=/tmp/$USER.sock
SRCDIR=/home/nathaniel/src/git/ramborghini_web/build/
DEPLOYDIR=/usr/share/nginx/ramborghini.com/

#if [ "`hostname`" == "mx.ewb.ai" ]; then
#  rsync -avz -e ssh $SRCDIR publish@mx.ewb.ai:$DEPLOYDIR
#else
  rsync -avz -e ssh --exclude '.*.sw[a-p]'  $SRCDIR publish@mx.ewb.ai:$DEPLOYDIR | tee /tmp/publish.ramborghini.com.log

#fi
