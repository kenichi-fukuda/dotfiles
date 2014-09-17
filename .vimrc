" ----------------------------------------
" Vim only
" ----------------------------------------
set nocompatible

" ----------------------------------------
" Colors
" ----------------------------------------
set t_Co=256
colorscheme molokai

syntax on

highlight StatusLine   cterm=NONE ctermfg=white ctermbg=233
highlight StatusLineNC cterm=NONE ctermfg=white ctermbg=233
highlight VertSplit    cterm=NONE ctermfg=233   ctermbg=233

" ----------------------------------------
" Display
" ----------------------------------------
set laststatus=2
set number
set ruler
set showcmd
set showmatch
set list
set scrolloff=5
set matchtime=3
set listchars=tab:->,trail:-
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" ----------------------------------------
" Edit
" ----------------------------------------
set autoindent smartindent
set expandtab
set tabstop=4 softtabstop=0 shiftwidth=4
set wildmenu
set wildmode=list:full
set smarttab
set tw=0

" ----------------------------------------
" Search
" ----------------------------------------
set hlsearch
set incsearch

nnoremap n nzz 
nnoremap N Nzz 
nnoremap <Esc><Esc> :nohlsearch<CR>

" ----------------------------------------
" Files
" ----------------------------------------
set directory=~/.vim/swap
set backupdir=~/.vim/backup

" ----------------------------------------
" Vundle
" ----------------------------------------
filetype off 

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" manage plugins
Bundle 'gmarik/vundle'

" NeoBundle
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

filetype plugin indent on
filetype indent on
syntax on

NeoBundleCheck

" tree file browse
NeoBundle 'scrooloose/nerdtree'

" auto parentheses close
NeoBundle 'Townk/vim-autoclose'

" HTML snippets
NeoBundle 'mattn/emmet-vim'

" grep util
NeoBundle 'grep.vim'

" syntax check
NeoBundle 'scrooloose/syntastic'

NeoBundle 'drillbits/nyan-modoki.vim'

" search files
Bundle 'unite.vim'

" git command on vim
Bundle 'fugitive.vim'

" format codes
Bundle 'Align'

" toggle comment outs
Bundle 'git://github.com/scrooloose/nerdcommenter.git'

" bettar indentation for JavaScript
Bundle 'git://github.com/pangloss/vim-javascript.git'

" syntax and indent for coffee script
Bundle 'kchmck/vim-coffee-script'

" ----------------------------------------
" Unite.vim
" ----------------------------------------
let g:unite_enable_start_insert = 1

" open unite buffer
nnoremap <space><space> :Unite buffer file_rec<CR>

" ----------------------------------------
" Align.vim
" ----------------------------------------
let g:Align_xstrlen = 3

" ----------------------------------------
" NERD_commenter.vim
" ----------------------------------------
let g:NERDSpaceDelims = 1
let g:NERDShutup = 1

map <Leader>x <Plug>NERDCommenterToggle

" ----------------------------------------
" NERDTree.vim
" ----------------------------------------
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" ----------------------------------------
" syntastic for PHP
" ----------------------------------------
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_enable_highlighting = 1
let g:syntastic_php_php_args = '-l'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" ----------------------------------------
" nyan-modoki.vim
" ----------------------------------------
set laststatus=2
set statusline=%F%m%r%h%w[%{&ff}]%=%{g:NyanModoki()}(%l,%c)[%P]
let g:nyan_modoki_select_cat_face_number = 2
let g:nayn_modoki_animation_enabled= 1

" ----------------------------------------
" Other Key Mappings
" ----------------------------------------

" reload .vimrc
nnoremap <space>r :source ~/.vimrc<CR>

" move by one display line
nnoremap j gj
nnoremap k gk

" move to line head/end like mac
nnoremap <C-a> 0
nnoremap <C-e> $

" go to another window
nnoremap <space>h <C-w>h
nnoremap <space>j <C-w>j
nnoremap <space>k <C-w>k
nnoremap <space>l <C-w>l

" move the window to another position
nnoremap <space>H <C-w>H
nnoremap <space>J <C-w>J
nnoremap <space>K <C-w>K
nnoremap <space>L <C-w>L

" adjust the window height/width
nnoremap <space>+ <C-w>5+
nnoremap <space>- <C-w>5-
nnoremap <space>> <C-w>10>
nnoremap <space>< <C-w>10<

" hjkl move in insert mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" ctags
nnoremap <C-[> :pop<CR>
