" Ag and CtrlP are in same config because CtrlP uses Ag to search

" ctrlsf might replace ctrlp one day

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'


let g:ctrlp_user_command = 'ag %s -i 
			\ --nocolor 
			\ --nogroup 
			\ --hidden
			\ --ignore .git
			\ --ignore node_modules
			\ --ignore bower_components
			\ --ignore "build/*"
			\ --ignore .svn
			\ --ignore .hg
			\ --ignore .DS_Store
			\ --ignore "**/*.pyc"
			\ --ignore "**/*.min.js"
			\ --ignore "**/*.lesscache"
			\ -g ""'

let g:ag_prg='ag 
			\ --column 
			\ --noheading
			\ --nocolor 
			\ --nogroup 
			\ --hidden
			\ --ignore .git
			\ --ignore node_modules
			\ --ignore bower_components
			\ --ignore "build/*"
			\ --ignore .svn
			\ --ignore .hg
			\ --ignore .DS_Store
			\ --ignore "**/*.pyc"
			\ --ignore "**/*.min.js"
			\ --ignore "**/*.lesscache"
			\ '

" Quick Keys for Ag:
" Search for word under cursor
noremap <Leader>a :Ag! -Q <C-r>=Escape(expand('<cword>'))<CR><CR>
function! Escape(stuff)
	return substitute(escape(a:stuff, '\/.*$^~[]'), "\n", '\\n', "g")
endfunction 
nnoremap <Leader>h :Ag<SPACE>


