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

~$ git clone https://github.com/annieFromTaiwan/vimSettings.git

~$ mv vimSettings/ ~/.vim

~$ ln -s ~/.vim/vimSettings/my_vimrc .vimrc



(3) Install other plugins - e.g. surround
=====

### https://github.com/tpope/vim-surround

~$ mkdir ~/.vim/bundle

~$ cd ~/.vim/bundle

~$ git clone git://github.com/tpope/vim-surround.git

### open vim, type `:Helptags` and then you can use `:help surround`
