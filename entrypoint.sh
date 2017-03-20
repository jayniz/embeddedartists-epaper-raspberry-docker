#!/usr/bin/env bash

if [ -n "${TIMEZONE}" ]
then
  echo "Setting timezone ${TIMEZONE}"
  echo "${TIMEZONE}" > /etc/timezone && dpkg-reconfigure tzdata
fi

echo "Starting epd-fuse service"
service epd-fuse start

if [ $# -eq 0 ]
then
  echo "Starting clock, since the CMD was empty: ($@)"
  cd /epaper/gratis/PlatformWithOS/demo
  python Clock27.py
else
  echo "Running CMD '$@'"
  exec "$@"
fi
