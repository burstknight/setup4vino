echo "Setup vino running GNOME as nvidia jetson device run."
cd /usr/lig/systemd/user/graphical-session.target.wants
sudo ln -s ../vino-server.service ./.

echo "Setting the configure the VNC server."
gsetting set org.gnome.Vino promt-enabled false
gsetting set org.gnome.Vino requre-encryption false

read -p "Enter the password for login: " pw
gsetting set org.gnome.Vino authentication-methods "['vnc']"
gsetting set org.gnome.Vino vnc-password $(echo -n ${pw}|base64)

echo "Finish!"
echo "\033[0;31mNote: \033[0;37mYou must reboot computer to the settings take effect."
