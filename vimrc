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
"颜色配方
"colorscheme Wrancolor
"colorscheme anotherdark
"colorscheme darkburn
colorscheme asmanian2
map b <c-b>
map f <c-f>
"显示行号
set nu
"为了方便复制，用<F2>开启/关闭行号显示
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
"设置 tab 的长度
set tabstop=4
"突出显示当前行
set cursorline
"显示垂直线
nnoremap <F4> :set cursorcolumn!<CR>
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


"   保证vim在reopen一个文件的时候定位到同一行
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"       自动检测文件的类型并加载相应的位置

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



"                代码折叠
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
"插件管理
call pathogen#infect()
imap jj <esc>
imap kk <esc>
imap hh <esc>
imap ll <esc>
"导入gdb
map <F6> :call AddTitle()<cr>'s
function AddTitle()
    let lnum = line(".")
    let indt = indent(lnum)
    let space = ""
    for i in range(indt)
        let space .= " "
    endfor
    call append(lnum, space . "import pdb; pdb.set_trace()")
endf
"高亮空白符
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$\| \+\ze\t\+\|\t\+\zs \+/
"垂直线
map <F9> :call SetColorColumn()<CR>
function! SetColorColumn()
    let col_num = 80
    let cc_list = split(&cc,',')
    if count (cc_list,string(col_num)) <= 0
        execute "set cc +=".col_num
    else
        execute "set cc -=".col_num
    endif
endfunction
"NERDTree
"map <silent> <C-t> :NERDTreeToggle<CR>
nmap <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.egg-info', '\.egg$', '\.pyo']
let NERDTreeWinSize=20


"Tagbar
nmap <F5> :TagbarToggle<CR>
let tagbar_width = 30

set tags=tags;/

" ====== 代码检查 ======
"
" 禁止PyFlakes使用QuickFix，这样在按下<F7>时会调用flake8，而有对于代码编辑时的错误仍能得到有效的提示           
let g:pyflakes_use_quickfix = 0
"如有需要，可设置忽略部分错误
" let g:flake8_ignore="W801,W802,H405,H904"
let g:flake8_ignore="W801,W802,D100,D101,D102,D103,D104"
" Python文件使用Flake8，当:w保存时，会自动进行检查
" autocmd BufWritePost *.py call Flake8()
" For html and javascript
let g:SimpleJsIndenter_BriefMode = 1
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_inctags = "html,body,head,tbody"
" 回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

" 上下左右键的行为
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

" ===== plantuml =====
let g:plantuml_executable_script='java -jar ~/.vim/bundle/plantuml-syntax/plantuml.'

" ====== CommandT =====
" 快捷键F打开CommandTmap
map F :CommandT<CR>
let g:CommandTMaxHeight=20
let g:CommandTWildIgnore=&wildignore . ",**/*.egg-info/**,*.pyc,*.pyo,**/*.egg*/**"
"set wildignore+=*.o,*.obj,.git,*.pyc,*pyo,**/*.egg-info/**,**/*.egg*/**
let g:CommandTCancelMap='<Esc>'

" ======vim-markdown=====et g:vim_markdown_folding_disabled=1
" ======jedi-vim=====
let mapleader="\<space>"
map <leader>f <C-t>
noremap H ^
noremap L $
