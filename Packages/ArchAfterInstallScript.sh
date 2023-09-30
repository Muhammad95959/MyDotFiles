### Install packages

chsh -s $(which zsh)
sudo sed -Ei '/Color/s/^#//' /etc/pacman.conf
sudo sed -Ei 's/#ParallelDownloads = 5/ParallelDownloads = 10/' /etc/pacman.conf
sudo sed -Ei 's/CriticalPowerAction=HybridSleep/CriticalPowerAction=PowerOff/' /etc/UPower/UPower.conf
sudo flatpak override --filesystem=~/.themes
sudo cp /mnt/Disk_D/Muhammad/Repositories/DotFiles/Packages/root_files/20-connectivity.conf /etc/NetworkManager/conf.d
sudo cp /mnt/Disk_D/Muhammad/Repositories/DotFiles/Packages/root_files/nobeep.conf /etc/modprobe.d
sudo cp /mnt/Disk_D/Muhammad/Repositories/DotFiles/Packages/root_files/smb.conf /etc/samba
sudo cp /mnt/Disk_D/Muhammad/Repositories/DotFiles/Packages/root_files/environment /etc
sudo cp -r /mnt/Disk_D/Muhammad/Linux_stuff/Scripts/root/volnoti_icons/volnoti /usr/share/pixmaps/
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

sudo systemctl start smb
sudo systemctl enable smb
sudo systemctl start nmb
sudo systemctl enable nmb
sudo smbpasswd -a muhammad
sudo groupadd -r sambauser
sudo gpasswd sambauser -a muhammad
sudo systemctl restart smb
sudo systemctl restart nmb

sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service
sudo sed -Ei '/unix_sock_group = "libvirt"/s/^#//' /etc/pacman.conf
sudo sed -Ei '/unix_sock_rw_perms = "0770"/s/^#//' /etc/pacman.conf
sudo usermod -a -G libvirt $(whoami)
newgrp libvirt
sudo systemctl restart libvirtd.service
sudo modprobe -r kvm_intel
sudo modprobe kvm_intel nested=1
echo "options kvm-intel nested=1" | sudo tee /etc/modprobe.d/kvm-intel.conf

sudo systemctl enable --now cups
sudo systemctl enable --now vnstat.service
sudo systemctl enable --now auto-cpufreq
sudo systemctl enable --now tlp.service

sudo -s
echo "kernel.sysrq = 1" >> /etc/sysctl.d/99-sysctl.conf
rm -r /root/.local/share/nvim /root/.config/nvim /root/.config/ranger /root/.local/share/ranger /root/.zshrc /root/.config/zsh /root/.themes /root/.icons /root/.fonts /root/.config/gtk-2.0 /root/.config/gtk-3.0 /root/.config/gtk-4.0
ln -s /home/muhammad/.local/share/nvim /root/.local/share/
ln -s /home/muhammad/.config/nvim /root/.config/
ln -s /home/muhammad/.config/lf /root/.config/
ln -s /home/muhammad/.config/ranger /root/.config/
ln -s /home/muhammad/.local/share/ranger /root/.local/share/
ln -s /home/muhammad/.zshrc /root/
ln -s /home/muhammad/.config/zsh /root/.config/
ln -s /home/muhammad/.icons /root/
ln -s /home/muhammad/.fonts /root/
ln -s /home/muhammad/.config/gtk-2.0 /root/.config/
ln -s /home/muhammad/.config/gtk-3.0 /root/.config/
ln -s /home/muhammad/.config/gtk-4.0 /root/.config/
