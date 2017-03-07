#!/bin/sh

export COPYFILE_DISABLE
export COPY_EXTENDED_ATTRIBUTES_DISABLE

./purge.sh
./packages.sh

mv ./src/*.deb .

dpkg-scanpackages -m . /dev/null | gzip >Packages.gz
