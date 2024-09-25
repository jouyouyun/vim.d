call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/a.vim'
Plug 'othree/xml.vim'
Plug 'airblade/vim-gitgutter'
Plug 'chusiang/vim-sdcv'
Plug 'scrooloose/nerdcommenter'
" bclose: It is for deleting a buffer in Vim without closing the window.
Plug 'rbgrouleff/bclose.vim'
" fzf is a general-purpose command-line fuzzy finder
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
" alignment plugin
"Plug 'junegunn/vim-easy-align'
" gocode for go autocomplete
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }


"" status addition
Plug 'bling/vim-airline'
" 总是显示状态栏
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'


"" auto-pairs
" System Shortcuts:
"     <CR>  : Insert new indented line after return if cursor in blank brackets or quotes.
"     <BS>  : Delete brackets in pair
"     <M-p> : Toggle Autopairs (g:AutoPairsShortcutToggle)
"     <M-e> : Fast Wrap (g:AutoPairsShortcutFastWrap)
"     <M-n> : Jump to next closed pair (g:AutoPairsShortcutJump)
"     <M-b> : BackInsert (g:AutoPairsShortcutBackInsert)
" If <M-p> <M-e> or <M-n> conflict with another keys or want to bind to another keys, add
"     let g:AutoPairsShortcutToggle = '<another key>'
" to .vimrc, if the key is empty string '', then the shortcut will be disabled.
Plug 'jiangmiao/auto-pairs'


"" multiple-cursors
Plug 'terryma/vim-multiple-cursors'


"" expend-region
Plug 'terryma/vim-expand-region'
" Default settings.
let g:expand_region_text_objects = {
      \ 'iw'  :0,
      \ 'iW'  :0,
      \ 'i"'  :0,
      \ 'i''' :0,
      \ 'i]'  :1,
      \ 'ib'  :1,
      \ 'iB'  :1,
      \ 'il'  :0,
      \ 'ip'  :0,
      \ 'ie'  :0,
      \ }


"" Easy motion
"Plug 'easymotion/vim-easymotion'
"let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
"let g:EasyMotion_smartcase = 1


"" tag list
Plug 'majutsushi/tagbar'
" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_left=1
" 设置显示/隐藏标签列表子窗口的快捷键。速记:tag list
"nnoremap <Leader>tl :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1


"" File manager
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" 使用 NERDTree 插件查看工程文件。
" 回车,打开选中文件;
" r,刷新工程目录文件列表;
" I(大写),显示/隐藏隐藏文件;
" m,出现创建/删除/剪切/拷贝操作列表
"nmap <Leader>fl :NERDTreeToggle<CR>
" 设置 NERDTree 子窗口宽度
let NERDTreeWinSize=32
" 设置 NERDTree 子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1


"" vim-go
Plug 'fatih/vim-go'

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
" install goimports
"let g:go_fmt_command = "goimports"
" disable fmt at save
"let g:go_fmt_autosave = 0


"" vim-go-extra
Plug 'vim-jp/vim-go-extra'
autocmd FileType go autocmd BufWritePre <buffer> Fmt


"" ctrlp
Plug 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = 'ra'
" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


"" ag.vim
Plug 'rking/ag.vim'
let g:ag_working_path_mode="r"
"nmap <F3> :Ag "<cword>"<CR>


"" ctrlsf
Plug 'dyng/ctrlsf.vim'
let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_auto_close = 0
let g:ctrlsf_context = '-B 5 -A 3'
"nmap <F3> :CtrlSF "<cword>"<CR>


"" emmet
Plug 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_expandabbr_key = '<Tab>'


"" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.MD set filetype=markdown
"Used as $x^2$, $$x^2$$, escapable as \$x\$ and \$\$x\$\$.
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_no_default_key_mappings=1
"" markdown preview
" install instant-markdown-d: [sudo] npm -g install instant-markdown-d
" If you're on Linux, the xdg-utils package needs to be installed
Plug 'suan/vim-instant-markdown'
" not update the display realtime
let g:instant_markdown_slow = 1
" not autostart
let g:instant_markdown_autostart = 0
"nmap <leader>mp :InstantMarkdownPreview


"" qml
Plug 'peterhoeg/vim-qml'
autocmd BufNewFile,BufRead *.qml set filetype=qml

"" Rainbow Parentheses
Plug 'kien/rainbow_parentheses.vim'
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" options
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0


"" coffee
Plug 'kchmck/vim-coffee-script'
let coffee_indent_keep_current = 1
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

"" rust
Plug 'rust-lang/rust.vim'
"let g:rustfmt_autosave = 1

" autoformat
" depends: clang-format, astyle, autopep8, gofmt
Plug 'Chiel92/vim-autoformat'
let g:autoformat_verbosemode=1
" clang-format style: LLVM, Google, Chromium, Mozilla, WebKit
let b:formatdef_custom_c="'clang-format --lines='.a:firstline.':'.a:lastline.' --assume-filename='.bufname('%').' -style=WebKit'"
let b:formatters_c = ['custom_c']
let b:formatters_cpp = ['custom_c']

let g:formatdef_autopep8 = "'autopep8 - --range '.a:firstline.' '.a:lastline"
let g:formatters_python = ['autopep8']

noremap <S-f> :Autoformat<CR>

" ts for vim
Plug 'leafgarland/typescript-vim'

" gtags for vim
Plug 'ivechan/gtags.vim'
" 使用 cscope 作为 tags 命令
set cscopetag
" 使用 gtags-cscope 代替 cscope
set cscopeprg="gtags-cscope"
"gtags.vim 设置项
let GtagsCscope_Auto_Load = 1
let CtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1

" LargeFile
" There's an option:  g:LargeFile (by default, its 100).
Plug 'vim-scripts/LargeFile'

" Codeium
" Run :Codeium Auth to set up the plugin and start using Codeium
" Run :help codeium for a full list of commands and configuration options
Plug 'Exafunction/codeium.vim', { 'branch': 'main'  }

"" enable ycm
"source ~/.vim/ycm.vim

" enable lsp
source ~/.vim/lsp.vim

call plug#end()
