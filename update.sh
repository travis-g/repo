#!/bin/sh

./purge.sh
./packages.sh

mv ./src/*.deb .

dpkg-scanpackages -m . /dev/null | gzip >Packages.gz
