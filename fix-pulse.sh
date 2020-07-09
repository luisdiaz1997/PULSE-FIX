grep -rl $OSNAME=$(lsb_release -d |grep -o "Ubuntu") tmp | xargs sed -i 's+grep -o "Ubuntu"+grep -o "Ubuntu\\|Pop"+g'
dpkg-deb -b tmp pulse-fixed.deb
sudo dpkg -i pulse-fixed.deb
/usr/local/pulse/PulseClient_x86_64.sh install_dependency_packages
