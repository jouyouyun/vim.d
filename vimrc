" Sets how many lines of history VIM has to remeber
set history=500

" Set to auto read when a file is changed from the outside
set autoread
"auto chdir
set autochdir

" Always show current line position
set ruler
" 开启行号显示
set number

" Height of the command line
"set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" In many terminal emulators the mouse works just fine, thus enable it.
"if has('mouse')
    "set mouse=a
"endif

" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
"set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
"set scrolloff=10
"set so=7
" 高亮显示当前行/列
"set cursorline
"set cursorcolumn

"自动折行 是把长的一行用多行显示 , 不在文件里加换行符用
set wrap "设置自动折行

" Enable syntax highlighting
syntax enable
filetype on

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set fileencodings=utf-8,gb18030,gbk,gb2312
set termencoding=utf-8
set encoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
"set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

au FileType go,coffee setlocal tabstop=8 shiftwidth=8

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=.git\*,.hg\*,.svn\*

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
"set viminfo^=%

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Color scheme
colo desert

source ~/.vim/plugins.vim
source ~/.vim/keybindings.vim
