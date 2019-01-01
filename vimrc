syntax on
set autoindent
set number
set tabstop=2
set shiftwidth=2
colorscheme molokai
set t_Co=256

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

"ここに新しいプラグインを追加していくよ(・∀・)"

" migemo!
NeoBundle 'haya14busa/vim-migemo'

"NERDTree -> 編集中にディレクトリ一覧を表示してくれるチートちゃん(・∀・)
NeoBundle "scrooloose/nerdtree"
"autocmd VimEnter * execute 'NERDTree'

"UndoTreeを入れる
"Emacsですごく便利だった
NeoBundle "mbbill/undotree"

" Uniteを超えるdenite
NeoBundle 'Shougo/denite.nvim'

" おしゃれPowerLine
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme = 'molokai'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
		\ 'default' : ''
		\ }

"｛｝とか（）を自動的に閉じてくれるおщ(ﾟдﾟщ)ｶﾓｰﾝ
NeoBundle "Townk/vim-autoclose"

" fzfはバリはやのhelm-fileって感じ。使うにはbrew install fzfが必要だ
set rtp+=/usr/local/opt/fzf
NeoBundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
NeoBundle 'junegunn/fzf.vim'

" ctrlpはhelmっぽいなにかの予感
set runtimepath^=~/.vim/bundle/ctrlp.vim
" キャッシュディレクトリ
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
" キャッシュを終了時に削除しない
let g:ctrlp_clear_cache_on_exit = 0
" 遅延再描画
let g:ctrlp_lazy_update = 1
" ルートパスと認識させるためのファイル
let g:ctrlp_root_markers = ['Gemfile', 'pom.xml', 'build.xml']
" CtrlPのウィンドウ最大高さ
let g:ctrlp_max_height = 20
" 無視するディレクトリ
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/]\.(git|hg|svn)$',
\ 'file': '\v\.(exe|so|dll)$',
\ 'link': 'some_bad_symbolic_links',
\ }

" Elixir
NeoBundle "elixir-lang/vim-elixir"

"プログラムの断片を実行して挙動を確認できる便利ちゃん(๑╹ڡ╹๑)
NeoBundle 'thinca/vim-quickrun'

"Rails系のプラグイン
NeoBundle "tpope/vim-rails"

"Ruby向けにendを自動挿入してくれる
NeoBundle 'tpope/vim-endwise'

"syntax + 自動compile
NeoBundle 'kchmck/vim-coffee-script'

" Git操作関連
NeoBundle 'tpope/vim-fugitive'

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

" キーバインドはここから下
noremap ff :GFiles

"-------------------------
" End Neobundle Settings.
"-------------------------
