
" Auto wrap!
set tw=79
set fo-=t
" Highlight lines past the preferred line length so I know where to break
" them
"
" This is a test of the emergency text highlight system, which should start to highlight when we have a long line
"

" This one works fine, but it highlights everything beyond 80 characters
" http://stackoverflow.com/a/235970/5114
"augroup vimrc_autocmds
	"autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
	"autocmd BufEnter * match OverLength /\%80v.*/
"augroup END

" http://stackoverflow.com/a/30265194/5114
" This works like the +colorcolumn solution below, but without the +N for
" specifying width relative to the tw
"highlight ColorColumn ctermbg=DarkGrey guibg=DarkGrey
"let &colorcolumn=join(range(81,999),",")
"let &colorcolumn="80,".join(range(400,999),",")

highlight ColorColumn ctermbg=black guibg=black
if exists('+colorcolumn')
	" http://stackoverflow.com/a/3765575/5114
	set colorcolumn=+5
else
	" http://stackoverflow.com/a/26685437/5114
	call matchadd('ColorColumn', '\%80v', 100) "set column nr
endif
