" ====================
" 基本配置
" ====================

set number                      " 显示行号
set relativenumber              " 显示相对行号
set cursorline                  " 高亮当前行
syntax on                       " 启用语法高亮
set autoindent                  " 自动缩进
set smartindent                 " 智能缩进
set showmatch                   " 显示匹配的括号
set tabstop=4                   " Tab 宽度为 4
set shiftwidth=4                " 自动缩进宽度为 4
set expandtab                   " 将 Tab 转换为空格
set mouse=a                     " 启用鼠标支持
set ignorecase                  " 搜索时忽略大小写
set hlsearch                    " 搜索时高亮匹配项
set incsearch                   " 边输入边搜索
set wrap                        " 自动换行
set encoding=utf-8              " 设置编码为 UTF-8
set fileencoding=utf-8          " 设置文件编码为 UTF-8
set showcmd                     " 显示命令输入
set backupdir=~/.vim/backup//   " 设置备份文件目录
set directory=~/.vim/swap//     " 设置交换文件目录
set undodir=~/.vim/undo//       " 设置撤销文件目录
set termguicolors               " 启用真彩色支持
set background=dark             " 设置背景为暗色
" colorscheme dracula             " 使用 Dracula 主题


" ====================
" 快捷键映射
" ====================

let mapleader = ","             " 设置 Leader 键为逗号

" 快速保存和退出
nmap <Leader>w :w<CR>           " 保存文件
nmap <Leader>q :q<CR>           " 退出 Vim
nmap <Leader>x :x<CR>           " 保存并退出

" 快速切换窗口
nmap <C-h> <C-w>h               " 切换到左侧窗口
nmap <C-j> <C-w>j               " 切换到下方窗口
nmap <C-k> <C-w>k               " 切换到上方窗口
nmap <C-l> <C-w>l               " 切换到右侧窗口

" 快速移动行
nnoremap <Leader>j :m .+1<CR>== " 将当前行下移一行
nnoremap <Leader>k :m .-2<CR>== " 将当前行上移一行

" 快速注释
nmap <Leader>c <Plug>CommentaryLine " 注释当前行

" 快速打开配置文件
nmap <Leader>rc :e ~/.vimrc<CR> " 打开 ~/.vimrc 文件

" 重新加载配置文件
nmap <Leader>so :source ~/.vimrc<CR> " 重新加载 ~/.vimrc

" 模糊查找文件
nmap <Leader>f :Files<CR>       " 使用 fzf 查找文件

" 快速跳转到行首和行尾
nmap H ^                        " 跳转到行首
nmap L $                        " 跳转到行尾

" 快速删除当前行
nmap <Leader>d dd               " 删除当前行


" ====================
" 插件管理 (Vim-Plug)
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://cdn.jsdelivr.net/gh/junegunn/vim-plug/plug.vim
" 安装插件: PlugInstall
" 更新插件: PlugUpdate
" 删除插件: PlugClean
" ====================

call plug#begin('~/.vim/plugged')

" 文件树
Plug 'preservim/nerdtree'

" 状态栏美化
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 快速注释
Plug 'tpope/vim-commentary'

" 模糊查找
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" 代码补全
Plug 'ycm-core/YouCompleteMe'

" 启动页面
Plug 'mhinz/vim-startify'

" Git 集成
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Dracula 主题
" Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()


" ====================
" 插件配置
" ====================

" NERDTree 配置
nmap <Leader>n :NERDTreeToggle<CR> " 打开/关闭文件树

" vim-airline 配置
" let g:airline_theme = 'dracula'    " 设置状态栏主题
let g:airline#extensions#tabline#enabled = 1 " 启用顶部标签栏

" fzf 配置
nmap <Leader>p :Files<CR>          " 查找文件
nmap <Leader>b :Buffers<CR>        " 查找缓冲区

" YouCompleteMe 配置
" let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
" let g:ycm_autoclose_preview_window_after_completion = 1


" ====================
" 其他配置
" ====================

" 自动补全括号
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

" 自动保存
autocmd TextChanged,TextChangedI <buffer> silent write

" 自动格式化代码
autocmd BufWritePre *.py :%s/\s\+$//e    " 删除行尾空格
autocmd BufWritePre *.py :%s/\t/    /ge  " 将 Tab 转换为空格