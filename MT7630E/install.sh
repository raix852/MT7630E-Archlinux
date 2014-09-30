cd $(dirname $0)
sudo chmod -R 777 .
sudo cp -R firmware/Wi-FI/* /lib/firmware/
sudo cp -R firmware/BT/* /lib/firmware/
cd rt2x00
make clean
make
cd ../btloader
make clean
make
##build complete
cd ..
sudo mkdir -p /usr/local/MT7630E
sudo cp -R rt2x00/*.ko /usr/local/MT7630E
sudo cp -R btloader/*.ko /usr/local/MT7630E
sudo cp rt2x00/load.sh /usr/local/MT7630E
sudo chmod 744 /usr/local/MT7630E/load.sh
sudo cp mt7630e.service /etc/systemd/system/
sudo systemctl enable mt7630e.service
sudo ./rt2x00/unload.sh
sudo ./rt2x00/load.sh