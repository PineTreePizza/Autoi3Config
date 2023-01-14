
#main block
cd $HOME
sudo pacman -S rofi
sudo pacman -S acpi
sudo pacman -S feh
sudo pacman -S picom
sudo pacman -S pcmanfm
sudo pacman -S light
sudo pacman -S alsa-utils
sudo pacman -S flameshot
sudo pacman -S min
sudo pacman -S neofetch
sudo pacman -S lxappearance
sudo pacman -S terminator
sudo pacman -S qbittorrent
sudo pacman -S steam
sudo pacman -S discord
sudo pacman -S wine-mono
sudo pacman -S wine
sudo pacman -S mono
sudo pacman -S lmms
sudo pacman -S zip
sudo pacman -S unzip
sudo pacman -S emacs
sudo pacman -S godot
sudo pacman -S easyeffects
sudo pacman -S fish
sudo pacman -S obs-studio
sudo pacman -S fuse

sudo chmod +s /bin/light

#git builds
sudo pacman -S --needed base-devel git

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd $HOME

git clone https://github.com/PineTreePizza/Linuxi3Config.git
cd Linuxi3Config
cd Fonts
sudo mv pine-fonts /usr/share/fonts/ 
cd $HOME/Linuxi3Config

rm -R $HOME/.config/i3
mv i3 $HOME/.config/

rm -R $HOME/.config/picom.conf
mv picom.conf $HOME/.config/

rm -R $HOME/.config/rofi
mv rofi $HOME/.config/

rm -R $HOME/.config/terminator
mv terminator $HOME/.config/

cd $HOME

unzip gtk-master.zip
unzip Dracula.zip

sudo mkdir /usr/share/themes/
sudo mv gtk-master /usr/share/themes/

gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"

sudo mkdir /usr/share/icons/
sudo mv Dracula /usr/share/icons/

gsettings set org.gnome.desktop.interface icon-theme "Dracula"

sudo mkdir $HOME/emacs.d
sudo mv init.el $HOME/emacs.d

cd $HOME

#yay pkg

yay -S dropbox
yay -S github-desktop-git

#end
sudo pacman -Syu
yay -Syu
sudo pacman -Syyuu
yay -Syyuu

reboot
