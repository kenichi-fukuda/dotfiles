"*****************************************************************************
"" dein core
if &compatible
    set nocompatible
endif

let s:deinDir = ! exists('s:deinDir') ? $HOME . '/.vim/dein.vim' : s:deinDir
let &runtimepath = &runtimepath . ',' . s:deinDir . '/repos/github.com/Shougo/dein.vim'

"*****************************************************************************
"" dein install packages
"*****************************************************************************
if dein#load_state(s:deinDir)
    call dein#begin(s:deinDir)

    call dein#add('KazuakiM/neosnippet-snippets')
    call dein#add('Shougo/dein.vim')
    call dein#add('Shougo/neocomplete.vim')
    call dein#add('Shougo/neoinclude.vim')
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/vimproc.vim', {'build': 'make'})
    call dein#add('thinca/vim-quickrun')
    call dein#add('thinca/vim-ref')
    call dein#add('w0rp/ale')
    call dein#add('scrooloose/nerdtree')
    call dein#add('h1mesuke/vim-alignta')
    call dein#add('https://github.com/cohama/lexima.vim')
    call dein#add('mattn/emmet-vim')
    call dein#add('scrooloose/syntastic')
    call dein#add('tpope/vim-surround')
    call dein#add('terryma/vim-multiple-cursors')
    call dein#add('tpope/vim-commentary')
    call dein#add('tpope/vim-fugitive')
    call dein#add('kien/ctrlp.vim')
    call dein#add('bling/vim-airline')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('sheerun/vim-polyglot')
    call dein#add('vim-scripts/unite.vim')
    call dein#add('vim-scripts/fugitive.vim')
    call dein#add('vim-scripts/grep.vim')
    call dein#add('vim-scripts/CSApprox')
    call dein#add('vim-scripts/taglist.vim')
    call dein#add('honza/vim-snippets')
    call dein#add('tomasr/molokai')
    call dein#add('joonty/vdebug')
    call dein#add('arnaud-lb/vim-php-namespace')
    call dein#add('stephpy/vim-php-cs-fixer')

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable

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
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,mac,dos
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
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/

" ----------------------------------------
" Edit
" ----------------------------------------
set autoindent
set smartindent
set expandtab
set tabstop=4 softtabstop=0 shiftwidth=4
set wildmenu
set wildmode=list:full
set smarttab
set tw=0
set backspace=indent,eol,start

autocmd BufNewFile,BufRead *.tpl    set filetype=html
autocmd BufNewFile,BufRead *.twig   set filetype=html

augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.json setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

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
set nobackup
set autoread
set noswapfile
set hidden

" ----------------------------------------
" Unite.vim
" ----------------------------------------
let g:unite_enable_start_insert = 1
nnoremap <space><space> :Unite buffer file_mru<CR>

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
let g:NERDTreeChDirMode = 2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 20
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <F3> :NERDTreeToggle<CR>

" ----------------------------------------
" grep.vim
" ----------------------------------------
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'
let g:unite_enable_start_insert = 1
nnoremap <space><space> :Unite buffer file_rec<CR>

" ----------------------------------------
" vim-multiple-cursors
" ----------------------------------------
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_start_key='<F6>'

" ----------------------------------------
" syntastic for PHP
" ----------------------------------------
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_enable_highlighting = 1
let g:syntastic_php_php_args = '-l'
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" ----------------------------------------
" organized for PHP
" ----------------------------------------
let g:php_baselib       = 1
let g:php_htmlInStrings = 1
let g:php_noShortTags   = 1
let g:php_sql_query     = 1
let g:php_parent_error_close = 1
let g:sql_type_default = 'mysql'

" ----------------------------------------
" vdebug
" ----------------------------------------
let g:vdebug_force_ascii = 1

" ----------------------------------------
" PHP Dict
" ----------------------------------------
inoremap <silent><C-k> <C-o>:call<Space>ref#K('normal')<CR><ESC>
nmap <silent>K <Plug>(ref-keyword)
let g:ref_no_default_key_mappings = 1
let g:ref_cache_dir = $HOME . '/.vim/vim-ref/cache'
let g:ref_detect_filetype = {
            \    'php': 'phpmanual'
            \}
let g:ref_phpmanual_path = $HOME . '/.vim/vim-ref/php-chunked-xhtml'
let g:ref_use_cache = 1
let g:ref_use_vimproc = 1

