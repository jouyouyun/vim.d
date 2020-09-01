"" vim-lsp

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Install langserver
"     clangd: yaourt -S clang
"     gopls : go get -u -v golang.org/x/tools/gopls@latest
"             go get -u -v github.com/klauspost/asmfmt/cmd/asmfmt
"             go get -u -v github.com/go-delve/delve/cmd/dlv
"             go get -u -v github.com/kisielk/errcheck
"             go get -u -v github.com/davidrjenni/reftools/cmd/fillstruct
"             go get -u -v github.com/rogpeppe/godef
"             go get -u -v github.com/zmb3/gogetdoc
"             go get -u -v golang.org/x/tools/cmd/goimports
"             go get -u -v golang.org/x/lint/golint
"             go get -u -v golang.org/x/tools/gopls@latest
"             go get -u -v github.com/golangci/golangci-lint/cmd/golangci-lint
"             go get -u -v github.com/fatih/gomodifytags
"             go get -u -v golang.org/x/tools/cmd/gorename
"             go get -u -v github.com/jstemmer/gotags
"             go get -u -v golang.org/x/tools/cmd/guru
"             go get -u -v github.com/josharian/impl
"             go get -u -v honnef.co/go/tools/cmd/keyify
"             go get -u -v github.com/fatih/motion
"             go get -u -v github.com/koron/iferr
"    python : pip install jedi-language-server
  
" Highlight references to the symbol under the cursor
let g:lsp_highlight_references_enabled = 1

" enable signals and echo under cursor when in normal mode
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

" debug
let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('/tmp/vim-lsp.log')
" for asyncomplete.vim log
let g:asyncomplete_log_file = expand('/tmp/vim-asyncomplete.log')

" specify alternative root markers
let g:lsp_settings_root_markers = ['.projections.json', '.git', '.git/', '.svn', '.hg', '.bzr']

" use ccls as default c/c++ server
if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      \ 'initialization_options': {},
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
endif
