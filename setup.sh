#!/bin/bash
echo "安装将花费一定时间，请女装dalao耐心等待直到安装完成^_^"
if which apt-get >/dev/null; then
	sudo apt-get install -y vim-nox-py2 ctags xclip astyle python-setuptools python-dev git
elif which yum >/dev/null; then
	sudo yum install -y gcc vim-nox-py2 git ctags xclip astyle python-setuptools python-devel
fi

##Add HomeBrew support on  Mac OS
if which brew >/dev/null;then
    echo "You are using HomeBrew tool"
    brew install vim ctags git astyle
fi

sudo easy_install -ZU autopep8 
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags
mv -f ~/vim ~/vim_old
cd ~/ && git clone https://github.com/realhaoyu/vim.git
mv -f ~/.vim ~/.vim_old
mv -f ~/vim ~/.vim
mv -f ~/.vimrc ~/.vimrc_old
mv -f ~/.vim/.vimrc ~/
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
echo "正在努力为女装dalao安装bundle程序" > realhaoyu
echo "安装完毕将自动退出" >> realhaoyu
echo "请耐心等待" >> realhaoyu
vim realhaoyu -c "BundleInstall" -c "q" -c "q"
rm realhaoyu
echo "安装完成"
