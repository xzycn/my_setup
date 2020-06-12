sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git


v=$1
mirror=https://npm.taobao.org/mirrors/python/$v/Python-$v.tar.xz
wget $mirror -P ~/.pyenv/cache/
pyenv install $v 
