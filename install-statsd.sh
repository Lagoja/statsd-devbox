#!/usr/bin/bash

statsd_path="$DEVBOX_PROJECT_ROOT/.devbox/virtenv/statsd/$STATSD_VERSION"

if [[ ! -d $statsd_path ]]; then
   mkdir $statsd_path
   cd $statsd_path
   if [[ -z "${STATSD_VERSION}" ]]; then
      git clone --depth=1 --branch="${STATSD_VERSION}" "https://github.com/statsd/statsd"
   else
      git clone --depth=1 "https://github.com/statsd/statsd"
   fi
fi


