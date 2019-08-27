
set fenc=utf-8
set nobackup
set noswapfile

set nu
set title " display filename (not Thank you for using Vim.)
set showcmd " 入力中のコマンドをステータスに表示する
set cursorline "現在の行を強調表示
set virtualedit=onemore " 行末の1文字先までカーソルを移動できるように
set smartindent " インデントはスマートインデント
set showmatch " 括弧入力時の対応する括弧を表示
set laststatus=2 " ステータスラインを常に表示
set t_Co=256
set wildmode=list:longest " コマンドラインの補完

" シンタックスハイライトの有効化
syntax enable

set clipboard=unnamed " sharing clipboard

autocmd Colorscheme * highlight FullWidthSpace ctermbg=white
autocmd VimEnter * match FullWidthSpace /　/
" カラースキームの設定
colorscheme desert

set ambiwidth=double

" indents and tabs
set tabstop=4
set shiftwidth=4
set autoindent

set list listchars=tab:\▸\-,trail:-,nbsp:%
hi SpecialKey ctermbg=None ctermfg=59 guibg=NONE guifg=None

" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

set ignorecase
set smartcase
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc> " ESC連打でハイライト解除
