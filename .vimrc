" バックアップディレクトリ
set backupdir=$HOME/vimbackup
" スワップ
" set directory=$HOME/swap
set noswapfile

" バックスペースが効かない問題
set backspace=indent,eol,start

" 行番号
set number

" タブ設定
set autoindent
set smarttab
set expandtab
set shiftwidth=4
set tabstop=4

" color
syntax on 
colorscheme molokai
set t_Co=256

" ハイライト
set showmatch

" cursor
set cursorline
set cursorcolumn
highlight CursorLine ctermbg=236
highlight CursorColumn ctermbg=236
" インサートモード/コマンドモードでカーソル強調を切替（無効化中）
" autocmd InsertEnter,InsertLeave * set cursorline!
" autocmd InsertEnter,InsertLeave * set cursorcolumn!

" ビープ音
set noerrorbells

" 検索設定
set hlsearch
nnoremap <ESC><ESC> :nohlsearch<CR>
set wildignorecase

" status line
" そのうちlightline使う
set statusline=%F%m%=%l,%c\ [LOWS=%L]
set laststatus=2

"dein Scripts-----------------------------
if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

let s:dein_dir_path=expand('~/.vim/bundles')
" Required:
if dein#load_state(s:dein_dir_path)
    call dein#begin(s:dein_dir_path)

    " Let dein manage dein
    " Required:
    call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')

    " Add or remove your plugins here like this:
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')

    call dein#add('Shougo/deoplete.nvim')
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif
    let g:deoplete#enable_at_startup = 1

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" Plugin key-mappings.
" " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

"set snippet file dir
let g:neosnippet#snippets_directory='~/.vim/bundles/repos/github.com/Shougo/neosnippet-snippets/snippets/'
" set snippet preview window off
set completeopt-=preview
