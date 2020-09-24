syntax on
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030
set t_Co=256
set nu
set ts=2
set expandtab
set softtabstop=2
set autoindent
set number
set relativenumber
set showmatch
filetype indent on
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
" 高亮显示当前行/列
set cursorline cursorcolumn
" 高亮显示搜索结果
set hlsearch
set incsearch
" 配置solarized 主题
set background=dark
" ctrlp 文件跳转 其余的忽略配置项请放在 .ctrlpignore 中
" set runtimepath^=~/.vim/bundle/ctrlp.vim
" let g:ctrlp_user_command = 'cd %s;
"   \ commonfilter="\.(jpg|bmp|png|jar|7z|zip|tar|gz|tgz|bz)$";
"   \ if [ ! -r ".ctrlpignore" ]; then
"   \   find . -type f | grep -Evi "$commonfilter";
"   \ else
"   \   find . -type f | grep -vF "$(cat .ctrlpignore)" | grep -Evi "$commonfilter";
"   \ fi'
" 不自动折行
set nowrap
" 设置字体
set guifont=Monoca\ 16
" 设置默认进行大小写不敏感查找
set ignorecase
" 如果有一个大写字母，则切换到大小写敏感查找
set smartcase
" 设置主题
syntax enable
colorscheme forest-night
" 自动设置目录
set autochdir
" 如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块。
set listchars=tab:»■,trail:■
set list
" 命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令。
set wildmenu
set wildmode=longest:list,full

" 插件列表
call plug#begin('~/.vim/plugged')
" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" 打开/关闭预览
" :MarkdownPreviewToggel
" 指定浏览器路径
let g:mkdp_path_to_chrome = "path/of/chrome"
" 指定预览主题，默认Github
let g:mkdp_markdown_css=''
" nerdtree git
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" CoC https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kristijanhusak/vim-hybrid-material'
" gitgutter
Plug 'airblade/vim-gitgutter'
" fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" vim-commentary
Plug 'tpope/vim-commentary'
" 图片粘贴插件
Plug 'ferrine/md-img-paste.vim'
" 自定义vim欢迎页
Plug 'mhinz/vim-startify'
" 支持更多的高亮语法
Plug 'sheerun/vim-polyglot'
" 主题：https://github.com/sainnhe/forest-night
Plug 'sainnhe/forest-night'
" JS 语法高亮
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
"设置默认储存文件夹。这里表示储存在当前文档所在文件夹下的'pic'文件夹下，相当于 ./pic/
let g:mdip_imgdir = 'pic'
"设置默认图片名称。当图片名称没有给出时，使用默认图片名称
let g:mdip_imgname = 'image'
" 高亮数学公式
let g:vim_markdown_math = 1
call plug#end()

" 插件配置
"设置快捷键，个人喜欢 Ctrl+p 的方式，比较直观
" autocmd FileType markdown nnoremap <silent> <C-p> :call mdip#MarkdownClipboardImage()<CR>F%i
" NERDTree config
map <F2> :NERDTreeToggle<CR>
autocmd bufenter *  if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1
" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" fzf 的配置，注意是配置在.bashrc or .zshrc 中
" export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
" export FZF_DEFAULT_COMMAND='fd --type f --hidden --color=always --follow --exclude .git'
" export FZF_DEFAULT_OPTS="--ansi"
" fzf 在所在项目根路径创建 .fdignore
" 即可忽略指定文件，保存后记得退出终端重新加载一次
