#!/bin/sh

set -e

if ! cpanm --installdeps --notest --verbose .; then
  cat /home/travis/.cpanm/build.log
  exit 1
fi
