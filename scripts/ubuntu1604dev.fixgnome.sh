# box-cutter's gnome terminal cant launch: this fixes it
sudo echo "LANG=en_US.UTF-8" > /etc/default/locale
sudo service lightdm restart
