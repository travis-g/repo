for pkg in ./src/*/
do
    dpkg-deb -b $pkg
done
