
#main block
cd $HOME
sudo pacman -S rofi
sudo pacman -S acpi
sudo pacman -S feh
sudo pacman -S nemo
sudo pacman -S light
sudo pacman -S alsa-utils
sudo pacman -S flameshot
sudo pacman -S neofetch
sudo pacman -S lxappearance
sudo pacman -S alacritty
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
sudo pacman -S file-roller
sudo pacman -S putty
sudo pacman -S peek
sudo pacman -S btop
sudo pacman -S libreoffice-fresh
sudo pacman -S grub-customizer
sudo pacman -S tmux
sudo pacman -S thunar
sudo pacman -S firefox
sudo pacman -S lightdm-gtk-greeter-settings
sudo pacman -S shotcut
sudo pacman -S vlc
sudo pacman -S polybar
sudo pacman -S inkscape
sudo pacman -S mc
sudo pacman -S qt6ct
sudo pacman -S gimp
sudo pacman -S thunderbird
sudo pacman -S tor
sudo pacman -S nyx

sudo chmod +s /bin/light

#git builds
sudo pacman -S --needed base-devel git

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd $HOME

git clone https://github.com/PineTreePizza/AltConfig.git
cd AltConfig

./itch-install

sudo rm -R /usr/share/fonts
sudo mv fonts /usr/share/

cd $HOME/AltConfig

#rm -R $HOME/.config/i3
#mv i3 $HOME/.config/

rm -R $HOME/.config/bspwm
rm -R $HOME/.config/sxhkd
mv bspwm $HOME/.config/
mv sxhkd $HOME/.config/

rm -R $HOME/.config/picom.conf
mv picom.conf $HOME/.config/

rm -R $HOME/.config/rofi
mv rofi $HOME/.config/

rm -R $HOME/.config/alacritty
mv alacritty $HOME/.config/

rm -R $HOME/.config/mc
mv mc $HOME/.config/

rm -R $HOME/.config/polybar
mv polybar $HOME/.config/

rm -R $HOME/.config/fish
mv fish $HOME/.config/

rm -R $HOME/.config/tmux
mv tmux $HOME/.config/

sudo mv imgs /

cd $HOME
cd AltConfig

cd matter

./matter.py -i arch folder arch arch cog -ff fonts/terminus-font-4.39/ttf/ter-u32n.ttf -fn Termius -fs 32 -hl FFF1E2 -fg 9C6B6B -bg 161313 -ic E9A658

cd $HOME/AltConfig

mv openterm.sh $HOME/

sudo rm -R /usr/share/themes
sudo mv themes /usr/share/

gsettings set org.gnome.desktop.interface gtk-theme "Graphite-Dark"
gsettings set org.gnome.desktop.wm.preferences theme "Graphite-Dark"

sudo rm -R /usr/share/icons
sudo mv icons /usr/share/

gsettings set org.gnome.desktop.interface icon-theme "Bibata-Modern-Classic"

sudo rm -R $HOME/.config/emacs/
sudo mv emacs $HOME/.config/

cd $HOME

#yay pkg

yay -S dropbox
yay -S github-desktop-git
yay -S picom-simpleanims-next-gitx

#end
sudo pacman -Syu
yay -Syu
sudo pacman -Syyuu
yay -Syyuu

reboot
