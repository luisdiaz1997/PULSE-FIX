

mkdir tmp
dpkg-deb -R ps-pulse-ubuntu-debian.deb tmp
grep -rl $OSNAME=$(lsb_release -d |grep -o "Ubuntu") tmp | xargs sed -i 's+grep -o "Ubuntu"+grep -o "Ubuntu\\|Zorin OS"+g'
dpkg-deb -b tmp pulse-fixed.deb
rm -rf tmp

