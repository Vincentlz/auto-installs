#########################################################################
# File APP: py3_install.sh
# Author: 
# mail: 
# Created Time: 2020年5月21日
#########################################################################
#!/usr/bin/env bash

yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel &&
wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tgz &&
mkdir -p /usr/local/python3.7 &&
tar -xvf Python-3.7.2.tgz &&
cd Python-3.7.2 &&
./configure --prefix=/usr/local/python3.7 &&
make &&
make install &&
ln -s /usr/local/python3/bin/python3.7 /usr/local/bin/python3 &&
ln -s /usr/local/python3/bin/pip3.7 /usr/local/bin/pip3 &&
pip3 install --upgrade pip &&
echo "python3 installed successfullly!"