" ----------------------------------------
" Taglist
" ----------------------------------------
nnoremap <silent> <leader>l :TlistToggle<CR>
let g:tlist_php_settings        = 'php;c:class;d:constant;f:function'
let g:Tlist_Exit_OnlyWindow     = 1
let g:Tlist_Show_One_File       = 1
let g:Tlist_Use_Right_Window    = 1
let g:Tlist_WinWidth            = 25

" ----------------------------------------
" PHP-CS-FIXER
" ----------------------------------------
function! MyStatuslineSyntax() abort "{{{
    let l:ret = ale#statusline#Status()
    if 0 < len(l:ret)
        highlight StatusLine cterm=NONE gui=NONE ctermfg=Black guifg=Black ctermbg=Magenta guibg=Magenta
    elseif s:lineUpdate is# 1
        highlight StatusLine cterm=NONE gui=NONE ctermfg=Black guifg=Black ctermbg=Grey guibg=Grey
    endif
    return l:ret
endfunction "}}}

function! MyStatuslinePaste() abort "{{{
    if &paste is# 1
        return '(paste)'
    endif
    return ''
endfunction "}}}

" function! ale#statusline#Status() abort "{{{
"     let l:errorDict = {'lnum': 9999, 'text': ''}
"     let l:bufnr = bufnr('')
"     if has_key(g:ale_buffer_info, l:bufnr) && has_key(g:ale_buffer_info[l:bufnr], 'loclist')
"         for l:row in g:ale_buffer_info[l:bufnr].loclist
"             if l:row.lnum <= l:errorDict.lnum
"                 let l:errorDict = {'lnum': l:row.lnum, 'text': l:row.text}
"             endif
"         endfor
"         if l:errorDict.lnum < 9999
"             return '[ ' . l:errorDict.lnum . ' ]' . l:errorDict.text
"         endif
"     endif
"     return ''
" endfunction "}}}

set laststatus=2
set cmdheight=1
" set statusline=\ %t\ %{MyStatuslinePaste()}\ %m\ %r\ %h\ %w\ %q\ %{MyStatuslineSyntax()}%=%l/%L\ \|\ %Y\ \|\ %{&fileformat}\ \|\ %{&fileencoding}\ 

nmap <silent> <Subleader>N <Plug>(ale_previous)
nmap <silent> <Subleader>n <Plug>(ale_next)
nmap <silent> <Subleader>a <Plug>(ale_toggle)

" ale {{{
let g:ale_echo_cursor              = 0
let g:ale_emit_conflict_warnings   = 0
let g:ale_history_enabled          = 0
let g:ale_history_log_output       = 0
let g:ale_lint_on_enter            = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_text_changed     = 'never'
let g:ale_linters                  = {
\    'php': ['php']
\}
let g:ale_max_buffer_history_size        = 0
let g:ale_pattern_options_enabled        = 1
let g:ale_set_highlights                 = 1
let g:ale_set_signs                      = 1
let g:ale_warn_about_trailing_whitespace = 0

