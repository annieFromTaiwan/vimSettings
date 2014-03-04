" If no screen, use color term
"if ($TERM == "vt100")
  " xterm-color / screen
  "set t_Co=8
  "set t_AF=[1;3%p1%dm
  "set t_AB=[4%p1%dm
"endif

if filereadable($VIMRUNTIME . "/vimrc_example.vim")
 so $VIMRUNTIME/vimrc_example.vim
endif

if filereadable($VIMRUNTIME . "/macros/matchit.vim")
 so $VIMRUNTIME/macros/matchit.vim
endif

syntax on

set nocompatible
set wildmenu
set backupdir=~/tmp,.,/var/tmp/vi.recover,/tmp
set directory=~/tmp,/var/tmp/vi.recover,/tmp,.
"set backup		" keep a backup file
set nobackup		" keep a backup file
" set textwidth=78
" set shiftwidth=4
set bs=2		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
set showmatch

"set background=dark	" another is 'light'

" VIM 6.0,
if version >= 600
    set nohlsearch
    " set foldcolumn=2
    " set foldmethod=syntax
    set foldmethod=marker
    set foldlevel=1
"    set foldtext=/^/=>
    set encoding=utf-8
    " set fileencoding=big5
    " set termencoding=big5
    " set encoding=big5
     set fileencodings=latin,big5,ucs-bom,utf-8,sjis,big5
    " set fileencodings=ucs-bom,utf-8,sjis,big5,latin1
else
    set encoding=utf-8
    set fileencoding=taiwan
endif

" Tab key binding
if version >= 700
  map  [D :tabprev<CR>
  map  [C :tabnext<CR>
  map  <C-c> :tabnew<CR>
  imap <C-c> <ESC>:tabnew<CR>
  map  <C-t> :tabnew<CR>
  imap <C-t> <ESC>:tabnew<CR>
  map  <C-k> :tabclose<CR>
  map  <C-w> :tabclose<CR>
  map  <C-p> :tabprev<CR>
  imap <C-p> <ESC>:tabprev<CR>
  map  <C-n> :tabnext<CR>
  "imap <C-n> <ESC>:tabnext<CR>
  map <F4> :set invcursorline<CR>

  set tabpagemax=1000

  map g1 :tabn 1<CR>
  map g2 :tabn 2<CR>
  map g3 :tabn 3<CR>
  map g4 :tabn 4<CR>
  map g5 :tabn 5<CR>
  map g6 :tabn 6<CR>
  map g7 :tabn 7<CR>
  map g8 :tabn 8<CR>
  map g9 :tabn 9<CR>
  map g0 :tabn 10<CR>
  map gc :tabnew<CR>
  map gn :tabn<CR>
  map gp :tabp<CR>
  
  map  <Home> ^
  imap <Home> <Esc>I
  map  <F2> *
  imap <F2> <Esc>*i
  map  <F3> #
  imap <F3> <Esc>#i
  map  ff 0d$

  map  , <Down>
  map  j <Left>

  highlight TabLineSel term=bold,underline cterm=bold,underline ctermfg=7 ctermbg=0
  highlight TabLine    term=bold cterm=bold ctermfg=white ctermbg=black
  highlight clear TabLineFill


end

" Crontabs must be edited in place
"au BufRead /tmp/crontab* :set backupcopy=no 



set sw=4
set sts=4
set number
"set guifont=Cantarell:h14

if has("gui_running")
    " GUI is running or is about to start.
    " Maximize gvim window.
    set lines=25 columns=120
    set guifont=Consolas:h14 "pitch 14
    color pyte "~/.vim/colors/pyte.vim
else
    " This is console Vim.
    "color evening
    " set font=Arial
    color morning
endif

set tabstop=4       "按一次tab跑出4個空格
set shiftwidth=4    "自動縮排時一次4個空格
set expandtab       "編輯時將tab轉成空格
":retab =>所有tab變空格
"ctrl+v+tab =>按真的tab
set mouse=v

