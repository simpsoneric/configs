let g:python_host_prog = '/home/esimpson/anaconda3/bin/python'
let g:python3_host_prog = '/home/esimpson/anaconda3/bin/python'

" {{{ Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'sbdchd/neoformat', { 'on': 'Neoformat' }

Plug 'vhdirk/vim-cmake'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'jeetsukumaran/vim-buffergator'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'

Plug 'Valloric/YouCompleteMe'

"Plugin 'junegunn/goyo.vim'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'

"Plugin 'vim-syntastic/syntastic'

" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
   " Both options are optional. You don't have to install fzf in ~/.fzf
   " and you don't have to run the install script if you use fzf only in Vim.

"Plugin 'tpope/vim-surround'

Plug 'yuttie/comfortable-motion.vim'
Plug 'flazz/vim-colorschemes'


call plug#end()

filetype plugin indent on
" }}}

" {{{ colors
set background=dark
" }}}

" {{{ General
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
"command W w !sudo tee % > /dev/null
"}}}

" {{{ Moving Around
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" }}}

"{{{ VIM user interface

set termguicolors
set modeline
set laststatus=2

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1
" }}}

" {{{ Files, backups and undo
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
" }}}

" {{{ Text, tab and indent related
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" }}}

" {{{ Spell checking
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
" }}}
"
" {{{ Filename completion
"inoremap <Tab> <C-X><C-F>

set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp
" }}}

" {{{ Comment string config
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s
" }}}

" {{{ comfortable motion
let g:comfortable_motion_friction = 80.0
let g:comfortable_motion_air_drag = 4.0
" }}}

" " {{{ ale checker
" let g:ale_linters = {
"             \ 'cpp': ['clangtidy', 'cppcheck', 'clangcheck']
"             \}
" " }}}
"

" " {{{ Fuzzy finder
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>
" " }}}
"
" " {{{ CMake
nnoremap <silent> <leader>cm :CMake<cr>
nnoremap <silent> <leader>m :make<cr>
" " }}}

" Configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala

highlight Folded guibg=#0f0f0f0f
highlight Folded ctermbg=black
" vim:foldmethod=marker:foldlevel=0
