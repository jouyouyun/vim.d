""" vim keybindings

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
"let mapleader = "\<Space>"
let mapleader = ";"


"" Fast saving && quit
nmap <leader>w :w!<cr>
" :W sudo saves the file
command W w !sudo tee % > /dev/null
nmap <leader>W :W<cr>

" 定义快捷键关闭当前 buffer
nmap <Leader>q :Bclose<CR>
" 不做任何保存,直接退出 vim
nmap <Leader>Q :qa!<CR>


"" Moving
" 行首、行尾与文件开头、文件结尾
nmap H 0
nmap L $

" PageUp and PageDown
nmap K <C-B>
nmap J <C-F>


" 定义快捷键在结对符之间跳转,助记 pair
"nmap <Leader>pa %


"" toggle number line
function! HideNumber()
  if(&relativenumber == &number)
    set relativenumber! number!
  elseif(&number)
    set number!
  else
    set relativenumber!
  endif
  set number?
endfunc

nnoremap <Leader>nl :call HideNumber()<CR>


"" Copy && paste
" Toggle paste mode on and off
set pastetoggle=<Leader>P


" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <C-c> "*y
nmap <Leader>yy "*yy
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <C-y> "*p


"" tabs
map <leader>tn :tabnew<cr>
map <leader>tp :tabprevious
map <leader>tc :tabclose<cr>

" Quickly open a buffer for scribble
map <C-x>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <C-x><C-x> :e ~/buffer.md<cr>


"" windows
" 依次遍历子窗口
nnoremap <Leader>nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" vert split window
nnoremap <Leader>sp :sp<CR>
" horiz split window
nnoremap <Leader>vsp :vsp<CR>


""" plugins

"" a.vim
" *.cpp 和 *.h 间切换
nmap <Leader>ch :A<CR>
" 子窗口中显示 *.cpp 或 *.h 垂直分割
nmap <Leader>vch :AV<CR>
" 水平分割
nmap <Leader>sch :AS<CR>


"" ag.vim
" Open Ag and put the cursor in the right position
map <leader>/ :Ag
" When you search with Ag, display your results in cope by doing:
map <leader>sl :botright cope<cr>
" To go to the next search result do:
map <leader>n :cn<cr>
" To go to the previous search results do:
map <leader>p :cp<cr>


"" tagbar
" 设置显示/隐藏标签列表子窗口的快捷键。速记:tag list
nnoremap <Leader>tl :TagbarToggle<CR>


"" multiple cursor
" Map start key separately from next key
" Default mapping
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_start_key='<F6>'
let g:multi_cursor_quit_key='<C-g>'


"" expand region
" default
map <Leader>+ <Plug>(expand_region_expand)
map <Leader>- <Plug>(expand_region_shrink)


"" Easy motion
" Gif config
"map , <Plug>(easymotion-prefix)
"map ,l <Plug>(easymotion-lineforward)
"map ,j <Plug>(easymotion-j)
"map ,k <Plug>(easymotion-k)
"map ,h <Plug>(easymotion-linebackward)
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)


"" NERDTree
" m,出现创建/删除/剪切/拷贝操作列表
nmap <Leader>fl :NERDTreeToggle<CR>


"" sdcv
"" install sdcv and configure dic
nmap <C-\> :call SearchWord()<CR>


"" ctrlsf
"nmap <F3> :CtrlSF "<cword>"<CR><CR>
nmap <F3> :Ag "<cword>"<CR>


"" CtrlP
let g:ctrlp_map = '<C-x><C-f>'
let g:ctrlp_cmd = 'CtrlP'
nmap <C-x>b :CtrlPBuffer<CR>
nmap <C-x><C-b> :CtrlPMRUFiles<CR>


"" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
"xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
"nmap ga <Plug>(EasyAlign)


"" markdown preview
"" https://github.com/instant-markdown/instant-markdown-d
"" sudo npm -g install instant-markdown-d
nmap <leader>mp :InstantMarkdownPreview


"" vim-go
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
