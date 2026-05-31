history -w
history -w
git clone https://github.com/AntonyRaymon/grub-btrfs.git
rm -rf grub-btrfs
GIT_TERMINAL_PROMPT=0 git clone https://github.com/AntonyRaymon/grub-btrfs.git
git -c credential.helper= clone https://github.com/AntonyRaymon/grub-btrfs.git
rm -rf grub-btrfs
git -c credential.helper= clone https://github.com/AntonyRaymon/grub-btrfs.git
cd ~/Nedlastinger && rm -rf grub-btrfs* master.zip
wget https://github.com/AntonyRaymon/grub-btrfs/archive/refs/heads/master.zip
wget -O master.zip https://github.com/AntonyRaymon/grub-btrfs/archive/refs/heads/master.zip
cd ~/Nedlastinger && rm -rf master.zip grub-btrfs*
sudo update-grub
cd ~/Nedlastinger/grub-btrfs
sudo make install
sudo update-grub
cd ~/Nedlastinger
rm -rf grub-btrfs
git clone https://github.com/Antynea/grub-btrfs.git
cd grub-btrfs
sudo make install
sudo update-grub
sudo kwrite /etc/default/grub-btrfs/config
sudo nano /etc/default/grub-btrfs/config
SUDO UPDATE-GRUB
sudo update-grub
sudo nano /etc/default/grub-btrfs/config
sudo update-grub
sudo lsblk
lsblk -f /dev/nvme0n1p3
sudo nano /etc/default/grub-btrfs/config
sudo update-grub
sudo nano /etc/default/grub-btrfs/config
sudo sed -i 's/$(grub-probe --target=fs_uuid \/)/e911b271-2474-4c19-84b7-90a32abddf95/g' /etc/grub.d/41_snapshots-btrfs
sudo update-grub
sudo nano /etc/grub.d/41_snapshots-btrfs
sudo btrfs subvolume show / | grep UUID
sudo nano /etc/grub.d/41_snapshots-btrfs
echo "set linenumbers" >> ~/.nanorc
sudo sh -c 'echo "set linenumbers" >> /root/.nanorc'
echo "alias cat='cat -n'" >> ~/.bashrc
source ~/.bashrc
echo "set number" >> ~/.vimrc
echo "alias grep='grep -n --color=auto'" >> ~/.bashrc
source ~/.bashrc
sudo nano /etc/grub.d/41_snapshots-btrfs
sudo update-grub
sudo nano /root/.bashrc
sudo su
sudo timeshift --create --comments "WARLORD_PERFECT_SETUP" --tags D
sudo update-grub
reboot
sudo overlayroot-chroot
sudo apt purge google-chrome-stable btop htop -y
sudo apt autoremove -y
sudo apt update
sudo apt install google-chrome-stable btop htop -y
sudo apt update && sudo apt install google-chrome-stable btop htop -y
echo "alias smed='sudo overlayroot-chroot'" >> ~/.bashrc
source ~/.bashrc
cat /etc/overlayroot.conf
sync
sudo reboot
sudo apt purge overlayroot -y
sudo update-initramfs -u -k all
sudo update-grub
sudo rm -f /etc/overlayroot.conf
sudo update-initramfs -u -k all && sudo update-grub
reboot
opp
full
fix
clean
rens
ip -a
i -a
if -a
ip -a
ifconfig
sudo apt install net-tools
ifconfig
smed
sudo apt install ethtool
mkdir -p ~/scripts
cat << 'EOF' > ~/scripts/clear-cache.sh
chmod +x ~/scripts/clear-cache.sh
sudo cat << EOF > /etc/systemd/system/warlord-clean.service
[Unit]
Description=WARLORD Clear Cache on Boot
After=network.target

[Service]
Type=oneshot
ExecStart=/home/wils/scripts/clear-cache.sh
User=wils
Group=wils

[Install]
WantedBy=multi-user.target
EOF

# Aktiver tjenesten
sudo systemctl enable warlord-clean.service
sudo tee /etc/systemd/system/warlord-clean.service << EOF
[Unit]
Description=WARLORD Clear Cache on Boot
After=network.target

[Service]
Type=oneshot
ExecStart=/home/wils/scripts/clear-cache.sh
User=wils
Group=wils

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable warlord-clean.service
cat << 'EOF' > ~/scripts/clear-cache.sh
# Lag selve scriptet (her trenger du ikke sudo siden det er din egen mappe)
cat << 'EOF' > ~/scripts/clear-cache.sh
#!/bin/bash
# WARLORD: Den gylne middelvei (Rens uten låsing)

# Tømmer RAM-cache (drop_caches) - krever sudo
sudo sync && echo 3 | sudo tee /proc/sys/kernel/random/drop_caches

# Rens bruker-cache
rm -rf ~/.cache/*

# Rens gamle logger (behold kun de siste 2 dagene)
sudo journalctl --vacuum-time=2d

echo "WARLORD: Systemet er renset og klart til kamp!"
EOF

chmod +x ~/scripts/clear-cache.sh
sudo tee /etc/systemd/system/warlord-clean.service << EOF
[Unit]
Description=WARLORD Clear Cache on Boot
After=network.target

[Service]
Type=oneshot
ExecStart=/home/wils/scripts/clear-cache.sh
User=root
Group=root

[Install]
WantedBy=multi-user.target
EOF

# 2. Oppdater systemd-registeret
sudo systemctl daemon-reload
# 3. Aktiver tjenesten (Nå skal det fungere!)
sudo systemctl enable warlord-clean.service
cat << 'EOF' > ~/scripts/clear-cache.sh
#!/bin/bash
# WARLORD Boot-rens: Fjerner drit, beholder nettverk.

# Tøm RAM-cache (Sørger for at 12GB RAM er klar til kamp)
sync && echo 3 > /proc/sys/kernel/drop_caches

# Rens midlertidige mapper for alle brukere
rm -rf /tmp/*
rm -rf /var/tmp/*

# Rens din brukers cache (Chrome/Plasma-rester)
rm -rf /home/wils/.cache/*

# Hold loggene slanke (sletter alt eldre enn 2 dager)
journalctl --vacuum-time=2d

echo "WARLORD: Systemet er nyvasket og klart!"
EOF

chmod +x ~/scripts/clear-cache.sh
rm -rf ~/.config/session/plasma-restoring*
rm -rf ~/.config/session/ksmserver*
opp
full
fix
clean
clear-cache
nano ~/.bash_aliases
nano ~/.bashrc
source ~/.bashrc
su
sudo su
clear-cache
ls
~
cd ..
~
ls -las
cd wils
ls -las
echo "alias clear-cache='~/scripts/clear-cache.sh'" >> ~/.bash-aliases
source ~/.bashrc
ls -las
cd scripts
ls -las
nano clear-cache
nano clear-cache.sh
clear-cache
./clear-cache.sh
cd ,,
cd ..
ls
clear-cache
~/scripts/clear-cache.sh
cd scripts
ls -las
# Legger til rens av thumbnails i scriptet ditt
echo 'rm -rf ~/.cache/thumbnails/*' >> clear-cache.sh
# Og la oss legge til en rens for Chrome-cache mens vi er i gang
echo 'rm -rf ~/.cache/google-chrome/Default/Cache/*' >> clear-cache.sh
echo "Smidde inn thumbnail- og Chrome-rens i vaskeseddelen!"
nano clear-cache.sh
chmod +775 clear-cache.sh
ls -las
nano clear-cache.sh
cd 
ls
clear-cache
source ~/.bashrc
clear-cache
nano ~/.bash_aliases
source ~/.bashrc
clear-cache
nano ~/.bash_aliases
nano clear-cache.sh
nano ~/scripts/clear-cache.sh
chmod +755 clear-cache.sh
chmod +755 ~/scripts/clear-cache.sh
cd scripts 
ls -las
cd
clear-cache
nano ~/.bash_aliases
source ~/.bashrc
clear-cache
nano ~/scripts/clear-cache.sh
source ~/.bashrc
clear-cache
nano ~/scripts/clear-cache.sh
clear-cache
1  journalctl -p 3 -xb
l  journalctl -p 3 -xb
sudo l  journalctl -p 3 -xb
journalctl -p 3 -xb
sudo journalctl -p 3 -xb
systemd-analyze blame
cp ~/.config/kwinrulesrc ~/.config/kwinrulesrc.bak
echo "" > ~/.config/kwinrulesrc
qdbus6 org.kde.KWin /KWin reconfigure
ls ~/.config/autostart/
cat ~/.config/autostart/kommandosenter.sh.desktop
cat ~/.config/autostart/maale_reboot.sh.desktop
cat ~/kommandosenter.sh
mkdir -p ~/ryddet_vekk
mv ~/.config/autostart/kommandosenter.sh.desktop ~/ryddet_vekk/
systemd-analyze blame
sudo timeshift --create --comments "Etter storrengjøring - WARLORD er strøken"
ls -las
ls -lasR >> Frankensteinfilerogmapper.txt
sudo apt update && sudo apt install -y device-tree-compiler abootimg heimdall-flash tree
heimdall detect
ls
cd backup_klimt_dtb
ls
grep -n "12ca0000" [ditt_filnavn].dts
grep -n "12ca0000" alpine_dna.dts
grep -n "12ca0000" [alpine_dna.dts]
ls
cd klimt_frankenstein
ls
cd dtbs_ALPINE
grep -n "12ca0000" alpine_dna.dts
grep -A 15 "i2c@12ca0000" alpine_dna.dts
rm -f frankenstein_V19.dtb zImage-dtb_FRANKENSTEIN_V19
dtc -I dts -O dtb alpine_dna.dts -o frankenstein_V19.dtb
cat ../zImage_ALPINE frankenstein_V19.dtb > zImage-dtb_FRANKENSTEIN_V19
cd ../pack
rm -f boot_FRANKENSTEIN_V19.img
abootimg --create boot_FRANKENSTEIN_V19.img -f bootimg.cfg -k ../dtbs_ALPINE/zImage-dtb_FRANKENSTEIN_V19 -r initrd.img
sudo heimdall flash --BOOT boot_FRANKENSTEIN_V19.img
ping 192.168.1.18
dtc -I dtb -O dts frankenstein_V19.dtb | grep -A 15 "i2c@12ca0000"
cd..
cd ..
ls
cd dtbs_ALPINE
dtc -I dtb -O dts frankenstein_V19.dtb | grep -A 15 "i2c@12ca0000"
strings zImage-dtb_FRANKENSTEIN_V19 | grep "maxim,max17050"
rm -f frankenstein_V19.dtb zImage-dtb_FRANKENSTEIN_V19
dtc -I dts -O dtb alpine_dna.dts -o frankenstein_V19.dtb
cat ../zImage_ALPINE frankenstein_V19.dtb > zImage-dtb_FRANKENSTEIN_V19
cd ../pack
rm -f boot_FRANKENSTEIN_V19.img
abootimg --create boot_FRANKENSTEIN_V19.img -f bootimg.cfg -k ../dtbs_ALPINE/zImage-dtb_FRANKENSTEIN_V19 -r initrd.img
sudo heimdall flash --BOOT boot_FRANKENSTEIN_V19.img
ping 192.168.1.18
ls
sudo heimdall flash --BOOT boot_FRANKENSTEIN_V15.img
ls -l ~/klimt_frankenstein/dtbs_ALPINE/zImage-dtb_FRANKENSTEIN_V15
ls -las
cd backup_klimt_dtb
ls
nano base.dts
cd ..
ls
cd klimt_frankenstein
ls
cd dtbs_ALPINE
ls
nano alpine_dna.dts
dtc -I dts -O dtb alpine_dna.dts -o frankenstein_V19.dtb
cat ../zImage_ALPINE frankenstein_V19.dtb > zImage-dtb_FRANKENSTEIN_V19
cd ../pack
abootimg --create boot_FRANKENSTEIN_V19.img -f bootimg.cfg -k ../dtbs_ALPINE/zImage-dtb_FRANKENSTEIN_V19 -r initrd.img
sudo heimdall flash --BOOT boot_FRANKENSTEIN_V19.img
ping 192.168.1.18
ssh 192.168.1.18
heimdall detect
ssh 192.168.1.18
heimdall detect
ping 192.168.1.18
ssh 192.168.1.18
ping 192.168.1.18
ssh 192.168.1.18
heimdall detect
ssh 192.168.1.18
heimdall detect
ping 192.168.1.18
heimdall detect
ssh 192.168.1.18
heimdall detect
ls -l
~
cd klimt_frankenstein
ls
cd check_v15
ls
nano v15_gull.dts
dtc -I dts -O dtb -o v35_battery.dtb v15_gull.dts
with open('zImage_PURE', 'rb') as f:
with open('v35_battery.dtb', 'rb') as f:
with open('zImage-dtb_V35_final', 'wb') as f:
python3 -c "open('zImage-dtb_V35_final', 'wb').write(open('zImage_PURE', 'rb').read() + open('v35_battery.dtb', 'rb').read())"
ls -l zImage v35_battery.dtb
cat zImage v35_battery.dtb > zImage-dtb_V35_final
abootimg --create boot_V35_final.img -f bootimg.cfg -k zImage-dtb_V35_final -r initrd.img
cp ../pack/initrd_hybrid.img .
abootimg --create boot_V35_final.img -f bootimg.cfg -k zImage-dtb_V35_final -r initrd_hybrid.img
ls -las
heimdall flash --BOOT boot_V35_final.img
ping 192.168.1.18
ls
cd ..
ls
cd dtbs_ALPINE
ls
heimdall flash --BOOT boot_V15.img
cd ..
ls
cd check_v15
ls
cd .
cd ..
ls
cd dtbs_ALPINE
ls
cd ..
ls
cd pack
sudo heimdall flash --BOOT boot_FRANKENSTEIN_V15.img
cd ~/klimt_frankenstein/pack
ls -las
mkdir -p temp_initrd && cd temp_initrd
zcat ../initrd.img | cpio -idmv
find . -type f -exec ls -s {} + | sort -n -r | head -n 15
cd ~/klimt_frankenstein/pack/temp_initrd
rm ./usr/share/pbsplash/OpenSans-Regular.svg
rm ./usr/bin/busybox-extras
rm ./usr/lib/modules/*/modules.alias.bin
rm ./usr/lib/modules/*/modules.symbols.bin
find . | cpio -o -H newc | gzip -9 > ../initrd_slim.img
cd ..
ls -l initrd.img initrd_slim.img
abootimg --create boot_FRANKENSTEIN_V19_slim.img -f bootimg.cfg -k ../dtbs_ALPINE/zImage-dtb_slim -r initrd_slim.img
cd ~/klimt_frankenstein/dtbs_ALPINE/
cat ../zImage_ALPINE frankenstein_V19_slim.dtb > zImage-dtb_slim
ls -l zImage-dtb_slim
dtc -I dts -O dtb -p 0 -R 0 alpine_dna.dts -o frankenstein_V19_slim.dtb
ls -l frankenstein_V19_slim.dtb
cat ../zImage_ALPINE frankenstein_V19_slim.dtb > zImage-dtb_slim
ls -l zImage-dtb_slim
cd ~/klimt_frankenstein/pack
abootimg --create boot_FRANKENSTEIN_V19_slim.img -f bootimg.cfg -k ../dtbs_ALPINE/zImage-dtb_slim -r initrd_slim.img
ls -l boot_FRANKENSTEIN_V19_slim.img
sed -i 's/bootsize = 8388608/bootsize = 6989840/' bootimg.cfg
grep "bootsize" bootimg.cfg
# Skal vise: bootsize = 6989840
abootimg --create boot_FRANKENSTEIN_V19_slim.img -f bootimg.cfg -k ../dtbs_ALPINE/zImage-dtb_slim -r initrd_slim.img
ls -l boot_FRANKENSTEIN_V19_slim.img
sudo heimdall flash --BOOT boot_FRANKENSTEIN_V19_slim.img
ping 192.168.1.18
sudo heimdall flash --BOOT boot_FRANKENSTEIN_V15.img
ping 192.168.1.18
ls
cd temp_initrd
rm ./usr/lib/modules/*/modules.alias
rm ./usr/lib/modules/*/modules.symbols
rm ./usr/lib/modules/*/modules.dep
touch ./usr/share/pbsplash/OpenSans-Regular.svg
rm ./usr/bin/busybox-extras
find . | cpio -o -H newc | gzip -9 > ../initrd_medium.img
cd ..
ls -l initrd_medium.img
abootimg --create boot_FRANKENSTEIN_V19_medium.img -f bootimg.cfg -k ../dtbs_ALPINE/zImage-dtb_slim -r initrd_medium.img
ls -l boot_FRANKENSTEIN_V19_medium.img
sudo heimdall flash --BOOT boot_FRANKENSTEIN_V19_medium.img
192.168.1.18
ping 192.168.1.18
sudo heimdall flash --BOOT boot_FRANKENSTEIN_V15.img
ping 192.168.1.18
cd ~/klimt_frankenstein/pack/temp_initrd
rm ./usr/share/pbsplash/OpenSans-Regular.svg
touch ./usr/share/pbsplash/OpenSans-Regular.svg
find . | cpio -o -H newc | gzip -9 > ../initrd_hybrid.img
abootimg --create boot_FRANKENSTEIN_V20.img -f bootimg.cfg -k ../dtbs_ALPINE/zImage-dtb_slim -r initrd_hybrid.img
cd ..
abootimg --create boot_FRANKENSTEIN_V20.img -f bootimg.cfg -k ../dtbs_ALPINE/zImage-dtb_slim -r initrd_hybrid.img
ls -l boot_FRANKENSTEIN_V20.img
sudo heimdall flash --BOOT boot_FRANKENSTEIN_V20.img
ping 192.168.1.18
cd ..
cd dtsb_ALPINE
cd dtbs_ALPINE
dtc -I dts -O dtb -p 0 -R 0 alpine_dna.dts -o nøytral_test.dtb
cat ../zImage_ALPINE nøytral_test.dtb > zImage-dtb_nøytral
abootimg --create boot_V21_test.img -f bootimg.cfg -k ../dtbs_ALPINE/zImage-dtb_nøytral -r initrd_hybrid.img
cd ..
cd pack
abootimg --create boot_V21_test.img -f bootimg.cfg -k ../dtbs_ALPINE/zImage-dtb_nøytral -r initrd_hybrid.img
sudo heimdall flash --BOOT boot_V21_test.img
ping 192.168.1.18
sudo heimdall flash --BOOT boot_FRANKENSTEIN_V15.img
cd ..
cd dtbs_ALPINE
nano alpine_dna.dts
dtc -I dts -O dtb -p 0 -R 0 alpine_dna.dts -o nøytral_test.dtb
cat ../zImage_ALPINE nøytral_test.dtb > zImage-dtb_nøytral
cd ..
cd pack
abootimg --create boot_V21_test.img -f bootimg.cfg -k ../dtbs_ALPINE/zImage-dtb_nøytral -r initrd_hybrid.img
sudo heimdall flash --BOOT boot_V21_test.img
ping 192.168.1.18
cd ..
cd dtbs_lpine
LS
ls
cd dtbs_ALPINE
nano alpine_dna.dts
dtc -I dts -O dtb -p 0 -R 0 alpine_dna.dts -o sanity_check.dtb
cat ../zImage_ALPINE sanity_check.dtb > zImage-dtb_sanity
cd ..
cd pack
abootimg --create boot_V22_sanity.img -f bootimg.cfg -k ../dtbs_ALPINE/zImage-dtb_sanity -r initrd_hybrid.img
sudo heimdall flash --BOOT boot_V22_sanity.img
cd ..
mkdir ~/klimt_frankenstein/check_v15
cd ~/klimt_frankenstein/check_v15
abootimg -x ../pack/boot_FRANKENSTEIN_V15.img
grep -a -b --only-matching $'\xd0\x0d\xfe\xed' zImage-dtb | head -1
grep -a -b --only-matching $'\xd0\x0d\xfe\xed' zImage
grep -a -b -o $'\xd0\x0d\xfe\xed' zImage | cut -d: -f1
ls -l zImage
strings -t d zImage | grep -i "samsung,klimt" | head -n 5
# Vi hopper over de første 4MB og leter i resten
tail -c +4000000 zImage | grep -a -b -o $'\xd0\x0d\xfe\xed'
tail -c +4000000 zImage | grep -a -b -o $'\xd0\x0d\xfe\xed' | cut -d: -f1
dd if=zImage bs=1 skip=4000831 of=v15_gull.dtb
dtc -I dtb -O dts v15_gull.dtb -o v15_gull.dts
dd if=zImage bs=1 skip=4000830 of=v15_gull.dtb
hexdump -C -n 4 v15_gull.dtb
grep -a -b -o $'\xd0\x0d\xfe\xed' zImage | cut -d: -f1
dd if=zImage bs=1 skip=NYTT_TALL count=4 | hexdump -C
od -A d -t x1 zImage | grep "d0 0d fe ed"
dd if=zImage bs=1 skip=DITT_TALL count=4 | hexdump -C
dd if=zImage bs=1 skip=4215296 count=4 | hexdump -C
dd if=zImage bs=1 skip=4215296 of=v15_gull.dtb
dtc -I dtb -O dts v15_gull.dtb -o v15_gull.dts
ls
nano v15_gull.dts
grep -C 5 "phandle = <0x13>" v15_gull.dts
grep -C 5 "phandle = <0x02>" v15_gull.dts
grep -B 5 "phandle = <0x13>" ../dtbs_ALPINE/v21_test.dts
cd ..
cd pack
grep -B 5 "phandle = <0x13>" ../dtbs_ALPINE/v21_test.dts
cd ..
cd dtbs_ALPINE
grep -B 5 "phandle = <0x13>" ../dtbs_ALPINE/v21_test.dts
grep -B 5 "phandle = <0x02>" ../dtbs_ALPINE/v21_test.dts
ls -las
cd ..
ls
c dcheck_v15
cd dcheck_v15
cd check_v15
ls
cd ..
cd pack
ls
cd ..
cd dtsb_ALPINE
cd dtbs_ALPINE
grep -B 5 "phandle = <0x02>" ../dtbs_ALPINE/v21_test.dts
ls -l v21_test.dts
cd ..
ls -l v21_test.dts
cd dtbs_ALPINE
dtc -I dtb -O dts ../dtbs_ALPINE/nøytral_test.dtb -o v21_test.dts
grep -B 5 "phandle = <0x13>" ../dtbs_ALPINE/v21_test.dts
grep -B 5 "phandle = <0x02>" ../dtbs_ALPINE/v21_test.dts
nano v15_gull.dts
ls
cd ..
cd pack
nano v15_gull.dts
ls
cd ..
ls
cd check_v15
ls
nano v15_gull.dts
dtc -I dts -O dtb -p 0 -R 0 v15_gull.dts -o v23_gull_mod.dtb
cat zImage v23_gull_mod.dtb > zImage-dtb_v23
cd ..
cd pack
abootimg --create boot_V23_test.img -f bootimg.cfg -k zImage-dtb_v23 -r initrd.img
ls
cd ..
ls
cd check_v15
abootimg --create boot_V23_test.img -f bootimg.cfg -k zImage-dtb_v23 -r initrd.img
abootimg --create boot_V23_test.img -f bootimg.cfg -k zImage-dtb_v23 -r ../initrd_hybrid.img
cd ..
ls
cd dtbs_ALPINE
ls
abootimg --create boot_V23_test.img -f bootimg.cfg -k zImage-dtb_v23 -r ../initrd_hybrid.img
cd..
cd ..
ls
cd pack
ls
cd temp_initrd
ls
cd ..
ls
abootimg --create boot_V23_test.img -f bootimg.cfg -k zImage-dtb_v23 -r ../initrd_hybrid.img
abootimg --create boot_V23_test.img -f bootimg.cfg -k ../check_v15/zImage-dtb_v23 -r initrd_hybrid.img
ls
ls -las
heimdall flash --BOOT boot_V23_test.img
ping 192.168.1.18
cat zImage v15_gull.dtb > zImage-dtb_V24_test
cd ..
ls
cd check_v15
ls
cat zImage v15_gull.dtb > zImage-dtb_V24_test
abootimg --create boot_V24_reference.img -f bootimg.cfg -k zImage-dtb_V24_test -r initrd_hybrid.img
ls -las boot_V24_reference.img
ls -lax boot_V24_reference.img
ls
ls -las
rm boot_V23_test.img boot_V24_reference.img
ls -las
abootimg --create boot_V23_test.img -f bootimg.cfg -k zImage-dtb_v23 -r ../pack/initrd_hybrid.img
ls -las
abootimg --create boot_V24_reference.img -f bootimg.cfg -k zImage-dtb_V24_test -r ../pack/initrd_hybrid.img
ls -las
heimdall flash --BOOT boot_V24_reference.img
ping 192.168.1.18
heimdall flash --BOOT boot_V23_test.img
192.168.1.18
ping 192.168.1.18
ls
cd ..
cd pack
ls
cd ..
ls
cd check_v15
ls
heimdall flash --BOOT boot_V24_reference.img
ping 192.168.1.18
cd ..
cd pack
ls -lh ../pack/initrd_slim.img
ls
ls -las bootimg.cfg
ls -l bootimg.cfg
ls -lax bootimg.cfg
ls -lasx
ls -las
abootimg --create boot_V25_slim_ref.img -f bootimg.cfg -k zImage-dtb_V24_test -r initrd_hybrid.img
cd ..
cd check_v15
ls
abootimg --create boot_V26_battery.img -f bootimg.cfg -k ../check_v15/zImage-dtb_v23 -r initrd_hybrid.img
cd ..
cd pack
abootimg --create boot_V26_battery.img -f bootimg.cfg -k ../check_v15/zImage-dtb_v23 -r initrd_hybrid.img
ls -l boot_V25_slim_ref.img boot_V26_battery.img
heimdall flash --BOOT boot_V25_slim_ref.img
ping 192.168.1.18
abootimg -x boot_FRANKENSTEIN_V15.img
mv zImage zImage_clean_v15
mv initrd.img initrd_original_v15
ls -l zImage_clean_v15
# Vi tar kun de første 4 215 296 bytene (selve motoren)
dd if=zImage_clean_v15 bs=1 count=4215296 of=zImage_PURE
ls -l
cat zImage_PURE ../check_v15/v23_gull_mod.dtb > zImage-dtb_V28_final
ls -las
abootimg --create boot_V28_final.img -f bootimg.cfg -k zImage-dtb_V28_final -r initrd_hybrid.img
ls -las
grep "bootsize" bootimg.cfg
sed -i 's/bootsize = 0x6aa810/# bootsize = 0x6aa810/' bootimg.cfg
grep "bootsize" bootimg.cfg
abootimg --create boot_V28_final.img -f bootimg.cfg -k zImage-dtb_V28_final -r initrd_hybrid.img
sed -i '/bootsize/d' bootimg.cfg
grep "bootsize" bootimg.cfg
abootimg --create boot_V28_final.img -f bootimg.cfg -k zImage-dtb_V28_final -r initrd_hybrid.img
ls -lax
ls -las
heimdall flash --BOOT boot_V28_final.img
ping 192.168.1.18
abootimg -i boot_V28_final.img
# Hvis du ikke har det: sudo apt install binwalk
binwalk boot_V28_final.img
sudo apt install binwalk
apt update
sudo apt update
# Hvis du ikke har det: sudo apt install binwalk
binwalk boot_V28_final.img
rm zImage-dtb_V28_final boot_V28_final.img
cat zImage_PURE ../check_v15/v23_gull_mod.dtb > zImage-dtb_V30_perfect
ls -l zImage-dtb_V30_perfect
ls -l zImage_PURE ../check_v15/v23_gull_mod.dtb zImage-dtb_V30_perfect
hash -r
unalias -a
sync
https://gemini.google.com/app/dcc30aa2c58e1dd9#:~:text=V30%20eller%20V31-,rm%20%2Df%20zImage%2Ddtb_V*%20boot_V*,-%23%202.%20Tving%20disken
rm -f zImage-dtb_V* boot_V*
clear
sync
python3 -c "import os; \
pure = open('zImage_PURE', 'rb').read(); \
dtb = open('../check_v15/v23_gull_mod.dtb', 'rb').read(); \
with open('zImage-dtb_V31_final', 'wb') as f: f.write(pure + dtb)"
sync
hash -r
unalias -a
rm -f zImage-dtb_V* boot_V*
sync
python3 -c "f1=open('zImage_PURE', 'rb').read(); f2=open('../check_v15/v23_gull_mod.dtb', 'rb').read(); open('zImage-dtb_V31_final', 'wb').write(f1+f2)"
sync
ls -l zImage-dtb_V31_final
sync
abootimg --create boot_V31_final.img -f bootimg.cfg -k zImage-dtb_V31_final -r initrd_hybrid.img
ls -las
sync
heimdall flash --BOOT boot_V31_final.img
ping 192.168.1.18
binwalk boot_V31_final.img
ls
ls -la
sudo heimdall flash --BOOT boot_FRANKENSTEIN_V15.img
ping 192.168.1.18
ls
sync
sed -i 's/pmos_boot_uuid=[^ ]*/pmos_boot_uuid=6f9b3440-23d4-4bf2-9e0f-169bc08f59ab/' bootimg.cfg
sync
sed -i 's/pmos_root_uuid=[^ ]*/pmos_root_uuid=435a377f-e279-49ea-a024-a949c37f9b32/' bootimg.cfg
sync
abootimg --create boot_V32_final.img -f bootimg.cfg -k zImage-dtb_V31_final -r initrd_hybrid.img
sync
ls -las
sync
grep "pmos_.*_uuid" bootimg.cfg
abootimg --create boot_V32_final.img -f bootimg.cfg -k zImage-dtb_V31_final -r initrd_hybrid.img
ls -las
sync
heimdall flash --BOOT boot_V32_final.img
ping 192.168.1.18
sync
cmdline = pmos_boot_uuid=6f9b3440... (resten av UUID-ene)
ls
nano bootimg.cfg
abootimg --create boot_V33_debug.img -f bootimg.cfg -k zImage-dtb_V31_final -r initrd_hybrid.img
sync
abootimg --create boot_V33_debug.img -f bootimg.cfg -k zImage-dtb_V31_final -r initrd_hybrid.img
nano bootimg.cfg
abootimg --create boot_V33_debug.img -f bootimg.cfg -k zImage-dtb_V31_final -r initrd_hybrid.img
ls -las
abootimg -i boot_V33_debug.img
SYNC
sync
heimdall flash --BOOT boot_V33_debug.img
pinf 192.168.1.18
ping 192.168.1.18
sync
cat <<EOF > bootimg.cfg
pagesize = 0x800
kerneladdr = 0x10008000
ramdiskaddr = 0x11000000
tagsaddr = 0x10000100
cmdline = console=tty1 console=ttyAMA0,115200 fbcon=map:0 pmos_boot_uuid=6f9b3440-23d4-4bf2-9e0f-169bc08f59ab pmos_root_uuid=435a377f-e279-49ea-a024-a949c37f9b32 pmos_rootfsopts=defaults
EOF

abootimg --create boot_V34_text.img -f bootimg.cfg -k zImage-dtb_V31_final -r initrd_hybrid.img
heimdall flash --BOOT boot_V34_text.img
ping 192.168.1.18
ls
ls -la
heimdall flash --BOOT boot_FRANKENSTEIN_V15.img
ping 192.168.1.18
ssh 192.168.1.18
sync
heimdall flash --BOOT boot_V35_final.img
heimdall detect
cd ..
clear
cd wils
ls
ping 192.168.1.18
ssh 192.168.1.18
exit
sudo apt update
sudo apt install pmbootstrap
pmbootstrap --version
lsblk
pmbootstrap install --sdcard /dev/sdb
pmbootstrap init
sudo apt update
pmbootstrap --version
pip install --user --upgrade pmbootstrap
sudo apt install python3-pip
pip install --user --upgrade pmbootstrap
sudo pip install --user --upgrade pmbootstrap
sudo apt install
pip install --user --upgrade pmbootstrap
sudo apt update
pip install --user --upgrade pmbootstrap
sudo apt install pipx
pip install --user --upgrade pmbootstrap
pipx ensurepath
sync
pip install --user --upgrade pmbootstrap
pipx install pmbootstrap
pipx install git+https://gitlab.com/postmarketOS/pmbootstrap.git
pipx ensurepath
exit
pipx install git+https://gitlab.com/postmarketOS/pmbootstrap.git
pmbootstrap --version
pipx install git+https://gitlab.com/postmarketOS/pmbootstrap.git --force
pmbootstrap --version
which pmbootstrap
# Fjern den gamle 3.5.2-versjonen helt
sudo apt remove pmbootstrap
hash -r
which pmbootstrap
pmbootstrap --version
pipx uninstall pmbootstrap
pipx install git+https://gitlab.postmarketos.org/postmarketos/pmbootstrap.git
pmbootstrap --version
pmbootstrap init
lsblk
pmbootstrap install --sdcard /dev/sdb
pmbootstrap init
pmbootstrap install --sdcard /dev/sdb
rm -rf /home/wils/.local/var/pmbootstrap/cache_git/pmaports/device/downstream/linux-samsung-klimt
rm -rf /home/wils/.local/var/pmbootstrap/cache_git/pmaports/device/downstream/device-samsung-klimt
pmbootstrap zap
pmbootstrap install --sdcard /dev/sdb
pmbootstrap zap -a
pmbootstrap init
sync
pmbootstrap install --sdcard /dev/sdb
pmbootstrap zap
sudo umount /dev/sdb*
sudo fuser -mv /dev/sdb
sudo umount -l /dev/sdb*
sudo systemctl stop udisks2
pmbootstrap install --sdcard /dev/sdb
pmbootstrap shutdown
ping 192.168.1.18
heimdall detect
pmbootstrap flasher flash_kernel
heimdall detect
ping 192.168.1.18
heimdall detect
lsusb
fastboot devices
sudo apt install fastboot
fastboot devices
fastboot continue
ip a | grep -A 3 "enp"
nmcli device
dmesg | tail -n 20
sudo dmesg | tail -n 20
ping -c 3 172.16.42.1
ssh wils@172.16.42.1
dmesg | grep -i sdb | tail -n 20
sudo dmesg | grep -i sdb | tail -n 20
watch -d grep -e Dirty: -e Writeback: /proc/meminfo
sudo sysctl -w net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -o eno1 -j MASQUERADE
sudo ip route add default via 172.16.42.2
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf
sudo apk add dtc
find /proc/device-tree
ssh wils@172.16.42.1 "tar -czf - /proc/device-tree" > ~/klimt_dna.tar.gz
mkdir -p ~/klimt_debug
tar -xzf ~/klimt_dna.tar.gz -C ~/klimt_debug
dtc -I fs -O dts ~/klimt_debug/proc/device-tree > ~/fasit_fra_vraket.dts
sudo apt install device-tree-compiler
dtc -I fs -O dts ~/klimt_debug/proc/device-tree > ~/fasit_fra_vraket.dts
sudo iptables -t nat -D POSTROUTING -o eno1 -j MASQUERADE
sudo sysctl -w net.ipv4.ip_forward=0
sudo iptables -t nat -L -n -v
scp wils@172.16.42.1:~/klimt.dtb ~/klimt.dtb
dtc -I dtb -O dts ~/klimt.dtb > ~/fasit_fra_vraket.dts
grep -A 15 "i2c@12ca0000" ~/fasit_fra_vraket.dts
grep -A 15 "i2c@12c70000" ~/fasit_fra_vraket.dts
ping gemini.google.com
btop
grep -A 15 "i2c@12c70000" ~/fasit_fra_vraket.dts
grep -i -A 5 "backlight" ~/fasit_fra_vraket.dts
grep -i -A 10 "panel" ~/fasit_fra_vraket.dts
grep -A 20 "i2c@12cd0000" ~/fasit_fra_vraket.dts
grep -i -A 20 "dsi@" ~/fasit_fra_vraket.dts
grep -i -A 20 "display-controller" ~/fasit_fra_vraket.dts
grep -i -A 20 "fimd@" ~/fasit_fra_vraket.dts
grep -i -A 20 "decon@" ~/fasit_fra_vraket.dts
ls
nano fasit_fra_vraket.dts
ls
cd klimt_frankenstein
ls
cd check_v15
ls
nano v15_gull.dts
cd ..
cd pack
ls
cd ..
ls
cd dtbs_ALPINE
ls
cd ..
ls
cd pack
ls
cd ..
ls
cd check_v15
ls -las
ls
nano v15_gull.dts
ssh 172.16.42.1
opp
full
fix
clean
rens
opp
full
fix
clean
opp
sync && sudo sysctl vm.drop_caches=3
opp
full
fix
clean
rens
opp
sudo rm /etc/apt/sources.list.d/google-chrome.list
nano vedlikehold.sh
chmod +x vedlikehold.sh
sudo rm /etc/apt/sources.list.d/google-chrome.list
nano vedlikehold.sh
vedlikehold
./vedlikehold.sh
nano vedlikehold.sh
./vedlikehold.sh
nano ~/.bash_aliases
source ~/.bashrc
rep
rens
rep
rens
rep
rens
rep
ssh-keygen -t ed25519 -C "willy.olsen72@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
ls
cd scripts
nano obsidian_sync.sh
chmod +x obsidian_sync.sh
nano ~/.bash_aliases
1  cd ~/sti/til/ditt/vault
2  git init
3  git remote add origin git@github.com:brukernavn/repo-navn.git
4  git add .
5  git commit -m "Initial commit fra Warlord"
6  git push -u origin main
flatpak install flathub md.obsidian.Obsidian
--enable-features=UseOzonePlatform --ozone-platform=wayland
cd ..
ls
clear
lc -las
ls -las
1  flatpak override --user --env=ELECTRON_OZONE_PLATFORM_HINT=wayland md.obsidian.Obsidian
flatpak override --user --env=ELECTRON_OZONE_PLATFORM_HINT=wayland md.obsidian.Obsidian
nano ~/.bash_aliases
source /.bashrc
source ~/.bashrc
xlsaclients
xlsclients
ssh -T git@github.com
1  cat ~/.ssh/id_ed25519.pub
cat ~/.ssh/id_ed25519.pub
cat ~/.ssh/wils.obsidian.key.pub
ls
cat ~/.ssh/wils.obsidian.key.pub
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/wils.obsidian.key
~
ls
mkdir -p ~/.ssh
mv ~/wils.obsidian.key* ~/.ssh/
chmod 700 ~/.ssh
chmod 600 ~/.ssh/wils.obsidian.key
chmod 644 ~/.ssh/wils.obsidian.key.pub
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/wils.obsidian.key
ssh -T git@github.com
ssh -vT git@github.com
cat ~/.ssh/wils.obsidian.key.pub
ssh -vT git@github.com
ls -al ~/.ssh
cat ~/.ssh/wils.obsidian.key.pub
cd ~/Dokumenter/MittObsidianVault
cd Dokumenter
ls
mkdir Wils-Vault
ls
cd Wils-Vault
ls
git init
git branch -m main
git remote add origin git@github.com:panzerdroideka/wils-obsidian-notater.git
echo "# Velkommen til Warlord Obsidian" > README.md
git add .
git commit -m "Initialisering av Wils-Vault på WARLORD"
git push -u origin main
git add .
git commit -m "Initialisering av Wils-Vault på WARLORD"
git push -u origin main
git config --global user.email "willy.olsen72@gmail.com"
git config --global user.name "Wils"
11 git add .
git commit -m "Initialisering av Wils-Vault på WARLORD"
git push -u origin main
git add .
git commit -m "Initialisering av Wils-Vault på WARLORD"
git push -u origin main
git remote -v
git commit -m "Initialisering av Wils-Vault på WARLORD"
git push -u origin main
git remote set-url origin git@github.com:panzerdroideka/obsidian-notater.git
git push -u origin main
nano ~/.bash_aliases
nano ~/scripts/obsidian_sync.sh
dytt
nano ~/scripts/obsidian_sync
nano ~/scripts/obsidian_sync.sh
source ~/.bashrc
dytt
~
cd ..
~
cd ..
~
ls
1  kwrite ~/scripts/obsidian_sync.sh
kwrite ~/scripts/obsidian_sync.sh
dytt
kwrite ~/scripts/obsidian_sync.sh
ls
cd Dokumenter
ls
kwrite ~/scripts/obsidian_sync.sh
dytt
DYTT
dytt
btop
(while true; do sudo -v; sleep 60; done) &:
2025thC3ntury!
(while true; do sudo -v; sleep 60; done) &:
2025thC3ntury!
(while true; do sudo -v; sleep 60; done) &
2025thC3ntury!
(while true; do sudo -v; sleep 60; done)
(while true; do sudo -v; sleep 60; done) &: 
kill %1
(while true; do sudo -v; sleep 60; done) &: 
pmbootstrap install --sdcard /dev/sdc
lsblk
pmbootstrap shutdown
lsblk
sudo wipefs -a /dev/sdc
sudo partprobe /dev/sdc
pmbootstrap install --sdcard /dev/sdc
systemctl status udisks2.service
sudo udevadm settle
pmbootstrap install --sdcard /dev/sdc
lsblk
pmbootstrap shutdown
sudo losetup -D
pmbootstrap zap
lsblk
sudo wipefs -a /dev/sdc
sudo partprobe /dev/sdc
pmbootstrap install --sdcard /dev/sdc
pmbootstrap log
pmbootstrap shutdown
pmbootstrap zap
sudo sync
lsblk
lsusb
pmbootstrap install
pmbootstrap install --add btop,tmux,glances
lsblk
lusub
lsusb
pmbootstrap shutdown
sudo losetup -D
sudo sync
rm -f /home/wils/.local/var/pmbootstrap/chroot_native/home/pmos/rootfs/samsung-klimtlte.img
rm -rf /home/wils/.local/var/pmbootstrap/chroot_native/home/pmos/rootfs/samsung-klimtlte.img
sudo rm -Rf /home/wils/.local/var/pmbootstrap/chroot_native/home/pmos/rootfs/samsung-klimtlte.img
sudo udevadm settle
pmbootstrap install --add btop,tmux,glances,networkmanager
pmbootstrap export
ls -las
sudo dd if=/tmp/postmarketos-export/samsung-klimtlte.img of=/dev/sdc bs=4M status=progress conv=fsync
cd tmp
ls
ls -las
sudo dd if=/tmp/postmarketOS-export/samsung-klimtlte.img of=/dev/sdc bs=4M status=progress conv=fsync
btop
rep
rens
cd ~/etc/repositories
cd ..
~
cd ~/etc/repositories
ls
cd etc
ls
ls -las
cd apk
cd
~
ls
cd klimt_frankenstein
ls
cd dtbs_ALPINE
ls
ping 192.168.1.18
netstat
192.168.1.44
ping 192.168.1.44
ssh 192.168.1.11
wils@ssh 192.168.1.11
ssh 192.168.1.11
ping 192.168.1.11
ssh 192.168.1.11
apk add openssh
ssh 192.168.1.11
ping 192.168.1.11
ssh rppt£192.168.1.11
ssh root@192.168.1.11
ping 192.168.1.11
cd ..
cd pack
heimdall detect
sudo heimdall flash --BOOT boot_FRANKENSTEIN_V15.img
ping 192.168.1.11
ssh 192.168.1.11
nc -zv 192.168.1.11 22
ssh 192.168.1.11
nc -zv 192.168.1.11 22
lssusb
lsusb
lsblk
cd ..
ls
cd ..
ls
sudo apt update && sudo apt install pmbootstrap
pmbootstrap install --sdcard /dev/sdc
pmbootstrap chroot -r
pmbootstrap export
pmbootstrap zap -a
y
clear
mkdir -p ~/.local/var/pmbootstrap/test && rm -rf ~/.local/var/pmbootstrap/test
ls
cd ..
ls
cd .local
cd cd ~/.local
cd ~/.local
ls -las
cd var
ls
cd pmbootstrap
ls
ls -las
pmbootstrap zap -a
ls -las
sudo umount -l /home/wils/.local/var/pmbootstrap/chroot* 2>/dev/null
sudo rm -rf /home/wils/.local/var/pmbootstrap/*
ls -las /home/wils/.local/var/pmbootstrap/
pmbootstrap init
pmbootstrap install --sdcard /dev/sdc
pmbootstrap shutdown
lsblk /dev/sdc
pmbootstrap shutdown
pmbootstrap install --sdcard /dev/sdc
pmbootstrap shutdown
sudo umount /dev/sdc* 2>/dev/null
sudo wipefs -a /dev/sdc
pmbootstrap install --sdcard /dev/sdc
pmbootstrap shutdown
sudo umount /dev/sdc* 2>/dev/null
pmbootstrap install --sdcard /dev/sdc
pmbootstrap log
sudo losetup -D
pmbootstrap shutdown
[200~sudo -v~
sudo -v
while true; do sudo -v; sleep 60; done
udo losetup -D
pmbootstrap shutdown
sudo losetup -D
while true; do sudo -v; sleep 60; done
pmbootstrap install --sdcard /dev/sdc
sudo systemctl stop udisks2.service
sudo losetup -D
pmbootstrap shutdown
sudo umount /dev/sdc* 2>/dev/null
sudo wipefs -a /dev/sdc
pmbootstrap install --sdcard /dev/sdc
sudo losetup -D
pmbootstrap shutdown
lsblk
pmbootstrap shutdown
sudo losetup -D
sudo umount /dev/sdc* 2>/dev/null
sudo wipefs -a /dev/sdc
lsblk

sudo hdparm -tT /dev/sdc
sudo dd if=/dev/zero of=/dev/sdc bs=1M count=512 oflag=dsync status=progress
sudo wipefs -a /dev/sdc
pmbootstrap install --sdcard /dev/sdc
sudo systemctl mask udisks2.service
sudo systemctl stop udisks2.service
sudo umount -f /dev/sdc* 2>/dev/null
sudo losetup -D
pmbootstrap shutdown
lsblk /dev/sdc
sync
pmbootstrap install --sdcard /dev/sdc
pmbootstrap shutdown
sudo losetup -D
sudo parted -s /dev/sdc mklabel msdos
sudo partprobe /dev/sdc
pmbootstrap install --sdcard /dev/sdc
lsblk
pmbootstrap shutdown
lsblk
while true; do sudo -v; sleep 60; done
ls
cd tmp
ls -l /tmp/postmarketOS-export/samsung-klimtlte.img
sudo dd if=/tmp/postmarketOS-export/samsung-klimtlte.img of=/dev/sdc bs=4M status=progress conv=fsync
lsblk
pmbootstrap shutdown
lsblk
sudo systemctl unmask udisks2.service
sudo systemctl start udisks2.service
lsblk
cd
~
sudo mkdir -p /mnt/klimt_sjekk
sudo mount /dev/sdc2 /mnt/klimt_sjekk
ls -F /mnt/klimt_sjekk
ls -l /mnt/klimt_sjekk/usr/bin/btop
ls -l /mnt/klimt_sjekk/usr/bin/glances
dytt
rep
ping 192.168.1.11
rep
net cli
nmcli
ip link show
sudo ip link set eth0 up
sudo ip link set enxe04f43915224 up
sudo dhclient -v enxe04f43915224
lsmod | grep -E "r8152|ax88179|cdc_ether"
sudo modprobe -r r8152 && sudo modprobe r8152
sudo modprobe -r cdc_ether
sudo modprobe -r r8152
sudo modprobe r8152
sudo ip link set enxe04f43915224 up
sudo ip addr add 192.168.1.10/24 dev enxe04f43915224
sudo ip route add default via 192.168.1.1 dev enxe04f43915224
ping -c 3 192.168.1.1
sudo busybox udhcpc -i enxe04f43915224
ping www.vg.no
rep
rens
rep
rens
rep2025thC3ntury!
rep
rens
RULE_PATH="/etc/udev/rules.d/99-slimblade-pro.rules"
echo "Smeder ny udev-regel for din SlimBlade Pro..."
sudo bash -c "cat <<EOF > $RULE_PATH
# Kensington SlimBlade Pro Button Mapping
# Konfigurasjon: 1 3 3 4 5 6 7 8 9
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{name}==\"Kensington SlimBlade Pro*\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 3 3 4 5 6 7 8 9\"
EOF"
sudo bash -c "cat <<EOF > $RULE_PATH
# Kensington SlimBlade Pro Button Mapping
# Konfigurasjon: 1 3 3 4 5 6 7 8 9
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{name}==\"Kensington SlimBlade Pro*\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 3 3 4 5 6 7 8 9\"
EOF"
sudo udevadm control --reload-rules && sudo udevadm trigger
echo "-------------------------------------------------------"
echo "VERKSTEDMELDING: SlimBlade Pro er nå kalibrert!"
echo "Mappingen '1 3 3 4 5 6 7 8 9' er aktiv."
echo "Hvis den ikke reagerer med en gang, koble mottakeren ut og inn."
echo "-------------------------------------------------------"
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# Kensington SlimBlade Pro: L1=1, L2=3, R1=1, R2=8
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{name}==\"Kensington SlimBlade Pro*\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 2 1 4 5 6 7 3 8\"
EOF"
sudo udevadm control --reload-rules && sudo udevadm trigger
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# Kensington SlimBlade Pro: L1=1, L2=3, R1=1, R2=8
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{name}==\"Kensington SlimBlade Pro*\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 3 1 4 5 6 7 3 8\"
EOF"
sudo udevadm control --reload-rules && sudo udevadm trigger
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# Kensington SlimBlade Pro: L1=1, L2=3, R1=1, R2=8
# Vi dekker både posisjon 2 og 8 for å være sikre på L2
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{name}==\"Kensington SlimBlade Pro*\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 3 1 4 5 3 3 3 8\"
EOF"
sudo udevadm control --reload-rules && sudo udevadm trigger
sync
libinput debug-events
sudo apt install libinput-tools
libinput debug-events
sudo libinput debug-events
[200~sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# Kensington SlimBlade Pro: L1=1, L2=3, R1=1, R2=8
# Mapping basert på: 272=1, 273=2, 274=3, 275=8
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{name}==\"Kensington*SlimBlade*\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 1 3 4 5 6 7 8\"
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# Kensington SlimBlade Pro: L1=1, L2=3, R1=1, R2=8
# Mapping basert på: 272=1, 273=2, 274=3, 275=8
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{name}==\"Kensington*SlimBlade*\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 1 3 4 5 6 7 8\"
EOF"
sudo udevadm control --reload-rules && sudo udevadm trigger
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# Kensington SlimBlade Pro: L1=1, L2=3, R1=1, R2=8
# Basert på debug: L1=1, L2=2, R1=3, R2=8
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{name}==\"Kensington*SlimBlade*\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 3 1 4 5 6 7 8\"
EOF"
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# Kensington SlimBlade Pro: L1=1, L2=3, R1=1, R2=8
# Basert på debug: L1=1, L2=2, R1=3, R2=8
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{name}==\"Kensington*SlimBlade*\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 3 1 4 5 6 7 8\"
EOF"
sudo udevadm control --reload-rules && sudo udevadm trigger
sudo rm -f /etc/udev/rules.d/99-slimblade-pro.rules
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# WARLORD: Basert på GitHub-backup (PopOS-logikk)
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{idVendor}==\"047d\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 1 3 4 5 6 7 8\"
EOF"
sudo udevadm control --reload-rules && sudo udevadm trigger
reboot
ping www.vg.no
sudo udevadm control --reload-rules && sudo udevadm trigger
# 1. Fjern alt gammelt rusk for å unngå "fiskegarn"
sudo rm -f /etc/udev/rules.d/99-slimblade-pro.rules
sudo rm -f /usr/share/X11/xorg.conf.d/10-slimblade-pro.conf
# 2. Lag den nye 'loven' for WARLORD (Wayland)
# Mapping: L1=1, R1=1, L2=3, R2=8
# Vi setter både posisjon 2 og 3 til å reagere slik at L2 MÅ våkne
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# WARLORD Endelig mapping: L1=1, L2=3, R1=1, R2=8
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{idVendor}==\"047d\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 1 3 4 5 6 7 8 9\"
EOF"
# 3. Oppdater systemet
sudo udevadm control --reload-rules && sudo udevadm trigger
echo "-------------------------------------------------------"
echo "VERKSTEDMELDING: Ny lov er skrevet til disk."
echo "VIKTIG: Du MÅ starte maskinen på nytt (Reboot) nå."
echo "Wayland trenger en frisk start for å aktivere knappene."
echo "-------------------------------------------------------"
sudo systemctl restart NetworkManager
sudo modprobe -r r8169 && sudo modprobe r8169
# Smeder den endelige regelen som deaktiverer emulering
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# Nlkosi-oppsett: L1=1, R1=1, L2=3, R2=8
# Basert på debug: 272=pos1, 273=pos2, 274=pos3, 275=pos8
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{idVendor}==\"047d\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 1 3 4 5 6 7 8\", ENV{LIBINPUT_CONFIG_MIDDLE_EMULATION_ENABLED}=\"0\"
EOF"
# Aktiver reglene
sudo udevadm control --reload-rules && sudo udevadm trigger
# 1. Fjern alle gamle forsøk så vi starter med blanke ark
sudo rm -f /etc/udev/rules.d/99-slimblade-pro.rules
# 2. Lag den nye regelen med din nøyaktige suksess-mapping: 1 3 1 4 5 6 7 8
# Navnet er hentet direkte fra din screenshot
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# WARLORD: Mapping basert på GitHub-backup (1 3 1 4 5 6 7 8)
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{name}==\"Kensington SlimBlade Pro*\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 3 1 4 5 6 7 8\", ENV{LIBINPUT_CONFIG_MIDDLE_EMULATION_ENABLED}=\"0\"
EOF"
# 3. Aktiver reglene uten reboot
sudo udevadm control --reload-rules && sudo udevadm trigger
# 1. Vi rydder først gulvet helt rent
sudo rm -f /etc/udev/rules.d/99-slimblade-pro.rules
# 2. Vi lager den nye regelen med det lange navnet fra din screenshot.
# Vi bruker wildcards (*) for å treffe uansett små variasjoner i navnet,
# men vi legger inn en sperre så den ikke treffer 'Keyboard'-enheten.
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# WARLORD: Nlkosi End-Game konfigurasjon
# Mapping: L1=1, L2=3, R1=1, R2=8
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{name}==\"Kensington SlimBlade Pro*Trackball*\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 3 1 4 5 6 7 8\", ENV{LIBINPUT_CONFIG_MIDDLE_EMULATION_ENABLED}=\"0\"
EOF"
# 3. Aktiver regelen
sudo udevadm control --reload-rules && sudo udevadm trigger
sudo systemctl restart NetworkManager sudo modprobe -r r8169 && sudo modprobe r8169
su
sudo systemctl restart NetworkManager sudo modprobe -r r8169 && sudo modprobe r8169
shutdpwn now
shutdown
shutdown now
lsusb
# 1. Rydd bort alle tidligere forsøk
sudo rm -f /etc/udev/rules.d/99-slimblade-pro.rules
# 2. Lag den nye regelen med ID 047d:80d6 og Pointer-lås.
# Mapping: L1=1, L2=3, R1=1, R2=8
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# WARLORD: Spesifikk mapping for Nlkosi (ID 047d:80d6)
# Targeter kun Pointer-interfacet for å unngå Keyboard-konflikt
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{idVendor}==\"047d\", ATTRS{idProduct}==\"80d6\", ENV{ID_INPUT_POINTER}==\"1\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 3 1 4 5 6 7 8\", ENV{LIBINPUT_CONFIG_MIDDLE_EMULATION_ENABLED}=\"0\"
EOF"
# 3. Oppdater systemet uten omstart (så vi ikke mister LAN igjen)
sudo udevadm control --reload-rules && sudo udevadm trigger
echo "-------------------------------------------------------"
echo "VERKSTEDMELDING: Ny lov er skrevet for ID 047d:80d6."
echo "Nlkosi: Du MÅ nappe ut 2.4GHz-donglen og sette den inn igjen NÅ."
echo "-------------------------------------------------------"
# 1. Rydd bort alt gammelt rusk
sudo rm -f /etc/udev/rules.d/99-slimblade-pro.rules
# 2. Lag den nye loven for WARLORD (ID 047d:80d6)
# Vi mapper: L1=1, R1=1, L2=3, R2=8
# Vi deaktiverer Middle Emulation som ofte 'dreper' L2 i Wayland
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# WARLORD: Nlkosi Spesial (ID 047d:80d6)
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{idVendor}==\"047d\", ATTRS{idProduct}==\"80d6\", ENV{ID_INPUT_POINTER}==\"1\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 1 3 4 5 6 7 8\", ENV{LIBINPUT_CONFIG_MIDDLE_EMULATION_ENABLED}=\"0\"
EOF"
# 3. Oppdater systemet
sudo udevadm control --reload-rules && sudo udevadm trigger
echo "-------------------------------------------------------"
echo "VERKSTEDMELDING: Ny lov er skrevet for ID 047d:80d6."
echo "Nlkosi: Du MÅ nappe ut 2.4GHz-donglen og sette den inn igjen NÅ."
echo "-------------------------------------------------------"
clear
libinput list-devices
sudo libinput list-devices
cat /proc/bus/input/devices
# 1. Rydd bort alle tidligere forsøk
sudo rm -f /etc/udev/rules.d/99-slimblade-pro.rules
# 2. Lag den nye regelen med det fulle navnet og Scroll-sperre.
# Vi bruker det nøyaktige navnet fra din /proc/bus/input/devices.
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# WARLORD: Spesifikk mapping for Nlkosi (L1=1, L2=3, R1=1, R2=8)
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{name}==\"Kensington SlimBlade Pro(2.4GHz Receiver) Kensington SlimBlade Pro Trackball(2.4GHz Receiver)\", ENV{ID_INPUT_POINTER}==\"1\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 3 1 4 5 6 7 8\", ENV{LIBINPUT_CONFIG_SCROLL_METHOD}=\"none\", ENV{LIBINPUT_CONFIG_MIDDLE_EMULATION_ENABLED}=\"0\"
EOF"
# 3. Oppdater systemet uten omstart
sudo udevadm control --reload-rules && sudo udevadm trigger
echo "-------------------------------------------------------"
echo "VERKSTEDMELDING: L2 er nå frigjort fra Scroll-tjenesten."
echo "Nlkosi: Du MÅ nappe ut 2.4GHz-donglen og sette den inn igjen NÅ."
echo "-------------------------------------------------------"
# 1. Rydd bort alle tidligere forsøk for å unngå "fiskegarn"
sudo rm -f /etc/udev/rules.d/99-slimblade-pro.rules
# 2. Lag den nye loven for WARLORD.
# Mapping forklart: 
# Posisjon 1 (L1) = 1 (Venstre)
# Posisjon 2 (R1) = 1 (Venstre)
# Posisjon 3 (L2) = 3 (Høyre) <-- Dette vekker L2!
# Posisjon 8 (R2) = 8 (Back)
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# WARLORD: Spesifikk mapping for Nlkosi (ID 047d:80d6)
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{idVendor}==\"047d\", ATTRS{idProduct}==\"80d6\", ENV{ID_INPUT_POINTER}==\"1\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 1 3 4 5 6 7 8\", ENV{LIBINPUT_CONFIG_SCROLL_METHOD}=\"none\", ENV{LIBINPUT_CONFIG_MIDDLE_EMULATION_ENABLED}=\"0\"
EOF"
# 3. Oppdater systemet uten omstart (så vi beholder LAN-kortet)
sudo udevadm control --reload-rules && sudo udevadm trigger
echo "-------------------------------------------------------"
echo "VERKSTEDMELDING: L2 er nå frigjort fra Scroll-tjenesten."
echo "Nlkosi: Du MÅ nappe ut 2.4GHz-donglen og sette den inn igjen NÅ."
echo "-------------------------------------------------------"
ls -l /etc/udev/rules.d/99-slimblade-pro.rules
# Vi skriver direkte til KDE sin input-konfigurasjon i din hjemmemappe
kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "Kensington SlimBlade Pro Trackball" --key "ButtonMapping" "1 3 1 4 5 6 7 8"
# Vi deaktiverer midt-emulering som stjeler L2
kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "Kensington SlimBlade Pro Trackball" --key "MiddleEmulation" "false"
# Start kwin (vindushåndtereren) på nytt for å tvinge frem endringen uten reboot
qdbus6 org.kde.KWin /KWin reconfigure
# 1. Rydd gulvet helt rent
sudo rm -f /etc/udev/rules.d/99-slimblade-pro.rules
# 2. Lag den nye 'loven' for Nlkosi. 
# Vi bruker wildcards (*) for å håndtere parentesene i det lange navnet sikkert.
# Mapping: L1=1, R1=1, L2=3, R2=8
sudo bash -c "cat <<EOF > /etc/udev/rules.d/99-slimblade-pro.rules
# WARLORD: Nlkosi End-Game (ID 047d:80d6)
# Fjerner scroll-blokkering på L2 og setter korrekt mapping
ACTION==\"add|change\", KERNELS==\"input*\", ATTRS{idVendor}==\"047d\", ATTRS{idProduct}==\"80d6\", ATTRS{name}==\"Kensington SlimBlade Pro*Trackball*\", ENV{ID_INPUT_POINTER}==\"1\", ENV{LIBINPUT_ATTR_BUTTON_MAPPING}=\"1 1 3 4 5 6 7 8\", ENV{LIBINPUT_CONFIG_SCROLL_METHOD}=\"none\", ENV{LIBINPUT_CONFIG_MIDDLE_EMULATION_ENABLED}=\"0\"
EOF"
# 3. Tving systemet til å lese regelen (Reload og Trigger)
sudo udevadm control --reload-rules && sudo udevadm trigger
sudo udevadm test /sys/class/input/event6 2>&1 | grep MAPPING
# 1. Finn navnet på enheten slik KDE ser den
# Vi bruker det lange navnet fra din libinput-liste
DEVICE_NAME="Kensington SlimBlade Pro(2.4GHz Receiver) Kensington SlimBlade Pro Trackball(2.4GHz Receiver)"
# 2. Skriv mappingen direkte til KDE sin config
# Vi mapper: L1=1, R1=1, L2=3, R2=8
# Mapping-streng: 1 1 3 4 5 6 7 8
kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$DEVICE_NAME" --key "ButtonMapping" "1 1 3 4 5 6 7 8"
# 3. Deaktiver Scroll-knapp og Midt-emulering som 'stjeler' L2
kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$DEVICE_NAME" --key "MiddleEmulation" "false"
kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$DEVICE_NAME" --key "ScrollMethod" "0"
# 4. Tving KDE til å lese innstillingene på nytt
qdbus6 org.kde.KWin /KWin reconfigure
cat ~/.config/kcminputrc | grep -A 5 "SlimBlade"
# 1. Vi rydder først bort udev-regelen som systemet kanskje blokkerer uansett
sudo rm -f /etc/udev/rules.d/99-slimblade-pro.rules
# 2. Vi bruker det nøyaktige lange navnet fra din libinput-liste.
# Vi mapper: L1=1, L2=3 (Høyre), R1=1, R2=8 (Back)
# Vi deaktiverer ScrollMethod (0) og MiddleEmulation for å frigjøre L2.
DEV_NAME="Kensington SlimBlade Pro(2.4GHz Receiver) Kensington SlimBlade Pro Trackball(2.4GHz Receiver)"
# Skriver direkte til KDEs konfigurasjon (bruker decimal for ID-er: 047d=1149, 80d6=32982)
kwriteconfig6 --file kcminputrc --group "Libinput" --group "1149" --group "32982" --group "$DEV_NAME" --key "ButtonMapping" "1 3 1 4 5 6 7 8"
kwriteconfig6 --file kcminputrc --group "Libinput" --group "1149" --group "32982" --group "$DEV_NAME" --key "ScrollMethod" "0"
kwriteconfig6 --file kcminputrc --group "Libinput" --group "1149" --group "32982" --group "$DEV_NAME" --key "MiddleEmulation" "false"
# 3. Tving KDE til å laste innstillingene uten omstart (viktig for LAN-et ditt!)
qdbus6 org.kde.KWin /KWin reconfigure
# 1. Definer navnene vi så i din 'cat'
NAME1="Kensington SlimBlade Pro Trackball"
NAME2="Kensington SlimBlade Pro(2.4GHz Receiver) Kensington SlimBlade Pro Trackball(2.4GHz Receiver)"
# 2. Fjern de gamle, kranglende seksjonene for å stoppe forvirringen
kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME1" --key "ButtonMapping" --delete
kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME2" --key "ButtonMapping" --delete
kwriteconfig6 --file kcminputrc --group "Libinput" --group "1149" --group "32982" --group "$NAME2" --key "ButtonMapping" --delete
# 3. Skriv inn den ENESTE sanne loven for begge navnene
# Vi bruker 1 3 1 4 5 6 7 8 (L1=Venstre, L2=Høyre, R1=Venstre)
for NAME in "$NAME1" "$NAME2"; do     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --key "ButtonMapping" "1 3 1 4 5 6 7 8";     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --key "MiddleEmulation" "false";     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --key "ScrollMethod" "0"; done
# 4. Tving KDE til å lese den nye konfigurasjonen
qdbus6 org.kde.KWin /KWin reconfigure
sync
# 1. Definer alle navnene vi så i din config
NAME1="Kensington SlimBlade Pro Trackball"
NAME2="Kensington SlimBlade Pro(2.4GHz Receiver) Kensington SlimBlade Pro Trackball(2.4GHz Receiver)"
# 2. Slett alle gamle, korrupte grupper i configen
for NAME in "$NAME1" "$NAME2"; do     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --delete;     kwriteconfig6 --file kcminputrc --group "Libinput" --group "1149" --group "32982" --group "$NAME" --delete; done
# 3. Skriv den NYE loven for Nlkosi
# Vi bruker din suksess-mapping: 1 3 1 4 5 6 7 3 9 (L2=Høyre, R1=Venstre, R2=Høyre)
# Vi setter ScrollButton til 8 (R2) som i din Mint-fil, slik at L2 blir FRIGJORT
for NAME in "$NAME1" "$NAME2"; do     GROUP="Libinput,047d,80d6,$NAME";     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --key "ButtonMapping" "1 3 1 4 5 6 7 3 9";     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --key "ScrollMethod" "2";     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --key "ScrollButton" "8";     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --key "MiddleEmulation" "false"; done
# 4. Tving Wayland til å lese endringene
qdbus6 org.kde.KWin /KWin reconfigure
sudo # 1. Definer alle navnene vi så i din config
NAME1="Kensington SlimBlade Pro Trackball"
NAME2="Kensington SlimBlade Pro(2.4GHz Receiver) Kensington SlimBlade Pro Trackball(2.4GHz Receiver)"
# 2. Slett alle gamle, korrupte grupper i configen
for NAME in "$NAME1" "$NAME2"; do     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --delete;     kwriteconfig6 --file kcminputrc --group "Libinput" --group "1149" --group "32982" --group "$NAME" --delete; done
# 3. Skriv den NYE loven for Nlkosi
# Vi bruker din suksess-mapping: 1 3 1 4 5 6 7 3 9 (L2=Høyre, R1=Venstre, R2=Høyre)
# Vi setter ScrollButton til 8 (R2) som i din Mint-fil, slik at L2 blir FRIGJORT
for NAME in "$NAME1" "$NAME2"; do     GROUP="Libinput,047d,80d6,$NAME";     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --key "ButtonMapping" "1 3 1 4 5 6 7 3 9";     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --key "ScrollMethod" "2";     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --key "ScrollButton" "8";     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --key "MiddleEmulation" "false"; done
# 4. Tving Wayland til å lese endringene
qdbus6 org.kde.KWin /KWin reconfigure
wils@WARLORD:~$ sudo # 1. Definer alle navnene vi så i din config
NAME1="Kensington SlimBlade Pro Trackball"
NAME2="Kensington SlimBlade Pro(2.4GHz Receiver) Kensington SlimBlade Pro Trackball(2.4GHz Receiver)"
# 2. Slett alle gamle, korrupte grupper i configen
for NAME in "$NAME1" "$NAME2"; do     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --delete;     kwriteconfig6 --file kcminputrc --group "Libinput" --group "1149" --group "32982" --group "$NAME" --delete; done
# 3. Skriv den NYE loven for Nlkosi
# Vi bruker din suksess-mapping: 1 3 1 4 5 6 7 3 9 (L2=Høyre, R1=Venstre, R2=Høyre)
# Vi setter ScrollButton til 8 (R2) som i din Mint-fil, slik at L2 blir FRIGJORT
for NAME in "$NAME1" "$NAME2"; do     GROUP="Libinput,047d,80d6,$NAME";     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --key "ButtonMapping" "1 3 1 4 5 6 7 3 9";     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --key "ScrollMethod" "2";     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --key "ScrollButton" "8";     kwriteconfig6 --file kcminputrc --group "Libinput" --group "047d" --group "80d6" --group "$NAME" --key "MiddleEmulation" "false"; done
# 4. Tving Wayland til å lese endringene
qdbus6 org.kde.KWin /KWin reconfigure
expected one of these actions: --help, --version, --remove-timestamp, --validate, --list, --edit, --login, --shell, a command as a positional argument, --reset-timestamp
usage: sudo -h | -K | -k | -V
usage: sudo [-BknS] [-p prompt] [-D directory] [-g group] [-u user] [-i | -s] [command [arg ...]]
usage: sudo -v [-BknS] [-p prompt] [-g group] [-u user]
usage: sudo -l [-BknS] [-p prompt] [-U user] [-g group] [-u user] [command [arg ...]]
usage: sudo -e [-BknS] [-p prompt] [-D directory] [-g group] [-u user] file ...
Internal KConfig error: cannot mark groups as deleted
wils@WARLORD:~$ 
~
# 1. Backup
cp ~/.config/kcminputrc ~/.config/kcminputrc.bak
# 2. Fjern alle seksjoner som starter med [Libinput] og inneholder Kensington
# Vi sletter fra og med overskriften til neste tomme linje
sed -i '/\[Libinput\].*Kensington/,/^$/d' ~/.config/kcminputrc
# 3. Legg inn den korrekte loven for begge enhetene systemet ser
cat <<EOF >> ~/.config/kcminputrc

[Libinput][047d][80d6][Kensington SlimBlade Pro Trackball]
ButtonMapping=1 3 1 4 5 6 7 3 9
MiddleEmulation=false
ScrollButton=8
ScrollMethod=2

[Libinput][047d][80d6][Kensington SlimBlade Pro(2.4GHz Receiver) Kensington SlimBlade Pro Trackball(2.4GHz Receiver)]
ButtonMapping=1 3 1 4 5 6 7 3 9
MiddleEmulation=false
ScrollButton=8
ScrollMethod=2
EOF

# 4. Be KDE lese fila på nytt uten reboot
qdbus6 org.kde.KWin /KWin reconfigure
rep
# 1. Ta backup først (alltid en god vane i Lab Frankenstein)
cp ~/.config/kcminputrc ~/.config/kcminputrc.bak
# 2. Vi renser fila for alle gamle Kensington/SlimBlade-seksjoner
# Vi sletter alt fra overskriften til neste tomme linje
sed -i '/\[Libinput\].*Kensington/,/^$/d' ~/.config/kcminputrc
# 3. Vi skriver den ENESTE sanne loven nederst i fila
# Vi flytter ScrollButton til 8 for å frigjøre L2
cat <<EOF >> ~/.config/kcminputrc

[Libinput][047d][80d6][Kensington SlimBlade Pro Trackball]
ButtonMapping=1 3 1 4 5 6 7 3 9
MiddleEmulation=false
ScrollButton=8
ScrollMethod=2

[Libinput][047d][80d6][Kensington SlimBlade Pro(2.4GHz Receiver) Kensington SlimBlade Pro Trackball(2.4GHz Receiver)]
ButtonMapping=1 3 1 4 5 6 7 3 9
MiddleEmulation=false
ScrollButton=8
ScrollMethod=2
EOF

# 4. Be KDE lese fila på nytt uten omstart
qdbus6 org.kde.KWin /KWin reconfigure
sync
# 1. Ta en fersk backup
cp ~/.config/kcminputrc ~/.config/kcminputrc.bak
# 2. Rense fila for ALLE gamle SlimBlade/Kensington-seksjoner
# Vi fjerner alt som starter med [Libinput] og inneholder Kensington eller ID-ene
sed -i '/\[Libinput\].*Kensington/,/^$/d' ~/.config/kcminputrc
sed -i '/\[Libinput\].*047d.*80d6/,/^$/d' ~/.config/kcminputrc
sed -i '/\[Libinput\].*1149.*32982/,/^$/d' ~/.config/kcminputrc
# 3. Legg inn den NYE loven for Nlkosi
# Mapping forklart: 1(L1)=Left, 3(R1)=Right, 3(L2)=Right, 8(R2)=Back
# ScrollMethod=0 deaktiverer scroll-hijacking på L2!
cat <<EOF >> ~/.config/kcminputrc

[Libinput][047d][80d6][Kensington SlimBlade Pro Trackball]
ButtonMapping=1 3 3 4 5 6 7 8
MiddleEmulation=false
ScrollMethod=0

[Libinput][047d][80d6][Kensington SlimBlade Pro(2.4GHz Receiver) Kensington SlimBlade Pro Trackball(2.4GHz Receiver)]
ButtonMapping=1 3 3 4 5 6 7 8
MiddleEmulation=false
ScrollMethod=0
EOF

# 4. Be KDE om å lese fila på nytt
qdbus6 org.kde.KWin /KWin reconfigure
clear
kwrite ~/.config/kcminputrc
sudo libinput debug-events
clear
sudo libinput debug-events
clear
sudo libinput debug-events
lsusb
clear
Våknet L2 til liv som et kontant Høyreklikk med en gang du logget inn igjen, Willy? Nå er alt lagt til rette for at du kan gå rett i krigen uten tekniske hindringerclear
rep
# 1. Opprett mappen for lokale overstyringer
sudo mkdir -p /etc/libinput
# 2. Skriv Quirk-en som deaktiverer scroll-funksjonen på L2 og tvinger frem ny mapping.
# Vi bruker ID 047d:80d6 som vi fant i din lsusb.
sudo bash -c "cat <<EOF > /etc/libinput/local-overrides.quirks
[Kensington SlimBlade Pro Nlkosi Fix]
MatchName=Kensington SlimBlade Pro* Trackball*
MatchVendor=0x047d
MatchProduct=0x80d6
ModelName=Kensington SlimBlade Pro Trackball
# Vi fjerner scroll-knapp egenskapen fra BTN_MIDDLE (L2)
AttrEventCode=-BTN_MIDDLE
# Vi tvinger frem en ny knapp-oppførsel på systemnivå
ModelButtonMapping=1 3 3 4 5 6 7 8
EOF"
# 3. Oppdater systemets database
sudo udevadm control --reload-rules && sudo udevadm trigger
sync
clear
# 1. Vi lager en maskinvareregel som treffer din ID 047d:80d6
sudo bash -c "cat <<EOF > /etc/udev/hwdb.d/99-slimblade-pro.hwdb
evdev:name:Kensington SlimBlade Pro*:v047Dp80D6*
 KEYBOARD_KEY_90002=btn_right
 KEYBOARD_KEY_90003=btn_left
EOF"
# 2. Vi tvinger systemet til å lese den nye maskinvare-databasen
sudo systemd-hwdb update
sudo udevadm trigger
clear
sudo evtest
# 1. Vi lager maskinvareregelen direkte
# Vi treffer din spesifikke ID 047d:80d6 som vi så i lsusb
sudo bash -c 'cat <<EOF > /etc/udev/hwdb.d/99-slimblade-pro.hwdb
evdev:input:b0003v047Dp80D6*
 KEYBOARD_KEY_90002=btn_right
 KEYBOARD_KEY_90003=btn_left
EOF'
# 2. Oppdater systemets maskinvare-database (Dette er hjertet i operasjonen)
sudo systemd-hwdb update
sudo udevadm trigger
ping www .vg.no
ping www.vg.no
ip link show
# Sjekk om den allerede har fått IP (bare for sikkerhets skyld)
ip addr show eno1
# Hvis den ikke har IP, sett den manuelt (anta 192.168.1.10)
sudo ip addr add 192.168.1.10/24 dev eno1
# Sett interfacet logisk OPP (selv om link er oppe)
sudo ip link set eno1 up
# Legg til ruten ut til Asus-ruteren
sudo ip route add default via 192.168.1.1 dev eno1
ping -c 3 1.1.1.1
clear
# Vi skriver om hwdb-regelen for å tvinge L2 (90002) til å være RIGHT
sudo bash -c "cat <<EOF > /etc/udev/hwdb.d/99-slimblade-pro.hwdb
evdev:input:b0003v047Dp80D6*
 KEYBOARD_KEY_90001=btn_left
 KEYBOARD_KEY_90002=btn_right
 KEYBOARD_KEY_90004=btn_right
 KEYBOARD_KEY_90005=btn_side
EOF"
# Oppdater systemets "hjerne"
sudo systemd-hwdb update
sudo udevadm trigger
clear
ls -l /etc/udev/hwdb.d/99-slimblade-pro.hwdb
# På mange slike systemer fungerer dette for å åpne "panseret" midlertidig:
sudo rw
sync
sudo steamos-readonly disable
sudo mount -o remount,rw /
sudo bash -c "cat <<EOF > /etc/udev/hwdb.d/99-slimblade-pro.hwdb
evdev:input:b0003v047Dp80D6*
 KEYBOARD_KEY_90001=btn_left
 KEYBOARD_KEY_90002=btn_right
 KEYBOARD_KEY_90003=btn_right
 KEYBOARD_KEY_90004=btn_right
 KEYBOARD_KEY_90005=btn_side
EOF"
# Oppdater maskinvare-databasen i selve imaget
sudo systemd-hwdb update
sudo udevadm trigger
cat <<EOF > ~/.config/kcminputrc
[Libinput][047d][80d6][Kensington SlimBlade Pro Trackball]
ButtonMapping=1 3 3 4 5 6 7 8
MiddleEmulation=false
ScrollButton=8
ScrollMethod=2

[Libinput][047d][80d6][Kensington SlimBlade Pro(2.4GHz Receiver) Kensington SlimBlade Pro Trackball(2.4GHz Receiver)]
ButtonMapping=1 3 3 4 5 6 7 8
MiddleEmulation=false
ScrollButton=8
ScrollMethod=2
EOF

sudo mount -o remount,ro /
dmesg 1
dmesg (1)
dmesg -1
dmesg
clear
# 1. Åpne panseret (RW-modus)
sudo mount -o remount,rw /
# 2. Sveis fast den nye maskinvare-loven i /etc
# Vi mapper L1=Left, L2=Right, R1=Right, R2=Side (for scroll)
sudo bash -c "cat <<EOF > /etc/udev/hwdb.d/99-slimblade-pro.hwdb
evdev:input:b0003v047Dp80D6*
 KEYBOARD_KEY_90001=btn_left
 KEYBOARD_KEY_90002=btn_right
 KEYBOARD_KEY_90004=btn_right
 KEYBOARD_KEY_90005=btn_side
EOF"
# 3. Tving systemet til å lese den nye loven inn i base-imaget
sudo systemd-hwdb update
sudo udevadm trigger
# 4. Lås panseret (RO-modus) - Nå er det sveiset fast!
sudo mount -o remount,ro /
clear
# 1. Lås opp panseret
sudo mount -o remount,rw /
# 2. Sveis den KORREKTE loven (Nå med 90003 for L2!)
sudo bash -c "cat <<EOF > /etc/udev/hwdb.d/99-slimblade-pro.hwdb
evdev:input:b0003v047Dp80D6*
 KEYBOARD_KEY_90001=btn_left
 KEYBOARD_KEY_90002=btn_right
 KEYBOARD_KEY_90003=btn_right
 KEYBOARD_KEY_90004=btn_side
EOF"
# 3. Oppdater databasen
sudo systemd-hwdb update
sudo udevadm trigger
clear
dytt
mount | grep " / "
dytt
sync
mount | grep " / "
sudo systemctl restart NetworkManager sudo modprobe -r r8169 && sudo modprobe r8169
mount | grep " / "
sync
mount | grep " / "
wils@WARLORD:~$ mount | grep " / "
6:/dev/nvme0n1p3 on / type btrfs (rw,noatime,ssd,discard=async,space_cache=v2,autodefrag,subvolid=256,subvol=/@)
wils@WARLORD:~$ 
sudo mount -o remount,ro /
cat /etc/fstab
kwrite /etc/fstab
sudo mount -o remount,ro /
mount | grep " / "
lsblk
lsusb
sudo mount -o remount,rw /
lsblk
lsusb
dytt
mount | grep " / "
sudo mount -o remount,ro /
sync
ping www.vg.no
mount | grep " / "
dytt
rens
sytt
dytt
flatpak install flathub com.dec05eba.gpu_screen_recorder
flatpak install --user flathub com.dec05eba.gpu_screen_recorder
sudo flatpak install --user flathub com.dec05eba.gpu_screen_recorder
flatpak install --wils flathub com.dec05eba.gpu_screen_recorder
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --user flathub com.dec05eba.gpu_screen_recorder
sudo mount -o remount,rw /
flatpak install flathub com.dec05eba.gpu_screen_recorder
mkdir -p /home/wils/Games/gaminglogger/
kwrite ~/.config/MangoHud/MangoHud.conf
mkdir -p ~/.config/MangoHud
sudo mount -o remount,ro /
flatpak install --system com.dec05eba.gpu_screen_recorder
DYTT
dytt
rep
mount | grep " / "
dytt
ping www.vg.no
ls -al ~/.ssh
ssh-keygen -t ed25519 -C "wils@WARLORD"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/wils.obsidian.key
nano ~/.ssh/config
cat ~/.ssh/wils.obsidian.key.pub
ssh -T git@github.com
dytt
cd ~
git clone git@github.com:panzerdroideka/Warlord-Logs-Private.git
cd Warlord-Logs-Private
mkdir -p LotRO/Combat MangoHud/Telemetry
nano ~/logg_arkiv.sh
chmod +x ~/logg_arkiv.sh
~/Warlord-Logs-Private
mkdir ~/wils/Warlord-Logs-Private
~/Warlord-Logs-Private
~
# 1. Koble den lokale mappen til GitHub-adressen
git remote add origin git@github.com:panzerdroideka/Warlord-Logs-Private.git
# 2. Bekreft at koblingen er aktiv
git remote -v
cd ~/Warlord-Logs-Private
git init
git remote add origin git@github.com:panzerdroideka/Warlord-Logs-Private.git
git remote -v
git branch -m main
echo "# Warlord Logg Arkiv" > README.md
echo "Privat arkiv for LotRO Combat logger og MangoHud telemetri." >> README.md
git add README.md
git commit -m "Initialisering av logg-arkiv: Vaktpost satt opp"
git push -u origin main
cd ..
ls
cd MangoHud
ls
cd Telemetry
ls
ls -las
nano ~/.config/MangoHud/MangoHud.conf
~/logg_arkiv.sh
nano ~/logg_arkiv.sh
nano ~/logg_arkiv.sh
arkiv
echo "alias arkiv='bash ~/logg_arkiv.sh'" >> ~/.bashrc
source ~/.bashrc
arkiv
chmod +x ~/logg_arkiv.sh
arkiv
dytt
nano ~/logg_arkiv.sh
cd ~/home/wils/Dokumenter/Wils-Vault/
~
ls
cd Dokumenter
ls
cd Wils-Vault
git reset --soft HEAD~1
git rm -r --cached .
git add .
git commit -m "Warlord rens: Fjernet tunge videofiler fra historikken"
git push origin main
git filter-branch --force --index-filter "git rm --cached --ignore-unmatch '*.mp4'" --prune-empty --tag-name-filter cat -- --all
rm -rf .git/refs/original/
git reflog expire --expire=now --all
git gc --prune=now --aggressive
git push origin main --force
nano ~/logg_arkiv.sh
dytt
arkiv
ls ~/ | grep -i mangohud
ls -las ~/MangoHud/Telemetry/
ls -latr ~/ | tail -n 10
cd ..
las
ls -las
ls -latr ~/ | tail -n 10
ls -las
nano ~/logg_arkiv.sh
arkiv
nano ~/logg_arkiv.sh
ARKIV
arkiv
nano ~/logg_arkiv.sh
mkdir -p ~/Warlord-Logs-Public/Showcase
cd ~/Warlord-Logs-Public
git init
git remote add origin git@github.com:panzerdroideka/Warlord-Logs-Public.git
echo "# Warlord Combat Logs & Telemetry" > README.md
echo "Offentlig arkiv for ytelsesdata og kamp-logger fra Middle-earth." >> README.md
git add .
git commit -m "Initialisering av offentlig vaktpost"
git push -u origin main
git branch -m main
git push -u origin main
git remote set-url origin git@github.com:panzerdroideka/Warlord-Logs-Public.git
git branch -M main
git push -u origin main
cd ..
ls
nano ~/logg_arkiv.sh
arkiv
ping 192.168.1.11
ls
cd klimt_frankenstein
ls
cd dtbs_ALPINE
ls
nano alpine_dna.dts
# Kompiler til en midlertidig test-fil
dtc -I dts -O dtb alpine_dna_dts_txt -o test_klimt.dtb
ls -lh
ls -las
pmbootstrap qemu --arch armv7
cd ..
ls
cd ..
ls
cd ~/pmbootstrap
ls -las
~
cd klimt_frankenstein
ls
sudo apt update
sudo apt install git python3-pip
pip install --user pmbootstrap
sudo mount -o remount,rw /
sudo apt update
sudo apt install pipx
pipx install pmbootstrap
pipx ensurepath
source ~/.bashrc
pmbootstrap --version
pmbootstrap init
source ~/.profile
pmbootstrap qemu --arch armv7 --extra-args "-dtb test_klimt.dtb"
pmbootstrap qemu --qemu-args "-dtb test_klimt.dtb"
pmbootstrap qemu --qemu-args "-dtb test_klimt.dtb" --display sdl
pmbootstrap qemu --help
pmbootstrap export ~/klimt_test_export
sudo mount -o remount,rw /
pmbootstrap zap -m
pmbootstrap build device-samsung-klimtlte
# Finn ut hvor kjernen ligger og kopier den til din nåværende mappe
find ~/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot -name "vmlinuz*" -exec cp {} ./vmlinuz_klimt \;
find ~/.local/var/pmbootstrap/packages -name "linux-samsung-klimtlte-*.apk"
pmbootstrap build linux-samsung-klimtlte --force
find ~/.local/var/pmbootstrap/chroot_native -name "vmlinuz*"
pmbootstrap config
ls /home/wils/.local/var/pmbootstrap/cache_git/pmaports/device/*/device-samsung-klimtlte/deviceinfo
grep "deviceinfo_kernel=" /home/wils/.local/var/pmbootstrap/cache_git/pmaports/device/testing/device-samsung-klimtlte/deviceinfo
find /home/wils/.local/var/pmbootstrap/packages -name "linux-samsung-klimtlte-*.apk"
# Lag en temp-mappe og pakk ut (bytt ut NAVN_PÅ_FIL med det find fant)
mkdir -p temp_kernel
tar -xf /home/wils/.local/var/pmbootstrap/packages/armv7/NAVN_PÅ_FIL.apk -C temp_kernel
cp temp_kernel/boot/vmlinuz ~/klimt_frankenstein/vmlinuz_klimt
sudo mount -o remount,rw /
sudo apt update && sudo apt install abootimg
abootimg -x boot_V35_final.img
ls
cd dtbs_ALPINE
abootimg -x boot_V35_final.img
ls
abootimg -x boot_FRANKENSTEIN_V16.img
ls
cd ..
ls
cd zImage_ALPINE
cd dtbs_ALPINE
cat ../zImage_ALPINE test_klimt.dtb > zImage-dtb_V16_FINAL
abootimg --create boot_V16_Klimt_LoS.img     -f bootimg.cfg     -k zImage-dtb_V16_FINAL     -r initrd.img
abootimg -x boot_FRANKENSTEIN_V16.img
abootimg --create boot_V16_Klimt_LoS.img     -f bootimg.cfg     -k zImage-dtb_V16_FINAL     -r initrd.img
ls -ltr | tail -n 10
ls -l bootimg.cfg initrd.img
cd ..
ls -l bootimg.cfg initrd.img
~
find ~/klimt_frankenstein -name "*.cfg"
abootimg --create boot_V16_Klimt_LoS.img     -f /home/wils/klimt_frankenstein/pack/bootimg.cfg     -k ./zImage-dtb_V16_FINAL     -r /home/wils/klimt_frankenstein/pack/initrd.img
abootimg --create ~/klimt_frankenstein/dtbs_ALPINE/boot_V16_Klimt_LoS.img     -f /home/wils/klimt_frankenstein/pack/bootimg.cfg     -k /home/wils/klimt_frankenstein/dtbs_ALPINE/zImage-dtb_V16_FINAL     -r /home/wils/klimt_frankenstein/pack/initrd.img
find ~/klimt_frankenstein -name "initrd.img"
abootimg --create ~/klimt_frankenstein/dtbs_ALPINE/boot_V16_Klimt_LoS.img     -f /home/wils/klimt_frankenstein/pack/bootimg.cfg     -k /home/wils/klimt_frankenstein/dtbs_ALPINE/zImage-dtb_V16_FINAL     -r /home/wils/klimt_frankenstein/pack/initrd.img
cd klimt_frankenstein
abootimg --create ~/klimt_frankenstein/dtbs_ALPINE/boot_V16_Klimt_LoS.img     -f /home/wils/klimt_frankenstein/pack/bootimg.cfg     -k /home/wils/klimt_frankenstein/dtbs_ALPINE/zImage-dtb_V16_FINAL     -r /home/wils/klimt_frankenstein/pack/initrd.img
cd dtbs_ALPINE
abootimg --create ~/klimt_frankenstein/dtbs_ALPINE/boot_V16_Klimt_LoS.img     -f /home/wils/klimt_frankenstein/pack/bootimg.cfg     -k /home/wils/klimt_frankenstein/dtbs_ALPINE/zImage-dtb_V16_FINAL     -r /home/wils/klimt_frankenstein/pack/initrd.img
cd ~/klimt_frankenstein/dtbs_ALPINE
abootimg -x boot_FRANKENSTEIN_V16.img -f k_config.cfg -k k_kernel.img -r k_initrd.img
cd ~/klimt_frankenstein/dtbs_ALPINE
abootimg -x boot_FRANKENSTEIN_V16.img k_config.cfg k_kernel.img k_initrd.img
ls -l k_config.cfg k_initrd.img
ls -lt | head -n 15
cd ~/klimt_frankenstein/dtbs_ALPINE
mkdir -p KLEKKING
cp boot_FRANKENSTEIN_V16.img KLEKKING/
cd KLEKKING
# Nå pakker vi ut i en helt tom mappe
abootimg -x boot_FRANKENSTEIN_V16.img
# Sjekk hva som ble født (uten tids-sortering)
ls -l
find ~/klimt_frankenstein -name "*.img" -size +1M -exec ls -lh {} \;
abootimg --create ~/klimt_frankenstein/dtbs_ALPINE/boot_V16_Klimt_LoS.img     -f /home/wils/klimt_frankenstein/check_v15/bootimg.cfg     -k /home/wils/klimt_frankenstein/dtbs_ALPINE/zImage-dtb_V16_FINAL     -r /home/wils/klimt_frankenstein/check_v15/initrd.img
sed -i 's/bootsize = .*/bootsize = 8388608/' /home/wils/klimt_frankenstein/check_v15/bootimg.cfg
abootimg --create ~/klimt_frankenstein/dtbs_ALPINE/boot_V16_Klimt_LoS.img     -f /home/wils/klimt_frankenstein/check_v15/bootimg.cfg     -k /home/wils/klimt_frankenstein/dtbs_ALPINE/zImage-dtb_V16_FINAL     -r /home/wils/klimt_frankenstein/check_v15/initrd.img
ls -lh ~/klimt_frankenstein/dtbs_ALPINE/boot_V16_Klimt_LoS.img
ls -las
ls -lh ../boot_V16_Klimt_LoS.img
cd ..
ls
qemu-system-arm -M virt -cpu cortex-a15 -m 1024     -kernel zImage-dtb_V16_FINAL     -initrd /home/wils/klimt_frankenstein/check_v15/initrd.img     -append "console=ttyAMA0 loglevel=7 earlycon"     -nographic
sudo apt install qemu-system-arm
qemu-system-arm -M virt -cpu cortex-a15 -m 1024     -kernel zImage-dtb_V16_FINAL     -initrd /home/wils/klimt_frankenstein/check_v15/initrd.img     -append "console=ttyAMA0 loglevel=7 earlycon"     -nographic
heimdall detect
heimdall flash --BOOT boot_V16_Klimt_LoS.img
ping 192.168.1.11
ping 192.168.1.18
cd ..
qemu-system-arm -M virt -cpu cortex-a15 -m 2048     -kernel ./dtbs_ALPINE/zImage-dtb_V16_FINAL     -initrd ./check_v15/initrd.img     -append "console=tty0 root=/dev/vda1 rw"     -device virtio-gpu-pci     -device virtio-mouse-pci -device virtio-keyboard-pci     -display gtk
qemu-system-arm -M virt -cpu cortex-a15 -m 2048     -kernel ./dtbs_ALPINE/zImage-dtb_V16_FINAL     -initrd ./check_v15/initrd.img     -drive if=none,file=[STI_TIL_DITT_ROOTFS].img,format=raw,id=hd0     -device virtio-blk-device,drive=hd0     -append "console=tty0 root=/dev/vda rw"     -device virtio-gpu-pci -display gtk
find ~/klimt_frankenstein -name "*.img" -size +100M
ls
cd dtbs_ALPINE
find ~/klimt_frankenstein -name "*.img" -size +100M
ls
cd ..
cd pack
ls
find ~ -name "*.img" -size +300M
cd
find ~ -name "*.img" -size +300M
ls -lh ~/.local/var/pmbootstrap/chroot_native/home/pmos/rootfs/ 2>/dev/null
pmbootstrap config work
# Bytt ut STIEN under med det du fikk fra kommandoen over
ls -lh [STI_FRA_FORRIGE_SVAR]/chroot_native/home/pmos/rootfs/
ls -lh /home/wils/.local/var/pmbootstrap/images/samsung-klimt/
sudo ls -lh /home/wils/.local/var/pmbootstrap/images/samsung-klimt/
wils@WARLORD:~$ ls -lh /home/wils/.local/var/pmbootstrap/images/samsung-klimt/
ls: cannot access '/home/wils/.local/var/pmbootstrap/images/samsung-klimt/': No such file or directory
wils@WARLORD:~$ sudo ls -lh /home/wils/.local/var/pmbootstrap/images/samsung-klimt/
[sudo: authenticate] Password: 
ls: cannot access '/home/wils/.local/var/pmbootstrap/images/samsung-klimt/': No such file or directory
wils@WARLORD:~$ 
pmbootstrap export --output ~/klimt_frankenstein/klimt_lab_rootfs.img
ls -lh ~/klimt_frankenstein/klimt_lab_rootfs.img
mkdir -p ~/klimt_frankenstein/export
pmbootstrap export ~/klimt_frankenstein/export
pmbootstrap zap
pmbootstrap install
qemu-system-arm -M virt -cpu cortex-a15 -m 2048     -kernel ./dtbs_ALPINE/zImage-dtb_V16_FINAL     -initrd ./check_v15/initrd.img     -drive file=/home/wils/.local/var/pmbootstrap/chroot_native/home/pmos/rootfs/samsung-klimtlte.img,format=raw,if=virtio     -append "console=tty0 root=/dev/vda2 rw"     -device virtio-gpu-pci -display gtk
pmbootstrap qemu --arch armv7 --image-size 2G --kernel ~/klimt_frankenstein/dtbs_ALPINE/zImage-dtb_V16_FINAL
qemu-system-arm -M virt -cpu cortex-a15 -m 2048     -kernel ./dtbs_ALPINE/zImage-dtb_V16_FINAL     -initrd ./check_v15/initrd.img     -drive file=/home/wils/.local/var/pmbootstrap/chroot_native/home/pmos/rootfs/samsung-klimtlte.img,format=raw,if=virtio     -append "console=tty0 root=/dev/vda2 rw"     -device virtio-gpu-pci -display gtk
qemu-system-arm -M virt -cpu cortex-a15 -m 2048     -kernel /home/wils/klimt_frankenstein/dtbs_ALPINE/zImage-dtb_V16_FINAL     -initrd /home/wils/klimt_frankenstein/check_v15/initrd.img     -drive file=/home/wils/.local/var/pmbootstrap/chroot_native/home/pmos/rootfs/samsung-klimtlte.img,format=raw,if=virtio     -append "console=tty0 root=/dev/vda2 rw"     -device virtio-gpu-pci -display gtk
xhost +local:root
sudo qemu-system-arm -M virt -cpu cortex-a15 -m 2048     -kernel /home/wils/klimt_frankenstein/dtbs_ALPINE/zImage-dtb_V16_FINAL     -initrd /home/wils/klimt_frankenstein/check_v15/initrd.img     -drive file=/home/wils/.local/var/pmbootstrap/chroot_native/home/pmos/rootfs/samsung-klimtlte.img,format=raw,if=virtio     -append "console=tty0 root=/dev/vda2 rw"     -device virtio-gpu-pci -display gtk
pmbootstrap export ~/klimt_frankenstein/export
qemu-system-arm -M virt -cpu cortex-a15 -m 2048     -kernel ~/klimt_frankenstein/export/vmlinuz     -initrd ~/klimt_frankenstein/export/initramfs     -drive file=~/klimt_frankenstein/export/samsung-klimtlte.img,format=raw,if=virtio     -append "console=tty0 root=/dev/vda2 rw"     -device virtio-gpu-pci -display gtk
btop
rep
heimdall detect
sudo cp -L --remove-destination /home/wils/.local/var/pmbootstrap/chroot_native/home/pmos/rootfs/samsung-klimtlte.img ~/klimt_frankenstein/export/samsung-klimtlte.img
sudo chown wils:wils ~/klimt_frankenstein/export/samsung-klimtlte.img
qemu-system-arm -M virt -cpu cortex-a15 -m 2048     -kernel ~/klimt_frankenstein/export/vmlinuz     -initrd ~/klimt_frankenstein/export/initramfs     -drive file=~/klimt_frankenstein/export/samsung-klimtlte.img,format=raw,if=virtio     -append "console=tty0 root=/dev/vda2 rw"     -device virtio-gpu-pci -display gtk
~/klimt_frankenstein/dtbs_ALPINE
heimdall flash --BOOT boot_V16_Klimt_LoS.img
ping 192.168.1.85
heimdall detect
klimt_cd frankenstein
ls
cd klimt_frankenstein
cd dtbs_ALPINE
ls
cd ..
cd pack
ls
cd ..
øs
ls
cd export
ls
cd dtbs
ls
cd ..
ls
cd export
ls
cd ..
ls
cd check_v15
ls
cd ..
cd dtbs_ALPINE
ls
heimdall detect
heimdall flash --BOOT boot_V16_Klimt_LoS.img
heimdall detect
dtc -I dts -O dtb -o klimt_v16.dtb alpine_dna_dts_txt
dtc -I dts -O dtb -o klimt_v16.dtb alpine_dna.dts
ls
dtc -I dts -O dtb -o klimt_v16_final.dtb alpine_dna.dts
cat zImage-v16 klimt_v16_final.dtb > zImage-dtb_V16_MYTHOLOGY
ls
cd ..'
cd ..
cd pack
ls
cd ..
ls
cd export
øs
ls
cd ..
ls
cd check_v15
ls
cd --
cd ..
cd klimt_frankenstein
ls
cd wils
cd klimt_frankenstein

cd dtbs_ALPINE
ls
find ~ -name "zImage*"
find . -name "zImage-v16"
cd ..
find . -name "zImage-v16"
cd ..
find . -name "zImage-v16"
sudo find . -name "zImage-v16"
cd klimt_frankenstein
cd dtsb_ALPINE
cd dtbs_ALPINE
ls -l zImage-dtb_V16_MYTHOLOGY
heimdall flash --BOOT zImage-dtb_V16_MYTHOLOGY

ls
ls -las
ls
dtc -I dts -O dtb -o klimt_v16_logic_test.dtb alpine_dna.dts
cat ../zImage_ALPINE klimt_v16_logic_test.dtb > zImage-dtb_V16_LOGIC_TEST
heimdall flash --BOOT zImage-dtb_V16_LOGIC_TEST
ping 192.168.1.11
dtc -I dts -O dtb -o klimt_v16_logic_test.dtb alpine_dna.dts
heimdall flash --BOOT zImage-dtb_V16_LOGIC_TEST
heimdall detect
dtc -I dts -O dtb -o klimt_v16_logic_test.dtb alpine_dna.dts
dtc -I dts -O dtb -o klimt_v17_logic_test.dtb alpine_dna.dts
heimdall flash --BOOT zImage-dtb_V17_LOGIC_TEST
dtc -I dts -O dtb -o klimt_v17_1_logic_test.dtb alpine_dna.dts
heimdall flash --BOOT zImage-dtb_V17_1_LOGIC_TEST
ls
dtc -I dts -O dtb -o klimt_v16_logic_test.dtb alpine_dna.dts
cat ../zImage_ALPINE klimt_v16_logic_test.dtb > zImage-dtb_V16_LOGIC_TEST
heimdall flash --BOOT zImage-dtb_V16_LOGIC_TEST
journalctl -f
clear
mv ~/.config/kcminputrc ~/.config/kcminputrc.bak
df -h
sudo systemctl restart rsyslog
rep
rens
sync
cd klimt_frankenstein
cd dtsb_ALPINE
cd dtbs_ALPINE
ls
journalctl -n 50
sudo truncate -s 0 /var/log/syslog
sudo systemctl restart rsyslog
sudo mount -o remount,rw /
sudo systemctl restart rsyslog
sudo mount -o remount,ro /
journalctl -n 50
sudo systemctl stop rsyslog
sudo truncate -s 0 /var/log/syslog
sudo truncate -s 0 /var/log/kern.log
sudo mount -o remount,ro /
sync
sudo mount -o remount,ro /
sudo fuser -mv /
sudo kill -9 3734
sudo systemctl stop syslog.socket
sudo truncate -s 0 /var/log/syslog
sudo truncate -s 0 /var/log/kern.log
sudo mount -o remount,ro /
dmesg
sudo dmesg
sudo systemctl stop rsyslog.service
sudo systemctl stop syslog.socket
sudo systemctl disable rsyslog.service
syn
sync
sudo mount -o remount,rw /
mount | grep " / "
sync
dytt
dtc -I dts -O dtb -o klimt_v16_logic_test.dtb alpine_dna.dts
cat ../zImage_ALPINE klimt_v16_logic_test.dtb > zImage-dtb_V16_LOGIC_TEST
heimdall flash --BOOT zImage-dtb_V16_LOGIC_TEST
heimdall detect
dtc -I dts -O dtb -o klimt_v16_watchdog_test.dtb alpine_dna_dts_txt
cat ../zImage_ALPINE klimt_v16_watchdog_test.dtb > zImage-dtb_V16_WATCHDOG_OFF
heimdall flash --BOOT zImage-dtb_V16_WATCHDOG_OFF
dytt
rep
shutdown now
rep
rens
dytt
mount | grep " / "
dytt
rens
arkiv
dytt
find ~ -iname "*mangohud*" -o -iname "lotroclient64*"
# Endre linjen i scriptet til dette:
find /home/wils/MangoHud/Telemetry -maxdepth 1 \( -iname "*mangohud*.log" -o -iname "lotroclient64_*.csv" \) | while read -r logg; do
cp /home/wils/MangoHud/Telemetry/lotroclient64_2026-04-10_10-03-16* ~/Warlord-Logs-Public/Showcase/
ls
cd Warlord-Logs-Public
ls
cd Showcase
ls
cd ~/Warlord-Logs-Public
git add .
git commit -m "Telemetri: Manuelt opplastet for dagens økt"
git push origin main
nano ~/pitch_finder.sh
chmod +x ~/pitch_finder.sh
./pitch_finder.sh
.~/pitch_finder.sh
~/pitch_finder.sh
#!/bin/bash
# --- KONFIGURASJON ---
ARKIV_PRIVAT="/home/wils/Warlord-Logs-Private"
ARKIV_PUBLIC="/home/wils/Warlord-Logs-Public"
LOTRO_KILDE="/home/wils/Games/WARLORDLOTRO/Spillfiler"
DATO=$(date +%Y-%m-%d_%H%M)
# 1. INTERAKTIV DIALOG
echo -n "Navn på denne sesjonen (f.eks. Mission-navn): "
read -r SESJON_INFO
[ -z "$SESJON_INFO" ] && SESJON_INFO="Standard økt"
echo -n "Vil du dele denne sesjonen OFFENTLIG på GitHub? (y/N): "
read -r DEL_OFFENTLIG
# SIKRING: Mapper
mkdir -p "$ARKIV_PRIVAT/LotRO/Combat" "$ARKIV_PRIVAT/MangoHud/Telemetry"
mkdir -p "$ARKIV_PUBLIC/Showcase"
echo "--- ⚔ Starter Logg-innhøsting: $SESJON_INFO ($DATO) ---"
# 2. INNHØSTING AV LOTRO-LOGGER
LATEST_COMBAT=""
find "$LOTRO_KILDE" -maxdepth 1 -iname "combat_*.txt" | while read -r logg; do     FILNAVN=$(basename "$logg");     LATEST_COMBAT="$logg"
    gzip -v9 -c "$logg" > "$ARKIV_PRIVAT/LotRO/Combat/$FILNAVN.gz";          if [[ "$DEL_OFFENTLIG" =~ ^[Yy]$ ]]; then         cp "$logg" "$ARKIV_PUBLIC/Showcase/${DATO}_${FILNAVN}";     fi; done
# 3. INNHØSTING AV TELEMETRI
find /home/wils/MangoHud/Telemetry -maxdepth 1 \( -iname "*mangohud*.log" -o -iname "lotroclient64_*.csv" \) 2>/dev/null | while read -r logg; do     FILNAVN=$(basename "$logg");     gzip -v9 -c "$logg" > "$ARKIV_PRIVAT/MangoHud/Telemetry/$FILNAVN.gz";          if [[ "$DEL_OFFENTLIG" =~ ^[Yy]$ ]]; then         cp "$logg" "$ARKIV_PUBLIC/Showcase/${DATO}_${FILNAVN}";     fi;     rm "$logg"; done
# 4. DYTT TIL PRIVAT REPO
cd "$ARKIV_PRIVAT"
git add . && git commit -m "Arkiv: $DATO - $SESJON_INFO" && git push origin main
# 5. DYTT TIL OFFENTLIG REPO (Hvis valgt)
if [[ "$DEL_OFFENTLIG" =~ ^[Yy]$ ]]; then     cd "$ARKIV_PUBLIC";     git add . && git commit -m "Showcase: $SESJON_INFO ($DATO)" && git push origin main; fi
# 6. --- ⚔ TOPP 10 PITCHES (ANALYSE) ---
echo ""
echo "------------------------------------------------------------"
echo "🚀 TOPP 10 PITCHES FOR YT-KOMMENTAR:"
echo "------------------------------------------------------------"
LATEST_LOG=$(ls -t "$LOTRO_KILDE"/Combat_*.txt 2>/dev/null | head -n 1)
if [ -n "$LATEST_LOG" ]; then     grep "scored a .* hit" "$LATEST_LOG" |     sed -E 's/.*scored a (.*) hit with (.*) on .* for ([0-9\.,]+) .*/\3|\2|(\1)/' |     sed 's/[\.,]//g' | sort -t'|' -k1,1rn | head -n 10 |     awk -F'|' '{printf "%2d. %-18s %-15s | %s skade\n", NR, $2, $3, $1}'; fi
echo "------------------------------------------------------------"
echo "✅ Oppdrag utført! Alt er arkivert og analysert."
~/logg_arkiv.sh
arkiv
cd ..
arkiv
dytt
arkiv
dytt
mount | grep " / "
sudo systemctl restart NetworkManager sudo modprobe -r r8169 && sudo modprobe r8169
dytt
btop
rep
sudo mount -o remount,rw /
mount | grep " / "
rep
balooctl6 status
sudo iotop -o
sudo apt install iotop
sudo iotop -o
akonadictl status
ss -tup
sudo ufw reject out 8008
sudo ufw reject out 8009
sudo ufw reject out 5353/udp
ss -tup
killall chrome
ss -tup
rep
sync
find / -maxdepth 4 -not -path '*/.*' > ~/Warlord_Full_Audit.txt
sudo find / -maxdepth 4 -not -path '*/.*' > ~/Warlord_Full_Audit.txt
find / -maxdepth 4 -not -path '*/.*' > ~/Warlord_Full_Audit.txt
mount | grep " / "
sudo find / -xdev > ~/Warlord_Clean_Audit.txt 2>/dev/null
# Husk å åpne panseret først hvis du er i RO-modus
sudo rm -rf /root/.launchpadlib
sudo apt clean && sudo apt autoremove --purge
which wine
wine --version
ls -l /usr/bin/wine
dytt
lsblk
lsusb
fh -H
df -H
df
df -a
df lsusb
clear
lsblk
df sdb
df -h sdb
df -sdb
df sdb
df -h /dev/sdb3
df -h /dev/sdb
lsusb
df -h
df -h /dev/sdb3
lsblk
df -h /dev/nvme0n1
df -h /dev/nvme0n1p3
df -h /dev/nvme0n1p2
df -h /dev/nvme0n1p1
df -h /dev/nvme0n1p3
mount | grep " / "
sudo rsync -aAXv --delete --progress / /media/wils/fedora_fedora/GOLDEN-VAULT/ --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"}
sudo mount -o remount,ro /
mount | grep " / "
sudo mount -o remount,ro /
mount | grep " / "
rep
shutdown now
mount | grep " / "
exit
traceroute gls.lotro.com
sudpo apt install traceroute
sudo apt install traceroute
rep
dytt
mount | grep " / "
ping gls.lotro.com
mtr gls.lotro.com
sudo traceroute -I gls.lotro.com
sudo mount -o remount,rw /
sudo traceroute -I gls.lotro.com
traceroute -I google.com
dytt
sudo mount -o remount,ro /
sync
sudo mount -o remount,ro /
ping gls.lotro.com
ping www.vg.no
nano ~/etc/hosts
cd ect
cd ~/
cd ~/etc
ping gls.lotro.com
sudo resolvectl flush-caches
mount | grep " / "
cd ..
cd etc
ls
nano hosts
mount | grep " / "
sudo mount -o remount,rw /
lsblk -no UUID /dev/nvme0n1p3
sudo kwrite /etc/grub.d/40_custom
sudo update-grub
sudo mount -o remount,ro /
dytt
mount | grep " / "
exit
sudo mount -o remount,rw /
sudo kwrite /etc/default/grub-btrfs/config
sudo kwrite /etc/grub.d/40_custom
sudo update-grub
sudo mount -o remount,ro /
sudo mount -o remount,rw /
dytt
sudo mount -o remount,ro /
shutdown now
rep
sudo mount -o remount,rw /
sudo update-grub
sudo mount -o remount,ro /
dytt
sudo mount -o remount,rw /
dytt
rep
lsblk
lusub
lsusb
dytt
sudo rsync -avPX --delete --exclude='/proc/*' --exclude='/sys/*' --exclude='/dev/*' --exclude='/run/*' --exclude='/mnt/*' --exclude='/media/*' --exclude='/lost+found' / /media/wils/fedora_fedora/
ping gls.lotro.com
sudo grub-update
sudo update_grub
sudo grub_update
sudo update-grub
sudo mount -o remount,ro /
traceroute -I gls.lotro.com
rens
sudo mount -o remount,ro /
shutdown now
rep
rens
sudo mount -o remount,rw /
sudo apt install /home/wils/Nedlastinger/code_1.115.0-1775600353_amd64.deb
sync
rep
sudo mount -o remount,ro /
chmod +x /home/wils/klimt_frankenstein/check_v15/compile_display.sh
/home/wils/klimt_frankenstein/check_v15/compile_display.sh
sudo mount -o remount,rw /
/home/wils/klimt_frankenstein/check_v15/compile_display.sh
sudo mount -o remount,rw /
/home/wils/klimt_frankenstein/check_v15/compile_display.sh
sync && sudo mount -o remount,rw /
/home/wils/klimt_frankenstein/check_v15/compile_display.sh
ls -l /home/wils/klimt_frankenstein/check_v15/v15_klimt_display.dtb
sync
heimdall detect
cd klimt_frankenstein
cd dtbs_ALPINE
dtc -I dts -O dtb -o /home/wils/klimt_frankenstein/check_v15/v15_klimt_display.dtb /home/wils/klimt_frankenstein/check_v15/v15_gull.dts
sudo mount -o remount,rw /
sudo heimdall print-pit --no-reboot
lsblk
lsusb
https://gemini.google.com/app/64c508e87d8df229#:~:text=Lag%20et%20monteringspunkt-,sudo%20mkdir%20%2Dp%20/mnt/klimt_boot,-%23%20Monter%20boot%2Dpartisjonen
sudo mkdir -p /mnt/klimt_boot
sudo mount /dev/sdX1 /mnt/klimt_boot
sudo mkdir -p /mnt/klimt_boot/dtbs
sudo cp /home/wils/klimt_frankenstein/check_v15/v15_klimt_display.dtb /mnt/klimt_boot/dtbs/
ls -l /mnt/klimt_boot/dtbs/v15_klimt_display.dtb
sudo sync
sudo umount /mnt/klimt_boot
cd ~/media/wils/pmOS_root/
cd /media
ls
cd wils
ls
cd pmOS_root
ls


ls -la
LS -LAS
ls -las
ls -lax
lsblk
sudo mkdir -p /mnt/real_boot
sudo mount /dev/sdb1 /mnt/real_boot
ls -la /mnt/real_boot
cd --
~
ls
ls -las
cd ..
cd wils
ls
sudo umount /mnt/real_boot 2>/dev/null
sudo mount /dev/sdc1 /mnt/real_boot
ls -la /mnt/real_boot
sudo cp /mnt/real_boot/exynos5420-klimt-lte.dtb /mnt/real_boot/exynos5420-klimt-lte.dtb.bak
sudo cp /home/wils/klimt_frankenstein/check_v15/v15_klimt_display.dtb /mnt/real_boot/exynos5420-klimt-lte.dtb
ls -l /mnt/real_boot/exynos5420-klimt-lte.dtb
sudo sync
sudo umount /mnt/real_boot
sudo mkdir -p /mnt/klimt_boot_fix
sudo mount /dev/sdc1 /mnt/klimt_boot_fix
ls -la /mnt/klimt_boot_fix
cd dtbs
ls -las
cd ~/mnt/klimt_boot_fix
cd mnt
cd ..
cd ~/mnt/klimt_boot_fix
cd mnt
ls
cd klimt_boot_fix
ls
ls -llas
ls -las
cd ~
sudo rm /mnt/klimt_boot_fix/exynos5420-klimt-lte.dtb
sudo cp /mnt/klimt_boot_fix/exynos5420-klimt-lte.dtb.bak /mnt/klimt_boot_fix/exynos5420-klimt-lte.dtbsudo sync
sudo sync
sudo umount /mnt/klimt_boot_fix
sudo mount /dev/sdc1 /mnt/klimt_boot_fix
ls -l /mnt/klimt_boot_fix/exynos5420-klimt-lte.dtb
ls -la /mnt/klimt_boot_fix
sudo cp /mnt/klimt_boot_fix/exynos5420-klimt-lte.dtb.bak /mnt/klimt_boot_fix/exynos5420-klimt-lte.dtb
ls -l /mnt/klimt_boot_fix/exynos5420-klimt-lte.dtb
sudo cp /mnt/klimt_boot_fix/exynos5420-klimt-lte.dtb.bak /mnt/klimt_boot_fix/exynos5420-klimt-lte.dtb
ls -las
ls -l /mnt/klimt_boot_fix/exynos5420-klimt-lte.dtb
sudo sync
sleep 2
cd ~
sudo umount /mnt/klimt_boot_fix
sync
sudo mount /dev/sdc1 /mnt/klimt_boot_fix
sudo mkdir -p /mnt/klimt_boot_fix/temp_storage
sudo mv /mnt/klimt_boot_fix/*.dtb* /mnt/klimt_boot_fix/temp_storage/
ls -la /mnt/klimt_boot_fix
ls -la /mnt/klimt_boot_fix/dtbs/
find /mnt/klimt_boot_fix -name "extlinux.conf"
sudo find /mnt/klimt_boot_fix -name "extlinux.conf"
find /mnt/klimt_boot_fix -name "extlinux.conf"
mount | grep sdc1
~
mkdir -p ~/klimt_vrakpant_siste
sudo mv /mnt/klimt_boot_fix/temp_storage ~/klimt_vrakpant_siste/
sudo mv /mnt/klimt_boot_fix/*.bak ~/klimt_vrakpant_siste/ 2>/dev/null
sudo cp /mnt/klimt_boot_fix/dtbs/exynos5420-klimt-lte.dtb /mnt/klimt_boot_fix/
sudo umount /mnt/klimt_boot_fix
sudo e2fsck -f -y /dev/sdc1
sudo sync
sudo mount /dev/sdc1 /mnt/klimt_boot_fix
ls -l /mnt/klimt_boot_fix/exynos5420-klimt-lte.dtb
sudo sync
sudo umount /mnt/klimt_boot_fix
sync
cd ~
sudo umount /mnt/klimt_boot_fix
sync
sudo mount /dev/sdc1 /mnt/klimt_boot_fix
mkdir -p ~/klimt_clean_backup
sudo cp -a /mnt/klimt_boot_fix/. ~/klimt_clean_backup/
sudo umount /mnt/klimt_boot_fix
sudo mkfs.ext2 -L pmOS_boot /dev/sdc1
sync
sudo sync
sudo mount /dev/sdc1 /mnt/klimt_boot_fix
sudo cp -a ~/klimt_clean_backup/. /mnt/klimt_boot_fix/
sudo cp /mnt/klimt_boot_fix/dtbs/exynos5420-klimt-lte.dtb /mnt/klimt_boot_fix/
sync
ls -l /mnt/klimt_boot_fix/exynos5420-klimt-lte.dtb
sudo sync
sleep 5
cd ~
sudo umount /mnt/klimt_boot_fix
ls -las
ls
cd ..
ls
cd ..
ls
cd home
cd wils
ls -las
ls -la ~ | grep .local
ls -la ~/.local/var/pmbootstrap
ls
cd ..
ls
cd var
cd wils
cd var
ls -la ~/.local/bin/pmbootstrap
pipx run pmbootstrap --version
/home/wils/.local/bin/pmbootstrap --version
/home/wils/.local/bin/pmbootstrap init
sync
/home/wils/.local/bin/pmbootstrap install --keep-chroots
/home/wils/.local/bin/pmbootstrap install
ls -l ~/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
sync
ls -l ~/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
sudo cp ~/klimt_vrakpant_siste/exynos5420-klimt-lte.dtb ~/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
find ~/klimt_vrakpant_siste -name "*.dtb" -ls
ls -l ~/klimt_clean_backup/exynos5420-klimt-lte.dtb
find ~ -name "*.dtb" -size +60k -ls
sudo cp /home/wils/backup_klimt_dtb/boot/dtbs/exynos5420-klimt-lte.dtb ~/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
sync
ls -l ~/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
sync
/home/wils/.local/bin/pmbootstrap install
lsblk
uudisksctl unmount -b /dev/sdc2
/home/wils/.local/bin/pmbootstrap install --sdcard /dev/sdc
sudo umount /dev/sdc*
/home/wils/.local/bin/pmbootstrap install --sdcard /dev/sdc
sudo umount /dev/sdc*
/home/wils/.local/bin/pmbootstrap install --sdcard /dev/sdc
dytt
exit
rep
mount | grep " / "
ping gls.lotro.com
traceroute gls.lotro.com
mtr.gls.lotro.com
sudo mtr.gls.lotro.com

mount | grep " / "
sudo mount -o remount,rw /
mount | grep " / "
sudo systemctl stop udisks2.service
mount | grep " / "
sudo systemctl mask udisks2.service
sudo umount /dev/sdc* 2>/dev/null
/home/wils/.local/bin/pmbootstrap install --sdcard /dev/sdc
sync
/home/wils/.local/bin/pmbootstrap bootimg_analyze samsung-klimtlte
sync
/home/wils/.local/bin/pmbootstrap bootimg_analyze samsung-klimtlte
find ~/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot -name "boot.img*"
/home/wils/.local/bin/pmbootstrap bootimg_analyze /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/boot.img
cat ~/postmarketos/pmaports/device/testing/device-samsung-klimtlte/deviceinfo
find ~/.local/var/pmbootstrap -name "deviceinfo" | grep klimtlte
kate ~/.local/var/pmbootstrap/chroot_native/mnt/pmbootstrap/git/pmaports/device/testing/device-samsung-klimtlte/deviceinfo
/home/wils/.local/bin/pmbootstrap install
sync
ls -l /media/wils/pmOS_boot/dtbs/exynos5420-klimt-lte.dtb
lsblk
find /media/wils/pmOS_boot -name "*klimt*"
udisksctl mount -b /dev/sdc1
sudo systemctl unmask udisks2.service
sudo systemctl start udisks2.service
ls -l /media/wils/pmOS_boot/dtbs/exynos5420-klimt-lte.dtb
ls -l /media/wils/pmOS_boot/boot.img
ls -l /media/wils/pmOS_boot/dtbs/exynos5420-klimt-lte.dtb
ls -l /media/wils/pmOS_boot/boot.img
lsblk
ls -l /media/wils/pmOS_boot/dtbs/exynos5420-klimt-lte.dtb
ls -l /media/wils/pmOS_boot/boot.img
lsusb
udisksctl mount -b /dev/sdb1
ls -l /media/wils/pmOS_boot/dtbs/exynos5420-klimt-lte.dtb
/home/wils/.local/bin/pmbootstrap install --sdcard /dev/sdb
sudo systemctl stop udisks2.service
sudo systemctl mask udisks2.service
/home/wils/.local/bin/pmbootstrap install --sdcard /dev/sdb
sudo umount /dev/sdc* 2>/dev/null
/home/wils/.local/bin/pmbootstrap install --sdcard /dev/sdb
sudo umount /dev/sdb* 2>/dev/null
/home/wils/.local/bin/pmbootstrap install --sdcard /dev/sdb
sync
udisksctl mount -b /dev/sdb1
ls -l /media/wils/pmOS_boot/dtbs/exynos5420-klimt-lte.dtb
sudo systemctl unmask udisks2.service
sudo systemctl start udisks2.service
udisksctl mount -b /dev/sdb1
ls -l /media/wils/pmOS_boot/dtbs/exynos5420-klimt-lte.dtb
# Sjekk at du ser din 74KB backup-fil først
ls -l /home/wils/backup_klimt_dtb/boot/dtbs/exynos5420-klimt-lte.dtb
sudo cp /home/wils/backup_klimt_dtb/boot/dtbs/exynos5420-klimt-lte.dtb /media/wils/pmOS_boot/dtbs/exynos5420-klimt-lte.dtb
sudo cp /home/wils/backup_klimt_dtb/boot/dtbs/exynos5420-klimt-lte.dtb ~/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
sync
ls -l /media/wils/pmOS_boot/dtbs/exynos5420-klimt-lte.dtb
sync
ls -l /media/wils/pmOS_boot/dtbs/exynos5420-klimt-lte.dtb
udisksctl unmount -b /dev/sdb1
sync
/home/wils/.local/bin/pmbootstrap bootimg_analyze /media/wils/pmOS_boot/boot.img
sudo systemctl unmask udisks2.service
sudo systemctl start udisks2.service
udisksctl mount -b /dev/sdb1
ls -F /media/wils/pmOS_boot/
ls -lasF /media/wils/pmOS_boot/
/home/wils/.local/bin/pmbootstrap zap
ls -lasF /media/wils/pmOS_boot/
sudo /home/wils/.local/bin/pmbootstrap zap
lsblk
sudo umount /dev/sdb1
sudo umount /dev/sdb2
sudo dd if=/dev/zero of=/dev/sdb bs=1M count=100 status=progress
sync
lsblk
sync
/home/wils/.local/bin/pmbootstrap init
sync
/home/wils/.local/bin/pmbootstrap install
sync
/home/wils/.local/bin/pmbootstrap install --sdcard /dev/sdb
sudo systemctl mask udisks2.service
sudo systemctl stop udisks2.service
sudo umount /dev/sdb1 /dev/sdb2
/home/wils/.local/bin/pmbootstrap install --sdcard /dev/sdb
lsblk
/home/wils/.local/bin/pmbootstrap shutdown
sudo systemctl mask udisks2.service sudo systemctl stop udisks2.service
sudo dd if=/dev/zero of=/dev/sdb bs=1M count=100 status=progress sync
sudo dd if=/dev/zero of=/dev/sdb bs=1M count=100 status=progress
sync
lsblk
lsblk -las
/home/wils/.local/bin/pmbootstrap init
sync
/home/wils/.local/bin/pmbootstrap install
sudo cp /home/wils/backup_klimt_dtb/boot/dtbs/exynos5420-klimt-lte.dtb /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
sync
lsblk
lsblk -las
/home/wils/.local/bin/pmbootstrap install --sdcard /dev/sdb
/home/wils/.local/bin/pmbootstrap shutdown
sync
sudo partprobe /dev/sdb
sync
sudo wipefs -a /dev/sdb
sync
sudo sgdisk --zap-all /dev/sdb
sgdisk --zap-all /dev/sdb
sudo apt install gdisk
sgdisk --zap-all /dev/sdb
sudo sgdisk --zap-all /dev/sdb
sudo partprobe /dev/sdb
sync
/home/wils/.local/bin/pmbootstrap shutdown
sync
lsblk -lax
lsblk -las
lsblk -lax
sudo systemctl mask udisks2.service
sudo systemctl stop udisks2.service
sudo wipefs -a /dev/sdb
sudo sgdisk --zap-all /dev/sdb
sync
sudo partprobe /dev/sdb
sync
/home/wils/.local/bin/pmbootstrap install --sdcard /dev/sdb
pmbootstrap log
/home/wils/.local/bin/pmbootstrap shutdown
sudo losetup -D
sync
sudo umount -l /home/wils/.local/var/pmbootstrap/chroot_native/mnt/rootfs_samsung-klimtlte 2>/dev/null
sudo umount -l /home/wils/.local/var/pmbootstrap/chroot_native/dev/sdb* 2>/dev/null
sync
sudo systemctl status udisks2.service
/home/wils/.local/bin/pmbootstrap shutdown
sudo losetup -D
sudo wipefs -a /dev/sdb
sudo sgdisk --zap-all /dev/sdb
sudo partprobe /dev/sdb
sync
sudo partprobe /dev/sdb
sudo sgdisk --zap-all /dev/sdb
sudo wipefs -a /dev/sdb
sudo sgdisk --zap-all /dev/sdb
sudo partprobe /dev/sdb
sync
/home/wils/.local/bin/pmbootstrap install --sdcard /dev/sdb
dytt
exit
rep
rens
grep | 
mount | grep " / "
sudo mount -o remount,rw /
mount | grep " / "
sudo systemctl status udisks2.service
lsblk
lsblk -las
ls -l /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
ls -las /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
sudo sgdisk --zap-all /dev/sdb
sudo wipefs -a /dev/sdb
sudo partprobe /dev/sdb
sudo dd if=/dev/zero of=/dev/sdb bs=1M count=10 status=progress
sync
sudo hexdump -C -n 1024 /dev/sdb
sudo blockdev --getsz /dev/sdb
sudo dd if=/dev/zero of=/dev/sdb bs=512 seek=SISTE_SEKTOR count=1000 status=progress
sync
sudo dd if=/dev/zero of=/dev/sdb bs=512 seek=SISTE_SEKTOR count=1000 status=progress
SISTE=$(sudo blockdev --getsz /dev/sdb); START=$((SISTE - 1000)); sudo dd if=/dev/zero of=/dev/sdb bs=512 seek=$START count=1000 status=progress
sync
sudo sgdisk --zap-all /dev/sdb
sync
sudo partprobe /dev/sdb
sync
lsblk -las
/home/wils/.local/bin/pmbootstrap install --sdcard /dev/sdb
lsblk -las
sync
/home/wils/.local/bin/pmbootstrap shutdown
lsblk -las
/home/wils/.local/bin/pmbootstrap install
lsblk -las
/home/wils/.local/bin/pmbootstrap export
lsblk -las
/home/wils/.local/bin/pmbootstrap bootimg_analyze /tmp/postmarketOS-export/boot.img
sync
ls -l /tmp/postmarketOS-export/dtbs/exynos5420-klimt-lte.dtb
ls -las /tmp/postmarketOS-export/dtbs/exynos5420-klimt-lte.dtb
ls -lL /tmp/postmarketOS-export/dtbs/exynos5420-klimt-lte.dtb
/home/wils/.local/bin/pmbootstrap shutdown
sync
lsblk -lL
lsblk -lasL
lsblk -L
lsblk
sudo dd if=/tmp/postmarketOS-export/samsung-klimtlte.img of=/dev/sdb bs=4M status=progress
sync
sudo mount /dev/sdb1 /mnt
lsblk
/home/wils/.local/bin/pmbootstrap bootimg_analyze /mnt/boot.img
sudo mount /dev/sdb1 /mnt
dmesg 1
dmesg -1
dmesg -n 1
dmesg
sudo dmesg
journalctl -xe
dmesg | grep -i "sdb" | tail -n 20
sudo dmesg | grep -i "sdb" | tail -n 20
lsblk
lsblk -L
lsblk -las
sudo sgdisk --zap-all /dev/sdb
sudo partprobe /dev/sdb
lsblk -las
sudo dd if=/tmp/postmarketOS-export/samsung-klimtlte.img of=/dev/sdb bs=4M status=progress
sync
synv
sync
lsblk
lsblk -las
sudo mount /dev/sdb1 /mnt
ls -l /mnt/dtbs/exynos5420-klimt-lte.dtb
ls -la /mnt
cd divv
ls
cd /mnt
ls
ls- las
ls -la
cd divv
ls
sync
cd ..
ls
cd --
ls
umount mnt
lsblk
umonut sdb
umount sdb
umount sdb1
clear
sudo umount /mnt
sudo dd if=/dev/zero of=/dev/sdb bs=1M count=10
sudo partprobe /dev/sdb
lsblk
sudo dd if=/dev/zero of=/dev/sda bs=1M count=10 status=progress && sync
lsblk
sudo partprobe /dev/sda
lsusb
lsblk
sudo partprobe /dev/sda
sudo dd if=/dev/zero of=/dev/sdb bs=1M count=10 status=progress && sync
sudo partprobe /dev/sdb
lsblk
wils@WARLORD:~$ sudo partprobe /dev/sdb
lsblk
NAME        MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda           8:0    1     0B  0 disk 
sdb           8:16   1  58,2G  0 disk 
nvme0n1     259:0    0 953,9G  0 disk 
├─nvme0n1p1 259:1    0   512M  0 part /boot/efi
├─nvme0n1p2 259:2    0     8G  0 part [SWAP]
└─nvme0n1p3 259:3    0 945,4G  0 part /home
wils@WARLORD:~$ 
sudo dd if=/tmp/postmarketOS-export/samsung-klimtlte.img of=/dev/sdb bs=4M status=progress && sync
sudo partprobe /dev/sdb
sudo mount /dev/sdb1 /mnt
ls -l /mnt/dtbs/exynos5420-klimt-lte.dtb
sync
sudo umount /mnt
sync
lsblk -las
umount /dev/sdb1
sync
lsblk -las
clear
sudo mount /dev/sdb1 /mnt
/home/wils/.local/bin/pmbootstrap bootimg_analyze /mnt/boot.img
sudo abootimg -i /mnt/boot.img
sudo abootimg -u /mnt/boot.img -s /mnt/dtbs/exynos5420-klimt-lte.dtb
cd /tmp
abootimg -x /mnt/boot.img
sed -i '/bootsize/d' bootimg.cfg
abootimg -c new_boot.img -f bootimg.cfg -k zImage -r initrd.img -s /mnt/dtbs/exynos5420-klimt-lte.dtb
abootimg -i new_boot.img
abootimg --create new_boot.img -f bootimg.cfg -k zImage -r initrd.img -s /mnt/dtbs/exynos5420-klimt-lte.dtb
abootimg -i new_boot.img
sudo cp /tmp/new_boot.img /mnt/boot.img
sync && sync
sudo umount /mnt
mkdir /tmp/sjekk
cd /tmp/sjekk
abootimg -x /mnt/boot.img
ls -l /tmp/sjekk/stage2.img
sudo mount /dev/sdb1 /mnt
cd /tmp/sjekk
abootimg -x /mnt/boot.img
ls -l /tmp/sjekk/stage2.img
cd ~
sudo umount /mnt
sync
rens
ls -lh ~/MangoHud/Telemetry/
cd ~/Warlord-Logs-Public && git log --oneline --since="today"
ls -1 ~/Warlord-Logs-Public/Showcase | grep "2026-04-10" | wc -l
nano ~/logg_arkiv.sh
arkiv
dytt
rep
cd /tmp
cat zImage /mnt/dtbs/exynos5420-klimt-lte.dtb > zImage-dtb
abootimg --create new_boot.img -f bootimg.cfg -k zImage-dtb -r initrd.img
sudo mount /dev/sdb1 /mnt
cd /tmp
abootimg -x /mnt/boot.img
sed -i '/bootsize/d' bootimg.cfg
cat zImage /mnt/dtbs/exynos5420-klimt-lte.dtb > zImage-dtb
abootimg --create new_boot.img -f bootimg.cfg -k zImage-dtb -r initrd.img
ls -las
lsblk
sudo cp /tmp/new_boot.img /mnt/boot.img
ls -l /mnt/boot.img
ls -las
cd ..
ls
cd mnt
ls -las
sync
cd ..
ls
cd ..
~
sudo umount /mnt
sync
lsusb
lsblk
sudo mount /dev/sdb1 /mnt
cd /tmp
printf 'SEANDROIDENFORCE' >> new_boot.img
truncate -s %2048 new_boot.img
ls -l new_boot.img
ls -las
ls -l new_boot.img
sudo cp /tmp/new_boot.img /mnt/boot.img
sync && sync && sync
cd ..
~
sudo umount /mnt
sync
lsblk
sync
sudo mount /dev/sdb1 /mnt
cd /tmp
truncate -s %2048 zImage-dtb
cat bootimg.cfg
truncate -s %2048 initrd.img
abootimg --create boot.img -f bootimg.cfg -k zImage-dtb -r initrd.img
ls -las
printf 'SEANDROIDENFORCE' >> boot.img
truncate -s %2048 boot.img
sudo cp boot.img /mnt/boot.img
sync && sync && sync
sudo umount /mnt
sync
cd ..
ls
~
cd usr
ls
cd ..
ls
cd home
ls
cd wils
ls
which dtbhtool
which skales-dtbtool
pmbootstrap search dtbtool
pmbootstrap search dtbhtool
cd /tmp
wget https://raw.githubusercontent.com/skripunoff/dtbhtool-samsung/master/dtbhtool.c
gcc dtbhtool.c -o dtbhtool
chmod +x dtbhtool
cd /tmp
rm -f dtbhtool.c dtbhtool
wget https://raw.githubusercontent.com/LineageOS/android_hardware_samsung/lineage-18.1/dtbhtool/dtbhtool.c
cd /tmp
rm -f dtbhtool.c dtbhtool
wget https://raw.githubusercontent.com/xiaolu/mkbootimg_tools/master/src/dtbtool.c -O dtbhtool.c
cat << 'EOF' > make_qcdt.py
import struct
import os

dtb_path = 'exynos5420-klimt-lte.dtb'
output_path = 'klimt-qcdt.img'

if not os.path.exists(dtb_path):
    print(f"Feil: Fant ikke {dtb_path} i /tmp!")
    exit(1)

dtb_size = os.path.getsize(dtb_path)

# QCDT Header (Version 3)
# Magic 'QCDT', Version 3, Num DTBs 1
header = struct.pack('<4sIII', b'QCDT', 3, 1, 0) 

# Table Entry (Dummy verdier for platform/variant som S-Boot ofte ignorerer så lenge QCDT er der)
# Platform ID, Variant ID, Sub-variant ID, SOC Rev, Offset, Size
entry = struct.pack('<IIIIII', 0x0, 0x0, 0x0, 0x0, 40, dtb_size)

with open(output_path, 'wb') as f:
    f.write(header)
    f.write(entry)
    # Padding til 40 bytes (header 16 + entry 24 = 40)
    with open(dtb_path, 'rb') as dtb:
        f.write(dtb.read())

print(f"Suksess! {output_path} er laget.")
EOF

cp /mnt/dtbs/exynos5420-klimt-lte.dtb /tmp/
python3 make_qcdt.py
ls -R /mnt | grep klimt
cd /tmp
cp /mnt/exynos5420-klimt-lte.dtb /tmp/ 2>/dev/null || cp /mnt/dtbs/exynos5420-klimt-lte.dtb /tmp/ 2>/dev/null || cp /mnt/klimt_boot/dtbs/v15_klimt_display.dtb /tmp/
cat << 'EOF' > /tmp/make_qcdt.py
import struct
import os

# Sjekk mulige navn på DTB-fila
files = ['exynos5420-klimt-lte.dtb', 'v15_klimt_display.dtb']
dtb_path = next((f for f in files if os.path.exists(f)), None)

if not dtb_path:
    print("Feil: Fant ingen DTB-fil i /tmp")
    exit(1)

output_path = 'klimt-qcdt.img'
size = os.path.getsize(dtb_path)

# QCDT Header: Magic 'QCDT', Version 3, Count 1, Reserved 0
header = struct.pack('<4sIII', b'QCDT', 3, 1, 0)
# Entry: Platform, Variant, Subvariant, SOC, Offset (40 bytes), Size
entry = struct.pack('<IIIIII', 0, 0, 0, 0, 40, size)

with open(output_path, 'wb') as f:
    f.write(header)
    f.write(entry)
    with open(dtb_path, 'rb') as dtb:
        f.write(dtb.read())

print(f"Suksess: {output_path} er laget med {dtb_path}")
EOF

python3 /tmp/make_qcdt.py
head -c 4 klimt-qcdt.img
cp /mnt/klimt_boot/dtbs/v15_klimt_display.dtb /tmp/v15_klimt_display.dtb
cat << 'EOF' > /tmp/make_qcdt.py
import struct
import os

# Vi bruker navnet vi nettopp kopierte
dtb_path = 'v15_klimt_display.dtb'
output_path = 'klimt-qcdt.img'

if not os.path.exists(dtb_path):
    print(f"Feil: Fant ikke {dtb_path} i /tmp")
    exit(1)

size = os.path.getsize(dtb_path)

# QCDT Header: Magic 'QCDT', Version 3, Count 1, Reserved 0
header = struct.pack('<4sIII', b'QCDT', 3, 1, 0)
# Entry: Platform, Variant, Subvariant, SOC, Offset (40 bytes), Size
entry = struct.pack('<IIIIII', 0, 0, 0, 0, 40, size)

with open(output_path, 'wb') as f:
    f.write(header)
    f.write(entry)
    with open(dtb_path, 'rb') as dtb:
        f.write(dtb.read())

print(f"Suksess: {output_path} er laget!")
EOF

python3 /tmp/make_qcdt.py
head -c 4 /tmp/klimt-qcdt.img
cd /tmp && python3 -c "import struct, os; dtb='v15_klimt_display.dtb'; out='klimt-qcdt.img'; (print(f'Feil: Fant ikke {dtb}'), exit(1)) if not os.path.exists(dtb) else None; size=os.path.getsize(dtb); h=struct.pack('<4sIII', b'QCDT', 3, 1, 0); e=struct.pack('<IIIIII', 0, 0, 0, 0, 40, size); f=open(out, 'wb'); f.write(h); f.write(e); f.write(open(dtb, 'rb').read()); f.close(); print(f'Suksess: {out} er lagd')"
cat zImage klimt-qcdt.img > zImage-dtb
abootimg --create boot.img -f bootimg.cfg -k zImage-dtb -r initrd.img
printf 'SEANDROIDENFORCE' >> boot.img
truncate -s %2048 boot.img
cd ..
sync
sudo umount /mnt
sync
dytt
exit
rep
mount | grep "/"
mount | grep " /"
sudo mount | grep "/"
sudo mount -o | grep "/"
sudo mount | grep " / "
df -h
mount | grep " / "
mount | grep "/"
mount | grep " / "
mount | grep "/"
sudo mount | grep " / "
sudo mount | grep "/"
mount | grep "/"
mount | grep " / "
hexdump -C /tmp/boot.img | head -n 20
cd ..
cd mnt
ls
cd klimt_boot
ls
ls -las
cd dtbs
ls -las
cd ..
ls
cd ..
ls
cd real_boot
ls
ls- las
ls las
ls -las
cd ..
ls
cd klimt_boot_fix
ls
ls -las
cd ..
ls
cd klimt_sjekk
ls -las
cd ..
øs
ls
cd klimt_boot_fix
ls -las
cd ..
ls
lsblk
sudo mount /dev/sdb1 /mnt
ls
cd ..
ls
cd mnt
ls
mount | grep " /mnt "
ls -las /mnt/klimt_boot/dtbs
cd dtbs
cd ..
ls
ls -las
cd dtbs
ls -las
cd /tmp
cp /mnt/vmlinuz .
cp /mnt/initramfs .
cp /mnt/dtbs/exynos5420-klimt-lte.dtb .
abootimg -x /mnt/boot.img
python3 -c "import struct, os; dtb='exynos5420-klimt-lte.dtb'; out='klimt-qcdt.img'; (print(f'Feil: Fant ikke {dtb}'), exit(1)) if not os.path.exists(dtb) else None; size=os.path.getsize(dtb); h=struct.pack('<4sIII', b'QCDT', 3, 1, 0); e=struct.pack('<IIIIII', 0, 0, 0, 0, 40, size); f=open(out, 'wb'); f.write(h); f.write(e); f.write(open(dtb, 'rb').read()); f.close(); print(f'Suksess: {out} er lagd')"
cat vmlinuz klimt-qcdt.img > vmlinuz-dtb
truncate -s %2048 vmlinuz-dtb
abootimg --create boot.img -f bootimg.cfg -k vmlinuz-dtb -r initramfs
printf 'SEANDROIDENFORCE' >> boot.img
truncate -s %2048 boot.img
tail -c 16 boot.img
sync
sudo cp boot.img /mnt/boot.img
sync && sync && sync
sudo umount /mnt
sync && sync && sync
ls -lh /tmp/vmlinuz-dtb
cat /tmp/bootimg.cfg
ls -las
nano bootimg.cfg
abootimg --create boot.img -f bootimg.cfg -k vmlinuz-dtb -r initramfs
printf 'SEANDROIDENFORCE' >> boot.img
truncate -s %2048 boot.img
tail -c 16 boot.img
ls -l boot.img
ls -las
grep -a "SEANDROIDENFORCE" boot.img
sudo cp boot.img /mnt/boot.img
cd ...
cd ..
ls
sudo cp boot.img /mnt/boot.img
cd mnt
ls
ls -las
ls -lax
cd klimt_boot
ls -las
cd dtbs
ls
ls -las
cd ..
ls
cd ..
ls
cd klimt_boot_fix
ls -las
cd ..
ls
cd klimt_sjekk
ls -las
cd ..
ls
cd real_boot
ls -las
lsblk
lsusb
sudo mount /dev/sdb1 /mnt
mount | grep " /mnt "
sudo cp /tmp/boot.img /mnt/
sync && sync && sync && sync && sync && sync
sudo umount /mnt
sync && sync && sync && sync && sync && sync
ls
ls -las
cd ..
ls
cd klimt_boot
ls
cd dtbs
ls
cd ..
mount | grep " /mnt "
cd mnt
ls
cd klimt_boot
ls
cd dtbs
ls
ls -las
cd ..
ls -las
cd ..
ls
ls -las
cd mnt
find | grep "boot.img"
sudo mount /dev/sdb1 /mnt
ls
cd klimt_boot
ls
cd dtbs
ls
cd ..
sync
cd ..
cd tmp
ls
nano boot.cfg
nano bootimg.cfg
sync
abootimg --create boot.img -f bootimg.cfg -k vmlinuz-dtb -r initramfs
printf 'SEANDROIDENFORCE' >> boot.img
truncate -s 8333344 boot.img
tail -c 64 boot.img | grep -a "SEANDROIDENFORCE"
sudo cp /tmp/boot.img /mnt/
sync && sync && sync && sync && sync && sync
sudo umount /mnt
sudo mount /dev/sdb1 /mnt
cd /mnt
ls
ls -las
ls -lh vmlinuz
abootimg --create boot.img -f bootimg.cfg -k vmlinuz -r initramfs -s exynos5420-klimt-lte.dtb
cd /tmp
cp /mnt/vmlinuz .
# Vi henter også den rene DTB-en
cp /mnt/exynos5420-klimt-lte.dtb .
sync
abootimg --create boot.img -f bootimg.cfg -k vmlinuz -r initramfs -s exynos5420-klimt-lte.dtb
ls -las
printf 'SEANDROIDENFORCE' >> boot.img
truncate -s %2048 boot.img
ls -las
truncate -s 8333344 boot.img
grep -a "SEANDROIDENFORCE" boot.img
ls -las
sudo mount /sd1 mnt
sudo mount /dev/sd1 mnt
lsblk
sudo mount /dev/sdb1 mnt
sudo mount /dev/sdb mnt
sudo mount /dev/sdb1 /mnt
cd ..
ls
cd mnt
ls
sudo cp /tmp/boot.img /mnt/boot.img
sync && sync && sync && sync && sync && sync
sudo umount /mnt
cd ..
sudo umount /mnt
sync && sync && sync && sync && sync && sync
sudo mount /dev/sdb1 /mnt
ls
cd dtbs
ls
cd ..
ls
ls -las
nano bootimg.cfg
cd dtbs
ls- las
ls -llas
ls -las
cd ..
ls
cd config
nano config
sudo nano config
cd /tmp
ls
lsblk
sudo mount /dev/sdb1 /mnt
abootimg -x /mnt/boot.img
ls -las
cat bootimg.cfg
printf 'SEANDROIDENFORCE' >> boot.img
truncate -s 8333344 boot.img
grep -a "SEANDROIDENFORCE" boot.img
sudo cp boot.img /mnt/boot.img
sync && sync && sync && sync && sync && sync
sudo umount /mnt
sync
sudo mount /dev/sdb1 /mnt
cd /mnt
ls -las
cd dtbs
ls -las
cd ..
ls
cd /tmp
ls
nano bootimg.cfg
file /tmp/vmlinuz
abootimg --create boot.img -f bootimg.cfg -k zImage -r initrd.img -s stage2.img
printf 'SEANDROIDENFORCE' >> boot.img
truncate -s %2048 boot.img
tail -c 32 boot.img
sudo cp boot.img /mnt/boot.img
tail -c 32 boot.img
sync && sync && sync && sync && sync && sync
sudo umount /mnt
sed -i 's/bootsize = .*/bootsize = 0/' bootimg.cfg
abootimg --create boot.img -f bootimg.cfg -k zImage -r initrd.img -s stage2.img
sudo cp /tmp/boot.img /mnt/boot.img
sudo mount /dev/sdb1 /mnt
sudo cp /tmp/boot.img /mnt/boot.img
sync && sync && sync && sync && sync && sync
sudo umount /mnt
cd /mnt
ls -las
cd ..
ls
cd mnt
ls
ls -las
cd ..
sudo mount /dev/sdb1 /mnt
cd /mnt
ls -las
nano initramfs
cd /tmp
nano /tmp/bootimg.cfg
abootimg --create boot.img -f bootimg.cfg -k zImage -r initrd.img -s stage2.img
printf 'SEANDROIDENFORCE' >> boot.img
truncate -s %2048 boot.img
file /tmp/initrd.img
ls
nano bootimg.cfg
abootimg --create boot.img -f bootimg.cfg -k zImage -r initrd.img -s stage2.img
printf 'SEANDROIDENFORCE' >> boot.img
truncate -s %2048 boot.img
ls -las
tail -c 32 /tmp/boot.img
sudo cp /tmp/boot.img /mnt/boot.img
sync && sync && sync && sync && sync && sync
sudo umount /mnt
rep
cd /mnt
ls
cd /tmp
ls
ls -la
cat zImage stage2.img > vmlinuz-combined
ls -F /tmp/zImage /tmp/vmlinuz /tmp/stage2.img /tmp/exynos5420-klimt-lte.dtb
lsblk
sudo mount /dev/sdb1 /mnt
ls -F /tmp/zImage /tmp/vmlinuz /tmp/stage2.img /tmp/exynos5420-klimt-lte.dtb
cd /mnt
ls -las
cd dtbs
ls -las
cd ..
ls
cp /mnt/vmlinuz /tmp/zImage
cp /mnt/exynos5420-klimt-lte.dtb /tmp/klimt.dtb
cp /mnt/initramfs /tmp/initrd.img
cd /tmp
cat zImage klimt.dtb > vmlinuz-combined
nano bootimg.cfg
cd /mnt
ls
ls -las
cd /tmp
ls -llas
ls -las
cd /mnt
ls -las
cd /tmp
nano /tmp/bootimg.cfg
cp /mnt/vmlinuz /tmp/zImage
cp /mnt/exynos5420-klimt-lte.dtb /tmp/klimt.dtb
cp /mnt/initramfs /tmp/initrd.img
cd /tmp
cat zImage klimt.dtb > vmlinuz-combined
abootimg --create boot.img -f bootimg.cfg -k vmlinuz-combined -r initrd.img
printf 'SEANDROIDENFORCE' >> boot.img
truncate -s %2048 boot.img
tail -c 32 /tmp/boot.img
sudo cp /tmp/boot.img /mnt/boot.img
sync && sync && sync && sync && sync && sync
sudo umount /mnt
sudo mount /dev/sdb1 /mnt
/mnt
ls -las
cd /mnt
ls -las
watch -n 1 grep -e Dirty -e Writeback /proc/meminfo
mount | grep " / "
sudo mount -o remount,rw /
mount | grep " / "
[200~cd /tmp~
cd /tmp
rm -f vmlinuz-combined boot.img bootimg.cfg
cat <<EOF > /tmp/bootimg.cfg
bootsize = 0
pagesize = 2048
kerneladdr = 0x10008000
ramdiskaddr = 0x11000000
tagsaddr = 0x10000100
EOF

cat /tmp/zImage /tmp/klimt.dtb > /tmp/vmlinuz-combined
lsblk
sudo mount /dev/sdb1 /mnt
cat /tmp/zImage /tmp/klimt.dtb > /tmp/vmlinuz-combined
ls -las
cat /tmp/zImage /tmp/klimt.dtb > /tmp/vmlinuz-combined
ls -l /tmp/vmlinuz-combined
rm -f vmlinuz-combined boot.img bootimg.cfg
sync && sync && sync
cat <<EOF > /tmp/bootimg.cfg
bootsize = 0
pagesize = 2048
kerneladdr = 0x10008000
ramdiskaddr = 0x11000000
tagsaddr = 0x10000100
EOF

ls -las
cd /mnt
ls
ls -las
cd /tmp
cat /tmp/zImage /tmp/klimt.dtb > /tmp/vmlinuz-combined
ls -las
cat zImage klimt.dtb > vmlinuz-combined
cat <<EOF > /tmp/bootimg.cfg
bootsize = 0
pagesize = 2048
kerneladdr = 0x10008000
ramdiskaddr = 0x11000000
tagsaddr = 0x10000100
EOF

cat zImage klimt.dtb > vmlinuz-combined
cd /mnt
ls -las
lsblk
cp /mnt/vmlinuz /tmp/zImage
cp /mnt/exynos5420-klimt-lte.dtb /tmp/klimt.dtb
cp /mnt/initramfs /tmp/initrd.img
cd /tmp
cat zImage klimt.dtb > vmlinuz-combined ls -l vmlinuz-combined
cat zImage klimt.dtb > vmlinuz-combined ls -- -l vmlinuz-combined
cat zImage klimt.dtb > vmlinuz-combined ls -l vmlinuz-combined
ls -las
cd /mnt
la -lA
cd /tmp
rm -f vmlinuz-combined boot.img bootimg.cfg
cp /mnt/vmlinuz /tmp/zImage 
cp /mnt/exynos5420-klimt-lte.dtb /tmp/klimt.dtb 
cp /mnt/initramfs /tmp/initrd.img 
cat zImage klimt.dtb > vmlinuz-combined
ls -l vmlinuz-combined
abootimg --create /tmp/boot.img -f /tmp/bootimg.cfg -k /tmp/vmlinuz-combined -r /tmp/initrd.img
cd /mnt
abootimg --create /tmp/boot.img -f /tmp/bootimg.cfg -k /tmp/vmlinuz-combined -r /tmp/initrd.img
cd /tmp
ls -l /tmp/vmlinuz-combined
abootimg --create /tmp/boot.img -f /tmp/bootimg.cfg -k /tmp/vmlinuz-combined -r /tmp/initrd.img
rm -f vmlinuz-combined boot.img bootimg.cfg
cat <<EOF > /tmp/bootimg.cfg
bootsize = 0
pagesize = 2048
kerneladdr = 0x10008000
ramdiskaddr = 0x11000000
tagsaddr = 0x10000100
EOF

cat /tmp/zImage /tmp/klimt.dtb > /tmp/vmlinuz-combined
ls -l /tmp/vmlinuz-combined
cp /mnt/vmlinuz /tmp/zImage
cp /mnt/exynos5420-klimt-lte.dtb /tmp/klimt.dtb
cp /mnt/initramfs /tmp/initrd.img
cd /tmp
cat <<EOF > /tmp/bootimg.cfg
bootsize = 0
pagesize = 2048
kerneladdr = 0x10008000
ramdiskaddr = 0x11000000
tagsaddr = 0x10000100
EOF

cat /tmp/zImage /tmp/klimt.dtb > /tmp/vmlinuz-combined
ls -l /tmp/vmlinuz-combined
\rm -f vmlinuz-combined boot.img bootimg.cfg zImage klimt.dtb initrd.img
cat <<EOF > /tmp/bootimg.cfg
bootsize = 0
pagesize = 2048
kerneladdr = 0x10008000
ramdiskaddr = 0x11000000
tagsaddr = 0x10000100
EOF

cat /mnt/vmlinuz /mnt/exynos5420-klimt-lte.dtb > /tmp/vmlinuz-combined
ls -l /tmp/vmlinuz-combined
rm -f /tmp/vmlinuz-combined /tmp/boot.img
cat /tmp/zImage /tmp/klimt.dtb > /tmp/vmlinuz-combined
rm -R *.*
sudo rm -R *.*
ls -las
sync
ls -las
cp /mnt/vmlinuz /tmp/zImage
cp /mnt/exynos5420-klimt-lte.dtb /tmp/klimt.dtb
cp /mnt/initramfs /tmp/initrd.img
ls -las
cat <<EOF > /tmp/bootimg.cfg
bootsize = 0
pagesize = 2048
kerneladdr = 0x10008000
ramdiskaddr = 0x11000000
tagsaddr = 0x10000100
EOF

cat zImage klimt.dtb > vmlinuz-combined
ls -l vmlinuz-combined
\rm -f /tmp/zImage /tmp/klimt.dtb /tmp/vmlinuz-combined /tmp/boot.img
sync
\cp /mnt/vmlinuz /tmp/zImage
\cp /mnt/exynos5420-klimt-lte.dtb /tmp/klimt.dtb
ls -las
sync
\cat /tmp/zImage /tmp/klimt.dtb > /tmp/vmlinuz-combined
sync
\ls -l /tmp/vmlinuz-combined
abootimg --create /tmp/boot.img -f /tmp/bootimg.cfg -k /tmp/vmlinuz-combined -r /tmp/initrd.img
cat <<EOF > /tmp/bootimg.cfg
pagesize = 2048
kerneladdr = 0x10008000
ramdiskaddr = 0x11000000
tagsaddr = 0x10000100
EOF

sync
abootimg --create /tmp/boot.img -f /tmp/bootimg.cfg -k /tmp/vmlinuz-combined -r /tmp/initrd.img
abootimg --create /tmp/boot.img -k /tmp/vmlinuz-combined -r /tmp/initrd.img -c "pagesize=2048" -c "kerneladdr=0x10008000" -c "ramdiskaddr=0x11000000" -c "tagsaddr=0x10000100"
ls -las
sync
printf 'SEANDROIDENFORCE' >> /tmp/boot.img
sync
truncate -s %2048 /tmp/boot.img
sync
tail -c 32 /tmp/boot.img
sync
sudo cp /tmp/boot.img /mnt/boot.img
sync
sudo cp /tmp/boot.img /mnt/boot.img
sync
sudo umount /mnt
ls -las
abootimg --create /tmp/boot.img -f /tmp/bootimg.cfg -k /tmp/zImage -r /tmp/initrd.img -s /tmp/klimt.dtb
sync
printf 'SEANDROIDENFORCE' >> /tmp/boot.img
sync
truncate -s %2048 /tmp/boot.img
sync
tail -c 32 /tmp/boot.img
sync
ls -las
sync
lsblk
cd /mnt
ls
ls -las
cd /tmp
sudo cp /tmp/boot.img /mnt/boot.img
sync
sudo umount /mnt
cd /mnt
ls
ls -las
sudo mount /dev/sdb1 /mnt
cd /mnt
ls
cd ,,
cd ..
ls
sync
ls
cd mnt
ls
cd /tmp
ls
sudo cp /tmp/boot.img /mnt/boot.img
sync && sync && sync && sync && sync && sync
sudo umount /mnt
sync && sync && sync && sync && sync && sync
lsblk
clear
sudo findmnt
cd ..
ls
cd mnt
ls
rm -R *.*
sudo rm -R *.*
ls -las
rm klimt_boot
sudo rm klimt_boot
rm -R klimt_boot
ls
cd ..
ls
cd /tmp
ls
ls -las 
sudo mount /dev/sdb1 /mnt
findmnt /mnt
sudo cp /tmp/boot.img /mnt/boot.img
sync && sync && sync && sync && sync && sync
sudo umount /mnt
sync && sync && sync && sync && sync && sync
# Lag et "skjelett-image" uten ramdisk og uten DTB
abootimg --create /tmp/boot.img -k /tmp/zImage -c "pagesize=2048" -c "kerneladdr=0x10008000"
# Signer det (viktig!)
printf 'SEANDROIDENFORCE' >> /tmp/boot.img
# Send til kortet
sudo cp /tmp/boot.img /mnt/boot.img
sync && sync && sync
sudo umount /mnt
sudo mount /dev/sdb1
lsblk
sudo mount /dev/sdb
sudo mount /dev/sdb1
sudo mount /dev/sdb1 /mnt
sync
abootimg --create /tmp/boot.img -k /tmp/zImage -r /tmp/initrd.img -c "pagesize=2048" -c "kerneladdr=0x10008000" -c "ramdiskaddr=0x11000000"
printf 'SEANDROIDENFORCE' >> /tmp/boot.img
truncate -s %2048 /tmp/boot.img
sudo cp /tmp/boot.img /mnt/boot.img
sync && sync && sync && sync && sync && sync
sudo umount /mnt
sudo mount /dev/sdb1 /mnt
cd /mnt
ls
ls -las
cd ..
sync && sync && sync && sync && sync && sync
sudo umount /mnt
sync && sync && sync && sync && sync && sync
cd /tmp
clear
cat <<EOF > /tmp/bootimg.cfg
pagesize = 2048
kerneladdr = 0x10008000
ramdiskaddr = 0x11000000
secondaddr = 0x10f00000
tagsaddr = 0x10000100
EOF

abootimg --create /tmp/boot.img -f /tmp/bootimg.cfg -k /tmp/vmlinuz-combined -r /tmp/initrd.img
# 1. Bygg imaget direkte med alle Sertonix-parametrene
abootimg --create /tmp/boot.img -k /tmp/vmlinuz-combined -r /tmp/initrd.img -c "pagesize=2048" -c "kerneladdr=0x10008000" -c "ramdiskaddr=0x11000000" -c "secondaddr=0x10f00000" -c "tagsaddr=0x10000100"
printf 'SEANDROIDENFORCE' >> /tmp/boot.img
truncate -s %2048 /tmp/boot.img
sync
sudo umount /mnt
cd /tmp
sudo rm -rf /mnt/*
lsblk
sudo dd if=/tmp/boot.img of=/dev/sdb1 bs=2048 status=progress
sync && sync && sync && sync && sync && sync
sudo apt update
sudo apt install pmbootstrap
pmbootstrap init
lsblk
cd ..
~
mkdir -p ~/pmos_klimt
cd ~/pmos_klimt
sync
pmbootstrap log
sync
pmbootstrap install
sync
pmbootstrap export
ls -las /tmp/postmarketOS-export/boot.img
ls -Llas /tmp/postmarketOS-export/boot.img
lsblk
pmbootstrap shutdown
sync
pmbootstrap install --disk=/dev/sdb
pmbootstrap shutdown
cd ..
ls
sudo dd if=/dev/zero of=/dev/sdb bs=1M count=100 conv=fdatasync
sudo partprobe /dev/sdb
pmbootstrap install --disk=/dev/sdb
clear
pmbootstrap shutdown
pmbootstrap install --disk=/dev/sdb
sudo visudo
sudo nano sudo
sudo nano visudo
sudo visudo
pmbootstrap shutdown
pmbootstrap install --disk=/dev/sdb
sync
pmbootstrap shutdown
sync
pmbootstrap shutdown
lsblk
heimdall detect
findmnt
pmbootstrap flasher flash_kernel
ping 192.168.1.11
ping 172.16.42.1
ping 192.168.1.11
ping 172.16.42.1
lsusb
ip a | grep -A 3 "usb"
dmesg | tail -n 20
sudo dmesg | tail -n 20
ip a show enxb2e19f481f8c
name="/etc/udev/hwdb.bin" pid=81451 comm="lsusb" requested_mask="r" denied_mask="r" fsuid=1000 ouid=0
wils@WARLORD:~$ ip a show enxb2e19f481f8c
6: enxb2e19f481f8c: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
wils@WARLORD:~$ 
sudo ip addr add 172.16.42.2/24 dev enxb2e19f481f8c
sudo ip link set enxb2e19f481f8c up
ping 172.16.42.1
ssh 172.16.42.1
ssh wils@172.16.42.1
ssh-keygen -f '/home/wils/.ssh/known_hosts' -R '172.16.42.1'
ssh wils@172.16.42.1
dytt
rep
mount | grep " / "
rep
rens
arkiv
nano ~/logg_arkiv.sh
cd ~/Warlord-Logs-Public/Showcase && ls | grep -E '^[0-9]{4}-[0-9]{2}-[0-9]{2}_[0-9]{4}_' | while read -r fil; do
    ORIGINAL_NAVN="${fil:17}";     
    DUPLIKATER=$(ls *"$ORIGINAL_NAVN" | sort -r | tail -n +2);          if [ -n "$DUPLIKATER" ]; then         echo "Fjerner duplikater for: $ORIGINAL_NAVN";         rm $DUPLIKATER;     fi; done
clear
ls ~/Warlord-Logs-Public/Showcase | wc -l
cd ~/Warlord-Logs-Public
git add -A
git commit -m "Strategisk opprydding: Beholder kun unike logger (103 filer)"
git push origin main
git pull --rebase origin main
git push origin main
arkiv
cd ~
ls
~
lsusb
lsblk
ssh ssh wils@172.16.42.1
ping 192.168.1.11
heimdall detect
lsusb
ssh ssh wils@172.16.42.1
ip a
sudo ip addr add 172.16.42.2/24 dev enxdef506ff7bc1
sudo ip link set enxdef506ff7bc1 up
ping -c 3 172.16.42.1
ssh wils@172.16.42.1
ping 192.168.1.12
ssh wils@192.168.1.12
exit
ping 192.168.1.12
ssh wils@192168.1.12
ssh wils@192.168.1.12
ping 192.168.1.12
sudo reboot
ssh wils@192.168.1.12
rep
mount | grep " / "
rens
arkiv
rens
arkiv
rens
arkiv
sudo mount -o remount,rw /
mount | grep " / "
sudo dmesg
cd /etc
cd default
sudo nano grud
sudo nano grub
sudo update-grub
rep
cd ..
ls
~
cd home
rep
sudo update-grub
reboot
rep
ls
cd ..
ls
cd ..
ls
cd usr
ls
cd sbin
ls
cd --
ls
cd ~
ls
clear
sudo update-grrub
sudo update-grub
sudo source ~/.bashrc
sudo source bashrc
sudo source .bashrc
source .bashrc
clearcache
montert
rootrw
montert
ping 192.168.1.12
ssh wils@192.168.1.12
exit
ping 192.168.1.12
scp wils@<192.168.1.12>:~/exynos5420-klimt-lte.dtb.new ~/Downloads/
rsync -avzP wils@<192.168.1.12>:~/klimt_edit.dts ~/klimt_backup/
watch -n 1 grep -e Dirty -e Writeback /proc/meminfo 
rep
clearcache
arkiv
rens
rep
ping 192.168.1.12
rsync -avzP ~/ny_fil.txt wils@192.168.1.12:~/
rsync -avzP ~/klimt_edit.dts wils@192.168.1.12:~/
ls
cd Nedlastinger
ls
cd..
rsync -avzP ~/klimt_edit.dts wils@192.168.1.12:~/Nedlastinger/
rsync -avzP ~/klimt_edit.dts wils@192.168.1.12:~/
ls
rsync -avzP wils@<192.168.1.12:~/klimt_edit.dts ~/klimt_backup/
cd ..
ls
rsync -avzP wils@<192.168.1.12:~/klimt_edit.dts ~/klimt_backup/
ssh wils@192.168.1.12
rep
arkiv
ssh wils@192.168.1.12
ping 192.168.1.12
killall ssh
journalctl -k -b -1 | tail -n 100
sudo telinit 3
ping 192.168.1.12
ssh wils@192.168.1.12
ping 192.168.1.12
ssh wils@192.168.1.12
sh wils@192.168.1.12
ssh wils@192.168.1.12
rep
REMS
rens
exit
rep
rens
arkiv
rens
arkiv
cd ..
ls
cd vault
ls -las
cd home
ls
cd wil
cd wils
ls -las
vf Dokumenter
cd Dokumenter
lsa las
ls -las
cd Wils-Vault
ls -las
cd ..
ls
exit
rep
cat /sys/class/thermal/thermal_zone*/temp
ssh wils@191.168.1.12
ping 192.168.1.12
ssh wils@192.168.1.12
ssh 192.168.1.12
heimdall detect
lsusb
ssh 192.168.1.12
lsusb
lsblk
lsusb
lsblk
sudo mkdir -p /mnt/klimt_sd
sudo mount /dev/sdb1 /mnt/klimt_sd
cd /mnt
ls
ls- las
cd ..
mount | grep sdb
dmesg | tail -n 20
sudo dmesg | tail -n 20
sudo mkdir -p /mnt/klimt_sd
sudo mount -o ro /dev/sdb1 /mnt/klimt_sd
sudo mount -o remount,rw /
sudo mount -o ro /dev/sdb1 /mnt/klimt_sd
ls -l /tmp/klimt_sd
mkdir -p /tmp/klimt_sd
sudo mount -o ro /dev/sdb1 /tmp/klimt_sd
ls -l /tmp/klimt_sd
# Vi bruker vmlinuz direkte. Dette tvinger systemet til å starte uten det syke kartet.
sudo heimdall flash --BOOT /tmp/klimt_sd/vmlinuz --RECOVERY /tmp/klimt_sd/vmlinuz
heimdall detect
sudo heimdall flash --BOOT /tmp/klimt_sd/vmlinuz --RECOVERY /tmp/klimt_sd/vmlinuz
heimdall detect
lsusb
lsblk
mkdir -p /tmp/klimt_sd
sudo mount -o ro /dev/sdc1 /tmp/klimt_sd
heimdall detect
cd /tmp/klimt_sd
ls -l
ls -las
sudo heimdall flash --BOOT boot.img --RECOVERY boot.img
heimdall detect
ls
ls -las
dtc -I dtb -O dts -o ~/klimt_rebuild.dts /tmp/klimt_sd/exynos5420-klimt-lte.dtb
sed -i 's/regulator-min-microvolt = <1000000>/regulator-min-microvolt = <1200000>/g' ~/klimt_rebuild.dts
sed -i 's/regulator-max-microvolt = <1000000>/regulator-max-microvolt = <1200000>/g' ~/klimt_rebuild.dts
sed -i 's/"Samsung Klimt LTE based on Exynos5420"/"Samsung Klimt LTE 8-core Warlord v2.0-1.2V"/g' ~/klimt_rebuild.dts
dtc -I dts -O dtb -o ~/warlord_v2.dtb ~/klimt_rebuild.dts
strings ~/warlord_v2.dtb | grep "Warlord"
cp /tmp/klimt_sd/boot.img ~/boot_warlord_final.img
sudo apt update && sudo apt install abootimg -y
sed -i 's/regulator-min-microvolt = <1000000>/regulator-min-microvolt = <1200000>/g' ~/klimt_rebuild.dts
sed -i 's/regulator-max-microvolt = <1000000>/regulator-max-microvolt = <1200000>/g' ~/klimt_rebuild.dts
sed -i 's/Warlord Edition/Warlord v2.0-1.2V/g' ~/klimt_rebuild.dts
dtc -I dts -O dtb -o ~/warlord_v2.dtb ~/klimt_rebuild.dts
abootimg -u ~/boot_warlord_final.img -s ~/warlord_v2.dtb
cd ~
# Pakk ut den originale bildefila i en ny mappe
mkdir -p ~/frankensize && cd ~/frankensize
abootimg -x /tmp/klimt_sd/boot.img
# Bruk sed for å fjerne linjen som låser størrelsen (bootsize)
sed -i '/bootsize = /d' bootimg.cfg
abootimg --create ~/boot_warlord_fixed.img -f bootimg.cfg -k zImage -r initrd.img -s ~/warlord_v2.dtb
sudo heimdall flash --BOOT ~/boot_warlord_fixed.img --RECOVERY ~/boot_warlord_fixed.img
heimdall etect
heimdall detect
cd ~
# Vi bruker din originale kildekode-fil fra tidligere i dag
cp ~/klimt_edit.dts ~/warlord_final.dts
ls
cd Dokumenter
ls
nano klimt_deit_dts_txt
nano klimt_edit_dts_txt
ls
ls -las
grep -C 2 "regulator-min-microvolt = <1200000>" ~/Dokumenter/klimt_edit.dts
dtc -I dts -O dtb -o ~/warlord_final.dtb ~/Dokumenter/klimt_edit.dts
mkdir -p ~/rebuild_klimt && cd ~/rebuild_klimt
abootimg -x /tmp/klimt_sd/boot.img
# Fjern størrelsesbegrensningen så vi får plass til alt
sed -i '/bootsize = /d' bootimg.cfg
abootimg --create ~/boot_final_warlord.img -f bootimg.cfg -k zImage -r initrd.img -s ~/warlord_final.dtb
sudo heimdall flash --BOOT ~/boot_final_warlord.img --RECOVERY ~/boot_final_warlord.img
heimdall detect
cd ~/rebuild_klimt
echo -n "SEANDROIDENFORCE" >> ~/boot_safe_mode.img
sudo heimdall flash --BOOT ~/boot_safe_mode.img --RECOVERY ~/boot_safe_mode.img
ping 172.16.0.1
heimdfall detect
heimddall detect
heimdall detect
cd ~/rebuild_klimt
abootimg --create ~/boot_safe_mode.img -f bootimg.cfg -k /tmp/klimt_sd/vmlinuz -r /tmp/klimt_sd/initramfs
echo -n "SEANDROIDENFORCE" >> ~/boot_safe_mode.img
sudo heimdall flash --BOOT ~/boot_safe_mode.img --RECOVERY ~/boot_safe_mode.img --no-reboot
heimdall detect
sudo heimdall flash --BOOT ~/boot_safe_mode.img --RECOVERY ~/boot_safe_mode.img --no-reboot
abootimg --create ~/boot_safe_final.img -f bootimg.cfg -k /tmp/klimt_sd/vmlinuz -r /tmp/klimt_sd/initramfs -s /tmp/klimt_sd/exynos5420-klimt-lte.dtb
echo -n "SEANDROIDENFORCE" >> ~/boot_safe_final.img
heimdall detect
abootimg --create ~/boot_safe_final.img -f bootimg.cfg -k /tmp/klimt_sd/vmlinuz -r /tmp/klimt_sd/initramfs -s /tmp/klimt_sd/exynos5420-klimt-lte.dtb
echo -n "SEANDROIDENFORCE" >> ~/boot_safe_final.img
sudo heimdall flash --BOOT ~/boot_safe_final.img --RECOVERY ~/boot_safe_final.img
cat /tmp/klimt_sd/vmlinuz /tmp/klimt_sd/exynos5420-klimt-lte.dtb > ~/zImage-dtb-safe
abootimg --create ~/boot_safe_ultra.img -f bootimg.cfg -k ~/zImage-dtb-safe -r /tmp/klimt_sd/initramfs
echo -n "SEANDROIDENFORCE" >> ~/boot_safe_ultra.img
heimdall detect
sudo heimdall flash --BOOT ~/boot_safe_ultra.img --RECOVERY ~/boot_safe_ultra.img
cat ~/rebuild_klimt/bootimg.cfg
heimdall detect
cd ~/rebuild_klimt
# Vi lager en helt ny og ren konfigurasjonsfil med riktige 0x40-adresser
echo "pagesize = 0x800
kerneladdr = 0x40008000
ramdiskaddr = 0x41000000
secondaddr = 0x40f00000
tagsaddr = 0x40000100
name = 
cmdline = pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults" > bootimg.cfg
abootimg --create ~/boot_safe_ultra_v2.img -f bootimg.cfg -k ~/zImage-dtb-safe -r /tmp/klimt_sd/initramfs
echo -n "SEANDROIDENFORCE" >> ~/boot_safe_ultra_v2.img
sudo heimdall flash --BOOT ~/boot_safe_ultra_v2.img --RECOVERY ~/boot_safe_ultra_v2.img
cd ~/rebuild_klimt
printf "pagesize = 0x800\nkerneladdr = 0x40008000\nramdiskaddr = 0x41000000\nsecondaddr = 0x40f00000\ntagsaddr = 0x40000100\nname = boot\ncmdline = console=ttySAC2,115200 pmos_boot=/dev/mmcblk1p1 pmos_root=/dev/mmcblk1p2 rw rootwait\n" > bootimg.cfg
heimdall detect
lsblk
umount /dev/sdd
heimdall detect
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
ls
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
cd ..
ls
cd wilas
cd wils
ls
ls -las
ls -las >> wilshomefiles.txt
cd ~/rebuild_klimt
ls -las
printf "pagesize = 0x800\nkerneladdr = 0x40008000\nramdiskaddr = 0x41000000\nsecondaddr = 0x40f00000\ntagsaddr = 0x40000100\nname = boot\ncmdline = console=ttySAC2,115200 pmos_boot=/dev/mmcblk1p1 pmos_root=/dev/mmcblk1p2 rw rootwait\n" > bootimg.cfg
ls -las
abootimg --create ~/boot_final_hope.img -f bootimg.cfg -k ~/zImage-dtb-safe -r /tmp/klimt_sd/initramfs
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
abootimg --create ~/boot_final_hope.img -f bootimg.cfg -k ~/zImage-dtb-safe -r initrd.img
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
ls -l ~/boot_final_hope.img
heimdall detect
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
find ~ -name "*.dtb"
find ~ -name "*.dtb" >> dtbfiles.txt
cat /home/wils/.local/var/pmbootstrap/cache/checkout/postmarketos-devices/device/community/device-samsung-klimtlte/deviceinfo
find ~/.local/var/pmbootstrap/ -name "deviceinfo" | grep klimtlte
sudo find ~/.local/var/pmbootstrap/ -name "deviceinfo" | grep klimtlte
cat /home/wils/.local/var/pmbootstrap/cache_git/pmaports/device/testing/device-samsung-klimtlte/deviceinfo
printf "pagesize = 2048\nkerneladdr = 0x10008000\nramdiskaddr = 0x11000000\nsecondaddr = 0x10f00000\ntagsaddr = 0x10000100\nname = boot\ncmdline = pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults\n" > bootimg.cfg
abootimg --create ~/boot_final_hope.img -f bootimg.cfg -k zImage -r initrd.img -s /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
sync
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
sync
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
heimdall detect
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
ping 172.16.0.1
ping 192.168.1.12
arkiv
ping 192.168.1.12
dmesg
sudo dmesg
clear
ping 172.16.0.1
ping 192.168.1.12
ping 172.16.0.1
ping 192.168.1.12
find ~/.local/var/pmbootstrap/cache_git/ -name "exynos5420-klimt*.dts"
find ~/.local/var/pmbootstrap/aports/ -name "exynos5420-klimt*.dts"
find /home/wils/.local/var/pmbootstrap -name "exynos5420-klimt*.dts" 2>/dev/null
pmbootstrap kbuild src linux-samsung-klimt
dtc -I dtb -O dts -o ~/rebuild_klimt/klimt_edit.dts /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
kwrite ~/rebuild_klimt/klimt_edit.dts &
ls
cd rebuild_klimt
ls
dtc -I dts -O dtb -o ~/rebuild_klimt/exynos5420-klimt-lte.dtb ~/rebuild_klimt/klimt_edit.dts
cat /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/vmlinuz ~/rebuild_klimt/exynos5420-klimt-lte.dtb > vmlinuz-dtb
cd ~/rebuild_klimt
abootimg --create ~/boot_final_hope.img -f bootimg.cfg -k vmlinuz-dtb -r /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
ls -las
cd ..
ls
mount | grep " / "
ping 192.168.1.12
mount | grep " / "
sudo mount -o remount,rw /
mount | grep " / "
ls
cd rebuild_klimt
ls
cat zImage /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb > zImage-dtb
ls -la
abootimg --create ~/boot_final_hope.img -f bootimg.cfg -k zImage-dtb -r initrd.img
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
sync
ls -la
heimdall detect
tail -c 16 ~/boot_final_hope.img
ls
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
cd ~/rebuild_klimt
printf "pagesize = 2048\nkerneladdr = 0x10008000\nramdiskaddr = 0x11000000\nsecondaddr = 0x10f00000\ntagsaddr = 0x10000100\nname = boot\ncmdline = pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults\n" > bootimg.cfg
heimdall detect
abootimg --create ~/boot_final_hope.img -f bootimg.cfg   -k /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/vmlinuz   -r /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs   -s /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
cd ~/rebuild_klimt
printf "pagesize = 2048\nkerneladdr = 0x40008000\nramdiskaddr = 0x41000000\nsecondaddr = 0x40f00000\ntagsaddr = 0x40000100\nname = boot\ncmdline = pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults\n" > bootimg.cfg
abootimg --create ~/boot_final_hope.img -f bootimg.cfg   -k /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/vmlinuz   -r /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs   -s /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
cd ~/rebuild_klimt
printf "pagesize = 2048\nkerneladdr = 0x40008000\nramdiskaddr = 0x41000000\nsecondaddr = 0x40f00000\ntagsaddr = 0x40000100\nname = boot\ncmdline = pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults\n" > bootimg.cfg
abootimg --create ~/boot_final_hope.img -f bootimg.cfg   -k /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/vmlinuz   -r /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs   -s /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
abootimg -i /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/boot.img-samsung-klimtlte
find /home/wils/.local/var/pmbootstrap/ -name "boot.img*"
abootimg -i /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/boot.img
cp /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/boot.img ~/rebuild_klimt/official_pmos_boot.img
echo -n "SEANDROIDENFORCE" >> ~/rebuild_klimt/official_pmos_boot.img
cp /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/boot.img ~/rebuild_klimt/ORIGINAL_PMOS.img
echo -n "SEANDROIDENFORCE" >> ~/rebuild_klimt/ORIGINAL_PMOS.img
tail -c 16 ~/rebuild_klimt/ORIGINAL_PMOS.img
sudo heimdall flash --BOOT ~/rebuild_klimt/ORIGINAL_PMOS.img --RECOVERY ~/rebuild_klimt/ORIGINAL_PMOS.img
cd ~
rep
ssh wils@192.168.1.12
heimdall detect
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
arkiv
dytt
rep
exit
rens
rep
arkiv
dytt
find ~ /home/wils/.local/var/pmbootstrap -name "*klimt*" -o -name "boot_final_hope.img" -o -name "BACKUP_KLIMT_OPERASJON.txt" 2>/dev/null
find ~ /home/wils/.local/var/pmbootstrap -name "*klimt*" -o -name "boot_final_hope.img" -o -name "BACKUP_KLIMT_OPERASJON.txt" 2>/dev/null >> lysitunnellen.txt
ls
cd rebuild_klimt
ls
nano klimt_edit.dts
heimdall detect
dtc -I dts -O dtb -o ~/rebuild_klimt/exynos5420-klimt-lte.dtb ~/rebuild_klimt/klimt_edit.dts
heimdall detect
nano klimt_edit.dts
dtc -I dts -O dtb -o ~/rebuild_klimt/exynos5420-klimt-lte.dtb ~/rebuild_klimt/klimt_edit.dts
cat /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/vmlinuz ~/rebuild_klimt/exynos5420-klimt-lte.dtb > ~/rebuild_klimt/vmlinuz-dtb
abootimg --create ~/boot_final_hope.img -f bootimg.cfg -k vmlinuz-dtb -r /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs
sync
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
sync
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
https://gemini.google.com/app/64c508e87d8df229#:~:text=%23%20Lag%20bin%C3%A6rfilen-,dtc%20%2DI%20dts%20%2DO%20dtb%20%2Do%20~/rebuild_klimt/exynos5420%2Dklimt%2Dlte.dtb%20~/rebuild_klimt/klimt_edit.dts,-%23%20Lim%20kartet%20p%C3%A5
dtc -I dts -O dtb -o ~/rebuild_klimt/exynos5420-klimt-lte.dtb ~/rebuild_klimt/klimt_edit.dts
abootimg --create ~/boot_final_hope.img -f bootimg.cfg -k vmlinuz-dtb -r /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
heimdall detect
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
history
nano klimt_edit.dts
heimdall detect
dtc -I dts -O dtb -o ~/rebuild_klimt/exynos5420-klimt-lte.dtb ~/rebuild_klimt/klimt_edit.dts
cat /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/vmlinuz ~/rebuild_klimt/exynos5420-klimt-lte.dtb > ~/rebuild_klimt/vmlinuz-dtb
cd ~/rebuild_klimt
abootimg --create ~/boot_final_hope.img -f bootimg.cfg -k vmlinuz-dtb -r /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
ls
nano klimt_edit.dts
dtc -I dts -O dtb -o ~/rebuild_klimt/exynos5420-klimt-lte.dtb ~/rebuild_klimt/klimt_edit.dts
cd ~/rebuild_klimt
abootimg --create ~/boot_final_hope.img -f bootimg.cfg -k vmlinuz-dtb -r /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
nano klimt_edit.dts
dtc -I dts -O dtb -o ~/rebuild_klimt/exynos5420-klimt-lte.dtb ~/rebuild_klimt/klimt_edit.dts
abootimg --create ~/boot_final_hope.img -f bootimg.cfg -k vmlinuz-dtb -r /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
history
dtc -I dtb -O dts -o ~/rebuild_klimt/klimt_edit.dts /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
cd ~/rebuild_klimt
printf "pagesize = 2048\nkerneladdr = 0x40008000\nramdiskaddr = 0x41000000\nsecondaddr = 0x40f00000\ntagsaddr = 0x40000100\nname = boot\ncmdline = pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults\n" > bootimg.cfg
dtc -I dts -O dtb -o ~/rebuild_klimt/exynos5420-klimt-lte.dtb ~/rebuild_klimt/klimt_edit.dts
abootimg --create ~/boot_final_hope.img -f bootimg.cfg   -k /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/vmlinuz   -r /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs   -s ~/rebuild_klimt/exynos5420-klimt-lte.dtb
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
cd ~/rebuild_klimt
printf "pagesize = 2048\nkerneladdr = 0x40008000\nramdiskaddr = 0x41000000\nsecondaddr = 0x40f00000\ntagsaddr = 0x40000100\nname = boot\ncmdline = pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults\n" > bootimg.cfg
abootimg --create ~/boot_final_hope.img -f bootimg.cfg   -k /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/vmlinuz   -r /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs   -s /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
sync
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
printf "pagesize = 2048\nkerneladdr = 0x40008000\nramdiskaddr = 0x41000000\nsecondaddr = 0x40f00000\ntagsaddr = 0x40000100\nname = boot\ncmdline = pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults\n" > bootimg.cfg
abootimg --create ~/boot_final_hope.img -f bootimg.cfg   -k /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/vmlinuz   -r /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs   -s /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
echo -n "SEANDROIDENFORCE" >> ~/boot_final_hope.img
sudo heimdall flash --BOOT ~/boot_final_hope.img --RECOVERY ~/boot_final_hope.img
cd ..
ls
cd klimt_frankenstein
ls
cd check_v15
ls
ls -llas
dtc -I dts -O dtb -o ~/rebuild_klimt/v15_gull.dtb ~/rebuild_klimt/v15_gull.dts
dtc -I dts -O dtb -o v15_gull.dtb v15_gull.dts
printf "pagesize = 2048\nkerneladdr = 0x40008000\nramdiskaddr = 0x41000000\nsecondaddr = 0x40f00000\ntagsaddr = 0x40000100\nname = boot\ncmdline = pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults\n" > bootimg.cfg
abootimg --create boot_final_hope.img -f bootimg.cfg   -k /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/vmlinuz   -r /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs   -s v15_gull.dtb
echo -n "SEANDROIDENFORCE" >> boot_final_hope.img
cd ~/klimt_frankenstein/check_v15/
dtc -I dts -O dtb -o v15_gull.dtb v15_gull.dts
printf "pagesize = 2048\nkerneladdr = 0x40008000\nramdiskaddr = 0x41000000\nsecondaddr = 0x40f00000\ntagsaddr = 0x40000100\nname = v15_gull\ncmdline = pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults\n" > v15_boot.cfg
abootimg --create v15_gull.img -f v15_boot.cfg   -k /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/vmlinuz   -r /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs   -s v15_gull.dtb
echo -n "SEANDROIDENFORCE" >> v15_gull.img
sudo heimdall flash --BOOT v15_gull.img --RECOVERY v15_gull.img
dtc -I dts -O dtb -o v15_gull.dtb v15_gull.dts
printf "pagesize = 2048\nkerneladdr = 0x40008000\nramdiskaddr = 0x41000000\nsecondaddr = 0x40f00000\ntagsaddr = 0x40000100\nname = v15_gull\ncmdline = pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults\n" > v15_boot.cfg
abootimg --create v15_gull.img -f v15_boot.cfg   -k /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/vmlinuz   -r /home/wils/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs   -s v15_gull.dtb
echo -n "SEANDROIDENFORCE" >> v15_gull.img
SYNC
sync
sudo heimdall flash --BOOT v15_gull.img --RECOVERY v15_gull.img
ping 192.168.1.12
heimdall detect
rep
rens
sudo mount -o remount,rw /
mount | grep " / "
ls
sudo chown +rwx klimt_clean_backup
sudo chown +rw wils klimt_clean_backup
sudo chown wils klimt_clean_backup
ls -las
chmod +755 wils klimt_clean_backup
sudo chmod +755 wils klimt_clean_backup
sudo chmod +755 klimt_clean_backup
ls -las
chown klimt_clean_backup wils
chown wils klimt_clean_backup
ls -las
chown wils klimt_clean_backup
ls -las
chown -cR wils:files ~/klimt_clean_backup
sudo chown -cR wils:files ~/klimt_clean_backup
sudo chown -cR wils ~/klimt_clean_backup
ls -las
man chown change from root to user
sudo chown wils ~/klimt_clean_backup
ls -las
ps
ps -a
ps -las
ps 1
htop
btop
/home/wils/Klimt-debug/
ext install anthropic.claude-code
apt install anthropic.claude-code
sudo apt install anthropic.claude-code
cp ~/klimt_rebuild.dts ~/klimt_fix_skjerm.dts
ls
cd Klimt_debug
cd Klimt-debug
ls
cp klimt_rebuild.dts ~/klimt_fix_skjerm.dts
ls
ls -las
cd ..
ls
mv klimt_fix_skjerm.dts ~/Klimt-debug/
cd Klimt-debug
ls
sed -i 's/bootargs = "no_framebuffer=true";//g' klimt_fix_skjerm.dts
sed -i 's|stdout-path = "serial2:115200n8";|stdout-path = "serial2:115200n8";\n\t\tbootargs = "console=ttySAC2,115200 drm.debug=0";|' klimt_fix_skjerm.dts
grep -A3 "chosen" klimt_fix_skjerm.dts
dtc -I dts -O dtb -o ~/klimt_fix_skjerm.dtb klimt_fix_skjerm.dts 2>&1 | head -20
grep -n "chosen\|^};\|^\t};" ~/Klimt-debug/klimt_fix_skjerm.dts | tail -30
sed -n '3340,3420p' ~/Klimt-debug/klimt_fix_skjerm.dts
heimdall detect
# Lag backup først
cp ~/Klimt-debug/klimt_fix_skjerm.dts ~/Klimt-debug/klimt_fix_skjerm.dts.bak
python3 << 'EOF'
with open('/home/wils/Klimt-debug/klimt_fix_skjerm.dts', 'r') as f:
    content = f.read()

# Fjern chosen-blokken fra innsiden av soc
old = '''\t\tchosen {
\t\t\tstdout-path = "serial2:115200n8";
\t\tbootargs = "console=ttySAC2,115200 drm.debug=0";
\t\t\tstatus = "okay";
\t\t};'''

# Sett inn chosen på rotnivå rett før siste }; 
new_chosen = '''\tchosen {
\t\tstdout-path = "serial2:115200n8";
\t\tbootargs = "console=ttySAC2,115200 drm.debug=0";
\t};'''

content = content.replace(old, '')

# Sett inn rett før siste }; (rot-node avslutning)
content = content.rstrip()
if content.endswith('};'):
    content = content[:-2].rstrip() + '\n\n' + new_chosen + '\n};\n'

with open('/home/wils/Klimt-debug/klimt_fix_skjerm.dts', 'w') as f:
    f.write(content)

print("Ferdig!")
EOF

grep -n "chosen" ~/Klimt-debug/klimt_fix_skjerm.dts
tail -20 ~/Klimt-debug/klimt_fix_skjerm.dts
curl -fsSL https://claude.ai/install.sh | bash
python3 << 'EOF'
with open('/home/wils/Klimt-debug/klimt_fix_skjerm.dts', 'r') as f:
    lines = f.readlines()

# Finn og fjern den gamle chosen-blokken (den som er dypt indrykket, inne i soc)
new_lines = []
skip = False
brace_count = 0

for i, line in enumerate(lines):
    # Den gamle chosen er dypt indrykket (mange tabs/spaces) og inne i soc
    if 'chosen {' in line and line.startswith('\t\t\t') or ('chosen {' in line and '           chosen {' in line):
        skip = True
        brace_count = 1
        continue
    
    if skip:
        brace_count += line.count('{') - line.count('}')
        if brace_count <= 0:
            skip = False
        continue
    
    new_lines.append(line)

with open('/home/wils/Klimt-debug/klimt_fix_skjerm.dts', 'w') as f:
    f.writelines(new_lines)

print(f"Ferdig! Fjernet gammel chosen-blokk")
EOF

# Verifiser - skal nå bare være EN chosen
grep -n "chosen" ~/Klimt-debug/klimt_fix_skjerm.dts
tail -15 ~/Klimt-debug/klimt_fix_skjerm.dts
sed -n '3350,3360p' ~/Klimt-debug/klimt_fix_skjerm.dts | cat -A | head -15
python3 << 'EOF'
with open('/home/wils/Klimt-debug/klimt_fix_skjerm.dts', 'r') as f:
    lines = f.readlines()

new_lines = []
skip = False
brace_count = 0

for line in lines:
    if not skip and line == '\t\tchosen {\n':
        skip = True
        brace_count = 1
        continue
    if skip:
        brace_count += line.count('{') - line.count('}')
        if brace_count <= 0:
            skip = False
        continue
    new_lines.append(line)

with open('/home/wils/Klimt-debug/klimt_fix_skjerm.dts', 'w') as f:
    f.writelines(new_lines)
print("Ferdig!")
EOF

# Verifiser
grep -n "chosen" ~/Klimt-debug/klimt_fix_skjerm.dts
tail -12 ~/Klimt-debug/klimt_fix_skjerm.dts
curl -fsSL https://claude.ai/install.sh | bash
dtc -I dts -O dtb -o ~/Klimt-debug/klimt_fix_skjerm.dtb ~/Klimt-debug/klimt_fix_skjerm.dts 2>&1 | grep -i "error\|chosen\|warning" | head -20
echo "---"
echo "Chosen-sjekk:"
grep -c "chosen_node_is_root" <<< "$(dtc -I dts -O dtb -o ~/Klimt-debug/klimt_fix_skjerm.dtb ~/Klimt-debug/klimt_fix_skjerm.dts 2>&1)" && echo "FORTSATT FEIL" || echo "OK - ingen chosen feil"
# Sjekk hva vi har i rebuild_klimt
ls -lh ~/Klimt-debug/rebuild_klimt/
echo "---"
# Sjekk pmbootstrap sin offisielle vmlinuz og initramfs
ls -lh ~/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/
echo "---"
# Vis bootimg.cfg hvis den finnes
cat ~/Klimt-debug/rebuild_klimt/bootimg.cfg 2>/dev/null || echo "ingen bootimg.cfg"
# Lag korrekt bootimg.cfg
cat > /tmp/klimt_skjerm.cfg << 'EOF'
pagesize = 2048
kerneladdr = 0x10008000
ramdiskaddr = 0x11000000
secondaddr = 0x10f00000
tagsaddr = 0x10000100
name = boot
cmdline = console=ttySAC2,115200 pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults
EOF

# Bygg ny boot.img med vår faste DTB
# vmlinuz + vår nye DTB concatenert
cat ~/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/vmlinuz     ~/Klimt-debug/klimt_fix_skjerm.dtb > /tmp/zImage-skjerm-dtb
# Bygg boot.img
abootimg --create ~/Klimt-debug/boot_skjerm_fix.img     -f /tmp/klimt_skjerm.cfg     -k /tmp/zImage-skjerm-dtb     -r ~/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs
# Legg til SEANDROIDENFORCE
echo -n "SEANDROIDENFORCE" >> ~/Klimt-debug/boot_skjerm_fix.img
# Verifiser
echo "---"
ls -lh ~/Klimt-debug/boot_skjerm_fix.img
tail -c 16 ~/Klimt-debug/boot_skjerm_fix.img | cat -v
echo ""
abootimg -i ~/Klimt-debug/boot_skjerm_fix.img
# Fjern den ødelagte filen
rm ~/Klimt-debug/boot_skjerm_fix.img
# Bygg med -c flagg direkte istedet for config-fil
abootimg --create ~/Klimt-debug/boot_skjerm_fix.img     -c "pagesize=2048"     -c "kerneladdr=0x10008000"     -c "ramdiskaddr=0x11000000"     -c "secondaddr=0x10f00000"     -c "tagsaddr=0x10000100"     -c "cmdline=console=ttySAC2,115200 pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults"     -k /tmp/zImage-skjerm-dtb     -r ~/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs
echo -n "SEANDROIDENFORCE" >> ~/Klimt-debug/boot_skjerm_fix.img
# Verifiser størrelse og innhold
echo "---"
ls -lh ~/Klimt-debug/boot_skjerm_fix.img
tail -c 16 ~/Klimt-debug/boot_skjerm_fix.img | cat -v
echo ""
abootimg -i ~/Klimt-debug/boot_skjerm_fix.img
heimdall detect
sudo heimdall flash     --BOOT ~/Klimt-debug/boot_skjerm_fix.img     --RECOVERY ~/Klimt-debug/boot_skjerm_fix.img
heimdall detect
adb devices
sudo apt install adb
adb devices
adb shell blkid
lsblk
heimdall detect
adb shell blkid
# Hent UUID fra begge partisjoner på SD-kortet
sudo blkid /dev/sdb1 /dev/sdb2
# Se også hva som er på dem
sudo mount /dev/sdb1 /mnt && ls /mnt && sudo umount /mnt
echo "---"
sudo mount /dev/sdb2 /mnt && ls /mnt && sudo umount /mnt
sudo mount /dev/sdb1 /mnt
ls -lh /mnt/
echo "---"
# Bygg ny boot.img med kernel fra SD-kort + vår faste DTB
cat /mnt/vmlinuz ~/Klimt-debug/klimt_fix_skjerm.dtb > /tmp/zImage-sdcard-dtb
abootimg --create ~/Klimt-debug/boot_sdcard_fix.img     -c "pagesize=2048"     -c "kerneladdr=0x10008000"     -c "ramdiskaddr=0x11000000"     -c "secondaddr=0x10f00000"     -c "tagsaddr=0x10000100"     -c "cmdline=console=ttySAC2,115200 pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults"     -k /tmp/zImage-sdcard-dtb     -r /mnt/initramfs
echo -n "SEANDROIDENFORCE" >> ~/Klimt-debug/boot_sdcard_fix.img
# Sammenlign også den eksisterende boot.img på SD-kortet
echo "=== Vår nye ==="
abootimg -i ~/Klimt-debug/boot_sdcard_fix.img
echo "=== SD-kortets originale ==="
abootimg -i /mnt/boot.img
sudo umount /mnt
# Variant 1: Samme cmdline som originalen som fungerte, men med vår faste DTB
abootimg --create ~/Klimt-debug/boot_v1_sikker.img     -c "pagesize=2048"     -c "kerneladdr=0x10008000"     -c "ramdiskaddr=0x11000000"     -c "secondaddr=0x10f00000"     -c "tagsaddr=0x10000100"     -c "cmdline=pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults"     -k /tmp/zImage-sdcard-dtb     -r ~/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs
echo -n "SEANDROIDENFORCE" >> ~/Klimt-debug/boot_v1_sikker.img
ls -lh ~/Klimt-debug/boot_v1_sikker.img
tail -c 16 ~/Klimt-debug/boot_v1_sikker.img | cat -v
echo ""
abootimg --create ~/Klimt-debug/boot_v1_sikker.img     -c "pagesize=2048"     -c "kerneladdr=0x10008000"     -c "ramdiskaddr=0x11000000"     -c "secondaddr=0x10f00000"     -c "tagsaddr=0x10000100"     -c "cmdline=pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults"     -k /tmp/zImage-sdcard-dtb     -r ~/.local/var/pmbootstrap/chroot_rootfs_samsung-klimtlte/boot/initramfs
echo -n "SEANDROIDENFORCE" >> ~/Klimt-debug/boot_v1_sikker.img
ls -lh ~/Klimt-debug/boot_v1_sikker.img
tail -c 16 ~/Klimt-debug/boot_v1_sikker.img | cat -v
heimdall detect
heimdall detect && sudo heimdall flash     --BOOT ~/Klimt-debug/boot_v1_sikker.img     --RECOVERY ~/Klimt-debug/boot_v1_sikker.img
# Pakk ut den originale boot.img fra SD-kortet
mkdir -p /tmp/orig_boot
cd /tmp/orig_boot
# Monter SD-kortet igjen
sudo mount /dev/sdb1 /mnt
# Pakk ut originalen
abootimg -x /mnt/boot.img
echo "=== bootimg.cfg fra originalen ==="
cat bootimg.cfg
echo "=== Kernel størrelse ==="
ls -lh zImage
# Sjekk om originalen har DTB appended
file zImage
strings zImage | grep -i "klimt\|exynos\|samsung" | head -5
sudo umount /mnt
# Pakk ut den originale boot.img fra SD-kortet
mkdir -p /tmp/orig_boot
cd /tmp/orig_boot
# Monter SD-kortet igjen
sudo mount /dev/sdb1 /mnt
# Pakk ut originalen
abootimg -x /mnt/boot.img
echo "=== bootimg.cfg fra originalen ==="
cat bootimg.cfg
echo "=== Kernel størrelse ==="
ls -lh zImage
# Sjekk om originalen har DTB appended
file zImage
strings zImage | grep -i "klimt\|exynos\|samsung" | head -5
sudo umount /mnt
lsblk
sudo partprobe /dev/sdb
sleep 2
lsblk
sudo fdisk -l /dev/sdb
cd /tmp/orig_boot
sudo mount /dev/sdb1 /mnt
ls -lh /mnt/
echo "==="
abootimg -x /mnt/boot.img
echo "=== bootimg.cfg ==="
cat bootimg.cfg
echo "=== fil-type på zImage ==="
file zImage
strings zImage | grep -i "klimt\|exynos\|samsung" | head -5
sudo umount /mnt
sudo dmesg | tail -20
sudo dmesg | tail -5
lsblk
sudo mount /dev/sdb1 /mnt && echo "MONTERT OK"
dmesg
sudo dmesg
# Ta ut kortet, sett inn igjen, vent 5 sekunder, så:
sudo dmesg | tail -5
lsblk
sudo mount /dev/sdb1 /mnt && echo "MONTERT OK"
sudo dmesg | tail -20
ls -lh /mnt/
echo "==="
cp /mnt/boot.img /tmp/orig_boot/original_sd_boot.img
echo "Kopi OK: $?"
abootimg -x /mnt/boot.img
cat bootimg.cfg
file zImage
strings zImage | grep -i "klimt\|exynos\|samsung" | head -5
sudo umount /mnt
# Steg 1: Bytt DTB på SD-kortet
sudo mount /dev/sdb1 /mnt
sudo cp /mnt/exynos5420-klimt-lte.dtb /mnt/exynos5420-klimt-lte.dtb.bak
sudo cp ~/Klimt-debug/klimt_fix_skjerm.dtb /mnt/exynos5420-klimt-lte.dtb
ls -lh /mnt/exynos5420-klimt-lte.dtb*
sudo umount /mnt
echo "SD-kort klar!"
heimdall detect
sudo heimdall flash     --BOOT /tmp/orig_boot/original_sd_boot.img     --RECOVERY /tmp/orig_boot/original_sd_boot.img
lsblk
sudo mount /dev/sdb1 /mnt && echo "OK"
sudo cp /mnt/exynos5420-klimt-lte.dtb.bak /mnt/exynos5420-klimt-lte.dtb
ls -lh /mnt/exynos5420-klimt-lte.dtb*
sudo umount /mnt
echo "Original DTB gjenopprettet"
sudo mount /dev/sdb1 /mnt && echo "OK"
sudo cp /mnt/exynos5420-klimt-lte.dtb.bak /mnt/exynos5420-klimt-lte.dtb
ls -lh /mnt/exynos5420-klimt-lte.dtb*
sudo umount /mnt
echo "Original DTB gjenopprettet"
heimdall detect
heimdall detect && sudo heimdall flash     --BOOT /tmp/orig_boot/original_sd_boot.img     --RECOVERY /tmp/orig_boot/original_sd_boot.img
heimdall detect
# Finn TWRP image på systemet
find ~ /tmp -name "*.img" 2>/dev/null | grep -i "twrp\|recovery"
# Sjekk også bash history for twrp
grep -i "twrp" ~/.bash_history | tail -20
wget https://dl.twrp.me/klimtlte/twrp-3.4.0-0-klimtlte.img
ls -lh ~/Klimt-debug/twrp-3.4.0-0-klimtlte.img
ls -las
cd ~/Klimt-debug
tar xf ~/Nedlastinger/twrp-3.4.0-0-klimtlte.img.tar
ls -lh twrp*
cd ~/Nedlastinger
ls -lh twrp*
cd ~/Klimt-debug
tar xf ~/Nedlastinger/twrp-3.4.0-0-klimtlte.img.tar
ls -lh twrp*
tar xf twrp-3.4.0-0-klimtlte.img.tar
cd ~/Nedlastinger
tar xf twrp-3.4.0-0-klimtlte.img.tar
ls -las
heimdall detect && sudo heimdall flash     --RECOVERY ~/Nedlastinger/recovery.img
sudo heimdall flash     --RECOVERY ~/Nedlastinger/recovery.img     --no-reboot
sudo adb devices
# Hent full partisjonsliste og block devices
adb shell blkid
echo "==="
adb shell ls /dev/block/platform/
echo "==="
adb shell cat /proc/partitions
# Finn boot-partisjonen
adb shell ls -la /dev/block/platform/dw_mmc.0/by-name/
echo "==="
# Dump hva som er i boot-partisjonen nå
adb shell dd if=/dev/block/mmcblk0p9 bs=512 count=8 2>/dev/null | strings | head -20
# Dump boot-partisjonen og se på cmdline
adb shell dd if=/dev/block/mmcblk0p9 of=/tmp/current_boot.img bs=4096
adb pull /tmp/current_boot.img ~/Klimt-debug/
abootimg -i ~/Klimt-debug/current_boot.img
# Se på initramfs innholdet - hva gjør den ved oppstart?
mkdir -p /tmp/initrd_extract
cd /tmp/initrd_extract
adb shell dd if=/dev/block/mmcblk0p9 bs=4096 | abootimg -x -
cd /tmp/initrd_extract
abootimg -x ~/Klimt-debug/current_boot.img
file initrd.img
mkdir -p initrd_root
cd initrd_root
zcat ../initrd.img | cpio -id 2>/dev/null || lz4 -d ../initrd.img -c | cpio -id 2>/dev/null
ls -la
wils@WARLORD:/tmp/initrd_extract$ cd /tmp/initrd_extract
abootimg -x ~/Klimt-debug/current_boot.img
file initrd.img
mkdir -p initrd_root
cd initrd_root
zcat ../initrd.img | cpio -id 2>/dev/null || lz4 -d ../initrd.img -c | cpio -id 2>/dev/null
ls -la
writing boot image config in bootimg.cfg
extracting kernel in zImage
extracting ramdisk in initrd.img
initrd.img: gzip compressed data, original size modulo 2^32 5111460
total 44
drwxrwxr-x 12 wils wils   340 Apr 22 21:31 .
drwxrwxr-x  3 wils wils   120 Apr 22 21:31 ..
lrwxrwxrwx  1 wils wils     7 Apr 22 21:31 bin -> usr/bin
drwxr-xr-x  2 wils wils    40 Apr 22 21:31 boot
drwxr-xr-x  2 wils wils    40 Apr 22 21:31 dev
drwxr-xr-x  2 wils wils   120 Apr 22 21:31 etc
drwxr-xr-x  2 wils wils    40 Apr 22 21:31 hooks-cleanup
-rwxr-xr-x  1 wils wils  2066 Apr 22 21:31 init
-rw-r--r--  1 wils wils 37105 Apr 22 21:31 init_functions.sh
lrwxrwxrwx  1 wils wils     7 Apr 22 21:31 lib -> usr/lib
drwxr-xr-x  2 wils wils    40 Apr 22 21:31 proc
drwxr-xr-x  2 wils wils    40 Apr 22 21:31 run
lrwxrwxrwx  1 wils wils     8 Apr 22 21:31 sbin -> usr/sbin
drwxr-xr-x  2 wils wils    40 Apr 22 21:31 sys
drwxr-xr-x  2 wils wils    40 Apr 22 21:31 sysroot
drwxr-xr-x  2 wils wils    40 Apr 22 21:31 tmp
drwxr-xr-x  6 wils wils   120 Apr 22 21:31 usr
wils@WARLORD:/tmp/initrd_extract/initrd_root$ 
cd /tmp/initrd_extract/initrd_root
cat init
echo "==="
grep -n "mmcblk\|boot_uuid\|root_uuid\|mount\|mmc" init_functions.sh | head -40
cd /tmp/initrd_extract/initrd_root
cat init
echo "==="
grep -n "mmcblk\|boot_uuid\|root_uuid\|mount\|mmc" init_functions.sh | head -40
if [ "$IN_CI" = "false" ]; then     setup_framebuffer;     show_splash "Loading..."; fi
grep -n -A 20 "wait_boot_partition\(\)"     /tmp/initrd_extract/initrd_root/init_functions.sh
grep -n -A 10 "setup_framebuffer\(\)"     /tmp/initrd_extract/initrd_root/init_functions.sh
grep -n -A 30 "^wait_partition\(\)"     /tmp/initrd_extract/initrd_root/init_functions.sh
grep -n -A 20 "^find_boot_partition\(\)"     /tmp/initrd_extract/initrd_root/init_functions.sh
for _ in $(seq 1 30); do     sleep 1;     $findfunc partition; cat /tmp/initrd_extract/initrd_root/lib/modules/initramfs.load 2>/dev/null || ls /tmp/initrd_extract/initrd_root/lib/modules/; ls /tmp/initrd_extract/initrd_root/usr/share/misc/; cat /tmp/initrd_extract/initrd_root/usr/share/misc/source_deviceinfo; 
cat /tmp/initrd_extract/initrd_root/lib/modules/initramfs.load 2>/dev/null || ls /tmp/initrd_extract/initrd_root/lib/modules/
ls /tmp/initrd_extract/initrd_root/usr/share/misc/
cat /tmp/initrd_extract/initrd_root/usr/share/misc/source_deviceinfo
ls /tmp/initrd_extract/initrd_root/lib/modules/6.12.62-postmarketos-exynos5/
echo "==="
find /tmp/initrd_extract/initrd_root/lib/modules/ -name "*.ko" | grep -i "mmc\|dwmmc\|dw_mmc\|exynos"
echo "==="
cat /tmp/initrd_extract/initrd_root/usr/share/misc/source_deviceinfo 2>/dev/null || ls /tmp/initrd_extract/initrd_root/usr/share/misc/
grep -i "dw_mmc\|sdhci\|mmc"     /tmp/initrd_extract/initrd_root/lib/modules/6.12.62-postmarketos-exynos5/modules.builtin | head -20
find /tmp/initrd_extract/initrd_root/ -name "deviceinfo" 2>/dev/null
echo "==="
ls /tmp/initrd_extract/initrd_root/etc/
cat /tmp/initrd_extract/initrd_root/etc/deviceinfo 2>/dev/null
cat /tmp/initrd_extract/initrd_root/usr/share/deviceinfo/deviceinfo
# Fra TWRP - start normal boot
adb shell dmesg -w > ~/Klimt-debug/live_dmesg.txt &
DMESG_PID=$!
adb shell reboot
echo "Venter 45 sekunder..."
sleep 45
kill $DMESG_PID 2>/dev/null
# Se de siste linjene
tail -50 ~/Klimt-debug/live_dmesg.txt
# Vent til TWRP er oppe
adb wait-for-recovery
# Hent dmesg fra forrige boot
adb shell dmesg > ~/Klimt-debug/boot_dmesg.txt
echo "Hentet $(wc -l < ~/Klimt-debug/boot_dmesg.txt) linjer"
# Vis de viktigste linjene
grep -i "mmc\|boot\|error\|fail\|pmOS\|uuid\|mount\|panic\|klimt"     ~/Klimt-debug/boot_dmesg.txt | head -50
adb shell ls /cache/recovery/ 2>/dev/null
adb shell cat /cache/recovery/command 2>/dev/null
adb shell cat /cache/recovery/last_log | head -50
# Sjekk hva som er i BOOT nå
adb shell dd if=/dev/block/mmcblk0p9 bs=512 count=4 2>/dev/null | strings | head -5
echo "==="
# Flash Alpine til BOOT
adb push /tmp/orig_boot/original_sd_boot.img /tmp/alpine.img
adb shell dd if=/tmp/alpine.img of=/dev/block/mmcblk0p9 bs=4096
echo "BOOT: $?"
adb shell reboot
ping -c 5 192.168.1.12
adb shell dd if=/dev/block/mmcblk0p8 bs=512 count=16 2>/dev/null | strings | grep -i "recover\|boot\|mode\|flag" | head -20
adb shell "mkdir -p /tmp/alpine && \
    mount /dev/block/mmcblk1p1 /tmp/alpine && \
    ls /tmp/alpine/ && \
    cat /tmp/alpine/init.log 2>/dev/null || echo 'ingen init.log' && \
    umount /tmp/alpine"
adb shell "mkdir -p /tmp/alpine && \
    mount /dev/block/mmcblk1p2 /tmp/alpine && \
    ls /tmp/alpine/var/log/ 2>/dev/null && \
    cat /tmp/alpine/var/log/dmesg 2>/dev/null | tail -30 || echo 'ingen logg' && \
    umount /tmp/alpine"
# Monter boot-partisjonen
adb shell "mount /dev/block/mmcblk1p1 /tmp/alpine"
# Sjekk om hooks-mappe finnes i initramfs
adb shell "ls /tmp/alpine/"
adb shell "md5sum /dev/block/mmcblk0p9 /dev/block/mmcblk1p1/boot.img 2>/dev/null || \
    mount /dev/block/mmcblk1p1 /tmp/alpine 2>/dev/null && \
    md5sum /tmp/alpine/boot.img"
# Pakk ut initramfs fra SD-kortet
adb shell "cp /tmp/alpine/initramfs /tmp/initramfs.gz"
adb pull /tmp/initramfs.gz /tmp/
cd /tmp
mkdir -p initrd_debug
cd initrd_debug
zcat /tmp/initramfs.gz | cpio -id 2>/dev/null
ls hooks/ 2>/dev/null || ls
# Lag debug hook
cat > /tmp/initrd_debug/hooks/10-verbose-initfs.sh << 'EOF'
#!/bin/sh
# Enable verbose logging
set -x
EOF

chmod +x /tmp/initrd_debug/hooks/10-verbose-initfs.sh
# Pakk initramfs tilbake
cd /tmp/initrd_debug
find . | cpio -H newc -o 2>/dev/null | gzip > /tmp/initramfs_debug.gz
ls -lh /tmp/initramfs_debug.gz
# Pakk ut initramfs fra SD-kortet
adb shell "cp /tmp/alpine/initramfs /tmp/initramfs.gz"
adb pull /tmp/initramfs.gz /tmp/
cd /tmp
mkdir -p initrd_debug
cd initrd_debug
zcat /tmp/initramfs.gz | cpio -id 2>/dev/null
echo "Pakket ut OK"
ls
cd /tmp/initrd_debug
mkdir -p hooks
# Lag debug hook
cat > hooks/10-verbose-initfs.sh << 'EOF'
#!/bin/sh
set -x
EOF

chmod +x hooks/10-verbose-initfs.sh
# Verifiser
ls -la hooks/
cat hooks/10-verbose-initfs.sh
# Pakk initramfs tilbake
find . | cpio -H newc -o 2>/dev/null | gzip > /tmp/initramfs_debug.gz
ls -lh /tmp/initramfs_debug.gz
# Push debug initramfs til SD-kortet
adb push /tmp/initramfs_debug.gz /tmp/initramfs_debug.gz
# Bytt ut initramfs på SD-kortets boot-partisjon
adb shell "cp /tmp/alpine/initramfs /tmp/alpine/initramfs.bak && \
    cp /tmp/initramfs_debug.gz /tmp/alpine/initramfs && \
    ls -lh /tmp/alpine/initramfs*"
# Bygg ny boot.img med debug initramfs
cd /tmp
abootimg --create /tmp/boot_debug.img     -c "pagesize=2048"     -c "kerneladdr=0x10008000"     -c "ramdiskaddr=0x11000000"     -c "secondaddr=0x10f00000"     -c "tagsaddr=0x10000100"     -c "cmdline=pmos_boot_uuid=9d8c150b-30bb-4ffd-aad3-83f89e667ffc pmos_root_uuid=26671ec5-88da-4d5b-93f2-65271c4fd5ed pmos_rootfsopts=defaults"     -k /tmp/initrd_extract/zImage     -r /tmp/initramfs_debug.gz
echo -n "SEANDROIDENFORCE" >> /tmp/boot_debug.img
ls -lh /tmp/boot_debug.img
# Flash direkte via dd
adb push /tmp/boot_debug.img /tmp/boot_debug.img
adb shell "dd if=/tmp/boot_debug.img of=/dev/block/mmcblk0p9 bs=4096"
echo "Flash: $?"
adb shell reboot
ping -c 5 172.16.42.1
ip addr show
# Sjekk om Linux oppdager ny USB-enhet
dmesg | tail -20
echo "==="
ip addr show
echo "==="
ping -c 3 172.16.42.1
cd ~
pmbootstrap -y zap
pmbootstrap init
rm -rf ~/y
pmbootstrap init
lsblk | grep sdb
pmbootstrap install --sdcard=/dev/sdb
pmbootstrap -y zap
pmbootstrap init
pmbootstrap install --sdcard=/dev/sdb
lsblk | grep sdb
sudo partprobe /dev/sdb
sleep 2
lsblk | grep sdb
# Rydd opp gamle mounts
sudo umount -l /home/wils/y/chroot_native/dev/installp1 2>/dev/null
sudo umount -l /home/wils/y/chroot_native/dev/installp2 2>/dev/null
sudo umount -l /home/wils/y/chroot_native/dev/install 2>/dev/null
# Prøv installasjonen igjen
pmbootstrap install --sdcard=/dev/sdb
heimdall detect && pmbootstrap flasher flash_kernel
ping 192.168.1.12
ping -c 3 172.16.42.1
hiemdall detect
heimdall detect
ping 192.168.1.12
rep
rens
arkiv
ping -c 3 172.16.42.1
# På Kubuntu - ikke på klimt!
exit
# På Kubuntu - ikke på klimt!
exit
ls
grep -n "fimd\|dsim\|mipi\|panel\|display\|backlight\|s5p-dp\|dp-controller"     ~/Klimt-debug/klimt_fix_skjerm.dts | head -30
grep -n -A 5 "fimd@14400000\|dsim\|exynos5410-mipi-dsi\|panel@0"     ~/Klimt-debug/klimt_fix_skjerm.dts | head -60
bashsed -n '211,233p' ~/Klimt-debug/klimt_fix_skjerm.dts
echo "==="
sed -n '2179,2200p' ~/Klimt-debug/klimt_fix_skjerm.dts
ed -n '211,233p' ~/Klimt-debug/klimt_fix_skjerm.dts
sed -n '2179,2200p' ~/Klimt-debug/klimt_fix_skjerm.dts
sed -n '211,233p' ~/Klimt-debug/klimt_fix_skjerm.dts
grep -n "phandle = <0x77>\|phandle = <0x74>\|phandle = <0x75>\|phandle = <0x76>"     ~/Klimt-debug/klimt_fix_skjerm.dts
tabs:~$ 
tabs:~$ # Finn pmbootstrap sin DTS for klimtlte
tabs:~$ find ~/.local/var/pmbootstrap -name "exynos5420-klimt*.dts" 2>/dev/null
tabs:~$ find ~/y -name "exynos5420-klimt*.dts" 2>/dev/null
tabs:~$ 
find ~/y -name "*.dts" | grep -i "klimt\|exynos5420"
echo "==="
find ~/y -name "*.dtb" | grep -i "klimt\|exynos5420"
dtc -I dtb -O dts     -o ~/Klimt-debug/pmos_klimt_original.dts     ~/y/chroot_rootfs_samsung-klimtlte/boot/exynos5420-klimt-lte.dtb
grep -n "fimd\|dsi@\|status" ~/Klimt-debug/pmos_klimt_original.dts | grep -A1 "fimd\|dsi@" | head -20
# Aktiver fimd, dsi og bus-disp1-fimd
cp ~/Klimt-debug/pmos_klimt_original.dts ~/Klimt-debug/pmos_klimt_display.dts
# Tell antall disabled først
grep -c "disabled" ~/Klimt-debug/pmos_klimt_display.dts
# Aktiver fimd@14400000 (linje 208)
sed -i '208s/status = "disabled"/status = "okay"/' ~/Klimt-debug/pmos_klimt_display.dts
# Aktiver dsi@14500000 (linje 2155)
sed -i '2155s/status = "disabled"/status = "okay"/' ~/Klimt-debug/pmos_klimt_display.dts
# Aktiver bus-disp1-fimd (linje 2706)
sed -i '2706s/status = "disabled"/status = "okay"/' ~/Klimt-debug/pmos_klimt_display.dts
# Verifiser
grep -n "fimd\|dsi@" ~/Klimt-debug/pmos_klimt_display.dts | grep -A1 "fimd\|dsi@" | head -20
grep -n "status" ~/Klimt-debug/pmos_klimt_display.dts | grep -E "20[0-9]:|215[0-9]:|270[0-9]:"
pmbootstrap flasher flash_kernel
ping 192.168.1.12
ls -lh ~/y/chroot_rootfs_samsung-klimtlte/boot/exynos5420-klimt-lte.dtb
ls -lh ~/y/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
dtc -I dtb -O dts     ~/y/chroot_rootfs_samsung-klimtlte/boot/exynos5420-klimt-lte.dtb 2>/dev/null |     grep -A2 "fimd@14400000\|dsi@14500000" | grep "status"
dtc -I dtb -O dts     ~/y/chroot_rootfs_samsung-klimtlte/boot/exynos5420-klimt-lte.dtb 2>/dev/null |     grep -n "status" | grep -E "20[0-9]:|215[0-9]:"
dtc -I dtb -O dts     ~/Klimt-debug/pmos_klimt_display.dtb 2>/dev/null |     grep -n "status" | grep -E "20[0-9]:|215[0-9]:"
dtc -I dts -O dtb     -o ~/Klimt-debug/pmos_klimt_display.dtb     ~/Klimt-debug/pmos_klimt_display.dts 2>&1 | grep -i "error" | head -5
dtc -I dtb -O dts     ~/Klimt-debug/pmos_klimt_display.dtb 2>/dev/null |     grep -n "status" | grep -E "20[0-9]:|215[0-9]:"
sudo cp ~/Klimt-debug/pmos_klimt_display.dtb     ~/y/chroot_rootfs_samsung-klimtlte/boot/exynos5420-klimt-lte.dtb
sudo cp ~/Klimt-debug/pmos_klimt_display.dtb     ~/y/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
ls -lh ~/y/chroot_rootfs_samsung-klimtlte/boot/exynos5420-klimt-lte.dtb
ls -lh ~/y/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
pmbootstrap flasher flash_kernel
grep -n "vddcore\|vddio\|dsi@14500000" ~/Klimt-debug/pmos_klimt_display.dts | head -20
grep -n "vdd3\|vci\|mipi\|VDD_MIPI\|VDD_LCD\|VDD3_1V8\|VDD_APIO"     ~/Klimt-debug/pmos_klimt_display.dts | head -20
grep -n "VDD_MIPI_1V0\|VDD3_1V8\|VDD_MIPI_PLL"     ~/Klimt-debug/pmos_klimt_display.dts | head -10
echo "==="
# Se linjene rundt for å finne phandle
sed -n '525,545p' ~/Klimt-debug/pmos_klimt_display.dts
echo "==="
sed -n '755,765p' ~/Klimt-debug/pmos_klimt_display.dts
# Finn phandle for LDO6 (VDD_MIPI_1V0) og LDO28 (VDD3_1V8)
sed -n '524,542p' ~/Klimt-debug/pmos_klimt_display.dts
echo "==="
sed -n '754,770p' ~/Klimt-debug/pmos_klimt_display.dts
python3 << 'EOF'
with open('/home/wils/Klimt-debug/pmos_klimt_display.dts', 'r') as f:
    content = f.read()

# Legg til phandle til LDO6 (VDD_MIPI_1V0) = vddcore
old_ldo6 = '''				LDO6 {
					regulator-name = "VDD_MIPI_1V0";
					regulator-min-microvolt = <0xf4240>;
					regulator-max-microvolt = <0xf4240>;
					regulator-always-on;
					regulator-boot-on;
					regulator-state-mem {
						regulator-off-in-suspend;
					};
				};'''

new_ldo6 = '''				LDO6 {
					regulator-name = "VDD_MIPI_1V0";
					regulator-min-microvolt = <0xf4240>;
					regulator-max-microvolt = <0xf4240>;
					regulator-always-on;
					regulator-boot-on;
					phandle = <0x95>;
					regulator-state-mem {
						regulator-off-in-suspend;
					};
				};'''

# Legg til phandle til LDO28 (VDD3_1V8) = vddio
old_ldo28 = '''				LDO28 {
					regulator-name = "VDD3_1V8";
					regulator-min-microvolt = <0x1b7740>;
					regulator-max-microvolt = <0x1b7740>;
					regulator-state-mem {
						regulator-off-in-suspend;
					};
				};'''

new_ldo28 = '''				LDO28 {
					regulator-name = "VDD3_1V8";
					regulator-min-microvolt = <0x1b7740>;
					regulator-max-microvolt = <0x1b7740>;
					phandle = <0x96>;
					regulator-state-mem {
						regulator-off-in-suspend;
					};
				};'''

# Legg til supply i DSI-noden
old_dsi = '''\t\tdsi@14500000 {
\t\t\tcompatible = "samsung,exynos5410-mipi-dsi";'''

new_dsi = '''\t\tdsi@14500000 {
\t\t\tcompatible = "samsung,exynos5410-mipi-dsi";
\t\t\tvddcore-supply = <0x95>;
\t\t\tvddio-supply = <0x96>;'''

content = content.replace(old_ldo6, new_ldo6)
content = content.replace(old_ldo28, new_ldo28)
content = content.replace(old_dsi, new_dsi)

with open('/home/wils/Klimt-debug/pmos_klimt_display.dts', 'w') as f:
    f.write(content)

print("Ferdig!")
EOF

# Verifiser
grep -n "vddcore\|vddio\|phandle = <0x95>\|phandle = <0x96>"     ~/Klimt-debug/pmos_klimt_display.dts
grep -n "phandle = <0x95>\|phandle = <0x96>" ~/Klimt-debug/pmos_klimt_display.dts
# Finn eksakte linjenummer for LDO6 og LDO28
grep -n "VDD_MIPI_1V0\|VDD3_1V8" ~/Klimt-debug/pmos_klimt_display.dts
# Sett inn phandle etter VDD_MIPI_1V0 (linje 528)
sed -i '528a\\t\t\t\t\t\t\tphandle = <0x95>;' ~/Klimt-debug/pmos_klimt_display.dts
# Sjekk ny linjenummer for VDD3_1V8 (forskjøvet med 1)
grep -n "VDD3_1V8" ~/Klimt-debug/pmos_klimt_display.dts
# Sett inn phandle etter VDD3_1V8 (linje 759)
sed -i '759a\\t\t\t\t\t\t\tphandle = <0x96>;' ~/Klimt-debug/pmos_klimt_display.dts
# Verifiser begge phandle
grep -n "phandle = <0x95>\|phandle = <0x96>" ~/Klimt-debug/pmos_klimt_display.dts
# Sjekk også at vddcore og vddio er i DSI-noden
grep -n "vddcore\|vddio" ~/Klimt-debug/pmos_klimt_display.dts
grep -n "phandle = <0x95>\|phandle = <0x96>\|<0x95>\|<0x96>"     ~/Klimt-debug/pmos_klimt_display.dts | grep -v "vddcore\|vddio" | head -20
dtc -I dts -O dtb     -o ~/Klimt-debug/pmos_klimt_display.dtb     ~/Klimt-debug/pmos_klimt_display.dts 2>&1 | grep -i "error" | head -5
sudo cp ~/Klimt-debug/pmos_klimt_display.dtb     ~/y/chroot_rootfs_samsung-klimtlte/boot/exynos5420-klimt-lte.dtb
sudo cp ~/Klimt-debug/pmos_klimt_display.dtb     ~/y/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
pmbootstrap flasher flash_kernel
tabs:~$ 
tabs:~$ dmesg | grep -i 'vdd\|supply\|regulator' | grep -i 'dsi\|14500000' | head -20
tabs:~$ 
tabs:~$ grep -o "phandle = <0x[0-9a-f]*>" ~/Klimt-debug/pmos_klimt_display.dts | >     sort -u | tail -20
grep: /home/wils/Klimt-debug/pmos_klimt_display.dts: No such file or directory
tabs:~$ 
grep -o "phandle = <0x[0-9a-f]*>" ~/Klimt-debug/pmos_klimt_display.dts |     sort -u | tail -20
grep -o "phandle = <0x[0-9a-f]*>" ~/Klimt-debug/pmos_klimt_display.dts |     grep -o "0x[0-9a-f]*" | sort -u | tail -5
echo "==="
# Sjekk om 0x95 og 0x96 er brukt som referanser andre steder
grep -n "<0x95>\|<0x96>" ~/Klimt-debug/pmos_klimt_display.dts | grep -v "phandle\|vddcore\|vddio"
# Finn DSI-driveren på klimt og sjekk hvilke supplies den forventer
ssh wils@192.168.1.12 "dmesg | grep -i '14500000\|exynos-dsi\|samsung-dsim' | head -20"
grep -n "mipi-phy\|mipi-video-phy\|exynos5420-mipi"     ~/Klimt-debug/pmos_klimt_display.dts | head -10
sed -n '2388,2410p' ~/Klimt-debug/pmos_klimt_display.dts
# Finn PMU syscon phandle
grep -n "pmu_system_controller\|samsung,exynos5420-pmu\|syscon.*pmu\|phandle = <0x0b>"     ~/Klimt-debug/pmos_klimt_display.dts | head -10
# Legg til syscon til mipi-phy noden
sed -i 's/compatible = "samsung,exynos5420-mipi-video-phy";/compatible = "samsung,exynos5420-mipi-video-phy";\n\t\t\t\tsyscon = <0x0b>;/'     ~/Klimt-debug/pmos_klimt_display.dts
# Verifiser
grep -n -A4 "mipi-phy" ~/Klimt-debug/pmos_klimt_display.dts | head -10
heimdall detect
dtc -I dts -O dtb     -o ~/Klimt-debug/pmos_klimt_display.dtb     ~/Klimt-debug/pmos_klimt_display.dts 2>&1 | grep -i "error" | head -5
sudo cp ~/Klimt-debug/pmos_klimt_display.dtb     ~/y/chroot_rootfs_samsung-klimtlte/boot/exynos5420-klimt-lte.dtb
sudo cp ~/Klimt-debug/pmos_klimt_display.dtb     ~/y/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
pmbootstrap flasher flash_kernel
grep -n -B5 "mipi-phy\|exynos5420-mipi-video-phy"     ~/Klimt-debug/pmos_klimt_display.dts | head -20
sed -n '2370,2400p' ~/Klimt-debug/pmos_klimt_display.dts
# Fjern syscon fra mipi-phy siden foreldrenoden er syscon
sed -i '/compatible = "samsung,exynos5420-mipi-video-phy";/{n;/syscon = <0x0b>;/d;}'     ~/Klimt-debug/pmos_klimt_display.dts
# Verifiser
grep -n -A4 "mipi-phy" ~/Klimt-debug/pmos_klimt_display.dts | head -10
dtc -I dts -O dtb     -o ~/Klimt-debug/pmos_klimt_display.dtb     ~/Klimt-debug/pmos_klimt_display.dts 2>&1 | grep -i "error" | head -5
sudo cp ~/Klimt-debug/pmos_klimt_display.dtb     ~/y/chroot_rootfs_samsung-klimtlte/boot/exynos5420-klimt-lte.dtb
sudo cp ~/Klimt-debug/pmos_klimt_display.dtb     ~/y/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
pmbootstrap flasher flash_kernel
ping 192.168.1.12
sed -n '2145,2160p' ~/Klimt-debug/pmos_klimt_display.dts
grep -n "panel@0\|s6e3ha2" ~/Klimt-debug/pmos_klimt_display.dts | head -10
grep -n "panel@0\|s6e3ha2" ~/Klimt-debug/pmos_klimt_original.dts | head -10
grep -n "panel@0\|s6e3ha2" ~/Klimt-debug/klimt_rebuild.dts | head -10
grep -n "panel@0\|s6e3ha2" ~/Klimt-debug/fasit_fra_vraket.dts | head -10
sed -n '2179,2220p' ~/Klimt-debug/fasit_fra_vraket.dts
grep -n "panel@0\|s6e3ha2\|dsi@14500000" ~/Klimt-debug/fasit_fra_vraket.dts | head -10
grep -n "panel@0\|s6e3ha2\|dsi@14500000" ~/Klimt-debug/klimt_rebuild.dts | head -10
echo "==="
sed -n '2145,2230p' ~/Klimt-debug/klimt_rebuild.dts
# Finn linjenummer for dsi@14500000 i display-DTS
grep -n "dsi@14500000" ~/Klimt-debug/pmos_klimt_display.dts
# Finn start og slutt på DSI-noden
sed -n '2146,2165p' ~/Klimt-debug/pmos_klimt_display.dts
python3 << 'EOF'
with open('/home/wils/Klimt-debug/pmos_klimt_display.dts', 'r') as f:
    content = f.read()

# Den gamle enkle DSI-noden uten panel
old_dsi = '''\t\tdsi@14500000 {
\t\t\tcompatible = "samsung,exynos5410-mipi-dsi";
\t\t\tvddcore-supply = <0x95>;
\t\t\tvddio-supply = <0x96>;
\t\t\treg = <0x14500000 0x10000>;
\t\t\tinterrupts = <0x00 0x52 0x04>;
\t\t\tphys = <0x40 0x01>;
\t\t\tphy-names = "dsim";
\t\t\tclocks = <0x02 0x19b 0x02 0x92>;
\t\t\tclock-names = "bus_clk", "pll_clk";
\t\t\t#address-cells = <0x01>;
\t\t\t#size-cells = <0x00>;
\t\t\tstatus = "okay";
\t\t};'''

# Den komplette DSI-noden med panel og porter
new_dsi = '''\t\tdsi@14500000 {
\t\t\tcompatible = "samsung,exynos5410-mipi-dsi";
\t\t\tvddcore-supply = <0x95>;
\t\t\tvddio-supply = <0x96>;
\t\t\treg = <0x14500000 0x10000>;
\t\t\tinterrupts = <0x00 0x52 0x04>;
\t\t\tphys = <0x40 0x01>;
\t\t\tphy-names = "dsim";
\t\t\tclocks = <0x02 0x19b 0x02 0x92>;
\t\t\tclock-names = "bus_clk", "pll_clk";
\t\t\t#address-cells = <0x01>;
\t\t\t#size-cells = <0x00>;
\t\t\tstatus = "okay";

\t\t\tpanel@0 {
\t\t\t\tcompatible = "samsung,s6e3ha2";
\t\t\t\treg = <0x00>;
\t\t\t\tvdd3-supply = <0x37>;
\t\t\t\tvci-supply = <0x71>;
\t\t\t\treset-gpios = <0x72 0x01 0x01>;
\t\t\t\tbacklight = <0x73>;
\t\t\t\tstatus = "okay";

\t\t\t\tport {

\t\t\t\t\tendpoint {
\t\t\t\t\t\tremote-endpoint = <0x74>;
\t\t\t\t\t\tphandle = <0x75>;
\t\t\t\t\t};
\t\t\t\t};
\t\t\t};

\t\t\tports {
\t\t\t\t#address-cells = <0x01>;
\t\t\t\t#size-cells = <0x00>;

\t\t\t\tport@0 {
\t\t\t\t\treg = <0x00>;

\t\t\t\t\tendpoint {
\t\t\t\t\t\tremote-endpoint = <0x76>;
\t\t\t\t\t\tphandle = <0x77>;
\t\t\t\t\t};
\t\t\t\t};

\t\t\t\tport@1 {
\t\t\t\t\treg = <0x01>;

\t\t\t\t\tendpoint {
\t\t\t\t\t\tremote-endpoint = <0x75>;
\t\t\t\t\t\tphandle = <0x74>;
\t\t\t\t\t};
\t\t\t\t};
\t\t\t};
\t\t};'''

if old_dsi in content:
    content = content.replace(old_dsi, new_dsi)
    print("Erstattet!")
else:
    print("FANT IKKE gammel DSI-node!")

with open('/home/wils/Klimt-debug/pmos_klimt_display.dts', 'w') as f:
    f.write(content)
EOF

# Verifiser
grep -n "panel@0\|s6e3ha2\|ports" ~/Klimt-debug/pmos_klimt_display.dts | head -10
dtc -I dts -O dtb     -o ~/Klimt-debug/pmos_klimt_display.dtb     ~/Klimt-debug/pmos_klimt_display.dts 2>&1 | grep -i "error" | head -5
sudo cp ~/Klimt-debug/pmos_klimt_display.dtb     ~/y/chroot_rootfs_samsung-klimtlte/boot/exynos5420-klimt-lte.dtb
sudo cp ~/Klimt-debug/pmos_klimt_display.dtb     ~/y/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
pmbootstrap flasher flash_kernel
ping 192.168.1.12
grep -n "phandle = <0x72>\|phandle = <0x71>\|phandle = <0x37>\|phandle = <0x73>"     ~/Klimt-debug/pmos_klimt_display.dts | head -10
grep -n "phandle = <0x71>\|phandle = <0x72>\|phandle = <0x73>"     ~/Klimt-debug/klimt_rebuild.dts | head -10
grep -n "phandle = <0x71>\|phandle = <0x72>\|phandle = <0x73>"     ~/Klimt-debug/pmos_klimt_display.dts | head -10
cp ~/Klimt-debug/klimt_rebuild.dts ~/Klimt-debug/klimt_display_v2.dts
grep -n "fimd@14400000\|dsi@14500000\|bus-disp1-fimd"     ~/Klimt-debug/klimt_display_v2.dts | head -10
sed -n '218p' ~/Klimt-debug/klimt_display_v2.dts
sed -n '2177p' ~/Klimt-debug/klimt_display_v2.dts
sed -n '2784p' ~/Klimt-debug/klimt_display_v2.dts
dtc -I dts -O dtb     -o ~/Klimt-debug/klimt_display_v2.dtb     ~/Klimt-debug/klimt_display_v2.dts 2>&1 | grep -i "error" | head -5
ls -lh ~/Klimt-debug/klimt_display_v2.dtb
pmbootstrap flasher flash_kernel
# Sjekk hva phandle 0x72 er i klimt_rebuild.dts
sed -n '1590,1602p' ~/Klimt-debug/klimt_rebuild.dts
echo "==="
# Sjekk om det finnes i klimt_display_v2.dts
grep -n "phandle = <0x72>" ~/Klimt-debug/klimt_display_v2.dts
# Sjekk om s6e3ha2 finnes i pmaports kernel config
find ~/y -name "*.config" | xargs grep -l "s6e3ha2\|S6E3HA2" 2>/dev/null
echo "==="
find ~/y -name "Kconfig*" | xargs grep -l "s6e3ha2\|S6E3HA2" 2>/dev/null | head -5
find ~/y -name "*.config" 2>/dev/null | grep -v proc | xargs grep -l "s6e3ha2\|S6E3HA2" 2>/dev/null
find ~/y/cache_git/pmaports -name "*.config" 2>/dev/null | head -5
grep -r "S6E3HA2\|s6e3ha2" ~/y/cache_git/pmaports/ 2>/dev/null | head -5
find ~/y/cache_git/pmaports -path "*exynos5*" -name "*.config" 2>/dev/null
echo "==="
find ~/y/cache_git/pmaports -path "*klimt*" -name "*.config" 2>/dev/null
find ~/y/cache_git/pmaports -path "*exynos5*" 2>/dev/null | head -20
echo "==="
ls ~/y/cache_git/pmaports/device/testing/linux-postmarketos-exynos5/ 2>/dev/null
grep -i "S6E3HA2\|panel.*samsung\|samsung.*panel"     ~/y/cache_git/pmaports/device/community/linux-postmarketos-exynos5/config-postmarketos-exynos5.armv7
# Aktiver S6E3HA2 panel i kernel config
sed -i 's/# CONFIG_DRM_PANEL_SAMSUNG_S6E3HA2 is not set/CONFIG_DRM_PANEL_SAMSUNG_S6E3HA2=y/'     ~/y/cache_git/pmaports/device/community/linux-postmarketos-exynos5/config-postmarketos-exynos5.armv7
# Verifiser
grep "S6E3HA2"     ~/y/cache_git/pmaports/device/community/linux-postmarketos-exynos5/config-postmarketos-exynos5.armv7
pmbootstrap build linux-postmarketos-exynos5 --arch armv7
echo "Bygging ferdig: $?"
pmbootstrap build linux-postmarketos-exynos5 --arch armv7 --force
pmbootstrap log
cd ~/y/cache_git/pmaports/device/community/linux-postmarketos-exynos5/
pmbootstrap checksum linux-postmarketos-exynos5
pmbootstrap build linux-postmarketos-exynos5 --arch armv7 --force
cd ~
pmbootstrap install --sdcard=/dev/sdb
lsblk'
lsblk
pmbootstrap install --sdcard=/dev/sdb
pmbootstrap log
lsblk
pmbootstrap shutdown
lsblk
pmbootstrap install --sdcard=/dev/sdb
sudo partprobe /dev/sdb
sleep 3
lsblk | grep sdb
pmbootstrap install --sdcard=/dev/sdb
heimdall detect
pmbootstrap flasher flash_kernel
ping 192.168.1.12
ip addr show | grep -A2 "enx"
sudo ip addr add 172.16.42.2/24 dev enxca2a550ec8c4
sudo ip link set enxca2a550ec8c4 up
ping -c 3 172.16.42.1
lsblk
pmbootstrap shutdown
lsblk
sudo mount /dev/sdb1 /mnt
ls -lh /mnt/exynos5420-klimt-lte.dtb
echo "==="
lsblk
sudo cp ~/Klimt-debug/klimt_display_v2.dtb /mnt/exynos5420-klimt-lte.dtb
sudo cp ~/Klimt-debug/klimt_display_v2.dtb /mnt/dtbs/exynos5420-klimt-lte.dtb
ls -lh /mnt/exynos5420-klimt-lte.dtb
sudo umount /mnt
echo "DTB oppdatert!"
sudo cp ~/Klimt-debug/klimt_display_v2.dtb     ~/y/chroot_rootfs_samsung-klimtlte/boot/exynos5420-klimt-lte.dtb
sudo cp ~/Klimt-debug/klimt_display_v2.dtb     ~/y/chroot_rootfs_samsung-klimtlte/boot/dtbs/exynos5420-klimt-lte.dtb
pmbootstrap flasher flash_kernel
heimdall detect
pmbootstrap flasher flash_kernel
lsblk
pmbootstrap log | tail -30
tail -30 ~/y/log.txt
mount | grep "chroot_rootfs_samsung"
sudo mount -o remount,exec ~/y/chroot_rootfs_samsung-klimtlte 2>/dev/null || sudo mount -o remount,exec $(mount | grep chroot_rootfs_samsung | awk '{print $3}' | head -1)
sudo mount -o remount,exec /home
pmbootstrap flasher flash_kernel
findmnt /home
echo "==="
sudo mount -o remount,exec /
echo "==="
lsblk
sudo mount -o remount,exec /dev/nvme0n1p3 /home
pmbootstrap flasher flash_kernel
pmbootstrap shutdown
mbootstrap config work /tmp/pmbootstrap_work
pmbootstrap config work /tmp/pmbootstrap_work
sudo cp -a ~/y/chroot_rootfs_samsung-klimtlte /tmp/pmbootstrap_work/chroot_rootfs_samsung-klimtlte 2>/dev/null
ls -lh ~/y/chroot_rootfs_samsung-klimtlte/boot/
abootimg -i ~/y/chroot_rootfs_samsung-klimtlte/boot/boot.img
tail -c 16 ~/y/chroot_rootfs_samsung-klimtlte/boot/boot.img | cat -v
heimdall detect
sudo heimdall flash     --BOOT ~/y/chroot_rootfs_samsung-klimtlte/boot/boot.img     --RECOVERY ~/y/chroot_rootfs_samsung-klimtlte/boot/boot.img
ping 192.168.1.12
history
ls -lh /mnt/exynos5420-klimt-lte.dtb
ip addr show | grep enx
watch -n 2 "ip addr show | grep enx"
sleep 30 && ping -c 5 192.168.1.12
heimdall detect
pmbootstrap flasher flash_kernel
sudo mount -o remount,rw /
mount | grep " / "
ping 192.168.1.12
dmesg | tail -30
ip addr show
# Gi grensesnittet riktig IP
sudo ip addr add 172.16.42.2/24 dev enx92e85a58eceb
sudo ip link set enx92e85a58eceb up
# Test forbindelsen
ping -c 3 172.16.42.1
ssh wils@172.16.42.1
ssh-keygen -f '/home/wils/.ssh/known_hosts' -R '172.16.42.1'
ssh wils@172.16.42.1
ssh wils@192.168.1.12
ssh wils@172.16.42.1
ssh wils@192.168.1.12
ssh wils@172.16.42.1
heimdall detect
ssh wils@192.168.1.12 "dmesg | grep -i 'fimd\|dsi\|dsim\|panel\|fb0\|drm\|display' | head -30"
ssh wils@192.168.1.12
ssh-keygen -f '/home/wils/.ssh/known_hosts' -R '192.168.1.12'
ssh wils@192.168.1.12
ping 192.168.1.12
ssh wils@192.168.1.12
heimdall detect
ping 192.168.1.12
ssh wils@192.168.1.12
ping 192.168.1.12
192.168.1.12
heimdall detect
ssh wils@192.168.1.12
heimdall detect
ping 192.168.1.12
ssh wils@192.168.1.12
ping 172.16.42.1
ssh-keygen -f '/home/wils/.ssh/known_hosts' -R '172.16.42.1'
ssh wils@172.16.42.1
ping 172.16.42.1
#
ip addr show
sudo ip addr add 172.16.42.2/24 dev enx2eb7c59209fc
ping -c 3 172.16.42.1
ssh-keygen -f '/home/wils/.ssh/known_hosts' -R '172.16.42.1'
ssh wils@172.16.42.1 "dmesg | grep -i 's6e3\|panel\|dsi\|fb0\|crtc\|fimd' | head -20"
ssh wils@172.16.42.1 "ls -lh /boot/"
ssh wils@172.16.42.1 "cat /sys/firmware/devicetree/base/soc/fimd@14400000/status 2>/dev/null; echo '==='; cat /sys/firmware/devicetree/base/soc/dsi@14500000/status 2>/dev/null"
# Bygg ny boot.img med vår display DTB
cat ~/y/chroot_rootfs_samsung-klimtlte/boot/vmlinuz     ~/Klimt-debug/klimt_display_v2.dtb > /tmp/zImage-display-dtb
abootimg --create /tmp/boot_display.img     -c "pagesize=2048"     -c "kerneladdr=0x10008000"     -c "ramdiskaddr=0x11000000"     -c "secondaddr=0x10f00000"     -c "tagsaddr=0x10000100"     -c "cmdline=quiet pmos_boot_uuid=789e55e8-6bc7-492f-a60c-9888e471e077 pmos_root_uuid=6047c356-65f5-44f5-9706-7407f33249d2 pmos_rootfsopts=defaults"     -k /tmp/zImage-display-dtb     -r ~/y/chroot_rootfs_samsung-klimtlte/boot/initramfs
echo -n "SEANDROIDENFORCE" >> /tmp/boot_display.img
ls -lh /tmp/boot_display.img
tail -c 16 /tmp/boot_display.img | cat -v
cat /tmp/boot_display.img | ssh wils@172.16.42.1 "sudo dd of=/dev/mmcblk0p9 bs=4096"
echo "Flash: $?"
ssh wils@172.16.42.1 "sudo reboot"
ssh wils@172.16.42.1
ping 172.16.42.1
ip addr show
sudo ip addr add 172.16.42.2/24 dev enxaebf967b44ac
ping -c 2 172.16.42.1
cat /tmp/boot_display.img | ssh wils@172.16.42.1 "sudo dd of=/dev/mmcblk0p9 bs=4096"
ssh wils@172.16.42.1 "sudo reboot"
ssh wils@172.16.42.1
cat /tmp/boot_display.img | ssh wils@172.16.42.1 "sudo dd of=/dev/mmcblk0p9 bs=4096"
ssh wils@172.16.42.1 "sudo reboot"
scp /tmp/boot_display.img wils@172.16.42.1:/tmp/
ssh wils@172.16.42.1 "echo 'ditt_passord' | sudo -S dd if=/tmp/boot_display.img of=/dev/mmcblk0p9 bs=4096 && sudo reboot"
ssh wils@172.16.42.1 "echo '1234' | sudo -S dd if=/tmp/boot_display.img of=/dev/mmcblk0p9 bs=4096 && sudo reboot"
ssh wils@172.16.42.1 "echo '1234' | sudo -S reboot"
ping 172.16.42.1
dytt
rep
rens
rep
arkiv
sudo dmesg
mem
clear
cat /proc/meminfo | grep -E "MemTotal|MemFree|MemAvailable|SwapTotal|SwapFree"
sudo cat /sys/class/drm/card1/device/mem_info_vram_used 2>/dev/null || echo "ikke tilgjengelig"
glxinfo -B 2>/dev/null | grep -E "Memory|Video"
systemctl list-units --type=service --state=running --no-pager
ps aux --sort=-%mem | head -20
cat /sys/class/drm/card1/device/gpu_busy_percent
amdgpu_top -d 1 2>/dev/null || echo "ikke installert"
uname -r
inxi -Fxz 2>/dev/null || neofetch 2>/dev/null
lspci | grep -E "VGA|Display|3D"
cat /proc/cmdline
sudo btrfs fi usage /
cargo install amdgpu_top
sudo apt install et apt-cache search amdgpu
sudo mount -o remount,rw /
sudo apt install et apt-cache search amdgpu
sudo rm /etc/apt/sources.list.d/google-chrome.sources.*.tmp
mount | grep " / "
sudo rm /etc/apt/sources.list.d/google-chrome.sources.*.tmp
lsattr /etc/apt/sources.list.d/google-chrome.sources.3333.tmp
ls -la /etc/apt/sources.list.d/google-chrome.sources.*.tmp
sudo rm /etc/apt/sources.list.d/google-chrome.sources.*.tmp
stat /etc/apt/sources.list.d/google-chrome.sources.3333.tmp
sudo rm /etc/apt/sources.list.d/google-chrome.sources.*.tmp
apt-cache search radeontop
sudo apt install radeontop
ls -la /etc/apt/sources.list.d/ | grep chrome
sudo rm -f /etc/apt/sources.list.d/google-chrome.sources.*.tmp
sudo lsattr /etc/apt/sources.list.d/google-chrome.sources.3333.tmp
sudo lsattr -d /etc/apt/sources.list.d/
sudo chattr -i /etc/apt/sources.list.d/google-chrome.sources.*.tmp
sudo rm -f /etc/apt/sources.list.d/google-chrome.sources.*.tmp
systemctl list-timers | grep -i chrome
sudo systemctl disable --now google-chrome-update.timer 2>/dev/null
sudo systemctl mask google-chrome-update.service 2>/dev/null
sudo find /home/wils -maxdepth 3 -not -path '*/\.*' | sort > ~/filstruktur.txt
cat ~/filstruktur.txt
cp /home/wils/Games/WARLORDLOTRO/Spillfiler/UserPreferences.ini    /home/wils/Games/WARLORDLOTRO/Spillfiler/UserPreferences.ini.bak
cat > ~/scripts/lotro-patch-ini.sh << 'EOF'
#!/bin/bash
INI="/home/wils/Games/WARLORDLOTRO/Spillfiler/UserPreferences.ini"
BAK="${INI}.bak"

# Backup
cp "$INI" "$BAK"
echo "✓ Backup lagret: $BAK"

# Patch innstillinger
sed -i \
  's/AnisotropicQuality=16/AnisotropicQuality=8/' \
  's/TextureDetail=VeryHigh/TextureDetail=High/' \
  's/ModelDetail=UltraHigh/ModelDetail=High/' \
  's/ObjectDrawDistance=UltraHigh/ObjectDrawDistance=High/' \
  's/LandscapeDrawDistance=VeryHigh/LandscapeDrawDistance=High/' \
  's/SurfaceReflections=High/SurfaceReflections=Low/' \
  's/AmbientOcclusion=True/AmbientOcclusion=False/' \
  's/MemoryUsage=1.00/MemoryUsage=0.75/' \
  's/ShadowMapQuality=2/ShadowMapQuality=1/' \
  's/LandscapeLightingQuality=High/LandscapeLightingQuality=Medium/' \
  's/StencilShadows=High/StencilShadows=Medium/' \
  's/InteractiveWater=High/InteractiveWater=Medium/' \
  's/AtmosphericsDetail=High/AtmosphericsDetail=Medium/' \
  "$INI"

echo "✓ INI patchet!"
echo ""
echo "--- Verifisering ---"
grep -E "Anisotropic|TextureDetail|ModelDetail|ObjectDraw|LandscapeDraw|SurfaceRef|AmbientOcc|MemoryUsage|ShadowMap|LandscapeLight|StencilShadow|InteractiveWater|Atmospherics" "$INI"
EOF

chmod +x ~/scripts/lotro-patch-ini.sh
~/scripts/lotro-patch-ini.sh
sudo ~/scripts/lotro-patch-ini.sh
INI="/home/wils/Games/WARLORDLOTRO/Spillfiler/UserPreferences.ini"
cp "$INI" "${INI}.bak" && echo "✓ Backup OK"
clear
sed -i 's/AnisotropicQuality=16/AnisotropicQuality=8/;s/TextureDetail=VeryHigh/TextureDetail=High/;s/ModelDetail=UltraHigh/ModelDetail=High/;s/ObjectDrawDistance=UltraHigh/ObjectDrawDistance=High/;s/LandscapeDrawDistance=VeryHigh/LandscapeDrawDistance=High/;s/SurfaceReflections=High/SurfaceReflections=Low/;s/AmbientOcclusion=True/AmbientOcclusion=False/;s/MemoryUsage=1.00/MemoryUsage=0.75/;s/ShadowMapQuality=2/ShadowMapQuality=1/;s/LandscapeLightingQuality=High/LandscapeLightingQuality=Medium/;s/StencilShadows=High/StencilShadows=Medium/;s/InteractiveWater=High/InteractiveWater=Medium/;s/AtmosphericsDetail=High/AtmosphericsDetail=Medium/' "$INI" && echo "✓ Patchet!"
grep -E "Anisotropic|TextureDetail|ModelDetail|ObjectDraw|LandscapeDraw|SurfaceRef|AmbientOcc|MemoryUsage|ShadowMap|LandscapeLight|StencilShadow|InteractiveWater|Atmospherics" "$INI"
cp "$INI" "${INI}.bak" && echo "✓ Backup OK"
INI="/home/wils/Games/WARLORDLOTRO/Spillfiler/UserPreferences.ini"
cat > ~/Skrivebord/LotRO-Start.desktop << 'EOF'
[Desktop Entry]
Name=LotRO Gaming Start
Comment=Klargjør system og start LotRO på Radeon 780M
Type=Application
Exec=bash -c '~/scripts/gaming-start.sh && env WINEPREFIX=/home/wils/.wine_lotro MANGOHUD=1 WINE_FULLSCREEN_FSR=1 WINE_FULLSCREEN_FSR_STRENGTH=2 WINEDEBUG=-all MESA_VK_WSI_PRESENT_MODE=mailbox STAGING_SHARED_MEMORY=1 wine /home/wils/Games/WARLORDLOTRO/Spillfiler/LotroLauncher.exe'
Icon=applications-games
Terminal=false
StartupNotify=false
EOF

chmod +x ~/Skrivebord/LotRO-Start.desktop
cat > ~/Skrivebord/LotRO-Stop.desktop << 'EOF'
[Desktop Entry]
Name=LotRO Gaming Stop
Comment=Gjenopprett system etter LotRO
Type=Application
Exec=bash -c '~/scripts/gaming-stop.sh'
Icon=system-shutdown
Terminal=true
StartupNotify=false
EOF

chmod +x ~/Skrivebord/LotRO-Stop.desktop
sync
rm ~/Skrivebord/LotRO-Start.desktop ~/Skrivebord/LotRO-Stop.desktop
cat > ~/Skrivebord/LotRO-Start.desktop << 'EOF'
[Desktop Entry]
Version=1.0
Type=Application
Name=LotRO Gaming Start
Comment=Klargjør system og start LotRO på Radeon 780M
Icon=applications-games
Exec=bash -c "~/scripts/gaming-start.sh && env WINEPREFIX=/home/wils/.wine_lotro MANGOHUD=1 WINE_FULLSCREEN_FSR=1 WINE_FULLSCREEN_FSR_STRENGTH=2 WINEDEBUG=-all STAGING_SHARED_MEMORY=1 wine /home/wils/Games/WARLORDLOTRO/Spillfiler/LotroLauncher.exe"
Terminal=false
StartupNotify=false
EOF

chmod +x ~/Skrivebord/LotRO-Start.desktop
cat > ~/Skrivebord/LotRO-Stop.desktop << 'EOF'
[Desktop Entry]
Version=1.0
Type=Application
Name=LotRO Gaming Stop
Comment=Gjenopprett system etter LotRO
Icon=system-shutdown
Exec=bash -c "~/scripts/gaming-stop.sh"
Terminal=true
StartupNotify=false
EOF

chmod +x ~/Skrivebord/LotRO-Stop.desktop
rm ~/Skrivebord/LotRO-Start.desktop ~/Skrivebord/LotRO-Stop.desktop
cat > ~/Skrivebord/LotRO-Start.desktop << 'EOF'
[Desktop Entry]
Version=1.0
Type=Application
Name=LotRO Gaming Start
Comment=Klargjør system og start LotRO på Radeon 780M
Icon=applications-games
Exec=env WINEPREFIX=/home/wils/.wine_lotro MANGOHUD=1 WINE_FULLSCREEN_FSR=1 WINE_FULLSCREEN_FSR_STRENGTH=2 WINEDEBUG=-all STAGING_SHARED_MEMORY=1 wine /home/wils/Games/WARLORDLOTRO/Spillfiler/LotroLauncher.exe
Terminal=false
StartupNotify=false
EOF

chmod +x ~/Skrivebord/LotRO-Start.desktop
cat > ~/Skrivebord/LotRO-Stop.desktop << 'EOF'
[Desktop Entry]
Version=1.0
Type=Application
Name=LotRO Gaming Stop
Comment=Gjenopprett system etter LotRO
Icon=system-shutdown
Exec=bash -c "/home/wils/scripts/gaming-stop.sh"
Terminal=true
StartupNotify=false
EOF

chmod +x ~/Skrivebord/LotRO-Stop.desktop
ls
cd Skrivebord
ls
Lotro-Start.Desktop
cd ..
ls
~
cat ~/Skrivebord/LotRO_Warlord.desktop
cp ~/Skrivebord/LotRO_Warlord.desktop ~/Skrivebord/LotRO-Start.desktop
cp ~/Skrivebord/LotRO_Warlord.desktop ~/Skrivebord/LotRO-Stop.desktop
sed -i 's/Name=LotRO Warlord Edition/Name=LotRO Gaming Start/' ~/Skrivebord/LotRO-Start.desktop
sed -i 's|Exec=.*|Exec=env WINEPREFIX=/home/wils/.wine_lotro MANGOHUD=1 WINE_FULLSCREEN_FSR=1 WINE_FULLSCREEN_FSR_STRENGTH=2 WINEDEBUG=-all STAGING_SHARED_MEMORY=1 wine /home/wils/Games/WARLORDLOTRO/Spillfiler/LotroLauncher.exe|' ~/Skrivebord/LotRO-Start.desktop
sed -i 's/Name=LotRO Warlord Edition/Name=LotRO Gaming Stop/' ~/Skrivebord/LotRO-Stop.desktop
sed -i 's|Exec=.*|Exec=bash -c "/home/wils/scripts/gaming-stop.sh"|' ~/Skrivebord/LotRO-Stop.desktop
sed -i 's/Terminal=false/Terminal=true/' ~/Skrivebord/LotRO-Stop.desktop
chmod +x ~/Skrivebord/LotRO-Start.desktop ~/Skrivebord/LotRO-Stop.desktop
htop
ps aux --sort=-%mem | grep chrome | awk '{sum += $6} END {print sum/1024 " MB Chrome totalt"}'
nano ~/scripts/gaming-start.sh
~/scripts/gaming-start.sh
sensors
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
powerprofilesctl get
powerprofilesctl set performance && cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
cat > ~/scripts/gaming-start.sh << 'EOF'
#!/bin/bash
# Drep Chrome
pkill -f chrome && echo "✓ Chrome lukket" || echo "Chrome kjørte ikke"
sleep 1

# Sett performance
powerprofilesctl set performance
echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor > /dev/null
echo "✓ CPU satt til performance"

# Suspend compositor
qdbus6 org.kde.KWin /Compositor suspend
echo "✓ KWin compositor suspendert"

# Tøm cache
echo 3 | sudo tee /proc/sys/vm/drop_caches > /dev/null
echo "✓ RAM-cache tømt"

# Vis status
echo "--- Status ---"
cat /sys/class/drm/card1/device/mem_info_vram_used | awk '{print "VRAM: " $1/1024/1024 " MB"}'
free -h | grep Mem | awk '{print "RAM ledig: " $7}'
EOF

chmod +x ~/scripts/gaming-start.sh
cat > ~/scripts/gaming-stop.sh << 'EOF'
#!/bin/bash
powerprofilesctl set balanced
echo balanced | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor > /dev/null
echo "✓ CPU tilbake til balanced"

qdbus6 org.kde.KWin /Compositor resume
echo "✓ KWin compositor gjenopprettet"

echo "--- GPU-minne nå ---"
cat /sys/class/drm/card1/device/mem_info_vram_used | awk '{print "VRAM: " $1/1024/1024 " MB"}'
EOF

chmod +x ~/scripts/gaming-stop.sh
cat ~/scripts/gaming-start.sh | head -5
nano ~/scripts/gaming-start.sh
printf '#!/bin/bash\npkill -f chrome && echo "Chrome lukket" || echo "Chrome kjørte ikke"\nsleep 1\npowerprofilesctl set performance\necho performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor > /dev/null\necho "CPU: performance"\nqdbus6 org.kde.KWin /Compositor suspend\necho "Compositor suspendert"\necho 3 | sudo tee /proc/sys/vm/drop_caches > /dev/null\necho "Cache tømt"\nfree -h | grep Mem | awk '"'"'{print "RAM ledig: " $7}'"'"'\n' > ~/scripts/gaming-start.sh
chmod +x ~/scripts/gaming-start.sh
cat ~/scripts/gaming-start.sh
printf '#!/bin/bash\npowerprofilesctl set balanced\necho balanced | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor > /dev/null\necho "CPU: balanced"\nqdbus6 org.kde.KWin /Compositor resume\necho "Compositor gjenopprettet"\ncat /sys/class/drm/card1/device/mem_info_vram_used | awk '"'"'{print "VRAM: " $1/1024/1024 " MB"}'"'"'\n' > ~/scripts/gaming-stop.sh
chmod +x ~/scripts/gaming-stop.sh
~/scripts/gaming-start.sh
qdbus6 org.kde.KWin /KWin org.kde.KWin.suspend 2>/dev/null || qdbus6 org.kde.KWin /Compositor org.kde.kwin.Compositor.suspend 2>/dev/null || echo "Compositor: manuelt deaktivert via innstillinger"
echo "$USER ALL=(ALL) NOPASSWD: /usr/bin/tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor, /usr/bin/tee /proc/sys/vm/drop_caches" | sudo tee /etc/sudoers.d/gaming
sudo chattr -i /etc/sudoers.d/ 2>/dev/null
echo "$USER ALL=(ALL) NOPASSWD: /usr/bin/tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor, /usr/bin/tee /proc/sys/vm/drop_caches" | sudo tee /etc/sudoers.d/gaming
sudo chattr +i /etc/sudoers.d/gaming
mount | grep -E "^/dev.*on /etc|^/dev.*on / "
# Sjekk om vi kan skrive uten sudo
ls -la /proc/sys/vm/drop_caches
ls -la /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
# Gjør / midlertidig skrivbar
sudo mount -o remount,rw /
echo "$USER ALL=(ALL) NOPASSWD: /usr/bin/tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor, /usr/bin/tee /proc/sys/vm/drop_caches" | sudo tee /etc/sudoers.d/gaming
sudo chmod 440 /etc/sudoers.d/gaming
# Sett tilbake til read-only
sudo mount -o remount,ro /
echo "✓ Ferdig!"
sudo cat /etc/sudoers.d/gaming
sudo visudo -c && echo "✓ Sudoers syntax OK"
echo 3 | sudo tee /proc/sys/vm/drop_caches && echo "✓ Ingen passord!"
~/scripts/gaming-start.sh
printf '#!/bin/bash\npkill -f chrome && echo "Chrome lukket" || echo "Chrome kjørte ikke"\npowerprofilesctl set performance\necho performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor > /dev/null\necho "CPU: performance"\necho 3 | sudo tee /proc/sys/vm/drop_caches > /dev/null\necho "Cache tømt"\nfree -h | grep Mem | awk '"'"'{print "RAM ledig: " $7}'"'"'\necho "Starter LotRO..."\nenv WINEPREFIX=/home/wils/.wine_lotro MANGOHUD=1 WINE_FULLSCREEN_FSR=1 WINE_FULLSCREEN_FSR_STRENGTH=2 WINEDEBUG=-all STAGING_SHARED_MEMORY=1 wine /home/wils/Games/WARLORDLOTRO/Spillfiler/LotroLauncher.exe &\n' > ~/scripts/gaming-start.sh
chmod +x ~/scripts/gaming-start.sh
cat ~/scripts/gaming-start.sh
sed -i 's|Exec=.*|Exec=bash -c "~/scripts/gaming-start.sh"|' ~/Skrivebord/LotRO-Start.desktop 2>/dev/null || sed -i 's|Exec=.*|Exec=bash -c "~/scripts/gaming-start.sh"|' ~/Skrivebord/LotRO_Warlord.desktop
radeontop
ps -all
btop
rep
ps aux | grep -E "ffmpeg|gsr|screen"
sudo mount -o remount,rw /
sudo apt install falkon
sudo mount -o remount,ro /
mkdir -p ~/.config/falkon
cat > ~/.config/falkon/userContent.css << 'EOF'
/* Claude bakgrunn - Sjøgrønn */
html, body, main,
[class*="bg-bg-000"],
[class*="bg-white"] {
    background-color: #1a3a3a !important;
}
EOF

cat > ~/.config/falkon/userContent.css << 'EOF'
:root {
    --bg-000: #1e4d5a !important;
    --bg-100: #1a4550 !important;
}
body {
    background-color: #1e4d5a !important;
}
EOF

~sync
sudo apt install simplescreenrecorder
sudo apt remove simplescreenrecorder
vainfo 2>/dev/null | grep -i "h264\|hevc\|av1"
cat /sys/class/drm/card1/device/hwmon/hwmon*/name
radeontop
sudo grub-update
sudo update-grub
dytt
arkiv
rep
rens
arkiv
dytt
rep
arkiv
dmesg
sudo dmesg
gpu-screen-recorder -w portal -c mp4 -k h264 -ac opus -f 30 -cursor yes -cr full -encoder gpu -q medium -o ~/Videoklipp/lotro-$(date +%Y%m%d_%H%M%S).mp4
sudo gpu-screen-recorder -w portal -c mp4 -k h264 -ac opus -f 30 -cursor yes -cr full -encoder gpu -q medium -o ~/Videoklipp/lotro-$(date +%Y%m%d_%H%M%S).mp4
which gpu-screen-rec 2>/dev/null || find /usr /home /opt -name "gpu-screen-rec*" 2>/dev/null | head -5
flatpak run com.dec05eba.gpu_screen_recorder -w portal -c mp4 -k h264 -ac opus -f 30 -cursor yes -cr full -encoder gpu -q medium -o ~/Videoklipp/lotro-$(date +%Y%m%d_%H%M%S).mp4
echo "alias gsr='flatpak run com.dec05eba.gpu_screen_recorder'" >> ~/.bash_aliases
source ~/.bash_aliases
cat > ~/scripts/vram-watcher.sh << 'EOF'
#!/bin/bash
while true; do
    sleep 1800
    VRAM=$(cat /sys/class/drm/card1/device/mem_info_vram_used)
    if [ $VRAM -gt 450000000 ]; then
        echo 3 | sudo tee /proc/sys/vm/drop_caches > /dev/null
        echo "$(date): VRAM høy - cache tømt" >> ~/Warlord-Logs-Private/vram-watcher.log
    fi
done
EOF

chmod +x ~/scripts/vram-watcher.sh
~/scripts/vram-watcher.sh &
cd scripts
øs
ls
nano gaming-start.sh
nano gaming-stop.sh
source ~/.bashrc
arkiv
dytt
arkiv
btop
rep
rens
arkiv
rens
arkiv
dytt
rep
sudo dmesg
qdbus6 org.kde.KWin /Compositor suspend
qdbus6 org.kde.KWin /Compositor resume
qdbus6 org.kde.KWin /Compositor org.kde.kwin.Compositor.isActive
kwin_wayland --replace &
~/scripts/gaming-stop.sh
shutdown now
btop
history
btopp
btop
rep
arkiv
rep
exit
rep
re
rep
clear
armiv
arkiv
sudo dmesg
radeontop
sudo mount -o remount,rw /
mount | grep " / "
rens
sudo nvidia-smi --gpu-reset -i 0
dmesg -N 20
dmesg -n 20
dmesg 20
dmesg
sudo dmesg -n=20
sudo dmesg -n =20
sudo dmesg -n
sudo dmesg -20
sudo dmesg 
mount | grep " / "
sudo mount -o remount,ro /
mount | grep " / "
sudo mount -o remount,ro /
mount | grep " / "
sudo sysctl vm.swappiness=10
echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.d/99-amdgpu.conf
sudo modprobe zram
sudo apt install zram-config
sudo modprobe zram
sudo nano /etc/default/grub
sudo update-grub
cat /sys/kernel/debug/dri/0/amdgpu_gtt_mm
sudo cat /sys/kernel/debug/dri/0/amdgpu_gtt_mm
sudo cat /sys/kernel/debug/dri/*/amdgpu_gtt_mm
DXVK_CONFIG_FILE=~/.dxvk.conf
nano ~/.dxvk.conf
dxvk.maxChunkSize = 128
dxvk.maxShaderCompilerThreads = 2
echo "options amdgpu vm_size=256" | sudo tee /etc/modprobe.d/amdgpu.conf
sudo update-initramfs -u
sudo nano /etc/cron.d/drop-cache
watch -n 2 'cat /sys/kernel/debug/dri/0/amdgpu_gtt_mm 2>/dev/null; free -h; cat /proc/meminfo | grep -E "MemFree|Cached|SwapFree"'
rep
arkiv
clear
sudo dmesg
btop
sudo update-grub
shutdown now
dytt
sudo dmesg
cat ~/.config/MangoHud/MangoHud.conf
cat /proc/cmdline
arkiv
rens
arkiv
sudo dmesg
history
free -h
cat /sys/class/drm/card1/device/mem_info_vram_used | awk '{print "VRAM: " $1/1024/1024 " MB"}'
cat /sys/class/drm/card1/device/mem_info_gtt_used | awk '{print "GTT: " $1/1024/1024 " MB"}'
sudo cat /sys/class/drm/card1/device/mem_info_gtt_used | awk '{print "GTT: " $1/1024/1024 " MB"}'
find /sys/class/drm -name "mem_info_vram_used" 2>/dev/null
ls /sys/class/drm/
cat /sys/class/drm/card0/device/mem_info_vram_used | awk '{print "VRAM: " $1/1024/1024 " MB"}'
cat /sys/class/drm/card0/device/mem_info_gtt_used | awk '{print "GTT: " $1/1024/1024 " MB"}'
sed -i 's/card1/card0/g' ~/scripts/gaming-start.sh ~/scripts/gaming-stop.sh ~/scripts/vram-watcher.sh 2>/dev/null
echo "✓ Scripts oppdatert til card0"
CARDPATH=$(find /sys/class/drm/card*/device -name "mem_info_vram_used" 2>/dev/null | head -1 | xargs dirname)
echo "GPU path: $CARDPATH"
journalctl -b -1 --priority=err --no-pager | tail -30
journalctl -b -1 | grep -E "killed|crash|oom|segfault" | tail -20
dmesg | grep -E "oom|killed|segfault" | tail -10
journalctl -b -1 | grep -i "oom" | tail -10
sudo dmesg | grep -E "oom|killed|segfault" | tail -10
ls ~/.cache/kcrash-metadata/ 2>/dev/null
ls ~/.local/share/drkonqi/ 2>/dev/null
journalctl -b -1 | grep -i "plasma\|kwin\|wayland" | grep -i "error\|fail\|crash" | tail -20
# Legg dette som alias
alias stoprec='pkill -SIGINT -f gpu-screen-recorder && echo "Opptak stoppet forsiktig"'
echo "alias stoprec='pkill -SIGINT -f gpu-screen-recorder'" >> ~/.bash_aliases
source ~/.bash_aliases
cat > ~/Skrivebord/LotRO-StopRec.desktop << 'EOF'
[Desktop Entry]
Version=1.0
Type=Application
Name=Stopp Opptak
Comment=Stopp GPU Screen Recorder forsiktig
Icon=media-record
Exec=bash -c "pkill -SIGINT -f gpu-screen-rec && sleep 2 && echo Opptak stoppet"
Terminal=true
StartupNotify=false
EOF

chmod +x ~/Skrivebord/LotRO-StopRec.desktop
cat > ~/Skrivebord/LotRO-StopRec.desktop << 'EOF'
[Desktop Entry]
Version=1.0
Type=Application
Name=Stopp Opptak
Comment=Stopp GPU Screen Recorder forsiktig via SIGINT
Icon=media-record
Exec=bash -c "pkill -SIGINT -f gpu-screen-rec && sleep 1 && echo 'Opptak stoppet OK' || echo 'Ingen opptak kjørte'"
Terminal=true
StartupNotify=false
EOF

chmod +x ~/Skrivebord/LotRO-StopRec.desktop
sudo grub-update
sudo update-grub
sudo mount -o remount,rw /
sudo update-grub
cp ~/Skrivebord/LotRO-Stop.desktop ~/Skrivebord/LotRO-StopRec.desktop
sed -i 's/Name=LotRO Gaming Stop/Name=Stopp Opptak/' ~/Skrivebord/LotRO-StopRec.desktop
sed -i 's|Exec=.*|Exec=bash -c "pkill -SIGINT -f gpu-screen-rec \&\& sleep 1 \&\& echo Opptak stoppet OK"|' ~/Skrivebord/LotRO-StopRec.desktop
sed -i 's/Terminal=false/Terminal=true/' ~/Skrivebord/LotRO-StopRec.desktop
chmod +x ~/Skrivebord/LotRO-StopRec.desktop
SUDO cp ~/Skrivebord/LotRO-Stop.desktop ~/Skrivebord/LotRO-StopRec.desktop
sed -i 's/Name=LotRO Gaming Stop/Name=Stopp Opptak/' ~/Skrivebord/LotRO-StopRec.desktop
sed -i 's|Exec=.*|Exec=bash -c "pkill -SIGINT -f gpu-screen-rec \&\& sleep 1 \&\& echo Opptak stoppet OK"|' ~/Skrivebord/LotRO-StopRec.desktop
sed -i 's/Terminal=false/Terminal=true/' ~/Skrivebord/LotRO-StopRec.desktop
chmod +x ~/Skrivebord/LotRO-StopRec.desktop
sudo cp ~/Skrivebord/LotRO-Stop.desktop ~/Skrivebord/LotRO-StopRec.desktop
sed -i 's/Name=LotRO Gaming Stop/Name=Stopp Opptak/' ~/Skrivebord/LotRO-StopRec.desktop
sed -i 's|Exec=.*|Exec=bash -c "pkill -SIGINT -f gpu-screen-rec \&\& sleep 1 \&\& echo Opptak stoppet OK"|' ~/Skrivebord/LotRO-StopRec.desktop
sed -i 's/Terminal=false/Terminal=true/' ~/Skrivebord/LotRO-StopRec.desktop
chmod +x ~/Skrivebord/LotRO-StopRec.desktop
e cat ~/Skrivebord/LotRO-StopRec.desktop
sudo apt install e-wrapper
cp ~/Skrivebord/LotRO-Stop.desktop ~/Skrivebord/LotRO-StopRec.desktop
sed -i 's/Name=LotRO Gaming Stop/Name=Stopp Opptak/' ~/Skrivebord/LotRO-StopRec.desktop
sed -i 's|Exec=.*|Exec=bash -c "pkill -SIGINT -f gpu-screen-rec \&\& sleep 1 \&\& echo Opptak stoppet OK"|' ~/Skrivebord/LotRO-StopRec.desktop
sed -i 's/Terminal=false/Terminal=true/' ~/Skrivebord/LotRO-StopRec.desktop
chmod +x ~/Skrivebord/LotRO-StopRec.desktop
cat ~/Skrivebord/LotRO-StopRec.desktop
ls ~/Skrivebord/
cp ~/Skrivebord/LotRO_Warlord.desktop ~/Skrivebord/LotRO-StopRec.desktop
sed -i 's/Name=LotRO Warlord Edition/Name=Stopp Opptak/' ~/Skrivebord/LotRO-StopRec.desktop
sed -i 's|Exec=.*|Exec=bash -c "pkill -SIGINT -f gpu-screen-rec \&\& sleep 1 \&\& echo Opptak stoppet OK"|' ~/Skrivebord/LotRO-StopRec.desktop
sed -i 's/Terminal=false/Terminal=true/' ~/Skrivebord/LotRO-StopRec.desktop
chmod +x ~/Skrivebord/LotRO-StopRec.desktop
cat ~/Skrivebord/LotRO-StopRec.desktop
arkiv
sed -i 's/Name\[nb_NO\]=LotRO Warlord Edition/Name[nb_NO]=Stopp Opptak/' ~/Skrivebord/LotRO-StopRec.desktop
arkiv
dytt
arkiv
dytt
sudo grub-update
sudo update-grub
exit
watch -n 2 'cat /sys/kernel/debug/dri/0/amdgpu_gtt_mm 2>/dev/null; free -h; cat /proc/meminfo | grep -E "MemFree|Cached|SwapFree"'
radeontop
btop
sudo update-grub
exit
radeontop
btop
watch -n 2 'cat /sys/kernel/debug/dri/0/amdgpu_gtt_mm 2>/dev/null; free -h; cat /proc/meminfo | grep -E "MemFree|Cached|SwapFree"'
mount | grep " / "
rep
sudo dmesg
grep -r "gttsize" /etc/modprobe.d/ /etc/default/grub /boot/grub/grub.cfg 2>/dev/null
sudo nano /etc/modprobe.d/amdgpu.conf
sudo nano /etc/modprobe.d/amdgpu.confsudo mount -o remount,rw /
sudo mount -o remount,rw /
mount | grep " / "
sudo nano /etc/modprobe.d/amdgpu.conf
sudo nano /etc/default/grub
sudo update-grub
sudo update-initramfs -u
sudo shutdown now
df -h
sudo dmesg | grep -i "gtt\|ttm\|unusual"
grep -r "gttsize\|pages_limit" /etc/modprobe.d/ 2>/dev/null
cat /proc/cmdline
dytt
sudo update-grub
sudo mount -o remount,rw /
sudo update-grub
rep
rens
iotop
root iotop
sudo iotop
watch -n 1 grep -e Dirty -e Writeback /proc/meminfo
btop
watch -n 2 'cat /sys/kernel/debug/dri/0/amdgpu_gtt_mm 2>/dev/null; free -h; cat /proc/meminfo | grep -E "MemFree|Cached|SwapFree"'
temp
rf -h
df -h
men
if a
ip a
dytt
rep
rens
arkiv
rens
sudo sed -i 's/GRUB_TIMEOUT=.*/GRUB_TIMEOUT=5/' /etc/default/grub && sudo update-grub
sudo mount -o remount,rw /
sudo sed -i 's/GRUB_TIMEOUT=.*/GRUB_TIMEOUT=5/' /etc/default/grub && sudo update-grub
sudo mount -o remount,ro /
pgrep -a vram-watcher
sudo apt purge net-tools ethtool -y && sudo apt autoremove -y
sudo apt purge device-tree-compiler abootimg heimdall-flash -y && sudo apt autoremove -y
sudo timeshift --list
sudo rm /etc/apt/sources.list.d/google-chrome.sources.16602.tmp
sudo rm /etc/apt/sources.list.d/google-chrome.sources.31143.tmp
sudo rm /etc/apt/sources.list.d/google-chrome.sources.16602.tmp
sudo timeshift --delete --snapshot '2026-03-25_13-45-40'
sudo timeshift --delete --snapshot '2026-03-26_00-15-11'
sudo timeshift --delete --snapshot '2026-03-26_00-50-13'
sudo timeshift --delete --snapshot '2026-03-26_09-08-52'
sudo apt update
sudo apt autoremove
sudo apt autoclean
mount | grep " / "
sudo lsattr /etc/apt/sources.list.d/google-chrome.sources.16602.tmp
sudo lsattr /etc/apt/sources.list.d/google-chrome.sources.31143.tmp
sudo chattr -i /etc/apt/sources.list.d/google-chrome.sources.16602.tmp
sudo chattr -i /etc/apt/sources.list.d/google-chrome.sources.31143.tmp
sudo rm /etc/apt/sources.list.d/google-chrome.sources.16602.tmp
sudo rm /etc/apt/sources.list.d/google-chrome.sources.31143.tmp
sudo chattr -i /etc/apt/sources.list.d/google-chrome.sources.16602.tmp
sudo lsattr /etc/apt/sources.list.d/google-chrome.sources.16602.tmp
sudo lsattr /etc/apt/sources.list.d/google-chrome.sources.31143.tmp
sudo systemctl unmask packagekit.service
sudo apt upgrade -y
sudo apt autoclean
sudo apt autoremove
sudo lsattr /etc/apt/sources.list.d/google-chrome.sources.16602.tmp
sudo lsattr /etc/apt/sources.list.d/google-chrome.sources.31143.tmp
dmesg
sudo dmesg
journalctl
sudo journalctl -b | grep "apparmor.*DENIED" | grep -v "^--"
ls -la ~/obsidian\ key\ pair\ -\ wils* 2>/dev/null || echo "Filen finnes ikke"
sudo journalctl -b --since "07:19" --until "07:21" | grep -i "gs\|obsidian\|pdf" | head -20
ls -la ~/"obsidian key pair - wils" 2>/dev/null || echo "Filen finnes ikke"
sudo journalctl -b --since "07:19" --until "07:21" | grep -v "kernel\|audit" | head -30
mv ~/"obsidian key pair - wils" ~/"obsidian key pair - wils.vault"
file ~/"obsidian key pair - wils"
sudo apt purge sysstat -y
dytt
radeontop
watch -n 2 'cat /sys/kernel/debug/dri/0/amdgpu_gtt_mm 2>/dev/null; free -h; cat /proc/meminfo | grep -E "MemFree|Cached|SwapFree"'
btop
sudo iotop
ping 192.168.1.12
sudo mount -o remount,rw /
sudo apt instll iputils-ping
sudo apt install iputils-ping
sudo apt install inetutils
ping 192.168.1.12
sudo apt install iputils-ping
ping 192.168.1.12
sudo apt install iputils-ping
sudo apt update
ping 192.168.1.12
sudo apt install inetutils-ping
sudo apt update && sudo apt -fix-missing
sudo apt -fix-missing
sudo apt --fix-missing
sudo apt full-upgrade
nmcli
sudo apt install network-manager
ip a
nmcli
sudo apt install network-manager
shutdoen now
shutdown now
ping 192.168.1.12
172.16.42.1
ping 172.16.42.1
rep
rens
sudo apt install iputils-ping
dytt
journalctl -b -1 --no-pager | grep -iE "network|NetworkManager|wlan|eth|enp|wlp|failed|error|removed" | head -80
cat /var/lib/NetworkManager/NetworkManager.state
sudo cat /var/lib/NetworkManager/NetworkManager.state
nmcli radio wifi on
nmcli radio
cat /var/lib/NetworkManager/NetworkManager.state
nmcli device status
ip addr show eno1
ip addr show enxe04f43915224
sudo journalctl -b -1 --no-pager | grep -iE "eno1|enx|carrier|dhcp|address|NM_DISPAT" | head -50
sudo journalctl -b -1 --no-pager | sed -n '4180,4250p'
sudo journalctl --list-boots
date
timedatectl status
nmcli connection show
sudo timeshift --create --comments "Før NM-opprydding eno1 profil fix" --tags D
sudo timeshift --list
sudo mount -o remount,rw /
wils@WARLORD:~$ sudo timeshift --list
E: Error opening file “/var/log/timeshift/2026-04-29_22-25-24_list-snapshots.log”: Read-only file system
Mounted '/dev/nvme0n1p3' at '/run/timeshift/4224/backup'
btrfs: Quotas are not enabled
Device : /dev/nvme0n1p3
UUID   : e911b271-2474-4c19-84b7-90a32abddf95
Path   : /run/timeshift/4224/backup
Mode   : BTRFS
Status : OK
17 snapshots, 904.5 GB free
Num     Name                 Tags  Description                                                                              
------------------------------------------------------------------------------
0    >  2026-04-07_11-08-16  O     Immuticed MED korrekt SlimBlade config                                                   
1    >  2026-04-10_16-09-15  O     Fredag 10/4-2026 Satt opp GitHub-YouTube-LotRO logging!                                  
2    >  2026-04-10_19-55-51  O     Clean-Immutized_Linux-Kubuntu+Obsidian+GitHub+LotRO+YouTube+Scripted-Publishing- Studio  
3    >  2026-04-10_21-00-01  D     Perfeksjonert alt oppsett og ryddet i småting og dokumentert alt i Obsidian!            
4    >  2026-04-11_13-04-37  O     GOLDEN VAULT - Perfeksjonert Grub Menyen til estetisk vakkert!                           
5    >  2026-04-15_00-59-06  O     Klimtlte installert med pmBoot mangler display lys                                       
6    >  2026-04-24_20-04-56  O     Fin justert grafikk oppsett i LotRO og definert video settings                           
7    >  2026-04-25_14-00-01  D                                                                                              
8    >  2026-04-26_14-00-01  D                                                                                              
9    >  2026-04-27_14-00-01  D                                                                                              
10   >  2026-04-28_14-00-01  D                                                                                              
11   >  2026-04-28_21-05-05  O     Etter script og fiks for å unngå GPU Recorder HENG                                     
12   >  2026-04-28_21-36-28  O     Scripter GPURecorder til å avslutte opptaket forsiktig med egen Desktop.Shortcut        
13   >  2026-04-28_21-39-08  O                                                                                              
14   >  2026-04-29_06-33-29  O     Perfektsjonert Warlord med UI save LAYOUT i LotRO                                        
15   >  2026-04-29_14-00-01  D                                                                                              
16   >  2026-04-29_22-25-17  D     Før NM-opprydding eno1 profil fix                                                       
wils@WARLORD:~$ sudo mount -o remount,rw /
wils@WARLORD:~$ 
nmcli connection modify ead179bf-bc6b-4cdc-bcc7-b25d944b3e22   connection.id "WARLORD-LAN"   connection.interface-name eno1   connection.autoconnect yes   ipv4.method auto
mount -o remount,rw /
sudo mount -o remount,rw /
findmnt /etc
findmnt / 
mount | grep -E "nvme|sda|btrfs"
sudo btrfs subvolume list /run/timeshift/4224/backup | grep -E "^ID 256|@ $|/@$"
sudo btrfs subvolume list / | grep -E " @$| /@$"
cat /proc/cmdline
sudo mount -o subvol=@ /dev/nvme0n1p3 /mnt
sudo cp /etc/NetworkManager/system-connections/*   /mnt/etc/NetworkManager/system-connections/
ls /mnt/etc/NetworkManager/system-connections/
ls /mnt/etc/NetworkManager/
ls /etc/NetworkManager/
find /etc/NetworkManager/ -type f 2>/dev/null
find /run/NetworkManager/ -type f 2>/dev/null
ls /etc/netplan/
cat /etc/netplan/*.yaml
ls /mnt/etc/netplan/
sudo cat /mnt/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
sudo cat /mnt/etc/netplan/01-network-manager-all.yaml
sudo tee /mnt/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml << 'EOF'
network:
  version: 2
  ethernets:
    NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22:
      renderer: NetworkManager
      match:
        macaddress: "68:1d:ef:5d:39:71"
      set-name: eno1
      dhcp4: true
      dhcp6: true
      ipv6-address-generation: "stable-privacy"
      wakeonlan: true
      networkmanager:
        uuid: "ead179bf-bc6b-4cdc-bcc7-b25d944b3e22"
        name: "WARLORD-LAN"
        passthrough:
          ethernet.auto-negotiate: "true"
          ipv6.ip6-privacy: "-1"
          proxy._: ""
EOF

sudo cat /mnt/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
sudo python3 -c "import yaml; yaml.safe_load(open('/mnt/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml'))" && echo "YAML OK" || echo "YAML FEIL!"
sudo chmod 600 /mnt/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
sudo ls -la /mnt/etc/netplan/
sudo mount -o remount,rw /
sudo timeshift --create --comments "WARLORD-LAN eno1 MAC-festet i Netplan - stabil nettverksprofil" --tags O
sudo timeshift --create --comments "WARLORD-LAN eno1 MAC-festet i Netplan - stabil nettverksprofil"
sudo mount -o remount,ro /
sudo reboot
nmcli connection show
nmcli device status
nmcli connection show
nmcli device status
sudo apt update
cd ..
xs
cd
~
cd ..
ls
ls -lax
ls -las
nmcli connection show
nmcli device status
sudo journalctl -b 0 --no-pager | grep -iE "eno1|failed|error|dhcp" | tail -30
ip addr show eno1
sudo chattr -i /etc/sudoers.d/ 2>/dev/null echo "$USER ALL=(ALL) NOPASSWD: /usr/bin/tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor, /usr/bin/tee /proc/sys/vm/drop_caches" | sudo tee /etc/sudoers.d/gaming sudo chattr +i /etc/sudoers.d/gaming
sudo mount -o remount,rw /
sudo grub-update
sudo update-grub
reboot
nmcli connection show
sudo mount -o remount,rw /
mk fstab
`lsattr` / `chattr` — immutable flagg
ip addr show | grep enx
watch -n 2 "ip addr show | grep enx"
ip addr show | grep enx
lsattr / chattr
lsattr / chattr — immutable flagg
sudo mount -o remount,rw /
lsattr / chattr — immutable flagg
chattr — immutable flagg
sudo mount -o remount,rw /
sudo grub-update
sudo update-grub
reboot
sudo apt update
sudo mount -o remount,rw /
nmcli connection show
ip addr show | grep enx
sudo update-grub
sudo btrfs subvolume list / | grep -E " @$| /@$"
cat /proc/cmdline
sudo mount -o subvol=@ /dev/nvme0n1p3 /mnt
sudo cp /etc/NetworkManager/system-connections/*   /mnt/etc/NetworkManager/system-connections/
ls /mnt/etc/NetworkManager/system-connections/
ls /mnt/etc/NetworkManager/
ls: cannot access '/etc/NetworkManager/': No such file or directory
01-network-manager-all.yaml
90-NM-21ddef8e-4e3a-45b4-b524-b0804178aadf.yaml
90-NM-46581ba6-baff-49ad-b9e2-1ca3e74111d6.yaml
90-NM-a5851a4e-2a92-41d6-913d-65a099f48171.yaml
90-NM-db50e6c8-6e3d-4120-bbe0-a1e916aaa60d.yaml
90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
cat: /etc/netplan/01-network-manager-all.yaml: Permission denied (os error 13)
cat: /etc/netplan/90-NM-21ddef8e-4e3a-45b4-b524-b0804178aadf.yaml: Permission denied (os error 13)
cat: /etc/netplan/90-NM-46581ba6-baff-49ad-b9e2-1ca3e74111d6.yaml: Permission denied (os error 13)
cat: /etc/netplan/90-NM-a5851a4e-2a92-41d6-913d-65a099f48171.yaml: Permission denied (os error 13)
cat: /etc/netplan/90-NM-db50e6c8-6e3d-4120-bbe0-a1e916aaa60d.yaml: Permission denied (os error 13)
cat: /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml: Permission denied (os error 13)
ls: cannot access '/mnt/etc/netplan/': No such file or directory
cat: /mnt/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml: No such file or directory (os error 2)
cat: /mnt/etc/netplan/01-network-manager-all.yaml: No such file or directory (os error 2)
tee: /mnt/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml: No such file or directory (os error 2)
journalctl -b -1 --no-pager | grep -iE "network|NetworkManager|wlan|eth|enp|wlp|failed|error|removed" | head -80
sudo update-grub
nmcli radio wifi on  
nmcli radio
history
sudo journalctl -b -1 --no-pager | grep -iE "network|NetworkManager|wlan|eth|enp|wlp|failed|error|re  
moved" | head -80  
cat /var/lib/NetworkManager/NetworkManager.state  
sudo cat /var/lib/NetworkManager/NetworkManager.state  
nmcli radio wifi on  
nmcli radio  
cat /var/lib/NetworkManager/NetworkManager.state  
nmcli device status  
ip addr show eno1  
ip addr show enxe04f43915224  
sudo journalctl -b -1 --no-pager | grep -iE "eno1|enx|carrier|dhcp|address|NM_DISPAT" | head -50  
sudo journalctl -b -1 --no-pager | sed -n '4180,4250p'  
sudo journalctl --list-boots  
date  
timedatectl status  
nmcli connection show
reboot
netstat
nmcli connection show
ip addr show | grep enx
watch -n 2 "ip addr show | grep enx"
mount | grep " / "
sudo mount -o remount,rw /
ping www.vg.no
sudo apt install iputils-ping
mount | grep " / "
nmcli connection show
nmcli device status
nmcli connection show
nmcli device status
_________________
sudo mount -o remount,rw /
mount | grep " / "
sudo apt install network-manager
nmcli radio wifi on
nmcli connection show 
nmcli connection show
nmcli device status
lsblk
lususb
lsusb
journalctl
dmesg
sudo dmesg
clear
cat /proc/cmdline
sudo cat /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
sudo timeshift --list | tail -10
dytt
reboot
sudo cat /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
nmcli device status
rep
mount | grep " / "
sudo dmesg
lsblk
lsusb
journalctl
history
sudo mount -o subvol=@ /dev/nvme0n1p3 /mnt
sudo cat /mnt/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
sudo mount -o subvol=timeshift-btrfs/snapshots/2026-04-29_22-33-13/@ /dev/nvme0n1p3 /mnt2 2>/dev/null || sudo mkdir /mnt2 && sudo mount -o subvol=timeshift-btrfs/snapshots/2026-04-29_22-33-13/@ /dev/nvme0n1p3 /mnt2
sudo cat /mnt2/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
sudo mount -o remount,rw /
sudo mkdir -p /mnt2
sudo mount -o subvol=timeshift-btrfs/snapshots/2026-04-29_22-33-13/@ /dev/nvme0n1p3 /mnt2
sudo cp /mnt/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml   /mnt2/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
sudo chmod 600 /mnt2/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
sudo cat /mnt2/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
sudo bash -c '
for snap in /run/timeshift/*/backup/timeshift-btrfs/snapshots/*/@ ; do
  target="$snap/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml"
  if [ -d "$snap/etc/netplan" ]; then
    cp /mnt/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml "$target"
    chmod 600 "$target"
    echo "Fikset: $snap"
  fi
done
'
sudo bash -c '
for snap in /mnt2/../*/@ ; do
  echo "$snap"
done
'
sudo timeshift --list | grep ">" | awk '{print $3}'
sudo bash -c '
SOURCE="/mnt/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml"
BTRFS="/dev/nvme0n1p3"
SNAPBASE="timeshift-btrfs/snapshots"

for DATE in \
  2026-04-07_11-08-16 2026-04-10_16-09-15 2026-04-10_19-55-51 \
  2026-04-10_21-00-01 2026-04-11_13-04-37 2026-04-15_00-59-06 \
  2026-04-24_20-04-56 2026-04-26_14-00-01 2026-04-27_14-00-01 \
  2026-04-28_14-00-01 2026-04-28_21-05-05 2026-04-28_21-36-28 \
  2026-04-28_21-39-08 2026-04-29_06-33-29 2026-04-29_14-00-01 \
  2026-04-29_22-25-17 2026-04-29_22-33-13; do
  
  MNT="/tmp/snap_$DATE"
  mkdir -p "$MNT"
  mount -o subvol=$SNAPBASE/$DATE/@ $BTRFS "$MNT" 2>/dev/null
  
  if [ -d "$MNT/etc/netplan" ]; then
    cp "$SOURCE" "$MNT/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml"
    chmod 600 "$MNT/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml"
    echo "✅ Fikset: $DATE"
  else
    echo "⚠️  Ingen netplan-mappe: $DATE"
  fi
  
  umount "$MNT" 2>/dev/null
  rmdir "$MNT"
done
echo "FERDIG!"
'
sudo timeshift --create --comments "WARLORD-LAN fikset i ALLE snapshots - stabil nettverksprofil"
sudo mount -o remount,ro /
sudo reboot
ping www.vg.no
reboot
ping www.vg.no
reboot
ping www.vg.no
reboot
ping www.vg.no
reboot
ping www,vg,no
reboot
ping www.vg.no
reboot
ping www.vg.no
reboot
ping www.vg.no
sudo dmesg
ping www.vg.no
shutdown now
cat /proc/cmdline
nmcli connection show
sudo cat /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
ipaddr show eno1
reboot
ping www.vg.no
reboot
ping www.vg.no
which nmcli
which ip
ip addr show
lsblk
lsusb
sudo dmesg
journalctl
clear
sudo mount -o remount,rw /
sudo timeshift --create --comments "WARLORD FUNGERER PERFEKT - nett oppe, CMOS nytt, alle snapshots fikset"
sudo mount -o remount,ro /
sudo systemctl daemon-reload
sudo bash -c '
MNT="/tmp/snap_new"
mkdir -p "$MNT"
mount -o subvol=timeshift-btrfs/snapshots/2026-05-04_08-30-03/@ /dev/nvme0n1p3 "$MNT"
cp /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml \
   "$MNT/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml"
chmod 600 "$MNT/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml"
umount "$MNT"
rmdir "$MNT"
echo "DONE!"
'
dytt
sudo grep -E "default|GRUB_DEFAULT" /etc/default/grub
sudo grep -A2 "menuentry" /boot/grub/grub.cfg | head -20
sudo cat /mnt/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml 2>/dev/null || sudo mount -o subvol=@ /dev/nvme0n1p3 /mnt && sudo cat /mnt/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
reboot
ping www.vg.no
sudo cat /mnt/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml 2>/dev/null || sudo mount -o subvol=@ /dev/nvme0n1p3 /mnt && sudo cat /mnt/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
sudo cat /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
cat proc cmdline
cat /proc/cmdline
ip addr show eno1
nmcli device status
suso system ctl status NetworkManager
reboot
sudo update-grub
sudo mount -o remount,rw /
sudo update-grub
dytt
reboot
ping www.vg.no
sudo mount -o remount,rw /
sudo timeshift --list
sudo update-grub
sudo mount -0 remount,ro /
sudo mount -o remount,ro /
sudo reboot
sudo systemctl restart NetworkManager
ip addr show eno1
cat /proc/cmdline
sudo dhclient eno1
sudo systemctl status systemd-networkd
ip add show
sudo ip link set eno1 up
sudo systemctl start systemd-networkd
ip addr show eno1
ping www.vg.no
ip add show
nmcli status
ip addr show eno1
sudo systemd-networkd
sudo networkctl
sudo networkctl up eno1
sudo networkctl
sudo networkctl up eno1
ip addr show eno1
ping www.vg.no
sudo mount -o remount,rw /
sudo updage-grub
sudo update-grub
sudo bash -c '
MNT="/tmp/snap_new"
mkdir -p "$MNT"
mount -o subvol=timeshift-btrfs/snapshots/2026-05-04_08-30-03/@ /dev/nvme0n1p3 "$MNT"
cp /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml \
   "$MNT/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml"
chmod 600 "$MNT/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml"
umount "$MNT"
rmdir "$MNT"
echo "DONE!"
'
sudo update-grub
reboot
mount | grep " / "
sudo mount -o remount,rw /
ping www.vg.no
sync
sudo mount -o remount,rw /
sudo mount -o remount,rw /boot
sudo grub-mkconfig -o /boot/grub/grub.cfg
grep "2026-05-04 08:30:03" /boot/grub/grub.cfg
sudo grep "2026-05-04 08:30:03" /boot/grub/grub.cfg
sync
alias fix-grub='sudo mount -o remount,rw / && sudo grub-mkconfig -o /boot/grub/grub.cfg'
sync
dytt
sync
`sudo grep "2026-05-04 08:30:03" /boot/grub/grub.cfg`
sudo grep "2026-05-04 08:30:03" /boot/grub/grub.cfg
btop
rens
sudo apt install nload
watch -n 1 ip -s -h link show eno1
nload
radeontop
alias fix-grub='sudo mount -o remount,rw / && sudo grub-mkconfig -o /boot/grub/grub.cfg'
sudo grep "2026-05-04 08:30:03" /boot/grub/grub.cfg
sudo update-grub
reboot
ping www.vg.no
cat /proc/cmdline
ip link show
ip addr
sudo ip link set eno1 up
ls -l /etc/netplan/
cat /etc/netplan/*.yaml
sudo cat /etc/netplan/*.yaml
mount | grep " / "
sudo mount -o remount,rw /
cp /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml ~/fungerende-nettverk.yaml
sudo cp /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml ~/fungerende-nettverk.yaml
sudo mount -o remount,rw /
sudo cp ~/WARLORD-LAN-FIX.yaml /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yam
cp /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml ~/WARLORD-LAN-FIX.yaml
sudo cp ~/WARLORD-LAN-FIX.yaml /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yam
sudo cp /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml ~/WARLORD-LAN-FIX.yaml
sudo cp /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml ~/fungerende-nettverk.yaml
ls
sudo cp fungerende-nettverk.yaml ~/etc/netplan/
cd ~/etc/netplan
cd ..
cd etc
ls netplan
sudo cp ~/fungerende-nettverk.yaml
sudo cp ~/fungerende-nettverk.yaml ~/etc/netplan/
cd netplan
sudo cp ~/WARLORD-LAN-FIX.yaml /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
ls
sudo netplan apply
sudo mount -o remount,rw /
sudo cp ~/WARLORD-LAN-FIX.yaml /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
ls -las
sync
sudo netpllan apply
sudo netplan apply
sync
mount | grep " / "
nmcli connection show
nmcli device status
cat /proc/cmdline | grep "04-29_22-33"
nmcli connection show
chmod 600 "$MNT/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml"
sudo chmod 600 "$MNT/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml"
ls -las
ls -lax
ls -la
sudo mount -o remount,rw /boot
dmesg
ls -l /etc/grub.d/
sudo systemctl restart grub-btrfs.path
sync && sudo update-grub
reboot
ping www.vg.no
reboot
ping www.vg.no
reboot
ping www.vg.no
reboot
ping www.vg.no
reboot
ping www.vg.no
reboot
cat /proc/cmdline
sudo mount -o remount,rw /
sudo mkdir -p /mnt/repair
sudo mount -t btrfs -o subvol=timeshift-btrfs/snapshots/2026-05-04_08-30-03/@ /dev/nvme0n1p3 /mnt/repair
sudo cp ~/WARLORD-LAN-FIX.yaml /mnt/repair/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
sudo chmod 600 /mnt/repair/etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
ls -l /mnt/repair/usr/sbin/netplan
sudo find /mnt/repair -name netplan -type f
ls -l /mnt/repair/usr/sbin/NetworkManager
sudo umount /mnt/repair
which netplan
sudo mount -o remount,rw /
sudo cp ~/WARLORD-LAN-FIX.yaml /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
sudo cp ~/WARLORD-LAN-FIX.yaml /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
sudo chmod 600 /etc/netplan/90-NM-ead179bf-bc6b-4cdc-bcc7-b25d944b3e22.yaml
sudo netplan apply
ip addr show eno1
nmcli
sudo mount -o remount,rw /
which netplan
which netplan && which nmcli
cat /proc/cmdline
lsblk
lsusb
ip addr
nmcli radio wifi on
which netplan && which nmcli
ip addr
sync
sudo update-grub
ls -l /etc/grub.d/
grep "2026-05-04" /boot/grub/grub.cfg
sudo grep "2026-05-04" /boot/grub/grub.cfg
sudo systemctl restart grub-btrfs.path
sync && sudo update-grub
dytt
sync
rep
sync
sudo timeshift --create --comments "WARLORD KERNEL 6.17.0-23 - ALT OK"
sudo update-grub
uname -r
reboot
ping www.vg.no
uname -r
rep
sudo mount -o remount,rw /
mount | grep " / "
nmcli connection show
nmcli device status
rep
ip addr
cat /proc/cmdline
sudo grub-mkconfig -o /boot/grub/grub.cfg
nmcli radio wifi on
mount | grep " / "
rfkill list
sudo ip link set wlp2s0 up
ip addr show
lsblk
nmcli radio wifi on
sync
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo update-grub
reboot
sudo mount -o remount,rw /
mount | grep " / "
nmcli radio wifi on
rfkill list
sudo ip link set wlp2s0 up
nmcli connection show
nmcli device status
sudo journalctl -b 0 --no-pager | grep -iE "eno1|failed|error|dhcp" | tail -30
ip addr show eno1
sudo grub-mkconfig -o /boot/grub/grub.cfg
ls -l /etc/grub.d/
sudo /etc/grub.d/41_snapshots-btrfs
sudo update-grub
grep "2026-05-04" /boot/grub/grub.cfg
sudo grep "2026-05-04" /boot/grub/grub.cfg
sudo systemctl restart grub-btrfs.path
sync && sudo update-grub
sync
rep
uname -r
# Lag et punkt for å se HELE disken, ikke bare snapshotet
sudo mkdir -p /mnt/full_disk
sudo mount /dev/nvme0n1p3 /mnt/full_disk -o subvolid=5
# Se om kjerne .23 ligger i det "virkelige" hovedsystemet (@)
ls -l /mnt/full_disk/@/boot/vmlinuz-6.17.0-23-generic
uname -r
sudo mkdir -p /mnt/full_disk
sudo mount /dev/nvme0n1p3 /mnt/full_disk -o subvolid=5
sudo ls -l /mnt/full_disk/@/boot/vmlinuz-6.17.0-23-generic
sudo btrfs subvolume property set / ro false
sudo btrfs property set / ro false
sudo mount -o remount,rw /
ls -l /boot/vmlinuz-6.17.0-23-generic
dytt
rens
arkiv
mount | grep " / "
sudo mount -o remount,rw /
mount | grep " / "
sudo btrfs property set / ro false
mount | grep " / "
nproc
cat /proc/cmdline
ip addr show
ip addr show eno1
nmcli radio wifi on
rfkill list
sudo btrfs property set / ro false
sudo mount -o remount,rw /
sudo apt install --reinstall linux-image-6.17.0-23-generic
sudo update-grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo grep "6.17.0-23" /boot/grub/grub.cfg
sync
ls -l /boot/vmlinuz-6.17.0-23-generic
dytt
sudo timeshift --create --comments "WARLORD FINISHED - Kernel .23 + Netfix"
dytt
ping www.vg.no
`mount | grep " / "`
lsblk
sudo btrfs property set / ro false
sudo mount -o remount,rw /
`mount | grep " / "`
uname -r
reboot
ping www.vg.no
reboot
sudo btrfs property set / ro false
sudo mount -o remount,rw /
sudo btrfs property set / ro false
sudo apt update
sudo apt install --reinstall linux-image-6.17.0-23-generic linux-modules-6.17.0-23-generic
ls -l /boot/vmlinuz-6.17.0-23-generic
`mount | grep " / "
lsblk
mount | grep " / "
sudo update-grub
sync
sudo mount -o remount,rw /
sudo update-grub
dytt
sudo mount -o remount,rw /
sudo btrfs property set / ro false
sudo update-grub
mount | grep " / "
sudo btrfs property set / ro false
sudo mount -o remount,rw /
ls -l /boot/vmlinuz-6.17.0-23-generic
sudo
su
sudo mount -o remount,rw /
uname -r
sync
sudo mount -o remount,rw /
sync
umane -r
cleaR
CLEAR
clear
uname -r
mount | grep " / "
sudo btrfs property set / ro false
sudo ip link set eno1 down
sudo ip link set eno1 up
nmcli device status
sudo update-grub
sudo nmcli networking off && sudo nmcli networking on
uname -r
lsblk
ip add show
ls /sys/class/net
lspci -nnk | grep -i net -A3
mount | grep " / "
ip addr
sudo timeshift-gtk
uname -r
sudo grep 1 " / "
sudo grep | " / "
grep | " / "
mount | grep " / "
reboot
sudo btrfs property set / ro false
sudo mount -o remount,rw /
sudo btrfs property set / ro false
sync
btrfs property get /
sudo btrfs property get /
sudo mount -o remount,rw /
sudo btrfs property get /
lsblk
ipaddr 
ipaddr
ip addr
cd /etc/grub
cd ~/etc/grub
cd ..
ls
cd .
ls
cd ..
ls
cd etc
ls
cd grub
cd default
ls
cd grub
ls
cd grub
nano grub
sudo nano grub
sudo update-grub
dytt
ping www.vg.no
uname -r
mount | grep " / "
btrfs property get /
sudo btrfs property get /
sudo mount -o remount, rw /
mount | grep " / "
sync
reboot
time
uname -r
clear
uname -r
ip addr
nmcli
reboot
ping www.vg.no
ping 192.168.1.1
ping www.vg.no
nmcli dev wifi
ping ssg.lotro.com
ping gls.lotro.com
mtr -rw gls.lotro.com
sudo mount -o remount,rw /
sudo btrfs property set / ro false
sudo chattr -i /etc/fstab
sudo chattr -i /etc/default/grub
sudo update-grub
uname -r
lsblk
sudo btrfs property get /
sudo apt update
sudo apt install --reinstall linux-image-6.17.0-23-generic linux-modules-6.17.0-23-generic
rep
uname -r
sudo update-grub
sync
sudo update-grub
uname -r
grep -E "menuentry|vmlinuz-6.17.0-23" /boot/grub/grub.cfg | head -n 10
sudo grep -E "menuentry|vmlinuz-6.17.0-23" /boot/grub/grub.cfg | head -n 10
sync
sudo grub-update
sudo update-grub
sudo grep -E "menuentry|vmlinuz-6.17.0-23" /boot/grub/grub.cfg | head -n 10
uname -r
sync
uname -r
sudo grep -E "menuentry|vmlinuz-6.17.0-23" /boot/grub/grub.cfg | head -n 10
reboot
sudo mount -o remount,rw /
uname -r
sudo btrfs property set / ro false
uname -r
sudo mount /dev/nvme0n1p3 /mnt
sudo btrfs subvolume delete /mnt/@
sudo btrfs subvolume snapshot /mnt/timeshift-btrfs/snapshots/2026-04-28_21-39-08/@ /mnt/@
sudo umount /mnt
sync
ip addr
uname -r
sync
sudo reboot
uname -r
sudo mount -o remount,rw /
uname -r
sync
lsblk
sudo update-grub
sync
lsattr /etc/fstab /etc/default/grub /boot/grub/grub.cfg
sudo lsattr /etc/fstab /etc/default/grub /boot/grub/grub.cfg
sudo chattr +i /etc/fstab
sudo chattr +i /etc/default/grub
sudo chattr +i /boot/grub/grub.cfg
sync
dytt
sync
uname -r
dytt
shutdown now
uname -r
nmcli
nmcli show
nmcli device show
mount | grep " / "
nmcli radio wifi on
sudo mount -o remount,rw /
uname -r
rfkill list
nmcli device status
nmcli connection show
nmcli device status
sudo nmcli networking on
nmcli radio wifi on
sudo btrfs property set / ro false
nmcli device status
sync
lsattr
sudo lsattr
sudo lsattr /etc/fstab /etc/default/grub /boot/grub/grub.cfg
dytt
reboot
uname -r
nmcli device show
sudo update-grub
lsattr
sudo lsattr /etc/fstab /etc/default/grub /boot/grub/grub.cfg
lsattr /etc/fstab /etc/default/grub /boot/grub/grub.cfg
rep
exit
sudo | grep " / "
lsattr /etc/fstab /etc/default/grub /boot/grub/grub.cfg
sudo lsattr /etc/fstab /etc/default/grub /boot/grub/grub.cfg
source ~/.bashrc
lsattrib
greproot
clear
montert
clearcache
lsattrib
greproot
ip addr show
nmcli device list
nmcli device show
source ~/.bashrc
btrfs
source ~/.bashrc
btrfs
source ~/.bashrc
btrfs
btrfsinfo
source ~/.bashrc
btrfs
clear
btrfs
greproot
lsattrib
rep
fix
clean
clearcache
ip addr show
lsblk
lsusb
nmcli device show
source ~/.bashrc
rep
source ~/.bashrc
clear
rep
source ~/.bashrc
clear
rep
clear
source ~/.bashrc
clear
rep
source ~/.bashrc
clear
source ~/.bashrc
clear
rep
source ~/.bashrc
clear
rep
source ~/.bashrc
clear
rep
source ~/.bashrc
clear
rep
chmod +x ~/scripts/fix.sh ~/scripts/clean.sh ~/scripts/rens.sh
sync
clear
source ~/.bashrc
rep
sudo mount -o remount,rw /
sudo rfkill unblock all
nmcli radio wifi on
sudo mount -o remount,rw /
root
mountgrep
grep
greproot
btrfs
btrfs-info
./btrfs-info.sh
source ~/.bashrc
rep
btrfs-info
echo "--- BTRFS STATUS FOR WARLORD ---"
echo "MODUS: $(btrfs property get / ro)"
echo "DISKBRUK:"
sudo btrfs filesystem df /
echo "--- NYESTE SNAPSHOTS ---"
sudo btrfs subvolume list -t / | tail -n 5
echo "--- ENHETSSTATUS ---"
sudo btrfs device stats /
mount | grep " / "
rep
source ~/.bashrc
rep
clear
rep
dytt
rens
rep
exit
arkiv
rep
ping www.vg.no
sync
arkiv
sudo btrfs property set / ro false
nmcli device
rfkill list
mount | grep ' / '
sudo mount -o remount,rw /
mount | grep ' / '
sudo update-grub
sync
rep
sync
sudo update-grub
reboot
sudo 1 grep " / "
sudo | grep " / "
sudo grep 1  " / "
mount | grep ' / '
nmcli device
btrfs property
btrfs property list
btrfs property listshow
btrfs property show
btrfs property list -t
btrfs property list
btrfs property get
btrfs property get /
dytt
arkiv
clear
rep
exit
df -h ~/AI_Hvelv
# Denne er 3 ganger større, men mye smartere
ollama run llama3.1:8b
# Download the installer script to wherever you want to run it from
curl -fsSL https://cdn.anythingllm.com/latest/installer.sh -o installer.sh
# Make the script executable
chmod +x installer.sh
# Run the script
./installer.sh
killall ollama
~/Scripts/start_ai.sh
~/scripts/start_ai.sh
clear
killall anythingllm-desktop
start_ai
start_ai.sh
/start_ai.sh
~/start_ia.sh
cd /scripts
ls
cd scripts
øs
ls
start_ai.sh
/start_ai.sh
./start_ai.sh
radeontop
btop
ss -tulpn | grep 11434
ollama pull nomic-embed-text
mount | grep " / "
btrfs property get /
nmcli device
rfkill list
rep
sudo mount -o remount,rw /
mount | grep " / "
sudo btrfs subvolume list /
sudo btrfs subvolume ls -las /
sudo btrfs subvolume list /
lsblk
btrfs
btrfs findmnt
btrfs ls -l
findmnt -t btrfs -o TARGET,OPTIONS
sudo btrfs property get -ts /
sudo btrfs subvolume list / | awk '{print $9}' | while read subvol; do     echo -e "\n=========================================";     echo -e "SUBVOLUM: /$subvol";     echo -e "========================================="
    sudo btrfs property get "/$subvol" 2>/dev/null || echo " RO-Status: Ikke montert i nåværende tre"
    ls -ld "/$subvol" 2>/dev/null | awk '{print " POSIX: " $1 " | Eier: " $3 ":" $4}' || echo " POSIX: Finner ikke mappe"; done
lsblk -f | grep btrfs
# 1. Klargjør og monter rot-nivået (Top Level 5) av NVMe-disken
sudo mkdir -p /mnt/btrfs_pool
sudo mount -o subvolid=5 /dev/nvme0n1p3 /mnt/btrfs_pool
# 2. Opprett de dedikerte, persistente subvolumene
sudo btrfs subvolume create /mnt/btrfs_pool/@network_var_lib
sudo btrfs subvolume create /mnt/btrfs_pool/@network_system_connections
# 3. Flytt eksisterende data inn i de nye, skrivbare sonene
sudo cp -a /var/lib/NetworkManager/* /mnt/btrfs_pool/@network_var_lib/ 2>/dev/null
sudo cp -a /etc/NetworkManager/system-connections/* /mnt/btrfs_pool/@network_system_connections/ 2>/dev/null
# 4. Avmonter rot-nivået for å sikre strukturen
sudo umount /mnt/btrfs_pool
lsblk -f | grep btrfs
sudo kwrite /etc/fstab
cd /etc
sudo nano fstab
sudo chattr -i fstab
ls -las fstab
sudo nano fstab
sync
sudo chattr +i fstab
cd ..
~
ls
cd home
cd wils
ls
# Sjekk om ROCm (AMD's regneplattform) er gjenkjent
clinfo | grep -i "device name"
sudo apt install rocm-opencl-runtime
mount | grep " / "
lsblk
clinfo | grep -i "device name"
ls -las fstab
lsblk -f | grep btrfs
# Opprett et permanent monteringspunkt for selve T7-disken
sudo mkdir -p /media/T7_Base
# Monter sda3 (T7-disken din)
sudo mount /dev/sda3 /media/T7_Base
# Verifiser at du ser 'fedora_fedora' innholdet (valgfritt)
ls /media/T7_Base
# Gå inn på disken
cd /media/T7_Base
# Lag kontainer-filen (400 GB)
# Siden du har Btrfs på T7, bruker vi --length for å være presise
sudo fallocate -l 400G ai_hvelv.img
# Krypter filen (Velg ditt "Warlord"-passord)
sudo cryptsetup luksFormat ai_hvelv.img
# Åpne hvelvet for første gang
sudo cryptsetup open ai_hvelv.img ai_data
# Gå inn på disken
cd /media/T7_Base
# Lag kontainer-filen (400 GB)
# Siden du har Btrfs på T7, bruker vi --length for å være presise
sudo fallocate -l 400G ai_hvelv.img
# Krypter filen (Velg ditt "Warlord"-passord)
sudo cryptsetup luksFormat ai_hvelv.img
# Åpne hvelvet for første gang
sudo cryptsetup open ai_hvelv.img ai_data
# Lag filsystemet (dette tar noen sekunder)
sudo mkfs.ext4 /dev/mapper/ai_data
# Lag selve monteringspunktet i hjemmekatalogen din
mkdir -p ~/AI_Hvelv
# Monter det ferdige hvelvet
sudo mount /dev/mapper/ai_data ~/AI_Hvelv
# Gi deg selv full kontroll over alt innholdet
sudo chown -R $USER:$USER ~/AI_Hvelv
# Lag mappene vi trenger til Ollama og Obsidian
mkdir -p ~/AI_Hvelv/modeller
mkdir -p ~/AI_Hvelv/rag_data
df -h
sudo usermod -aG render $USER
sudo usermod -aG video $USER
sudo apt update
sudo apt install mesa-opencl-icd clinfo
clinfo | grep -i "device name"
curl -fsSL https://ollama.com/install.sh | sh
sudo rm /etc/apt/sources.list.d/google-chrome.sources.*.tmp
# Fjern "i" (immutable) flagget først, så slett
sudo chattr -i /etc/apt/sources.list.d/google-chrome.sources.*.tmp
sudo rm /etc/apt/sources.list.d/google-chrome.sources.*.tmp
chmod +x ~/Scripts/start_warlord_ai.sh
cd ..
ls
cd home
cd scripts
cd wils
ls
cd scripts
ls
chmod +x ~/Scripts/start_warlord_ai.sh
sync
ls -las
sudo nano start_ai.sh
sudo nano start_warlord_ai.sh
chmod +x start_warlord_ai.sh
chmod +x start_ai.sh
ls -las
./start.ai
./start_ai.sh
import os
import shutil
from pathlib import Path
from datetime import datetime
def sorter_filer_trygt(mappe_sti):
# Bruk: Oppgi stien til mappen du vil rydde i
# sorter_filer_trygt('/home/wils/Nedlastinger/test_mappe')
./start_ai.sh
df -h
cd ..
ls
df -h
lsblk
df -h
mount list
mounts list
list mounts
list mount
clear
lsblk -f
clear
lsblk -f
clear
lsblk -f
df -h
# Lag en omfattende statusrapport i hvelvet ditt
echo "### SYSTEM SNAPSHOT $(date) ###" > ~/AI_Hvelv/rag_data/system_status_$(date +%F).md
echo "---" >> ~/AI_Hvelv/rag_data/system_status_$(date +%F).md
echo "#### CPU & RAM Status ####" >> ~/AI_Hvelv/rag_data/system_status_$(date +%F).md
free -h >> ~/AI_Hvelv/rag_data/system_status_$(date +%F).md
echo "#### Disk & Mounts ####" >> ~/AI_Hvelv/rag_data/system_status_$(date +%F).md
lsblk >> ~/AI_Hvelv/rag_data/system_status_$(date +%F).md
echo "#### Running Services ####" >> ~/AI_Hvelv/rag_data/system_status_$(date +%F).md
systemctl list-units --type=service --state=running >> ~/AI_Hvelv/rag_data/system_status_$(date +%F).md
cd scripts
nano warlord_snapshot.sh
chmod +x ~/Scripts/warlord_snapshot.sh
chmod +x ~/scripts/warlord_snapshot.sh
./warlord_snapshot.sh
ls
./start_ai.sh
./start_warlord_ai.sh
./start_ai.sh
cd ..
ls
cd ..
ls
cd wils
ls
ls -la
cd scripts
ls
ls -las
nano start_ollama.sh
ls -las
chmod -x start_ollama.sh
ls -las
nano apne_hvelv.sh
ls
nano open_vault.sh
nano close_vault.sh
chmod +x open_vault.sh close_vault.sh
ls -las
./open_vault
./open_vault.sh
df -h ~/AI_Hvelv
lsblk -l
nano open_vault.sh
chmod +x open_vault.sh close_vault.sh
./open_vault.sh
~/scripts/close_vault.sh
dytt
radeontop
btop
arkiv
rep
fix
rens
clearcache
arkiv
rens
arkiv
rens
sh -c "printf 'install esp4 /bin/false\ninstall esp6 /bin/false\ninstall rxrpc /bin/false\n' > /etc/modprobe.d/dirtyfrag.conf; rmmod esp4 esp6 rxrpc 2>/dev/null; echo 3 > /proc/sys/vm/drop_caches; true"
sudo mount -o remount,rw /
sh -c "printf 'install esp4 /bin/false\ninstall esp6 /bin/false\ninstall rxrpc /bin/false\n' > /etc/modprobe.d/dirtyfrag.conf; rmmod esp4 esp6 rxrpc 2>/dev/null; echo 3 > /proc/sys/vm/drop_caches; true"
mount | grep " / "
sh -c "printf 'install esp4 /bin/false\ninstall esp6 /bin/false\ninstall rxrpc /bin/false\n' > /etc/modprobe.d/dirtyfrag.conf; rmmod esp4 esp6 rxrpc 2>/dev/null; echo 3 > /proc/sys/vm/drop_caches; true"
sudo sh -c "printf 'install esp4 /bin/false\ninstall esp6 /bin/false\ninstall rxrpc /bin/false\n' > /etc/modprobe.d/dirtyfrag.conf; rmmod esp4 esp6 rxrpc 2>/dev/null; echo 3 > /proc/sys/vm/drop_caches; true"
cat /etc/modprobe.d/dirtyfrag.conf
rep
arkiv
cd ~/Warlord-Logs-Public
git pull --rebase origin main
git push origin main
arkiv
sudo flatpak install discord
rep
git pull --rebase origin main
cd ~/Warlord-Logs-Public
git pull --rebase origin main
mount | grep " / "
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --user flathub org.kde.krita
flatpak run --device=all org.kde.krita
clear
cd ..
arkiv
clear
arkiv
clear
mount | grep " / "
rep
arkiv
clear
rens
arkiv
rep
sudo mount -o remount,rw /
mount | grep " / "
sudo mount -o remount,ro /
mount | grep " / "
sync
rens
arkiv
mount | grep " / "
btrfs settings
rens
sudo journalctl -b -1 -p err
sudo journalctl -b -1 -p err [200~wils@WARLORD:~$ sudo journalctl -b -1 -p err
clear
sudo journalctl -b -1 -p err
sudo journalctl -b -1 -p err acpi_enforce_resources=lax
acpi_enforce_resources=lax
cd /etc
cd initramfs-tools
ls
cd modules
ls
nano modules
sudo nano modules
cd ..
ls
exit
sudo mount -o remount,rw /
sudo nano ~/etc/initramfs-tools/modules
cd etc
cd 
cd ..
cd etc
cd initramfs-tools
ls
sudo nano modules
cd ..
cd default
ls
nano grub
sudo nano grub
charrt -i grub
sudo update-initramfs -u
sudo nano /etc/default/grub
sudo grubby --update-kernel=ALL --remove-args="quiet splash"
mount | grep " / "
sudo chattr -i /etc/default/grub
sudo nano /etc/default/grub
sudo update-grub
sudo chattr -i /boot/grub/grub.cfg
sudo update-grub
sudo chattr +i /etc/default/grub
sudo chattr +i /boot/grub/grub.cfg
sync
sudo mount -o remount,ro /
sudo dmesg >> dmesglog.txt
journalctl >> journalctl.txt
sudo mount -o remount,rw /
sudo chattr -i /etc/default/grub
sudo chattr -i /boot/grub/grub.cfg
sudo nano /etc/default/grub
sudo update-grub
sudo chattr +i /etc/default/grub
sudo chattr +i /boot/grub/grub.cfg
sudo mount -o remount,ro /
dytt
sudo mount -o remount,rw /
sudo chattr -i /etc/default/grub
sudo chattr -i /boot/grub/grub.cfg
sudo nano /etc/default/grub
sudo update-grub
sudo chattr +i /etc/default/grub
sudo chattr +i /boot/grub/grub.cfg
shutdown now
sudo mount -o remount,rw /
sudo chattr -i /etc/default/grub
sudo chattr -i /boot/grub/grub.cfg
sudo nano /etc/default/grub
sudo update-grub
sudo chattr +i /etc/default/grub
sudo chattr +i /boot/grub/grub.cfg
sync
rep
find /home/wils -type f -name "*.sh" -not -path "/home/wils/scripts/*" 2>/dev/null
find /home/wils -type f -name "*.sh" -not -path "/home/wils/scripts/*" && "/home/wils/y/*" 2>/dev/null
find /home/wils -type f -name "*.sh" -not -path "/home/wils/scripts/*" && -not -path "/home/wils/y/*" 2>/dev/null
find /home/wils -type f -name "*.sh" -not -path "/home/wils/scripts/*" -not -path "/home/wils/y/*" 2>/dev/null
find /home/wils -type f -name "*.sh" -not -path "/home/wils/scripts/*" -not -path "/home/wils/y/*" -not -path "/home/wils/var/*" 2>/dev/null
find /home/wils -type f -name "*.sh" -not -path "/home/wils/scripts/*" -not -path "/home/wils/y/*" -not -path "/home/wils/var/pmbootstrap/*" 2>/dev/null
find /home/wils -type f -name "*.sh" -not -path "/home/wils/scripts/*" -not -path "/home/wils/y/*" -not -path "/home/wils/var/pmbootstrap/*" -not -path "/home/wils/.local/var/*" 2>/dev/null
find /home/wils -type f -name "*.sh" -not -path "/home/wils/scripts/*" -not -path "/home/wils/y/*" -not -path "/home/wils/var/pmbootstrap/*" -not -path "/home/wils/.local/var/*" -not -path "/home/wils/.local/share/flatpak/*" 2>/dev/null
find /home/wils -type f -name "*.sh" -not -path "/home/wils/scripts/*" -not -path "/home/wils/y/*" -not -path "/home/wils/var/pmbootstrap/*" -not -path "/home/wils/.local/var/*" -not -path "/home/wils/.local/share/flatpak/*" -not -path "/home/.local/share/pipx/*" 2>/dev/null
find /home/wils -type f -name "*.sh" -not -path "/home/wils/scripts/*" -not -path "/home/wils/y/*" -not -path "/home/wils/var/pmbootstrap/*" -not -path "/home/wils/.local/var/*" -not -path "/home/wils/.local/share/flatpak/*" -not -path "/home/.local/share/*" 2>/dev/null
find /home/wils -type f -name "*.sh" -not -path "/home/wils/scripts/*" -not -path "/home/wils/y/*" -not -path "/home/wils/var/pmbootstrap/*" -not -path "/home/wils/.local/var/*" -not -path "/home/wils/.local/share/flatpak/*" -not -path "/home/.local/*" 2>/dev/null
find /home/wils -type f -name "*.sh" -not -path "/home/wils/scripts/*" -not -path "/home/wils/y/*" -not -path "/home/wils/var/pmbootstrap/*" -not -path "/home/wils/.local/var/*" -not -path "/home/wils/.local/share/flatpak/*" -not -path "/.local/*" 2>/dev/null
find /home/wils -type f -name "*.sh" -not -path "/home/wils/scripts/*" -not -path "/home/wils/y/*" -not -path "/home/wils/var/pmbootstrap/*" -not -path "/home/wils/.local/var/*" -not -path "/home/wils/.local/share/flatpak/*" -not -path "/home/wils/.local/*" 2>/dev/null
find /home/wils -type f -name "*.sh" -not -path "/home/wils/scripts/*" -not -path "/home/wils/y/*" -not -path "/home/wils/var/pmbootstrap/*" -not -path "/home/wils/.local/var/*" -not -path "/home/wils/.local/share/flatpak/*" -not -path "/home/wils/.local/*" -not -path "/home/wils/Klimt-debug/*" 2>/dev/null
find /home/wils -type f -name "*.sh" -not -path "/home/wils/scripts/*" -not -path "/home/wils/y/*" -not -path "/home/wils/var/pmbootstrap/*" -not -path "/home/wils/.local/var/*" -not -path "/home/wils/.local/share/flatpak/*" -not -path "/home/wils/.local/*" -not -path "/home/wils/Klimt-debug/*" -not -path "/home/wils/.config/*" 2>/dev/null
dytt
mv /home/wils/maale_reboot.sh /home/wils/kommandosenter.sh /home/wils/vedlikehold.sh /home/wils/pitch_finder.sh /home/wils/logg_arkiv.sh /home/wils/btrfs-info.sh /home/wils/installer.sh /home/wils/scripts/
~/scripts/logg_arkiv.sh
kwrite ~/scripts/logg_arkiv.sh
bplass
b-plass
b-helse
b-tid
alias sjekk-grafikk
lsattrid
lsattrib
temp
obs
kwrite ~/scripts/frankenstein_aliases.sh
source ~/.bashrc
obs
kwrite ~/scripts/frankenstein_aliases.sh
cd scripts
ls
rm -r frankenstein_aliases.sh
kwrite ~/.bashrc
dytt
cd ..
mkdir -p ~/Wils-Linux-Legacy
cd ~/Wils-Linux-Legacy
git init
mkdir -p tools
cp ~/scripts/kommandosenter.sh ~/scripts/vedlikehold.sh ~/scripts/logg_arkiv.sh tools/
kwrite README.md
uname -r
dytt
kwrite ~/scripts/logg_arkiv.sh
cd ~/Wils-Linux-Legacy
git checkout -b klimt-tab-s8.4
ls
cd tools
ls
cd ..
ls
mkdir -p klimt
ls
git checkout -b klimt-tab-s8.4
cd klimt
ls
cd ~/Wils-Linux-Legacy
git checkout klimt-tab-s8.4
cd ~/Wils-Linux-Legacy
git checkout main 2>/dev/null || git checkout master
cd klimt
ls
git add README.md tools/
git commit -m "Wils Linux Legacy: Grunnmuren er lagt med README og Tools"
cd ..
ls
git add .
git commit -m "Wils Linux Legacy: Grunnmuren er lagt med README, Tools og Klimt-arkiv"
cp -r ~/Klimt-debug/* ~/Wils-Linux-Legacy/klimt/
git add klimt/
git commit -m "Klimt: Samsung Tab S 8.4 debug-filer, boot-images og DTB-fikser lagt til"
ls
cd klimt
ls
cd ..
git push -u origin klimt-tab-s8.4
cd klimt
git push -u origin klimt-tab-s8.4
cd ..
ls
git remote add origin git@github.com:panzerdroideka/Wils-Linux-Legacy.git
ls
cat README.md
git remote add origin git@github.com:panzerdroideka/Wils-Linux-Legacy.git
git remote -v
git push -u origin klimt-tab-s8.4
cd ~/Wils-Linux-Legacy
git reset --soft HEAD~1
find . -size +100M
mv ~/Wils-Linux-Legacy/klimt/klimt_frankenstein/export/samsung-klimtlte.img ~/samsung-klimtlte.img.backup
cd ~/Wils-Linux-Legacy
git reset --mixed HEAD~1
git gc --prune=now --aggressive
find . -size +100M
wils@WARLORD:~/Wils-Linux-Legacy$ find . -size +100M
./.git/objects/pack/pack-7ff619fbadf407018a44674efa4812d96da5176b.pack
wils@WARLORD:~/Wils-Linux-Legacy$
cd ~/Wils-Linux-Legacy
rm -rf .git
git init
git remote add origin git@github.com:panzerdroideka/Wils-Linux-Legacy.git
git checkout -b klimt-tab-s8.4
git add .
git push -u origin klimt-tab-s8.4
git add .
git commit -m "Wils Linux Legacy: Første rene opplasting av Klimt-arkivet"
ls
cd klimt
ls
cd ..
btop
dytt
exit
rep
dytt
exit
sudo mount -o remount,rw /
mount | grep " / "
ls
cd Wils-Linux-Legacy
git pull
ls
cd ..
ls
cd Wils-Linux-Legacy
ls
ls -laas
git branch -a
ls -las
cd ..
cd ~/Wils-Linux-Legacy
git checkout main
git pull origin main
ls
cd Linx-Freedom-for-the
cd Linux-Freedom-for-the
sl
ls
ls -las
cd Warlord-model2026
ls
sync
ls -la
git add .
git commit -m "WARLORD-model2026: Første bølgen med skript for oppstartsovervåkning og telemetri"
git push
ls
ls -las
git add
git add .
ls
git commit -m "WARLORD-model2026: Etablert nervesystemet med vault-kontrollere, AI-startskript og telemetri"
git .
git add .
git push
..\..
cd ..\..
cd ..
ls
git push
cd Wils-Linux-Legacy
ls
cd klimt
git push
ls
git add .
rep
rens
frankengit
arkiv
source ~/.bashrc
arkiv
nano .bashrc
source .bashrc
source ~/.bashrc
arkiv
cd scripts
./logg_arkiv.sh
cd ..
arkiv
cd scripts
ls -las
cd ..
source ~/.bashrc
arkiv
dytt
rep
git --version
ls
ls -las
cd ~/Wils-Linux-Legacy && git status
git commit -m "Legg til TWRP 3.4.0 for Klimt"
git push origin main
git pull origin main --rebase
git push origin main
cd ~
git clone git@github.com:panzerdroideka/panzerdroideka.git
git push .
git push
git add README.md
git commit -m "Oppdaterer min offisielle GitHub-profilvegg"
git push origin main
cd panzerdroideka
git add README.md
git commit -m "Oppdaterer min offisielle GitHub-profilvegg"
git push origin main
cd ..
cd Wil-Linux-Legacy
cd Wils-Linux-Legacy
git push origin main
cd ..
ls
cd Warlord-Logs-Private
git push origin main
cd ..
cd Warlords-Logs-Public
cd Warlord-Logs-Public
git push origin main
git pull origin main --rebase
git status
git add README.md
git commit -m "Oppdaterer README med profilinfo"
git pull origin main --rebase
git push origin main
cd ..
kwrite ~/scripts/sync_all_git.sh &
chmod +x ~/scripts/sync_all_git.sh
kwrite ~/.bash_aliases &
source ~/.bashrc
dytt
clear
rens
arkiv
find "$LOTRO_KILDE" -type f -name "Combat_*.txt" -mmin -60
cds scripts
cd Scripts
ls
cd scripts
ls
arkiv
sudo mount -o remount,rw /
sudo chattr -i /etc/default/grub
sudo chattr -i /boot/grub/grub.cfg
rep
sudo mount -o remount,rw /
sudo chattr -i /etc/default/grub
sudo chattr -i /boot/grub/grub.cfg
mount | grep " / "
sudo chattrib ls -las
lsattr -aR 2>/dev/null | awk '$1 ~ /i/'
# 1. Gå inn i mappen din (hvis du ikke allerede står der)
cd ~/Wils-Linux-Legacy
# 2. Flytt og omdøp klimt-mappen inn under Linux-Freedom-for-the
git mv klimt Linux-Freedom-for-the/Armv7-klimt-Tab-S
# 3. Gjør en commit på endringen
git commit -m "Strukturering: Flyttet og omdøpt klimt til Linux-Freedom-for-the/Armv7-klimt-Tab-S"
# 4. Push endringene opp til GitHub
git push origin main
git push --help
# 1. Hent eksterne endringer og flett dem lineært under din lokale commit
git pull --rebase origin main
# 2. Skyv endringene opp til GitHub igjen (oppgi SSH-passfrase når den spør)
git push origin main
# 1. Putt uferdige endringer i glemmeboksen så mappen blir helt ren
git stash
# 2. Hent ned finpussen din fra GitHub og legg den lineært under flyttingen
git pull --rebase origin main
# 3. Skyv flyttingen (Armv7-klimt-Tab-S) trygt opp til GitHub (oppgi SSH-passfrase)
git push origin main
# 4. Hent de uferdige endringene dine ut av glemmeboksen igjen
git stash pop
# 1. Naviger inn til din nyopprettede Klimt-mappe
cd ~/Wils-Linux-Legacy/Linux-Freedom-for-the/Armv7-klimt-Tab-S
# 2. Opprett den nye pmbootstrap-undermappen
mkdir pmbootstrap
# 3. Flytt loggfilen din inn i den nye mappen (bytt ut stien hvis filen ligger et annet sted)
mv ~/Nedlastinger/log.txt pmbootstrap/pmbootstrap_install_success.log
# 4. Sjekk statusen for å se at Git oppdager den nye mappen og filen
git status
# 5. Legg til mappen, gjør en commit og push til GitHub
git add pmbootstrap/
git commit -m "Arkitektur: Opprettet pmbootstrap-mappe og lagt til suksesslogg"
git push origin main
ls
cd pmbootstrap
ls
cd  ~/y
ls
ls -Rlas >> y-filelist.txt
sudo ls -Rlas >> y-filelist.txt
# 1. Sørg for at du står i din GitHub-mappe
cd ~/Wils-Linux-Legacy/Linux-Freedom-for-the/Armv7-klimt-Tab-S/pmbootstrap
# 2. Opprett rene mapper for enhet og kjerne
mkdir -p device-samsung-klimtlte
mkdir -p linux-samsung-klimtlte-downstream
# 3. Kopier KUN de verdifulle kildefilene fra y-katalogen
cp /home/wils/y/cache_git/pmaports/device/testing/device-samsung-klimtlte/{deviceinfo,APKBUILD} ./device-samsung-klimtlte/
cp /home/wils/y/cache_git/pmaports/device/archived/linux-samsung-klimtlte-downstream/{config-*,APKBUILD} ./linux-samsung-klimtlte-downstream/ 2>/dev/null
# 4. Sjekk at filene havnet på riktig sted
ls -R
git add
git add .
git commit
# 1. Gå helt ut i roten av repoet ditt (der README.md ligger)
cd ~/Wils-Linux-Legacy
# 2. Snarvei: Fortell Git at du vil beholde den rene versjonen av README.md fra HEAD
git checkout HEAD README.md
# 3. Fortell Git at konflikten offisielt er løst
git add README.md
# 4. Gå tilbake til pmbootstrap-mappen din
cd Linux-Freedom-for-the/Armv7-klimt-Tab-S/pmbootstrap
# 5. Legg til de nye gullkorn-filene dine på nytt
git add .
# 6. Gjør committen din (Nå vil det fungere!)
git commit -m "Løst konflikt i README og lagt til pmbootstrap kildekoder for Klimt"
# 7. Push alt opp til motorrommet på GitHub
git push origin main
cd ..
cd 
ls
~
ls -las
# Gå til den lokale mappen for ditt GitHub-repositorium
cd /home/wils/Wils-Linux-Legacy
# Kopier det oppdaterte skriptet inn i repositoriet
cp /home/wils/scripts/logg_arkiv.sh .
# Legg til, commit og push til GitHub
git add logg_arkiv.sh
git commit -m "Fikset løkkefeil og la til dynamisk topp 10 i YouTube-mal"
git push origin main
cd ..
dytt
arkiv
clear
arkiv
clear
arkiv
clear
arkiv
cd scripts
ls
sudo nano logg_arkiv.sh
cd ..
arkiv
# 🛠️ SCRIPT: logg_arkiv.sh (Warlord Edition - Matrix Aligned)
# 📝 BESKRIVELSE / DESCRIPTION:
#    NO: Arkiverer LOTRO combat-logger, telemetri og genererer YouTube-pitch.
#    EN: Archives LOTRO combat logs, telemetry, and generates YouTube pitch.
# ============================================================
# --- 1. GLOBALE KONFIGURASJONER & BANER ---
DATO=$(date +"%Y-%m-%d_%H%M")
LOTRO_KILDE="/home/wils/Games/WARLORDLOTRO/Spillfiler"
LOGG_LAGRING="/home/wils/Games/gaminglogger"
ARKIV_PRIVAT="/home/wils/arkiv_privat"
mkdir -p "$LOGG_LAGRING"
mkdir -p "$ARKIV_PRIVAT/LotRO/Combat"
# --- 2. INTERAKTIV SEKSJON ---
echo -n "Navn på denne sesjonen (f.eks. Mission-navn): "
read -r SESJON_NAVN
arkiv
cd scripts
nano logg-arkiv.sh
ls
sudo nano logg_arkiv.sh
arkiv
sudo nano logg_arkiv.sh
arkiv
nano /home/wils/scripts/logg_arkiv.sh
sudo nano /home/wils/scripts/logg_arkiv.sh
dytt
sudo find /boot /etc /usr /var -xdev -exec lsattr {} + 2>/dev/null | grep -E '^....[ia]'
# 1. Sørg for at rotfilsystemet faktisk er i skrivemodus
sudo mount -o remount,rw /
# 2. Fjern immutable-flagget fra fstab
sudo chattr -i /etc/fstab
# 3. Fjern immutable-flagget rekursivt fra HELE mappen med pakkebrønner
sudo chattr -R -i /etc/apt/sources.list.d
# Reparer eventuelle brutte eller halvkonfigurerte pakker efter krasjen
sudo dpkg --configure -a
sudo apt install -f -y
# Oppdater pakkelistene på nytt (nå som filene kan skrives til)
sudo apt update
sudo apt dist-upgrade -y
sudo apt autoremove -y
# Sjekk og fiks brutte avhengigheter
sudo dpkg --configure -a
sudo apt install -f -y
# 1. Sørg for at rotfilsystemet er i lese- og skrivemodus
sudo mount -o remount,rw /
# 2. Fjern immutable-flagget rekursivt fra alle kritiske systemområder
sudo chattr -R -i /boot /etc /usr /var 2>/dev/null
sudo chattr -R -a /boot /etc /usr /var 2>/dev/null
full
fix
rep
# Reparer eventuelle brutte eller halvkonfigurerte pakker efter krasjen
sudo dpkg --configure -a
sudo apt install -f -y
# Oppdater pakkelistene på nytt (nå som filene kan skrives til)
sudo apt update
systemctl list-unit-files | grep masked
# Kopier hele denne blokken og lim inn i terminalen
UNITS_TO_UNMASK="alsa-utils.service avahi-daemon.service cryptdisks-early.service cryptdisks.service cups.service dbus-org.freedesktop.Avahi.service dbus-org.freedesktop.ModemManager1.service google-chrome-update.service hwclock.service libvirtd.service ModemManager.service packagekit.service qemu-kvm.service saned.service screen-cleanup.service stop.service sudo.service systemctl.service udisks2.service virtlockd.service virtlogd.service x11-common.service avahi-daemon.socket libvirtd-admin.socket libvirtd-ro.socket libvirtd.socket virtlockd-admin.socket virtlockd.socket virtlogd-admin.socket virtlogd.socket"
sudo systemctl unmask $UNITS_TO_UNMASK
# 1. Sørg for at filsystemet fortsatt er åpent (just in case)
sudo mount -o remount,rw /
# 2. Tving dpkg til å konfigurere ferdig de avbrutte pakkene
sudo dpkg --configure -a
# 3. Løs eventuelle manglende avhengigheter
sudo apt install -f -y
# 4. Kjør ferdig selve distribusjonsoppgraderingen
sudo apt dist-upgrade -y
sudo rm -f /etc/apt/sources.list.d/*.tmp
sudo rm -f /etc/apt/sources.list.d/*.distUpgrade
sudo rm -f /etc/apt/sources.list.d/*.bak
# Sørg for at selve mappen er helt åpen
sudo chattr -i /etc/apt/sources.list.d
# Fjern låsen spesifikt fra de gjenstridige filene
sudo chattr -i /etc/apt/sources.list.d/*.tmp
sudo chattr -i /etc/apt/sources.list.d/*.distUpgrade
sudo chattr -i /etc/apt/sources.list.d/*.bak
# Prøv slettingen på nytt nå
sudo rm -v /etc/apt/sources.list.d/*.tmp
sudo rm -v /etc/apt/sources.list.d/*.distUpgrade
sudo rm -v /etc/apt/sources.list.d/*.bak
uname -r
lsb_release -a
full
rep
uname -r
sudo do-release-upgrade -d
sudo nano /etc/apt/sources.list.d/ubuntu.sources
lsattr /etc/apt/sources.list.d/ubuntu.sources
sudo chattr -i /etc/apt/sources.list.d/ubuntu.sources
lsattr /etc/apt/sources.list.d/ubuntu.sources
sudo mount -o remount,rw /
# 1. Tving Hele rot-filsystemet til å være i skrivemodus
sudo mount -o remount,rw /
# 2. Fjern låsen fra selve mappen (i tilfelle)
sudo chattr -i /etc/apt/sources.list.d
# 3. Fjern låsen fra selve filen du prøver å redigere
sudo chattr -i /etc/apt/sources.list.d/ubuntu.sources
# 4. Åpne nå filen i redigeringsmodus (Nano)
sudo nano /etc/apt/sources.list.d/ubuntu.sources
rep
full
fix
autocelan
autoclean
sudo apt autoclean
sudo apt autoremove
sodu apt --fix upgrade
sodu apt --fix-upgrade
sudo apt clean
fix
sudo apt full-upgrade
sudo apt update
sudo apt dist-upgrade -y
sudo apt autoremove -y
sudo nano /etc/apt/sources.list.d/ubuntu.sources
# 1. Tving Hele rot-filsystemet til å være i skrivemodus
sudo mount -o remount,rw /
# 2. Fjern låsen fra selve mappen (i tilfelle)
sudo chattr -i /etc/apt/sources.list.d
# 3. Fjern låsen fra selve filen du prøver å redigere
sudo chattr -i /etc/apt/sources.list.d/ubuntu.sources
# 4. Åpne nå filen i redigeringsmodus (Nano)
sudo nano /etc/apt/sources.list.d/ubuntu.sources
sudo apt update
sudo apt dist-upgrade -y
sudo apt autoremove -y
clear
sudo apt uptoremove
sudo apt autoremove
sudo full-upgrade
sudo apt full-upgrade
sudo apt --fix-broken install
sudo apt full-upgrade
# Sørg for skrivetilgang på roten
sudo mount -o remount,rw /
# Fjern immutable-flagget fra filene og mappene som feilet i loggen din
sudo chattr -i /boot/grub/grub.cfg
sudo chattr -i /etc/default/grub
sudo chattr -R -i /boot/grub /etc/default
sudo mount -o remount,rw /
sudo dpkg --configure -a
sudo apt autoremove -y
rep
uname -r
sudo mount -o remount,rw /
btop
sudo nano /usr/local/bin/wils-gaming-tweak.sh
# Sørg for skrivetilgang på roten
sudo mount -o remount,rw /
# Fjern immutable-flagget fra filene og mappene som feilet i loggen din
sudo chattr -i /boot/grub/grub.cfg
sudo chattr -i /etc/default/grub
sudo chattr -R -i /boot/grub /etc/default
sudo mount -o remount,rw /
sudo chattr -i /boot/grub/grub.cfg
sudo chattr -i /etc/default/grub
sudo chattr -R -i /boot/grub /etc/default
pkexec mv /etc/apt/sources.list.d/ubuntu.sources_txt /tmp/ 2>/dev/null
pkexec mv /etc/sudoers.d/gaming /tmp/gaming.bak
sudo lsb_release -a
uname -r
cd scripts
nano wils-prep-upgrade.sh
nano wils-verify-upgrade.sh
nano wils-immutize-vault.sh
chmod +x wils-prep-upgrade.sh wils-verify-upgrade.sh wils-immutize-vault.sh
dytt
cd ..
ls
rep
#!/bin/bash
# ==========================================================================
# Prosjekt: Wils-Linux-Legacy (Frankenstein / Warlord)
# Skript:   wils-verify-upgrade.sh
# Funksjon: DEL 2 - Tvinger frem stikkprøver med interaktiv Y/N-sjekk
# ==========================================================================
clear
echo "=== Wils-Linux-Legacy: DEL 2 - Strategisk Verifisering ==="
echo "===================================================================="
echo ""
# Stikkprøve 1: Kjerneversjon
echo "[STIKKPRØVE 1] Aktiv Kernel (uname -r):"
echo "--------------------------------------------------------"
uname -r
echo ""
# Stikkprøve 2: OS-distribusjon
echo "[STIKKPRØVE 2] Aktiv OS-versjon (lsb_release):"
echo "--------------------------------------------------------"
lsb_release -a 2>/dev/null || cat /etc/os-release | grep -E '^PRETTY_NAME=|^VERSION='
echo ""
# Stikkprøve 3: Monteringsstatus
echo "[STIKKPRØVE 3] Gjeldende mount-tilstand for /:"
echo "--------------------------------------------------------"
mount | grep ' / '
echo ""
echo "===================================================================="
# Den avgjørende beslutningsporten
read -p "Stemmer stikkprøvene med vår immutiserings-strategi? (Y/N): " svar
if [[ "$svar" =~ ^[Yy]$ ]]; then     echo "";     echo "--> [Y] Verifisert! Kobler inn automatisk overgang til DEL 3...";     echo "--------------------------------------------------------";     if [ -f "./wils-immutize-vault.sh" ]; then         ./wils-immutize-vault.sh;     else         echo "FEIL: Finner ikke 'wils-immutize-vault.sh' i denne mappen.";         echo "Vennligst kjør DEL 3-skriptet manuelt for å låse hvelvet!";     fi; else     echo "";     echo "====================================================================";     echo "--> [N] AVBRUTT: Immutisering ble holdt tilbake etter ditt ønske.";     echo "Systemet forblir i skrivemodus (rw) så vi kan analysere feil.";     echo "";     echo "Feilsøkings-verktøy for deg og din AI-kollega:";     echo "Kjør dette for kjernefeil:   sudo dmesg | tail -n 50";     echo "Kjør dette for systemfeil:  sudo journalctl -p 3 -xb";     echo "===================================================================="; fi
cd scripts
if [[ "$svar" =~ ^[Yy]$ ]]; then     echo "";     echo "--> [Y] Verifisert! Kobler inn automatisk overgang til DEL 3...";     echo "--------------------------------------------------------";     if [ -f "./wils-immutize-vault.sh" ]; then         ./wils-immutize-vault.sh;     else         echo "FEIL: Finner ikke 'wils-immutize-vault.sh' i denne mappen.";         echo "Vennligst kjør DEL 3-skriptet manuelt for å låse hvelvet!";     fi; else     echo "";     echo "====================================================================";     echo "--> [N] AVBRUTT: Immutisering ble holdt tilbake etter ditt ønske.";     echo "Systemet forblir i skrivemodus (rw) så vi kan analysere feil.";     echo "";     echo "Feilsøkings-verktøy for deg og din AI-kollega:";     echo "Kjør dette for kjernefeil:   sudo dmesg | tail -n 50";     echo "Kjør dette for systemfeil:  sudo journalctl -p 3 -xb";     echo "===================================================================="; fi
#!/bin/bash
# ==========================================================================
# Prosjekt: Wils-Linux-Legacy (Frankenstein / Warlord)
# Skript:   wils-immutize-vault.sh
# Funksjon: DEL 3 - Hard herding, maskering og fullstendig Vault-låsing
# ==========================================================================
echo "=== Wils-Linux-Legacy: DEL 3 - Utfører Vault-låsing ==="
echo "--------------------------------------------------------------------"
echo "1. Sørger for at rotfilsystemet er i skrivemodus under herding..."
sudo mount -o remount,rw /
echo "2. Re-maskerer samtlige herdede systemd-tjenester og sockets..."
UNITS="alsa-utils.service avahi-daemon.service cryptdisks-early.service \
cryptdisks.service cups.service dbus-org.freedesktop.Avahi.service \
dbus-org.freedesktop.ModemManager1.service google-chrome-update.service \
hwclock.service libvirtd.service ModemManager.service packagekit.service \
qemu-kvm.service saned.service screen-cleanup.service stop.service \
sudo.service systemctl.service udisks2.service virtlockd.service \
virtlogd.service x11-common.service avahi-daemon.socket \
libvirtd-admin.socket libvirtd-ro.socket libvirtd.socket \
virtlockd-admin.socket virtlockd.socket virtlogd-admin.socket virtlogd.socket"
sudo systemctl mask $UNITS
echo "3. Forsegler kjernekonfigurasjoner med Immutable-flagg (+i)..."
sudo chattr +i /etc/fstab
sudo chattr +i /etc/apt/sources.list.d/ubuntu.sources
sudo chattr +i /etc/default/grub
sudo chattr +i /boot/grub/grub.cfg
echo "4. Tvinger rot-filsystemet (/) over i endelig Read-Only (ro) modus..."
sudo mount -o remount,ro / 2>/dev/null
echo "--------------------------------------------------------------------"
echo "Endelig verifisering av hvelvets tilstand:"
mount | grep ' / '
echo "--------------------------------------------------------------------"
echo "STATUS: Hvelvet er stengt. Wils-Linux-Legacy kjører i sikker modus!"
echo "===================================================================="
mount | grep " / "
ls
sudo nano wils-immutize-vault.sh
sudo fuser -v -m /
./wils-immutize-vault.sh
sudo nano wils-immutize-vault.sh
mount | grep " / "
uname -r
sudo chattr +i /etc/fstab
sudo chattr +i /etc/apt/sources.list.d/ubuntu.sources
sudo chattr +i /etc/default/grub
sudo chattr +i /boot/grub/grub.cfg
lsattr lsattr -aR 2>/dev/null | awk '$1 ~ /i/'
lsattr -aR 2>/dev/null | grep -E '^[a-zA-Z-]*i'
sudo lsattr -aR / 2>/dev/null | awk '$1 ~ /i/'
clear
lsattr -aR 2>/dev/null | awk '$1 ~ /i/'
lsattr -lsaR 2>/dev/null | awk '$1 ~ /i/'
lsattr -aR 2>/dev/null | grep -E '^[a-zA-Z-]*i'
sudo lsattr -aR 2>/dev/null | grep -E '^[a-zA-Z-]*i'
sudo lsattr /etc/fstab /etc/apt/sources.list.d/ubuntu.sources /etc/default/grub /boot/grub/grub.cfg
sudo lsattr -R /etc /boot 2>/dev/null | grep -E '^.{4}i'
uname -r
mount | grep " / "
sudo mount -o remount,ro /
sudo grub-update
sudo update-grub
sudo fuser -v -m /
balooctl6 status
cp ~/scripts/wils-prep-upgrade.sh ~/scripts/wils-verify-upgrade.sh ~/scripts/wils-immutize-vault.sh ~/Wils-Linux-Legacy/
cd ~/Wils-Linux-Legacy
git status
git add wils-prep-upgrade.sh wils-verify-upgrade.sh wils-immutize-vault.sh
git commit -m "Add 3-part herding suite optimized for Kubuntu 26.04 LTS and Kernel 7.0 (kebab-case)"
git push origin main
dytt
cd ~/scripts
ls
./start_warlord_ai.sh
./open_vault
./open_vault.sh
./close_vault.sh
ls
./gaming-start.sh
y
./gaming-start.sh
wine --version
cd ..
wine --version
cd wils
wine --version
sudo apt install wine -y
wine --version
cd scripts

cd ..
clear
wine --versionclear
clear
sudo apt full-upgrade
susd systemctl restart sddm
sudo systemctl restart sddm
exit
sudo dmesg
sudo journalctl
arkiv
clear
arkiv
clear
rep
sudo update-grub
reboot
mount | grep " / "
uname -r
lsattr -aR 2>/dev/null | awk '$1 ~ /i/'
sudo lsattr /etc/fstab /etc/apt/sources.list.d/ubuntu.sources /etc/default/grub /boot/grub/grub.cfg
sudo mount -o remount,rw /
sudo chattr -i /etc/default/grub
nano /etc/default/grub
sudo nano /etc/default/grub
# 1. Åpne hvelvet live fra skrivebordet
sudo mount -o remount,rw /
# 2. Ta av immutable-flagget på boot-filen for å gjøre endringen din permanent
sudo chattr -i /boot/grub/grub.cfg
# 3. Generer den nye, rene oppstartsmenyen basert på det herlige oppsettet ditt
sudo update-grub
# 4. SMELL JERNPORTENE IGJEN FOR GODT! (+i)
sudo chattr +i /boot/grub/grub.cfg
history
dytt
sudo journalctl
sudo dmesg
lsblk -o NAME,FSTYPE,UUID,MOUNTPOINTS
sudo cat /etc/fstab
sudo mount -o remount,rw /
sudo chattr -i /etc/fstab
sudo nano /etc/fstab
systelctl restart sddm
systemctl restart sddm
rens
arkiv
cd scripts
lsl
ls
nano logg_arkiv.sh
sudo nano logg_arkiv.sh
dytt
arkiv
cd ..
cd sctipts
cd scripts
sudo nano logg_arkiv.sh
arkiv
cd ..
clear
arkiv
cd scripts
sudo nano logg_arkiv.sh
arkiv
# 🛠️ SCRIPT: logg_arkiv.sh (Warlord Ultimate Automation v4)
# 📝 BESKRIVELSE: Universal, navne-uavhengig og feilsikker tabell-matrise.
#                 Håndterer krevende Hunter-logger (Ravenous-effekter).
# ============================================================
# --- 1. GLOBALE KONFIGURASJONER & BANER ---
DATO=$(date +"%Y-%m-%d_%H%M")
LOTRO_KILDE="/home/wils/Games/WARLORDLOTRO/Spillfiler"
LOGG_LAGRING="/home/wils/Games/gaminglogger"
ARKIV_PRIVAT="/home/wils/arkiv_privat"
mkdir -p "$LOGG_LAGRING"
mkdir -p "$ARKIV_PRIVAT/LotRO/Combat"
# --- 2. INTERAKTIV SEKSJON ---
echo -n "Navn på denne sesjonen (f.eks. Mission-navn): "
read -r SESJON_NAVN
a: 6.4.5 | Frameworks: 6.17.0 | Qt: 9.9.2
🐧 Kernel: 6.17.0-19-generic (64-bit)
🖼️ Grafikk: Radeon 780M | RAM: 32 GiB
============================================================
⚡ TOPP 10 SKADE-PITCHES FRA SESJONEN
============================================================
Loggfil: $(basename "$LOGG_NYEST" 2>/dev/null || echo "Ingen logg")
EOF
# SKUDDSIKKER AWK-PARSER FOR ALL SLAGS SKADE (Også Ravenous uten 'on the')
if [ -f "$LOGG_NYEST" ]; then     grep "scored" "$LOGG_NYEST" | grep "for " | grep -v -E "on Nlkosi|on Zajana|on you" | sed -E 's/,//g' | awk '{
        type="[Normal]"
        if ($0 ~ /critical/) type="[Kritisk]"
        if ($0 ~ /devastating/) type="[Devastating]"
        
        # Finn skadetall trygt ved å hente ut tallet som kommer rett etter ordet "for"
        dmg=0
        for(i=1; i<=NF; i++) {
            if($i == "for") {
                dmg=$(i+1)
                break
            }
        }
        
        # Finn ferdigheten ved å isolere alt mellom "with " og den neste loggdelen ("on the", "on you" eller "for")
        skill=""
        if (match($0, /with .*( for | on the | on you )/)) {
            line = substr($0, RSTART+5, RLENGTH-5)
            # Rensk ut kjente haler hvis de ble med
            sub(/ for .*/, "", line)
            sub(/ on the.*/, "", line)
            sub(/ on you.*/, "", line)
            skill = line
        }
        
        # Fallback hvis match mislykkes helt på merkelige linjer
        if (skill == "") {
            skill = "Ukjent effekt"
        }
        
        # Fjern eventuelle gjenværende mellomrom
        gsub(/^ +| +$/, "", skill);
        
        print dmg ";" type ";" skill
    }' | sort -t';' -k1 -rn | head -n 10 | awk -F';' '{
        split($1, t, "");
        formatted=""
        len=length($1)
        for(i=1; i<=len; i++) {
            formatted=formatted t[i]
            if((len-i)%3==0 && i!=len) formatted=formatted" "
        }
        
        num = NR ".";
        # Matrisen tvinger alt på snorrette linjer uansett lengde på navnet
        printf "%-4s %-20s %-15s | %10s skade\n", num, $3, $2, formatted
    }'; else     echo "Ingen kampdata tilgjengelig for Topp 10."; fi
cat << EOF

============================================================
🔗 OPEN SOURCE & GITHUB-LENKER
============================================================
📂 Combat Log:
https://github.com/panzerdroideka/Warlord-Logs-Public/blob/main/Showcase

📊 Telemetri:
https://github.com/panzerdroideka/Wils-Linux-Legacy

💬 YouTube-kanal:
https://youtube.com/@willyolsen1017

🔗 Discord Community:
https://discord.gg/7bwAhKU9h
============================================================
EOF

sudo nano logg_arkiv.sh
arkiv
# 🛠️ SCRIPT: logg_arkiv.sh (Warlord Ultimate Automation v4)
# 📝 BESKRIVELSE: Universal, navne-uavhengig og feilsikker tabell-matrise.
#                 Håndterer krevende Hunter-logger (Ravenous-effekter).
# ============================================================
# --- 1. GLOBALE KONFIGURASJONER & BANER ---
DATO=$(date +"%Y-%m-%d_%H%M")
LOTRO_KILDE="/home/wils/Games/WARLORDLOTRO/Spillfiler"
LOGG_LAGRING="/home/wils/Games/gaminglogger"
ARKIV_PRIVAT="/home/wils/arkiv_privat"
mkdir -p "$LOGG_LAGRING"
mkdir -p "$ARKIV_PRIVAT/LotRO/Combat"
# --- 2. INTERAKTIV SEKSJON ---
echo -n "Navn på denne sesjonen (f.eks. Mission-navn): "
read -r SESJON_NAVN
if [ -z "$SESJON_NAVN" ]; then     SESJON_NAVN="LotRO Missions - Standard Kamp-økt"; fi
echo -n "Vil du dele denne sesjonen OFFENTLIG på GitHub? (y/N): "
read -r DEL_GITHUB
# AUTOMATISK SPLIT-LOGIKK FOR DOBLE SVERD-LINJER
if [[ "$SESJON_NAVN" == *" - "* ]]; then     HOVED_TITTEL=$(echo "$SESJON_NAVN" | awk -F' - ' '{print $1}');     UNDER_TITTEL=$(echo "$SESJON_NAVN" | awk -F' - ' '{print $2}');     TERM_HEADER="--- ⚔️ $HOVED_TITTEL ⚔️ ---\n--- ⚔️ $UNDER_TITTEL ⚔️ ---";     YT_HEADER="⚔️ $HOVED_TITTEL - $UNDER_TITTEL ⚔️"; else     TERM_HEADER="--- ⚔️ $SESJON_NAVN ⚔️ ---";     YT_HEADER="⚔️ $SESJON_NAVN ⚔️"; fi
echo -e "\n$TERM_HEADER"
echo "(Innhøsting startet $DATO)"
# --- 3. INNHØSTING AV UTGÅENDE LOGGER (Siste 120 min) ---
find "$LOTRO_KILDE" -type f -name "Combat_*.txt" -mmin -120 | while read -r fil; do     filnavn=$(basename "$fil");     nytt_navn="${DATO}_${filnavn}";          cp "$fil" "$ARKIV_PRIVAT/LotRO/Combat/$nytt_navn";     mv "$fil" "$LOGG_LAGRING/$nytt_navn"; done
# --- 4. FINN SISTE IMPORTERTE LOGG FOR AUTOMATISK TELEMETRI ---
LOGG_NYEST=$(ls -t "$LOGG_LAGRING"/${DATO}_Combat_*.txt 2>/dev/null | head -n 1)
if [ -z "$LOGG_NYEST" ] || [ ! -f "$LOGG_NYEST" ]; then     LOGG_NYEST=$(ls -t "$LOGG_LAGRING"/Combat_*.txt 2>/dev/null | head -n 1); fi
# --- 5. AUTOMATISK UNIVERSAL BEREGNING AV KAMP-DATA ---
if [ -f "$LOGG_NYEST" ]; then     TOTAL_UT=$(awk '/scored/ && /for/ && !/on Nlkosi|on Zajana|on you/ {gsub(/,/, "", $0); for(i=1;i<=NF;i++) if($i=="for") sum+=$(i+1)} END {print sum}' "$LOGG_NYEST");     MAX_HIT=$(awk '/scored/ && /for/ && !/on Nlkosi|on Zajana|on you/ {gsub(/,/, "", $0); for(i=1;i<=NF;i++) if($i=="for") if($(i+1)>max) max=$(i+1)} END {print max}' "$LOGG_NYEST");     
    MAX_SKILL=$(sed 's/,//g' "$LOGG_NYEST" | grep "scored" | grep -v "on Nlkosi|on Zajana|on you" | grep "$MAX_HIT" | sed -E 's/.*with ([A-Za-z ]+)( for| on).*/\1/' | head -n 1);          SKADE_INN=$(awk '/scored/ && /for/ && /on Nlkosi|on Zajana|on you/ {gsub(/,/, "", $0); for(i=1;i<=NF;i++) if($i=="for") sum+=$(i+1)} END {print sum}' "$LOGG_NYEST");     CRITS=$(grep "scored" "$LOGG_NYEST" | grep -v "on Nlkosi|on Zajana|on you" | grep -c "critical hit");     DEVS=$(grep "scored" "$LOGG_NYEST" | grep -v "on Nlkosi|on Zajana|on you" | grep -c "devastating hit");          [ -z "$TOTAL_UT" ] && TOTAL_UT=0;     [ -z "$MAX_HIT" ] && MAX_HIT=0;     [ -z "$SKADE_INN" ] && SKADE_INN=0; else     TOTAL_UT=0;     MAX_HIT=0;     MAX_SKILL="Ingen angrep";     SKADE_INN=0;     CRITS=0;     DEVS=0; fi
# --- 6. UTSKRIFT AV TELEMETRI I TERMINALEN ---
echo ""
echo "============================================================"
echo "📊 WARLORD LIVE TELEMETRI-SAMMENDRAG"
echo "============================================================"
if [ -f "$LOGG_NYEST" ]; then     echo "Analysert fil: $(basename "$LOGG_NYEST")";     echo "Total skade utdelt : $TOTAL_UT HP";     echo "Største treff      : $MAX_HIT med $MAX_SKILL";     echo "Kritiske treff     : $CRITS | Devastating: $DEVS";     echo "Total skade mottatt: $SKADE_INN HP"; else     echo "⚠️ Ingen ferske loggfiler ble funnet i $LOGG_LAGRING."; fi
echo "============================================================"
echo ""
# --- 7. GENERER FERDIG YOUTUBE-MAL (STRIKT 60 TEGN BREDDE) ---
cat << EOF
$YT_HEADER
============================================================
🚫 AI / LLM DEKLARASJON
============================================================
🇳🇴   Denne VIDEOEN er IKKE laget av AI eller LLM!
🇬🇧   This VIDEO is NOT made by AI or LLM!

============================================================
⚙️ MASKINVARE & RIGGOPPSETT
============================================================
💻 Rigg: "WARLORD" Workstation (Ace Magician AM08)
🖥️ Skjerm: 43" 4K UHD Philips PC Monitor (med PiP)

============================================================
📦 SYSTEM & TELEMETRI SPECS (OS)
============================================================
🌐 OS: Kubuntu 25.10 | Plattform: Wayland
🎨 Plasma: 6.4.5 | Frameworks: 6.17.0 | Qt: 9.9.2
🐧 Kernel: 6.17.0-19-generic (64-bit)
🖼️ Grafikk: Radeon 780M | RAM: 32 GiB

============================================================
⚡ TOPP 10 SKADE-PITCHES FRA SESJONEN
============================================================
Loggfil: $(basename "$LOGG_NYEST" 2>/dev/null || echo "Ingen logg")

EOF

# SKUDDSIKKER AWK-PARSER FOR ALL SLAGS SKADE (Også Ravenous uten 'on the')
if [ -f "$LOGG_NYEST" ]; then     grep "scored" "$LOGG_NYEST" | grep "for " | grep -v -E "on Nlkosi|on Zajana|on you" | sed -E 's/,//g' | awk '{
        type="[Normal]"
        if ($0 ~ /critical/) type="[Kritisk]"
        if ($0 ~ /devastating/) type="[Devastating]"
        
        # Finn skadetall trygt ved å hente ut tallet som kommer rett etter ordet "for"
        dmg=0
        for(i=1; i<=NF; i++) {
            if($i == "for") {
                dmg=$(i+1)
                break
            }
        }
        
        # Finn ferdigheten ved å isolere alt mellom "with " og den neste loggdelen ("on the", "on you" eller "for")
        skill=""
        if (match($0, /with .*( for | on the | on you )/)) {
            line = substr($0, RSTART+5, RLENGTH-5)
            # Rensk ut kjente haler hvis de ble med
            sub(/ for .*/, "", line)
            sub(/ on the.*/, "", line)
            sub(/ on you.*/, "", line)
            skill = line
        }
        
        # Fallback hvis match mislykkes helt på merkelige linjer
        if (skill == "") {
            skill = "Ukjent effekt"
        }
        
        # Fjern eventuelle gjenværende mellomrom
        gsub(/^ +| +$/, "", skill);
        
        print dmg ";" type ";" skill
    }' | sort -t';' -k1 -rn | head -n 10 | awk -F';' '{
        split($1, t, "");
        formatted=""
        len=length($1)
        for(i=1; i<=len; i++) {
            formatted=formatted t[i]
            if((len-i)%3==0 && i!=len) formatted=formatted" "
        }
        
        num = NR ".";
        # Matrisen tvinger alt på snorrette linjer uansett lengde på navnet
        printf "%-4s %-20s %-15s | %10s skade\n", num, $3, $2, formatted
    }'; else     echo "Ingen kampdata tilgjengelig for Topp 10."; fi
cat << EOF

============================================================
🔗 OPEN SOURCE & GITHUB-LENKER
============================================================
📂 Combat Log:
https://github.com/panzerdroideka/Warlord-Logs-Public/blob/main/Showcase

📊 Telemetri:
https://github.com/panzerdroideka/Wils-Linux-Legacy

💬 YouTube-kanal:
https://youtube.com/@willyolsen1017

🔗 Discord Community:
https://discord.gg/7bwAhKU9h
============================================================
EOF

clear
arkiv
clear
arkiv
clear
cd scripts
ls
sync_all_git
./sync_all_git
~/.sync_all_git.sh

./sync_all_git.sh
exit
rep
arkiv
sudo systemctl restart sddm
arkiv
clear
arkiv
clear
arkiv
mount | grep " / "
uname -r
rep
cat /etc/fstab
sudo kwrite /etc/fstab
sudo mount -o remount,rw /
sudo chattr -i /etc/fstab
sudo kwrite /etc/fstab
cd /
ls
cd etc
cd default
ls
cd ..
ls
ls -las
sudo nano fstab
sudo update-grub
reboot
mount | grep " / "
umane -r
uname -r
sudo nano ~/etc/fstab
cd /etc
ls
sudo nano fstab
sudo update-grub
cd grub.d
ls
cd ..
ls
cd..
cd ..
ls
cd etc
cd defaults
cd default
ls
cd grub-btrfs
ls
cd ..
ls
cd locale
ls
cd locale
mount | grep " / "
sudo chattr +i /boot/grub/grub.cfg
sudo update-grub
cd /boot/grub
ls
ls -las
sudo chattr -i /boot/grub/grub.cfg
sudo update-grub
sudo chattr +i /boot/grub/grub.cfg
mount | grep " / "
dytt
exit
sudo systemctl restart sddm
uname -r
mount | grep " / "
cat /etc/fstab
lsblk
sudo dmesg | grep -i -E "btrfs.*error|btrfs.*read-only"
sudo mount -o remount,rw /
mount | grep " / "
cat /etc/fstab
sudo chattr -i /boot/grub/grub.cfg
sudo nano fstab
sudo nano /etc/fstab
sudo update-grub
sudo chattr +i /boot/grub/grub.cfg
cat fstab
cat /etc/fstab
sudo charttr -i /etc/grub/grub.cfg
sudo chattr -i /etc/grub/grub.cfg
cd /etc/grub
cd ~/etc
cd /etc
cd grub
ls
ls -las
sudo chattr -i /etc/grub/grub.cfg
sudo chattr -i /boot/grub/grub.cfg
sudo update-grub
sudo chattr +i /boot/grub/grub.cfg
mount § grep " / "
mount | grep " / "
rep
mount | grep " / "
sudo mount -o remount,ro /
uname -r
mount | grep " / "
reboot
uname -r
cat /etc/fstab
lsblk
ip addr
ping www.vg.no
ping gls.lotro.com
mount | grep " / "
sudo nano /etc/fstab
sudo chattr -i /boot/grub/grub.cfg
sudo update-grub
sudo chattr +i /boot/grub/grub.cfg
reboot
uname -r
cat /etc/fstab
cat /boot/grub/grub.cfg
sudo cat /boot/grub/grub.cfg
lsblk
mount | grep " / "
cat /etc/fstab
sudo nano /etc/fstab
sudo chattr -i /etc/fstab
sudo nano /etc/fstab
sudo chattr +i /etc/fstab
cat /etc/fstab
reboot
sudo cat /etc/fstab
mount | " / "
mount | grep " / "
uname -r
arkiv
rep
cd scripts
le
ls
.sync_all_git.sh
sync_all_git.sh
./sync_all_git.sh
uname -r
cat /etc/fstab
sudo cat /boot/brug/grub.cfg
sudo cat /boot/grub/grub.cfg
cd ..
sudo dmesg >> dmesg201026.txt
sudo journalctl >> journalctl201026.txt
sudo systemctl << systemctl201026.txt
sudo rm /etc/modprobe.d/dirtyfrag.conf
lsmod | grep -E "esp4|esp6|rxrpc"
sudo chattr -i /etc/fstab
sudo chattr -i /boot/grub/grub.cfg
sudo nano /etc/default/grub
sudo chattr -i /boot/grub
sudo nano /etc/default/grub
cd /boot
lls
ls
cd grub
ls
ls -las
cd ..
ls
cd ..
sudo chattr -i /etc/default/grub
sudo nano /etc/default/grub
sudo update-grub
sudo chattr +i /etc/default/grub
sudo chattr +i /boot/grub
mount | grep " / "
exit
btop
rep
rens
rep
dmesg -n 10
sudo dmesg -n 10
sudo journalctl -N 10
sudo journalctl -n 10
sudo journalctl -n 100
dmesg
sudo dmesg
sudo dmesg >> dmesglog21052026.txt
sudo journalctl >> journalctllog21052026.txt
history
cd scripts
ls
sudo nano rens.sh
rens
source /.bashrc
source .bashrc
rens
sync
suocre bashrc
source /.bashrc
source .bashrc
exit
rens
source ~/.bashrc
rens
uname -r
mount | grep " / "
sudo mount -o remount,rw /
sudo chattr -i /etc/default/grub
sudo chattr -i /boot/grub/grub.cfg
sudo nano /etc/fstab
sudi chattr -i /etc/fstab
sudo chattr -i /etc/fstab
nano /etc/fstab
sudo nano /etc/fstab
cd scripts
ls
sudo nano wils-immutize-vault.sh
mount | grep " / "
umane -r
lsblk
sudo dmesg >> Wils-dmesglog210526.txt
sudo journalctl >> Wils-journalstllog210526.txt
uname -r
source ~/.bashrc
git-oppdater
dytt
sync
rens
arkiv
source ~/.bashrc
arkiv
source ~/.bashrc
arkiv
source ~/.bashrc
arkiv
source ~/.bashrc
arkiv
source ~/.bashrc
arkiv
uname -r
arkiv
source ~/.bashrc
prepupgrade
rep
prepupgrade
rep
source ~/.bashrc
CLEAR
clear
rep
source ~/.bashrc
clear
rep
rep >> wilsrepscript.txt
rep
prepupgrade
rep
source ~/.bashrc
rep
source ~/.bashrc
rep
source ~/.bashrc
rep
source ~/.bashrc
clear
rep
clear
source ~/.bashrc
clear
rep
gitsync
temp
btop
langjournal >> journal2205.txt
sudo dmesg >> dmesg2205.txt
arkiv
source ~/.bashrc
journalctl -b -1 -k > dmesg_crash.txt
journalctl -b -1 > journal_crash.txt
sudo mkdir -p /var/log/journal
sudo systemd-tmpfiles --create --prefix /var/log/journal
sudo nano /etc/systemd/journald.conf
sudo systemctl restart systemd-journald
clear
sudo apt install lm-sensors
ip addr
ip addr a
ip addr -a
ip addr
ip
sudo systemctl status ssh
prepupgrade
sudo apt update && sudo apt install openssh-server -y
rep
verifyupgrade
source ~/.bashrc
temp
sudo ufw allow ssh
sudo systemctl status ssh
chmod +x ~/scripts/warlord-telemetri.sh
temp
arkiv
sudo dmesg -T --level=err,crit,alert,emerg >> dmesg-log.txt
sudo journalctl >> journal_log.txt
lsusb -t
prepupgrade
rep
mount | grep " / "
verifyupgrade
mount | grep " / "
verifyupgrade
mount | grep " / "
verifyupgrade
sudo dmesg | tail -n 50
sudo journalctl -p 3 -xb
sudo mount -o remount,ro /
sudo dmesg | tail -n 50
sudo journalctl -p 3 -xb
mount | grep " / "
sudo lsof +f -- /
rep
mount | grep " / "
rep
mount | grep " / "
rep
mount | grep " / "
prepupgrade
mount | grep " / "
prepupgrade
mount | grep " / "
verifyupgrade
exit
mount | grep " / "
uname -r
lsblk
langjournal
clear
klog
clear
kfeil
sudo dmesg
clear
kfeil
klog
cd /etc
ls
cd default
ls
cd grub.d
ls
cd ..
cds ..
cd ..
cd boot
ls
cd grub
ls
chattr -i grub.cfg
sudo chattr -i grub.cfg
ls -lax
ls -las
clear
sudo mount -o remount,rw /
sudo chattr -i /boot/grub/grub.cfg
sudo nano grub.cfg
sudo chattr -i /boot/grub/grub.cfg
sudo chattr -i /boot/grub/boot/grub.cfg
sudo chattr -i /boot/grub/grub.cfg
sudo mount -o remount,rw /boot
sudo mount -o remount,rw /
sudo chattr -i /boot/grub/grub.cfg
sudo nano grub.cfg
sudo nano grub.cfg @ kate
sudo -H kate /boot/grub/grub.cfg
kate /boot/grub/grub.cfg
sudo nano -w /boot/grub/grub.cfg
cd /boot/grub
sudo nano -w /boot/grub/grub.cfg
dytt
cd ..
sudo chattr +i /boot/grub/grub.cfg
sudo mount -o remount,ro /
prepupgrade
rep
sync
verifyupgrade
exit
mount | grep " / "
journalctl -b -1 -k | tail -n 50
tail -n 100 /var/log/kern.log
tail -n 100 /var/log/syslog
arkiv
sudo mount -o remount,rw /boot
sudo chattr -i /boot/grub/grub.cfg
sudo mount -o remount,rw /
sudo chattr -i /boot/grub/grub.cfg
sudo nano -w /boot/grub/grub.cfg
sudo chattr +i /boot/grub/grub.cfg
sudo mount -o remount,ro /
reboot
uname -r
mount | grep " / "
langjournal
sudo mount -o remount,rw /
sudo grub-editenv /boot/grub/grubenv unset next_entry
sudo grub-editenv /boot/grub/grubenv set default="1>2"
sudo mount -o remount,ro /
reboot
uname -r
mount | grep " / "
sudo mount -o remount,rw /
sudo chattr -i /boot/grub/grub.cfg
sudo nano -w /boot/grub/grub.cfg
sudo chattr +i /boot/grub/grub.cfg
sudo mount -o remount,ro /
uname -r
mount | grep " / "
sudo mount -o remount,rw /
sudo chattr -i /boot/grub/grub.cfg
sudo grub-editenv /boot/grub/grubenv unset default
sudo grub-editenv /boot/grub/grubenv unset next_entry
sudo nano -w /boot/grub/grub.cfg
sudo chattr +i /boot/grub/grub.cfg
sudo mount -o remount,ro /
reboot
uname -r
mount | grep " / "
arkiv
dytt
syncgithub
githubsync
gitsync
nano LICENSE
cd rm -r LICENSE
rm -r LICENSE
cd Wils-Linux-Legacy
ls
nano LICENSE
chmod -x scripts/*.sh
ls
cd ..
ls
cd Wils-Linux-Legacy
mkdir scripts
mkdir configs
mkdir docs
ls -las
chmod +x scripts/*.sh
ls
cd scripts
ls
nano LICENSE
ls
chmod +x scripts/*.sh
chmod +x *.sh
ls
chmod +x LICENSE
nano CONTRIBUTING.md
ls
ls -las
cd docs
mkdir docs
cd docs
ls
cd ..
ls
rm -r docs
ls
cd ..
ls
cd docs
ls
mkdir Linux-Freedom-for-the
ls
cd ..
ls
ls -las
ls
ls -las
cp logg_arkiv.sh wils-immutize-vault.sh wils-prep-upgrade.sh wils-verify-upgrade.sh scripts/
ls
ls -las
git status
git add LICENSE
cd docs
ls
cd Linux-Freedom-for-the
ls
cd ..
ls
cd scripts
ls
cd ..
ls
cd configs
ls
cd ..
nano README.md
ls
ls -las
cd ..
ls
cd panzeerdroideka
cd panzerdroideka
ls
cat README.md
s
la
cd ..
ls
ls -las
clear
ls -las
~
clear
ls -las
mkdir GitHub
cd GitHub
mkdir panzerdroideka
ls
cd panzerdroideka
mv ~/Wils-Linux-Legacy ~/GitHub/panzerdroideka/
mv ~/Warlord-Logs-Private ~/GitHub/panzerdroideka/
mv ~/Warlord-Logs-Public ~/GitHub/panzerdroideka/
ls
ls -las
cd Wils-Linux-Legacy
ls
cd ..
cd Warlord-Logs-Private
ls
cd ..
cd Warlord-Logs-Public
ls
cd ..
cd Wils-Linux-Legacy
ls
ls -las
cd ..
ls -lasR >full-github-struktut.txt
cd ..
git status
cd GitHub
gitstatus
git status
cd panzerdroideka
ls
git status
cd Wils-Linux-Legacy
ls
git status
git add LICENSE CONTRIBUTING.md scripts/ configs/ docs/
git status
git commit -m "Optimize repository structure with MIT license, contributing guidelines, and clean folder architecture"
git status
git push
git push origin main
git status
uname -r
ls
cd docs
ls
cd Linux-Freedom-for-the
ls
nano erfaringslogg_kernel_rollback.md
git status
git push
git status
git commit
ls
ls -las
git add erfaringslogg_kernel_rollback.md
git commit -m "Min lek med Kernel 7.x oppdatering og rollback til stabil Kernel6.17.0-29-generic"
git push
cd .
cd ..
ls
cd ..
ls
cd docs
ls
cd Linux.Freedom-for-the
cd Linux-Freedom-for-the
ls
cd ..
clear
ls
git mv docs/Linux-Freedom-for-the/erfaringslogg_kernel_rollback.md Linux-Freedom-for-the/
ls
cd ..

ls
cd docs
ls
cd ..
ls
cd Linux-Freedom-for-the
ls
ls -las
cd ..
ls
cd docs
ls
rm -r Linux-Freedom-for-the
ls
cd ..
ls
git push
ls
cd Linux-Freedom-for-the
ls
git mv erfaringslogg_kernel_rollback.md
git add erfaringslogg_kernel_rollback.md
git commit -m "Lagt til manifest for kernel rollback i Freedom-mappen"
git push
cd ..
ls
git rm -r docs/Linux-Freedom-for-the/
cd docs
ls
ls -las
cd ..
ls -las
cd Linux-Freedom-for-the
ls -las
cd ..
ls
ls -las
git rm logg_arkiv.sh wils-immutize-vault.sh wils-prep-upgrade.sh wils-verify-upgrade.sh
git commit "Rydder roten: Fjerner duplikater av skript"
git commit -m "Rydder roten: Fjerner duplikater av skript"
git push
python3 --version
pip3 --version
mv ~/Downloads/client_secret_*.json ~/GitHub/panzerdroideka/Wils-Linux-Legacy/secrets/client_secrets.json
ls
mkdir secrets
ls
cd secrets
ls
ls -las
cd ..
git status
cd secrets
ls
mv client_secret_*.json client_secrets.json
ls
cd ..
echo "secrets/" >> .gitignore
echo "venv/" >> .gitignore
git status
git add .gitignore
git commit -m "Sikrer hvelvet: Setter secrets og venv i gitignore"
git push
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install google-api-python-client google-auth-oauthlib google-auth-httplib2
ls
cd scripts
nano yt_ping_test.py
python scripts/yt_ping_test.py
cd ..
python scripts/yt_ping_test.py
nano scripts/yt_upload.py
nano scripts/metadata_manifest.txt
nano scripts/yt_queue_worker.py
echo "alias ytgateway='/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/venv/bin/python /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/yt_queue_worker.py'" >> ~/.bashrc
source ~/.bashrc
ytgateway
yt_upload.py
/.yt_upload.py
cd scripts
/.yt_upload.py
ls
yt_queue_worker.py
./yt_queue_worker.py
sudo ./yt_queue_worker.py
--- STATUS REPORT ---
Suksess! Koblet til kanal: Wils-Linux-Legacy - HOWTO Reviwe Win8 hardware
Abonnenter: 5
Totalt antall videoer: 200
---------------------
Gateway er funksjonell og klar for gerilja-opplasting.
(venv) wils@WARLORD:~/GitHub/panzerdroideka/Wils-Linux-Legacy$ nano scripts/yt_upload.py
(venv) wils@WARLORD:~/GitHub/panzerdroideka/Wils-Linux-Legacy$ nano scripts/metadata_manifest.txt
(venv) wils@WARLORD:~/GitHub/panzerdroideka/Wils-Linux-Legacy$ nano scripts/yt_queue_worker.py
(venv) wils@WARLORD:~/GitHub/panzerdroideka/Wils-Linux-Legacy$ echo "alias ytgateway='/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/venv/bin/python /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/yt_queue_worker.py'" >> ~/.bashrc
source ~/.bashrc
wils@WARLORD:~/GitHub/panzerdroideka/Wils-Linux-Legacy$ ytgateway
KRITISK: Fant ikke token.json i secrets/. Kjør yt_upload.py manuelt én gang for å generere den.
wils@WARLORD:~/GitHub/panzerdroideka/Wils-Linux-Legacy$ yt_upload.py
yt_upload.py: fant ikke kommando
wils@WARLORD:~/GitHub/panzerdroideka/Wils-Linux-Legacy$ /.yt_upload.py
bash: /.yt_upload.py: Fila eller mappa finnes ikke
wils@WARLORD:~/GitHub/panzerdroideka/Wils-Linux-Legacy$ cd scripts
wils@WARLORD:~/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts$ /.yt_upload.py
bash: /.yt_upload.py: Fila eller mappa finnes ikke
wils@WARLORD:~/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts$ ls
logg_arkiv.sh          wils-immutize-vault.sh  wils-verify-upgrade.sh  yt_queue_worker.py
metadata_manifest.txt  wils-prep-upgrade.sh    yt_ping_test.py
wils@WARLORD:~/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts$ yt_queue_worker.py
yt_queue_worker.py: fant ikke kommando
wils@WARLORD:~/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts$ ./yt_queue_worker.py
bash: ./yt_queue_worker.py: Ikke tilgang
wils@WARLORD:~/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts$ sudo ./yt_queue_worker.py
[sudo: authenticate] Passord:               
sudo: cannot execute '/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/yt_queue_worker.py': Ikke tilgang (os error 13)

nano scripts/yt_queue_worker.py
nano /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/yt_queue_worker.py
ytgateway
cd ~/GitHub/panzerdroideka/Wils-Linux-Legacy/
source venv/bin/activate
pip install Pillow
nano scripts/yt_queue_worker.py
arkiv
uname -r
nano /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/metadata_manifest.txt
nano scripts/yt_bulk_updater.py
/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/venv/bin/python /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/yt_bulk_updater.py
nano scripts/yt_bulk_updater.py
/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/venv/bin/python /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/yt_bulk_updater.py
nano /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/yt_bulk_updater.py
ls
cd GitHub
ls
cd panzerdroideka
ls
cd Wils-Linux-Legacy
ls
rm /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/secrets/token.json
/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/venv/bin/python /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/yt_bulk_updater.py
nano /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/yt_bulk_updater.py
/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/venv/bin/python /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/yt_bulk_updater.py
dytt
prepupgrade
rep
verifyupgrade
sudo dmesg | tail -n 50
sudo journalctl -p 3 -xb
mount | grep " / "
uname -r
# 1. Den ultimate testen: Kan vi faktisk skrive til rota?
sudo touch /test_wils && sudo rm /test_wils
# 2. Sjekk om Btrfs har tvunget seg selv inn i feilmodus (Remount RO)
sudo dmesg | grep -Ei 'btrfs|error|critical|ro' | tail -n 20
# 3. Sjekk om det er NVMe-disken som har sviktet eller mistet kontakten
sudo dmesg | grep -i nvme | tail -n 10
verifyupgrade
clear
arkiv
sudo dmesg | grep -i nvme | tail -n 10
sudo dmesg | grep -Ei 'btrfs|error|critical|ro' | tail -n 20
sudo dmesg | grep -i nvme | tail -n 10
mount | grep " / "
uname -r
sudo dmesg
sudo dmesg | grep -i nvme | tail -n 10
sudo dmesg | grep -Ei 'btrfs|error|critical|ro' | tail -n 20
clear
sudo journalctl -b -1 -n 50
sudo journalctl -b -2 -n 50
sudo journalctl -b -0 -n 50
sudo journalctl -b -1 | grep -Ei 'amdgpu|drm|fence|ring|lck' | tail -n 30
sudo journalctl -b -1 _COMM=kwin_wayland | tail -n 30
sudo journalctl -b -2 _COMM=kwin_wayland | tail -n 30
sudo journalctl -b -0 _COMM=kwin_wayland | tail -n 30
sudo sysctl -w kernel.sysrq=1
nano ~/etc/sysctl.conf
cd /etc
ls
cd sysctl.d
ls
echo "kernel.sysrq = 1" | sudo tee /etc/sysctl.d/99-sysrq.conf
prepupgrade
echo "kernel.sysrq = 1" | sudo tee /etc/sysctl.d/99-sysrq.conf
sudo sysctl --system
cd ..
/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/venv/bin/python /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/yt_bulk_updater.py
clear
prepupgrade
sudo nano /etc/default/grub
sudo update-grub
sudo reboot
uname -r
grep -E "menuentry|submenu" /boot/grub/grub.cfg
prepupgrade
grep -E "menuentry|submenu" /boot/grub/grub.cfg
sudo grep -E "menuentry|submenu" /boot/grub/grub.cfg
sudo kwrite /etc/default/grub
sudo update grub
sudo update-grub
sudo reboot
sudo journalctl -b -0 _COMM=kwin_wayland | tail -n 30
sudo sysctl -w kernel.sysrq=1
uname -r
clear
sudo journalctl -b -1 -n 50
sudo journalctl -b -1 | grep -Ei 'amdgpu|drm|fence|ring|lck' | tail -n 30
sudo journalctl -b -1 _COMM=kwin_wayland | tail -n 30
sudo dmesg -wH | tee /home/wils/gpu_krasj_test2.log
uname -r
mount | grep " / "
arkiv
clear
dytt
arkiv
clear
arkiv
gitsync
git push
gitsync
dytt
arkiv
clear
uname -r
mount | grep " / "
clear
arkiv
ARKIV
arkiv
clear
btop
btop
source ~/.bashrc
arkiver-private
source ~/.bashrc
arkiver-private
source ~/.bashrc
arkiver-private
clear
arkiver-private
unalias arkiver-private 2>/dev/null
unset -f _arkiver_private_funksjon 2>/dev/null
source ~/.bashrc
arkiver-private
source ~/.bashrc
arkiver-private
source ~/.bashrc
arkiver-private
unset -f _arkiver_private_funksjon 2>/dev/null
clear
unalias arkiver-private 2>/dev/null
clear
unalias arkiver-private 2>/dev/null
unset -f _arkiver_private_funksjon 2>/dev/null
clear
arkiver-priavte
arkiver-private
reboot
btop
arkiver-private
source ~/.bashrc
arkiver-private
source ~/.bashrc
arkiver-private
source ~/.bashrc
arkiver-private
source ~/.bashrc
arkiver-private
ls
cd 
ls
arkiv
ytgateway
nano /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/yt_queue_worker.py
ytgateway
nano /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/yt_queue_worker.py
ytgateway
nano /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/yt_queue_worker.py
exit
ytgateway
arkiv
clear
ytgateway
arkiv
clear
arkiv
btop
sudo apt install gpuscreenrecorder
flatpak run com.dec05eba.gpu_screen_recorder
gsr
prepupgrade
history
source ~/.bash_aliases
verifyupgrade
prepupgrade
rep
source ~/.bashrc
rep
source ~/.bashrc
rep
btop
cd scripts
ls
nano vedlikehold.sh
ls -las
cd ..
source ~/.bash_aliases
chmod +x ~/scripts/wils-prep-upgrade.sh ~/scripts/vedlikehold.sh ~/scripts/wils-verify-upgrade.sh
cd scripts
ls -las
sync
prepupgrade
rep
verifyupgrade
prepupgrade
rep
verifyupgrade
1
cd ..
clear
arkiv
ytgateway
clear
prepupgrade
rep
source ~/.bash_aliases
rep
source ~/.bash_aliases
rep
exit
rep
cd scripts
rep
source ~/.bash_aliases
source ~/.bashrc
rep
cd ..
rep
source ~/.bashrc
source ~/.bash_aliases
rep
source ~/.bash_aliases
source ~/.bashrc
rep
verifyupgrade
btop
arkiv
ytgateway
arkiv
ytgateway
aekiv
arkiv
ytgateway
arkiv
ytgateway
btop
prepupgrade
rep
verifyupgrade
nano boothistorikk.txt
reboot
nano boothistorikk.txt
