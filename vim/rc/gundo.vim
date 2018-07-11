" http://sjl.bitbucket.org/gundo.vim/
let g:gundo_width = 45
let g:gundo_preview_height = 15
let g:gundo_right = 1

"nnoremap <C-u> :GundoToggle<CR>

" I'm using Undotree now. No python requirement.
" https://vi.stackexchange.com/q/6558
let g:undotree_WindowLayout = 3
let g:undotree_ShortIndicators = 1
let g:undotree_SplitWidth = 24
let g:undotree_DiffpanelHeight = 15
let g:undotree_SetFocusWhenToggle = 1

nnoremap <C-u> :UndotreeToggle<CR>
