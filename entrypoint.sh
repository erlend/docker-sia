#!/bin/sh

if [ $# -eq 0 ] || [ ${1:0:1} = "-" ]; then
  set -- siad $@
fi

exec dumb-init $@
