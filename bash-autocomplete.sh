git clone --recursive --depth 1 https://github.com/akinomyoga/ble.sh.git
make -C ble.sh
echo 'source ~/ble.sh/out/ble.sh' >> ~/.bashrc
