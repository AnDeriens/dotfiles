" バックアップディレクトリ
set backupdir=$HOME/vimbackup
" スワップ
" set directory=$HOME/vimbackup
set noswapfile

" バックスペースが効かない問題
set backspace=indent,eol,start

" 行番号
set number

" 検索結果をハイライト
set hlsearch

" タブ設定
set smarttab
set expandtab
set shiftwidth=4
set tabstop=4

" color
syntax on 
colorscheme molokai
set t_Co=256

" cursor
set cursorline
set cursorcolumn
highlight CursorLine ctermbg=236
highlight CursorColumn ctermbg=236
" インサートモード/コマンドモードでカーソル強調を切替（無効化中）
" autocmd InsertEnter,InsertLeave * set cursorline!
" autocmd InsertEnter,InsertLeave * set cursorcolumn!
