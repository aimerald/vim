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
"autocmd VimEnter * execute 'NERDTree'

"UndoTreeを入れる
"Emacsですごく便利だった
NeoBundle "mbbill/undotree"

"どうやらUniteはNERDTreeを超えるらしい
NeoBundle 'Shougo/unite.vim'

"Vimで使える予測変換らしい
NeoBundle 'Shougo/neocomplcache'
"" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
			\ 'default' : ''
			\ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()"

"VIMSHELLというらしい
NeoBundle 'Shougo/vimproc.vim', {
			\ 'build' : {
			\     'windows' : 'tools\\update-dll-mingw',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make',
			\     'linux' : 'make',
			\     'unix' : 'gmake',
			\    },
			\ }
NeoBundle "Shougo/vimshell"

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


