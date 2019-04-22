sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo cat <<<
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
> /etc/apt/sources.list
sudo apt update
sudo apt upgrade
sudo apt-get install zlib1g-dev build-essential libssl-dev libffi-dev python3-dev libmysqlclient-dev
sudo mkdir -p /data/software && cd /data/software
# 安装Python
sudo wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz
sudo tar Jxvf Python-3.7.3.tar.xz
cd Python-3.7.3
./configure
sudo make
sudo make install
# 安装nodejs
cd /data/software
sudo wget https://nodejs.org/dist/v11.14.0/node-v11.14.0-linux-x64.tar.xz
sudo tar Jxvf node-v11.14.0-linux-x64.tar.xz
sudo cp -r node-v11.14.0-linux-x64/* /usr/local/bin
# 创建本地盘符的软链接
sudo ln -s /mnt/c /c
sudo ln -s /mnt/d /d
sudo ln -s /mnt/e /e
sudo ln -s /mnt/f /f