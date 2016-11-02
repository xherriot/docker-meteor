#!/bin/bash
apt-get update
apt-get install -y build-essential checkinstall
apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev gcc
#apt-get install build-essential libsqlite3-dev zlib1g-dev libncurses5-dev libgdbm-dev libbz2-dev libreadline5-dev libssl-dev libdb-dev

wget https://www.python.org/ftp/python/2.7.12/Python-2.7.12.tgz
tar xzf Python-2.7.12.tgz

cd Python-2.7.12
./configure
make altinstall
ln -s /usr/local/bin/python2.7 /usr/local/bin/python
