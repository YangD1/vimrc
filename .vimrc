syntax on
set cursorline
set nu
set ts=4
set expandtab
set autoindent
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 配置solarized 主题
set background=dark
" ctrlp 文件跳转
set runtimepath^=~/.vim/bundle/ctrlp.vim
" 不自动折行
set nowrap
" 设置字体
set guifont=Monoca\ 16
" 设置主题
syntax enable
colorscheme monokai

" 插件项目
call plug#begin('~/.vim/plugged')
" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" nerdtree git
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kristijanhusak/vim-hybrid-material'

call plug#end()

" 插件配置
" NERDTree config
 map <F2> :NERDTreeToggle<CR>
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1
 " airline
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#left_sep = ' '
 let g:airline#extensions#tabline#left_alt_sep = '|'
