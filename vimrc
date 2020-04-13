" Vundle 插件管理配置
" ===========================================================================
source ~/.vim/plugin-manager.vim
"===============================一般设置====================================
set encoding=utf-8                       "使用UTF-8编码
set nu                                   "显示行号
"set showcmd                              "显示输入命令
"set showmode                             "显示当前模式
"set clipboard=unnamed,unnamedplus        "可用复制到剪切板
"set mouse=a                              "在buffer中使用鼠标
"set cursorline                           "显示当前行
set hlsearch is                          "高亮搜索
set ic                                   "搜索时忽略大小写
set history=100                          "指令历史
"set ruler                                "显示行列号
"set pastetoggle=<F3>                      "F3快捷键于paste模式与否之间转化，防止自动缩进
"set helplang=cn                         "中文帮助文档
"set nrformats=                           "把所有数字当做10进制
syntax on                                 "语法高亮
set wildmenu                              "启用补全导航列表
set wildmode=full                        "zsh风格补全方式
set hidden                               "启动隐藏缓冲区功能

"===========================================================================
"打开文件时恢复光标位置
autocmd BufReadPost * 
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

"=================================文本格式排版==============================
set tabstop=4                            "tab长度为4
set shiftwidth=4                         "自动对齐缩进级别
"set autoindent                           "自动缩进
set smartindent                          "智能缩进
"set cindent                             "c语言缩进
filetype plugin indent on

"=================================按键映射==================================
"展开当前文件所在目录
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

"禁用光标键
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
 
" "符号匹配按键映射
"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i
"inoremap { {}<ESC>i
"inoremap < <><ESC>i
"inoremap " ""<ESC>i
"inoremap ' ''<ESC>i

"help按键映射
"nnoremap <leader>h :h <space>

"cscope按键映射
"nnoremap <leader>csc :!find . -name "*.java" -o -name "*.c" -o -name "*.h" -o -name "*.cpp" -o -name "cxx" > cscope.files && cscope -bq<cr>
"nnoremap <leader>csa :cs add cscope.out<cr>
"nnoremap <buffer> <leader>cs :cscope find s <c-r>=expand('<cword>')<cr><cr>
"nnoremap <buffer> <leader>cg :cscope find g <c-r>=expand('<cword>')<cr><cr>
"nnoremap <buffer> <leader>cc :cscope find c <c-r>=expand('<cword>')<cr><cr>
"nnoremap <buffer> <leader>ct :cscope find t <c-r>=expand('<cword>')<cr><cr>
"nnoremap <buffer> <leader>ce :cscope find e <c-r>=expand('<cword>')<cr><cr>
"nnoremap <buffer> <leader>cf :cscope find f <c-r>=expand('<cfile>')<cr><cr>
"nnoremap <buffer> <leader>ci :cscope find i ^<c-r>=expand('<cfile>')<cr>$<cr>
"nnoremap <buffer> <leader>cd :cscope find d <c-r>=expand('<cword>')<cr><cr>

"Ex命令模式回溯命令历史
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" 映射窗口切换命令
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" insert mode移动配置
inoremap <C-l> <Right>
inoremap <C-h> <Left>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-b> <PageUp>
inoremap <C-f> <PageDown>

"================================插件配置===================================
" FZF
set rtp+=~/.fzf"
" matchit 关键字间跳转
runtime macros/matchit.vim

" custom config
source ~/.vim/custom.vim
