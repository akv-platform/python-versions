
openssl version -a

#sudo dpkg -r --force-depends "openssl"

echo "downloading"
VER="1.0.0a"
sudo apt install build-essential checkinstall zlib1g-dev -y
cd /usr/local/src/
sudo wget https://www.openssl.org/source/openssl-$VER.tar.gz
sudo tar -xf openssl-$VER.tar.gz
cd openssl-$VER

echo "building"
sudo ./config --prefix=/usr/local/ssl --openssldir=/usr/local/ssl shared zlib
sudo make
sudo make test
sudo make install_sw
cd /etc/ld.so.conf.d/
sudo nano openssl-$VER.conf

echo "result???"
openssl version -a