
" Auto wrap!
set tw=72
set fo-=t
" highlight lines past the end
augroup vimrc_autocmds
	autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
	autocmd BufEnter * match OverLength /\%80v.*/
augroup END

