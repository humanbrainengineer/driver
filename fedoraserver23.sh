dnf -y install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-23.noarch.rpm
dnf -y install http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-23.noarch.rpm
dnf -y install http://repo.fdzh.org/FZUG/free/23/x86_64/fzug-release-23-0.1.noarch.rpm
wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
dnf clean all && dnf clean metadata && dnf clean dbcache && dnf makecache && dnf update

dnf -y install awesome
dnf -y group install "Fedora Workstation"
dnf -y group install "KDE Plasma Workspaces" 
dnf -y group install "Cinnamon Desktop" 

echo "exec /usr/bin/awesome" >> ~/.xinitrc
echo "exec /usr/bin/gnome-session" >> ~/.xinitrc
echo "exec /usr/bin/cinnamon-session" >> ~/.xinitrc 
echo "exec /usr/bin/startkde" >> ~/.xinitrc 

#startx
# Installing multimedia encoding
dnf -y install gstreamer-plugins-bad gstreamer-plugins-bad-free-extras gstreamer-plugins-ugly gstreamer-ffmpeg gstreamer1-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-good gstreamer1-plugins-base gstreamer1
dnf -y install rhythmbox

# Install applications 
wine bcloud kget smplayer vlc docky docker VirtualBox-5.0 git bluefish atom ranger yakuake guake tilda terminator
