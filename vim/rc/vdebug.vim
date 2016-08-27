" Plugin vdebug
" Debugger for a variety of languages

" Vdebug doesn't set up its options ahead of time
" https://github.com/joonty/vdebug/issues/200
if !exists('g:vdebug_options')
	let g:vdebug_options = {}
endif

" Vdebug set breakpoint
"nmap <leader>b :Breakpoint<CR>

