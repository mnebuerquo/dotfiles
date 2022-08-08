
" Tree view file browser
" This is replaced by nerdtree
"map <c-n> :Explore<CR>
"let g:netrw_banner       = 0
"let g:netrw_liststyle    = 3
"let g:netrw_sort_options = 'i'

"NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore = ['\.pyc$', 'node_modules']
let NERDTreeRespectWildIgnore=1
