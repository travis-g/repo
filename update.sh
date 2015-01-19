#!/bin/sh
./purge.sh
./packages.sh

dpkg-scanpackages -m . /dev/null | gzip >Packages.gz
