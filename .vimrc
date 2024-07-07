" 基本配置
set number                  " 显示行号
syntax on                   " 启用语法高亮
set tabstop=4               " Tab 键宽度
set shiftwidth=4            " 缩进宽度
set expandtab               " 将 Tab 转为空格
" set autoindent              " 自动缩进
" set smartindent             " 智能缩进
set mouse=a                 " 启用鼠标
set cursorline              " 高亮当前行
set hlsearch                " 高亮搜索结果
set incsearch               " 增量搜索
set ignorecase              " 搜索忽略大小写
set smartcase               " 智能大小写
set showmatch               " 高亮匹配括号
set laststatus=2            " 显示状态栏
set showcmd                 " 显示命令输入
set wildmenu                " 启用命令补全
set undofile                " 启用撤销文件
set undodir=~/.vim/undodir  " 撤销文件目录
set hidden                  " 允许隐藏未保存的缓冲区
set backupdir=~/.vim/backup// " 备份文件目录
set directory=~/.vim/swap// " 交换文件目录
set list                    " 显示空格和制表符
set listchars=tab:▸\ ,trail:· " 自定义空格和制表符显示
colorscheme desert          " 设置颜色方案

" 自定义键映射
let mapleader=";"
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>e :Ex<CR>

" 插件管理配置
call plug#begin('~/.vim/plugged')

" 插件列表
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()

" 自动安装插件
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