" neosnippet-snippets
" neosnippet.vim
" neoinclude.vim
" neocomplete.vim {{{
imap <silent><expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" neosnippet.vim
smap <silent><expr><TAB>  neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
nmap <silent><expr><TAB>  neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
imap <silent><expr><C-x>  MyNeoCompleteCr()
imap <silent><expr><CR>   MyNeoCompleteCr()
nmap <silent><S-TAB> <ESC>a<C-r>=neosnippet#commands#_clear_markers()<CR>
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS>  neocomplete#smart_close_popup()."\<C-h>"
"neocomplete.vim
let g:neocomplete#auto_completion_start_length = 3
let g:neocomplete#data_directory               = $HOME .'/.vim/neocomplete.vim'
let g:neocomplete#delimiter_patterns           = {
\    'javascript': ['.'],
\    'php':        ['->', '::', '\'],
\    'ruby':       ['::']
\}
let g:neocomplete#enable_at_startup         = 1
let g:neocomplete#enable_auto_close_preview = 1
let g:neocomplete#enable_auto_delimiter     = 1
let g:neocomplete#enable_auto_select        = 0
let g:neocomplete#enable_fuzzy_completion   = 0
let g:neocomplete#enable_smart_case         = 1
let g:neocomplete#keyword_patterns          = {'_': '\h\w*'}
let g:neocomplete#lock_buffer_name_pattern  = '\.log\|.*quickrun.*\|.jax'
let g:neocomplete#max_keyword_width         = 30
let g:neocomplete#max_list                  = 8
let g:neocomplete#min_keyword_length        = 3
let g:neocomplete#sources                   = {
\    '_':          ['neosnippet', 'file',               'buffer'],
\    'css':        ['neosnippet',         'dictionary', 'buffer'],
\    'html':       ['neosnippet', 'file', 'dictionary', 'buffer'],
\    'javascript': ['neosnippet', 'file', 'dictionary', 'buffer'],
\    'php':        ['neosnippet', 'file', 'dictionary', 'buffer']
\}
let g:neocomplete#sources#buffer#cache_limit_size  = 50000
let g:neocomplete#sources#buffer#disabled_pattern  = '\.log\|\.jax'
let g:neocomplete#sources#buffer#max_keyword_width = 30
let g:neocomplete#sources#dictionary#dictionaries  = {
\    '_':          '',
\    'css':        $HOME . '/.vim/dict/css.dict',
\    'html':       $HOME . '/.vim/dict/html.dict',
\    'javascript': $HOME . '/.vim/dict/javascript.dict',
\    'php':        $HOME . '/.vim/dict/php.dict'
\}
let g:neocomplete#use_vimproc = 1
"neoinclude.vim
let g:neoinclude#exts          = {'php': ['php', 'inc', 'tpl']}
let g:neoinclude#max_processes = 5
"neosnippet.vim
let g:neosnippet#data_directory                = $HOME . '/.vim/neosnippet.vim'
let g:neosnippet#disable_runtime_snippets      = {'_' : 1}
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory            = $HOME . '/.vim/dein.vim/repos/github.com/KazuakiM/neosnippet-snippets/neosnippets'
function! MyNeoCompleteCr() abort "{{{
    if pumvisible() is# 0
        return "\<CR>X\<C-h>"
    elseif neosnippet#expandable_or_jumpable()
        return "\<Plug>(neosnippet_expand_or_jump)"
    endif
    return "\<Left>\<Right>"
endfunction "}}}
"}}}

nnoremap <Leader>run  :<C-u>QuickRun<CR>
nnoremap <Leader>phpf :<C-u>QuickRun<Space>phpfixer<CR>
nnoremap <Leader>phpi :<C-u>QuickRun<Space>phpinfo<CR>
nnoremap <Leader>phpt :<C-u>QuickRun<Space>phpunit<CR>
let g:quickrun_config = {
\    '_': {
\        'hook/close_buffer/enable_empty_data': 0,
\        'hook/close_buffer/enable_failure':    0,
\        'outputter':                           'multi:buffer:quickfix',
\        'outputter/buffer/close_on_empty':     1,
\        'outputter/buffer/split':              ':botright',
\        'runner':                              'job'
\    },
\    'php': {
\        'command':                             'php',
\        'exec':                                '%c %s',
\        'hook/close_buffer/enable_empty_data': 0,
\        'hook/close_buffer/enable_failure':    0,
\        'outputter':                           'buffer',
\        'outputter/buffer/close_on_empty':     0,
\        'outputter/buffer/into':               0,
\        'outputter/buffer/split':              ':botright 7sp'
\    },
\    'phpfixer': {
\        'command':                'php-cs-fixer',
\        'cmdopt':                 'fix',
\        'exec':                   '%c %o %s:p',
\        'outputter':              'buffer',
\        'outputter/buffer/into':  1,
\        'outputter/buffer/split': ':botright 7sp',
\        'runner':                 'system'
\    },
\    'phpinfo': {
\        'command':   'php',
\        'cmdopt':    '-info',
\        'exec':      '%c %o',
\        'outputter': 'buffer'
\    },
\    'phpunit': {
\        'command':   'phpunit',
\        'exec':      '%c %s',
\        'outputter': 'buffer'
\    },
\    'sql': {
\        'type': 'sql/mysql'
\    },
\    'sql/mysql': {
\        'exec':                  "%c %o < %s | sed -e 's/\t/|/g'",
\        'outputter':             'buffer',
\        'outputter/buffer/into': 1
\    }
\}
"}}}

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

vnoremap < <gv
vnoremap > >gv
cnoremap %% <C-R>=expand('%:p:h').'/'<cr>

"" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
