grep -rl $OSNAME=$(lsb_release -d |grep -o "Ubuntu") tmp | xargs sed -i 's+grep -o "Ubuntu"+grep -o "Ubuntu\\|Pop"+g'
grep -rlE '\s19|_19' tmp --exclude *tgz| xargs sed -i 's+_19+_20+g; s+\s19+ 20+g'
dpkg-deb -b tmp pulse-fixed.deb
sudo dpkg -i pulse-fixed.deb
sudo apt-get install libenchant1c2a
sudo apt-get install libcanberra-gtk-module
/usr/local/pulse/PulseClient_x86_64.sh install_dependency_packages
