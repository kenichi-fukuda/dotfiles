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

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" manage plugins
Bundle 'gmarik/vundle'

" search files
Bundle 'unite.vim'

" complete keys
Bundle 'Shougo/neocomplcache'

" complete snippets
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'

" git command on vim
Bundle 'fugitive.vim'

" format codes
Bundle 'Align'

" toggle comment outs
Bundle 'git://github.com/scrooloose/nerdcommenter.git'

" HTML snippets
Bundle 'mattn/emmet-vim'

" tree explorer
Bundle 'git://github.com/scrooloose/nerdtree.git'

" bettar indentation for JavaScript
Bundle 'git://github.com/pangloss/vim-javascript.git'

" syntax and indent for coffee script
Bundle 'kchmck/vim-coffee-script'

" plugins for Titanium Desktop/Mobile
Bundle 'git://github.com/pekepeke/titanium-vim.git'

filetype plugin indent on

" ----------------------------------------
" Unite.vim
" ----------------------------------------
let g:unite_enable_start_insert = 1

" open unite buffer
nnoremap <space><space> :Unite buffer file_rec<CR>

" ----------------------------------------
" neocomplcache.vim
" ----------------------------------------
let g:neocomplcache_enable_at_startup = 1

highlight Pmenu     ctermbg=8
highlight PmenuSel  ctermbg=1
highlight PmenuSbar ctermbg=0

" "imap <expr><Tab> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<Tab>"
" "imap <expr><Tab> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<Tab>"

inoremap <expr><CR>  neocomplcache#smart_close_popup()."\<CR>"
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()

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
" neocomplcache for PHP
" ----------------------------------------
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'

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

" complete surroundings
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap \| \|\|<Left>

" hjkl move in insert mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" ctags
nnoremap <C-[> :pop<CR>
