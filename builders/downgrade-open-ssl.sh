openssl version -a

echo "downloading"
cd /usr/local/src/
sudo wget https://www.openssl.org/source/openssl-1.1.1c.tar.gz
sudo tar -xf openssl-1.1.1c.tar.gz
cd openssl-1.1.1c

echo "building"
sudo ./config --prefix=/usr/local/ssl --openssldir=/usr/local/ssl shared zlib
sudo make
sudo make test
sudo make install
cd /etc/ld.so.conf.d/
sudo nano openssl-1.1.1c.conf

openssl version -a