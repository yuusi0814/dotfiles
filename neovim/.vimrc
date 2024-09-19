" setting
" バックスペースの挙動を通常と同じにする
set backspace=2
" VIMの内部エンコードをUTF-8とする
set encoding=UTF-8
" ファイルの読み込みのエンコード順を指定
set fileencodings=UTF-8,CP932
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" undoファイルを作らない
set noundofile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" TerminalモードをEscで抜ける
tnoremap <ESC> <C-\><C-n>
" クリップボードに追加
set clipboard+=unnamedplus
" jjでEscを実行する
"inoremap <silent> jj <ESC>
" :eでファイルツリーを有効にする
set wildmenu
" NERDTreeトグル
nnoremap <C-t> :NERDTreeToggle<CR>
" ウインドウ移動
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sh <C-w>h
nnoremap sl <C-w>l
" ウインドウ自体を移動
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sH <C-w>H
nnoremap sL <C-w>L
" ウインドウのサイズ変更
nnoremap s> <C-w>>
nnoremap s< <C-w><
nnoremap s+ <C-w>+
nnoremap s- <C-w>-

" 見た目系
" 行番号を表示
set number
" 通常文字列の文字色を黄色にする
hi Constant ctermfg=14
" カーソルラインの設定を初期化
hi clear CursorLine
" 現在の行を強調表示
set cursorline
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" 256色表示
" set t_Co=256
" 背景色を指定(見やすくするため)
set background=dark

" ファイル名表示
set statusline=%F
" 変更チェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" ヘルプページなら[HELP]と表示
set statusline+=%h
" プレビューウインドウなら[Preview]と表示
set statusline+=%w
" これ以降は右寄せ表示
set statusline+=%=
" file encoding
set statusline+=[ENC=%{&fileencoding}]
" 現在行数/全行数
set statusline+=[ROW=%l/%L]
" 現在列数
set statusline+=[COL=%c]
" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2

" Tab系
" 不可視文字を可視化(タブが「^ 」と表示される)
set list listchars=tab:\^\
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4

" 検索系
" 大文字小文字を区別せずに検索
set ignorecase
" 検索文字列に大文字が含まれていれば区別して検索
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" シンタックスハイライトの有効化
syntax enable

" JSON整形
if executable('jq')
    command! -range=% Jqf <line1>,<line2>!jq .
endif
" テストコマンド
command Usmr echo "USMR COMMAND!"

" プラグイン系
" 全てのプラグインをロードする
packloadall
" 全てのプラグイン用にヘルプファイルをロードする
silent! helptags All
"vim-plug
call plug#begin('~/.vim/plugged')

"マッピング
Plug 'tpope/vim-unimpaired'
" ColorScheme
Plug 'sainnhe/gruvbox-material'
" ColorSchemeを/.vim.colorsにコピー(コピされてないけどなんか動く)
Plug 'tyrannicaltoucan/vim-deep-space', {'do': 'cp colors/* ~/.vim/colors/'}
" SyntaxHighlight
" Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
" git
Plug 'tpope/vim-fugitive'
" git 変更行表示
Plug 'airblade/vim-gitgutter'
" ファイルツリー
Plug 'scrooloose/nerdtree'
" ステータスライン
Plug 'vim-airline/vim-airline'
" LSP
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 一括コメント
Plug 'tpope/vim-commentary'
" tag表示
Plug 'preservim/tagbar'

call plug#end()

" colorschemeを指定
colorscheme gruvbox-material

" 移動
" コントロールキーとhjklで分割されたWindowを移動する
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

" 背景透過(カラースキームの定義より後に記載する)
" テキスト
highlight Normal ctermbg=none
" テキスト下余白
highlight NonText ctermbg=none
" 行番号
highlight LineNr ctermbg=none
" コマンドの折りたたみ
highlight Folded ctermbg=none
" ファイルの終わり以降の空白
highlight EndOfBuffer ctermbg=none

" tagbar
nmap <F8> :TagbarToggle<CR>
