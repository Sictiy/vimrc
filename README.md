# vimrc

## required

---

- vim8 or neovim
```shell
yum install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gcc make
git clone https://github.com/vim/vim.git
./configure --with-features=huge --enable-multibyte --enable-rubyinterp=yes --enable-pythoninterp=yes --with-python-config-dir=/usr/lib64/python2.7/config/ --enable-python3interp=yes --prefix=/usr/local/vim8
make && make install
mv /usr/bin/vim /usr/bin/vim.bak
ln -s /usr/local/vim8/bin/vim /usr/bin/vim

```
- python3
```shell
wget https://www.python.org/ftp/python/3.6.8/Python-3.6.8.tgz
tar -zxvf Python-3.6.8
./configure prefix=/usr/local/python3 --enable-shared
make && make install
ln -s /usr/local/python3/bin/python3 /usr/bin/python3
ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3

```

## config

---

- git clone ...
- ./setup.sh
- vim vimrc
- :PlugInstall

## issue

- 安装python3后运行出现python3: error while loading shared libraries: libpython3.6m.so.1.0: cannot open shared object file: No such file or directory
  - /etc/ld.so.conf.d 下，建立 python3.conf
  - python3.conf 中加入：/usr/local/python3/lib
  - ldconfig
- 编译youCompleteMe：c++: internal compiler error:killed(program cc1plus)
  - dd if=/dev/zero of=/root/swapfile bs=1M count=1024
  - mkswap /root/swapfile
  - swapon /root/swapfile
  - vim /etc/fstab 添加：/root/swapfile swap swap defaults 0 0
- 启动vim崩溃
  - 一般是plug出错
  - 重新编译youCompleteMe
