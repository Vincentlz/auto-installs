yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel &&
wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tar.xz &&
tar -xvJf  Python-3.7.2.tar.xz &&
mkdir /usr/local/python3 &&
cd Python-3.7.2 &&
./configure --prefix=/usr/local/python3 --enable-optimizations --with-ssl &&
#第一个指定安装的路径,不指定的话,安装过程中可能软件所需要的文件复制到其他不同目录,删除软件很不方便,复制软件也不方便.
#第二个可以提高python10%-20%代码运行速度.
#第三个是为了安装pip需要用到ssl,后面报错会有提到.
make && make install &&
yum install libffi-devel &&
ln -s /usr/local/python3/bin/python3 /usr/local/bin/python3 &&
ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3 &&
python3 -V &&
pip3 -V &&
cd Python-3.7.2 &&
./configure --with-ssl &&
make && make install &&
echo "python3 installed successfullly!"
#------------------------------------------------------------------------------------
#卸载python3
#      rpm -qa|grep python3|xargs rpm -ev --allmatches --nodeps       卸载pyhton3
#      whereis python3 |xargs rm -frv           删除所有残余文件
#      成功卸载！
#      whereis   python       查看现有安装的python
