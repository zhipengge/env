### 1. 忽略大小写
~~~shell
echo 'set completion-ignore-case on' >> ~/.inputrc
~~~

### 2. zerotier
~~~shell
curl -s https://install.zerotier.com | sudo bash
sudo systemctl enable zerotier-one.service
sudo systemctl start zerotier-one.service
sudo zerotier-cli join 【Network ID】
~~~

### cuda
![](./images/cuda.png)
~~~shell
# 1. cuda
# 1.1 check gcc version https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html
# install gcc-13.2.0
wget http://ftp.gnu.org/gnu/gcc/gcc-13.2.0/gcc-13.2.0.tar.gz
tar -xf gcc-13.2.0.tar.gz
cd gcc-13.2.0
./configure -v --build=x86_64-linux-gnu --host=x86_64-linux-gnu --target=x86_64-linux-gnu --prefix=/usr/local/gcc-13.2.0 --enable-checking=release --enable-languages=c,c++ --disable-multilib --program-suffix=-13.2.0
make -j6  # 30 min
sudo make install
cd /usr/bin
sudo ln -s /usr/local/gcc-13.2.0/bin/gcc-13.2.0 gcc
sudo ln -s /usr/local/gcc-13.2.0/bin/g++-13.2.0 g++
sudo ln -s /usr/local/gcc-13.2.0/bin/gcc-13.2.0 cc
# check version
gcc --version
# 1.2 install driver
# browse https://www.nvidia.cn/geforce/drivers/
chmod +x /path/to/driver
sudo /path/to/driver
# 1.3 install cuda
# browse https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=20.04&target_type=runfile_local
sudo ./cuda_xxx_linux.run
# 1.4 cudnn
# browse https://developer.nvidia.com/cudnn-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=20.04&target_type=deb_local
# edit ~/.bashrc
export CUDA_HOME=/usr/local/cuda
export PATH=$PATH:$CUDA_HOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_HOME/lib64
~~~
