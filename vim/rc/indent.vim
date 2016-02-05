
" Required:
filetype plugin indent on

" I like my tabs to be 4 spaces wide
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

" reindent current file
nmap <leader>ii gg=G
" replace any consecutive spaces mid-line with single space
nmap <leader>is :%s![^ ]\zs[ \t]\+! !g<CR>

