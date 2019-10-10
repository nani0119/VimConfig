"==============================================================================
" dhruvasagar/vim-table-mode
" markdow 表格格式化配置
" 1. Markdown-compatible tables  
let g:table_mode_corner = '|'

" 2. ReST-compatible tables
"let g:table_mode_corner_corner='+'
"let g:table_mode_header_fillchar='='
"==============================================================================
"c/c++语法增强
"Highlighting of user defined functions can be disabled by
"let g:cpp_no_function_highlight = 1

"let c_no_curly_error=1
"Highlighting of class scope is disabled by default. To enable set
"let g:cpp_class_scope_highlight = 1

"Highlighting of member variables is disabled by default. To enable set
"let g:cpp_member_variable_highlight = 1

"Highlighting of class names in declarations is disabled by default. To enable set
"let g:cpp_class_decl_highlight = 1

"There are two ways to highlight template functions. Either
"let g:cpp_experimental_simple_template_highlight = 1

"which works in most cases, but can be a little slow on large files. Alternatively set
"let g:cpp_experimental_template_highlight = 1

"==============================================================================
"emmet-vim config
" Enable in different mode
"let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
"let g:user_emmet_mode='a'    "enable all function in all mode.
"Enable just for html/css
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall
"==============================================================================
"vim-vue config
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

"==============================================================================
"YouCompleteMe
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_echo_current_diagnostic = 1
set completeopt=menu
"let g:ycm_auto_trigger = 0
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

"==============================================================================
"ultisnips
let g:UltiSnipsExpandTrigger="<tab>"

"==============================================================================
"undotree
"let undotree window get focus after being opened
let g:undotree_SetFocusWhenToggle = 0
let g:undotree_WindowLayout = 2

"==============================================================================
"vim-commentary
"for python and shell
autocmd FileType python,shell,coffee set commentstring=#\ %s
"commentary style
autocmd FileType java,c,cpp set commentstring=//\ %s

"==============================================================================
"LucHermitte/VimFold4C
let b:fold_options = {
   \ 'fallback_method' : { 'line_threshold' : 2000, 'method' : 'syntax' },
   \ 'fold_blank': 0,
   \ 'fold_includes': 0,
   \ 'max_foldline_length': 'win',
   \ 'merge_comments' : 1,
   \ 'show_if_and_else': 1,
   \ 'strip_namespaces': 1,
   \ 'strip_template_arguments': 1
   \ }

"使用语法高亮定义代码折叠
" set foldmethod=syntax
"打开文件是默认不折叠代码
set foldlevelstart=99

