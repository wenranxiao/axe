"===============================================
"Description: my vimrc for linux
"
"
"Author: Wran
"
"           工欲善其事必先利其器
"================================================

"关闭vi兼容模式
set nocompatible
"自动语法高亮
"syntax on
"colorscheme ron
"colorscheme evening
colorscheme Wrancolor
"colorscheme desert
"colorscheme slate
"colorscheme torte
"colorscheme delek
"colorscheme koehler
"colorscheme morning
"colorscheme anotherdark

"显示行号
set nu
"为了方便复制，用<F2>开启/关闭行号显示
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
"设置 tab 的长度
set tabstop=4
"突出显示当前行
set cursorline
"显示垂直线
set cursorcolumn 
"在状态栏上显示正在输入的命令
set showcmd
"打开状态栏标尺
set ruler
"设置缩进长度
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set backspace=indent,eol,start
"高亮显示当前的匹配
set wildmenu
"设置字体
"set guifont=Courier_New:h10:cANSI 
set commentstring=\ #\ %s
"显示状态栏(默认的值为1 无法显示)
set laststatus=2
"设置在状态栏上显示的信息
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
"设置不自动拆行
set nowrap
"高亮显示搜索结果
set hlsearch
map <C-n> :noh<CR>

"实时进行高亮查询
set incsearch
"共享剪切板
set clipboard+=unnamed
"设置编码
set fileencoding=utf-8
set encoding=utf-8
"设置不自动拆行
set nowrap
"临时粘贴，解决缩进混乱的问题，进入paste模式
set pastetoggle=<F10>
"窗口切换快捷键修改
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


"================================================
"   保证vim在reopen一个文件的时候定位到同一行
"=================================================
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"================================================
"       自动检测文件的类型并加载相应的位置
"=================================================

syntax on
filetype plugin indent on
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType java setlocal et sta sw=4 sts=4
autocmd FileType php setlocal et sta sw=4 sts=4
autocmd FileType c setlocal et sta sw=4 sts=4
autocmd FileType cpp setlocal et sta sw=4 sts=4
autocmd FileType html setlocal et sta sw=2 sts=2
autocmd FileType xml setlocal et sta sw=4 sts=4
autocmd FileType bash setlocal et sta sw=4 sts=4



"================================================
"                代码折叠
"=================================================
autocmd FileType python setlocal foldmethod=indent
autocmd FileType java setlocal foldmethod=indent
autocmd FileType php setlocal foldmethod=indent
autocmd FileType c setlocal foldmethod=indent
autocmd FileType cpp setlocal foldmethod=indent
autocmd FileType html setlocal foldmethod=indent
autocmd FileType xml setlocal foldmethod=indent
autocmd FileType bash setlocal foldmethod=indent
"默认展开所有代码
set foldlevel=99
"空格键作为快捷键
nnoremap <space> za

