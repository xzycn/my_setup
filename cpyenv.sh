v=$1
mirror=https://npm.taobao.org/mirrors/python/$v/Python-$v.tar.xz
wget $mirror -P ~/.pyenv/cache/
pyenv install $v 
