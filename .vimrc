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


