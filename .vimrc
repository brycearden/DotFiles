set nocompatible              " be iMproved

" Package Management {{{
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'kevinw/pyflakes-vim'
Bundle 'Raimondi/delimitMate'
Bundle 'Lokaltog/vim-powerline'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" }}}

" Colors {{{
syntax enable
colorscheme baycomb " set default colorscheme
set background=dark " set background to dark
" }}}

" Spaces and Tabs {{{
set shiftwidth=4	" Number of spaces for auto indenting also effects reindent operations (<< and >>)
set tabstop=4		" A tab is 4 spaces"
set softtabstop=4	" number of spaces in tab when editing
set smarttab		" insert tabs on the start of a line according to
					"    shiftwidth, not tab stop
set autoindent		" turns on auto indentions
" }}}

" UI Config {{{
set nowrap			" Lines don't wrap
set laststatus=2	" Always show status bar
filetype indent on	" load filetype-specific intent files
set showcmd 		" shows command in bottom right
set wildmenu		" visual autocomplete for command menu
set wildignore=*.swp,*.bak,*.pyc,*.class " ignore some files in wild menu
set lazyredraw
set showmatch		" highlight matching [{()}]
set backspace=2 	" can backspace through anything
set autoread
" }}}

" Searching {{{
set hlsearch
set incsearch
" }}}

" Folding {{{
set foldenable		" enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10	" 10 nested fold max
"set foldmethod=indent " default folding method
" }}}

" Backups {{{
set backup						" enables backup supoort
set backupdir=~/.vim/backup//	" uses backup directory in .vim for all backups
set directory=~/.vim/swap//		" uses swap directory in .vim for all swp files
set undodir=~/.vim/undo//		" uses undo directory in .vim for all undo files
" }}}

" Custom Functions {{{

" toggle between number and relativenumber
function! ToggleNumber()
	if (&relativenumber == 1)
		set norelativenumber
		set number
	else
		set relativenumber
	endif
endfunc

" }}}

set encoding=utf-8
set t_Co=256

" Changes leader key to ,
let mapleader=","

" Allow easy window shifting
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Allow using ctl + arrow up or down to move between folds
nmap <C-Up> zk
nmap <C-Down> zj

" turn of seach highlight with ,<space>
" leader key can be set with mapleader variable like so:
" 	:let mapleader = "\"
nnoremap <leader><space> :nohlsearch<CR>

" highlight last inserted text
nnoremap gV `[v`]

" edit vimrx/bashrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.bashrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" maps space to open and close folds
nnoremap <space> za

"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.

filetype plugin on

" Last 5 lines are modelines
set modelines=5
" vim:foldmethod=marker:foldlevel=0
