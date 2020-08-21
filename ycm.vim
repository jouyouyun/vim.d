"" YouCompleteMe
Plug 'Valloric/YouCompleteMe', { 'do': 'python ~/.vim/plugged/YouCompleteMe/install.py  --clang-completer --go-completer --ts-completer' }
" Plug 'Valloric/YouCompleteMe', { 'do': 'python ~/.vim/plugged/YouCompleteMe/install.py  --clang-completer --go-completer --ts-completer --system-libclang' }

"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menuone
"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

let g:ycm_min_num_of_chars_for_completion = 2
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 禁止缓存匹配项,每次都重新生成匹配项
"let g:ycm_cache_omnifunc=0
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax=1
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}
"youcompleteme  默认tab  s-tab 和 ultisnips 冲突
let g:ycm_key_list_select_completion = [] " <C-N>
let g:ycm_key_list_previous_completion = [] " <C-P>
" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
"let g:ycm_key_invoke_completion = 'M-;'
"inoremap <leader><leader> <C-x><C-o>

"let g:ycm_auto_trigger = 1
" 跳转到定义
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
" 跳转到声明
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
" 以及两者的合体
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
" debug
"let g:ycm_server_use_vim_stdout = 1
"let g:ycm_server_log_level = 'debug'
" 不显示开启vim时检查ycm_extra_conf文件的信息
let g:ycm_confirm_extra_conf=0
" TODO: set conf via filetype
let g:ycm_global_ycm_extra_conf = '~/.vim/datas/ycm_extra_conf.py'
