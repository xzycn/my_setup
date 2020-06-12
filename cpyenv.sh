sudo apt-get install -y zlib1g-dev


v=$1
mirror=https://npm.taobao.org/mirrors/python/$v/Python-$v.tar.xz
wget $mirror -P ~/.pyenv/cache/
pyenv install $v 
