# vim-config
## vim配置文件


下载安装：

- git clone --recursive git@github.com:nani0119/vim-config.git .vim

- 在vim中执行EX命令：PluginInstall 安装插件

## 插件管理器

- 地址：https://github.com/VundleVim/Vundle.vim

## 所需插件
### 1) fzf 

- 地址：https://github.com/junegunn/fzf

- 快速查找


### 2) unimpaired.vim

- 地址：https://github.com/tpope/vim-unimpaired

- 创建快速遍历Vim列表的按键映射项

 [a / ]a   遍历参数列表

 [q / ]q   遍历quickfix列表

 [l / ]l   遍历位置列表

 [t / ]t   遍历标签列表

 [b / ]b   遍历缓冲区列表

 [B / ]B   first/last缓冲区列表



### 3) commentary.vim

- 地址：https://github.com/tpope/vim-commentary

- 快速注释

 gc{motion}           注释/反注释{motion}内容

 gcc                  注释/反注释当前行

 {Visual}gc           注释/反注释高亮

 gc                   注释/反注释文本对象(操作待觉模式)

 :[range]Commentary   注释/反注释范围

### 4) surround.vim

- 地址： https://github.com/tpope/vim-surround

- 为选中的文本加分割符

 ds： 删除

 ys： 添加

 yss：针对整行

 cs： 修改

```
               Hello World--->ysiw"--->Hello "World"--->yss[--->[Hello "World"]---
                                                                                  |
                                                                                 cs])
																				  |
 'Hello "World"'<--- cst'<---<q>Hello "World"<\q><---cs)<q><---(Hello "World")<---
|
ds'
|
 ---> Hello "World"--->ds"--->Hello World--->yss<q>---><q>Hello World</q>--->dst--->Hello World
```

### 5) visual-star-search.vim

- 地址：https://github.com/nelstrom/vim-visual-star-search

- 在visual模式下通过‘\*’或‘#’实现查找选中的整段文本而不是单词

### 6) qargs.vim

- 地址：vim实用技巧/substitution

- 通过Qargs命令将quickfix列表中的文件加载到参数列表中

: vimgrep     /<c-r>//    \*\*/\*.txt
 
: Qargs

### 7) hruvasagar/vim-table-mode

- 地址：https://github.com/dhruvasagar/vim-table-mode
- 创建、格式化markdown表格

1. let g:table_mode_corner='|'  //markdown表格
2. \tm 打开或者关闭该功能
3. |输入两次生成表头分割线
4. \tt命令或者:[range]Tableize可以生成表格，数据间需要使用“,”分割
5. [range]Tableize/{pattern}生成表格时使用其他分割符，例如1,5Tableize/;  ,使用;分割数据，g:table_mode_delimiter定义默认分割符
6. [|, ]|, {|,|}在表格左右上下移动
7. \tdd 删除一行
8. \tdc 删除一列
9. i|、a| 表格文本对象

### 8) asciitable.vim

- \a 显示ansii码表

### 9) vim-cpp-enhanced-highlight

- 地址:https://github.com/octol/vim-cpp-enhanced-highlight
- c\c++语言语法高亮

### 10) bash-support

- 地址:https://github.com/WolfgangMehner/bash-support
- bash集成开发环境

### 11) emmet-vim

- 地址:https://github.com/mattn/emmet-vim
- 使用C-y,快捷键生成html元素

### 12) posva/vim-vue

- 地址:https://github.com/posva/vim-vue
- vue语法高亮

### 13) mark.vim

- \m 高亮或取消标记
- \n 取消所有标记 

### 14) YouCompleteMe 配置

- 地址：https://github.com/ycm-core/YouCompleteMe
- 依赖：sudo apt install build-essential cmake python3-dev
- 安装：cd ~/.vim/bundle/YouCompleteMe；python3 install.py --clang-completer --java-completer
- 配置：.ycm_extra_conf.py 添加 '-isystem','/usr/include/c++/7',
