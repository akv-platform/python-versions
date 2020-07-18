
openssl version -a

#sudo dpkg -r --force-depends "openssl"

echo "downloading"
cd /usr/local/src/
sudo wget https://www.openssl.org/source/openssl-1.0.0.tar.gz
sudo tar -xf openssl-1.0.0.tar.gz
cd openssl-1.0.0

echo "building"
sudo ./config --prefix=/usr/local/ssl --openssldir=/usr/local/ssl shared zlib
sudo make
sudo make test
sudo make install
cd /etc/ld.so.conf.d/
sudo nano openssl-1.0.0.conf

echo "result???"
openssl version -a