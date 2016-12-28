#!/bin/sh

if [ $# -eq 1 ]; then
  exec grep -F "$1" *
elif [ $# -eq 0 ]; then
  exec /bin/sh
else
  exec "$@"
fi

echo 

