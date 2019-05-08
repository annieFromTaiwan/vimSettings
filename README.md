(0)
=====

~$ mkdir ~/.vim


(1) Install pathogen
=====

### make a directory `~/.vim/autoload` and install pathogen

### https://github.com/tpope/vim-pathogen

~$ mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

### then add `execute pathogen#infect()` to .vimrc then this will work



(2) .vimrc
=====

~$ cd ~/Documents

~$ git clone https://github.com/annieFromTaiwan/vimSettings.git

~$ ln -s ~/Documents/vimSettings/my_vimrc .vimrc



(3) Install other plugins - e.g. surround
=====

### https://github.com/tpope/vim-surround

~$ mkdir ~/.vim/bundle

~$ cd ~/.vim/bundle

~$ git clone git://github.com/tpope/vim-surround.git

### open vim, type `:Helptags` and then you can use `:help surround`


.bash_profile
=====

(1) curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

(2) ln -s ~/Documents/vimSettings/my_bash_profile ~/.bash_profile


.gitconfig
=====

ln -s ~/Documents/vimSettings/my_gitconfig ~/.gitconfig


Other
=====

### brew (2018 resource):

http://osxdaily.com/2018/03/07/how-install-homebrew-mac-os/

### python2-pip: 

https://pip.pypa.io/en/stable/installing/

```
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user
python -m pip --version
```


