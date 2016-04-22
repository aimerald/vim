syntax on
set autoindent
set number
set tabstop=2
set shiftwidth=2

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" CRYSTALのシンタックス
NeoBundle "rhysd/vim-crystal"

"ここに新しいプラグインを追加していくよ(・∀・)"

"NERDTree -> 編集中にディレクトリ一覧を表示してくれるチートちゃん(・∀・)
NeoBundle "scrooloose/nerdtree"
autocmd VimEnter * execute 'NERDTree'

"｛｝とか（）を自動的に閉じてくれるおщ(ﾟдﾟщ)ｶﾓｰﾝ
NeoBundle "Townk/vim-autoclose"

"プログラムの断片を実行して挙動を確認できる便利ちゃん(๑╹ڡ╹๑)
NeoBundle 'thinca/vim-quickrun'

"Rails系のプラグイン
NeoBundle "tpope/vim-rails"

"Ruby向けにendを自動挿入してくれる
NeoBundle 'tpope/vim-endwise'

"syntax + 自動compile
NeoBundle 'kchmck/vim-coffee-script'

"JADE Syantax
NeoBundle 'digitaltoad/vim-jade'

"Vim go
NeoBundle 'fatih/vim-go'
NeoBundle 'vim-jp/vim-go-extra'

"QML
NeoBundle 'peterhoeg/vim-qml'

"SASS
NeoBundle 'AtsushiM/sass-compile.vim'
au BufRead,BufNewFile *.scss set filetype=sass


call neobundle#end()


" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------


