
" Required:
filetype plugin indent on

" I like my tabs to be 4 spaces wide
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

" reindent current file
nmap <leader>ii gg=G

" remove trailing spaces
nmap <leader>it :1,$ s/\s\+$//g<CR>

" replace any consecutive spaces mid-line with single space
nmap <leader>is :%s![^ ]\zs[ \t]\+! !g<CR>

:noremap <leader><leader>h :set hlsearch! hlsearch?<CR>

let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2

" This isn't working as I'd like, so I disabled it
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black ctermbg=0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=gray ctermbg=2

nmap <leader>gi :IndentGuidesToggle<CR>

" indent samples
	" one
		" two
			" three
				" four

"https://stackoverflow.com/a/2166979/5114
"function! ToggleIndentGuides()
    "if exists('b:indent_guides')
        "call matchdelete(b:indent_guides)
        "unlet b:indent_guides
    "else
        "let pos = range(1, &l:textwidth, &l:shiftwidth)
        "call map(pos, '"\\%" . v:val . "v"')
        "let pat = '\%(\_^\s*\)\@<=\%(' . join(pos, '\|') . '\)\s'
        "let b:indent_guides = matchadd('CursorLine', pat)
    "endif
"endfunction
"autocmd FileType python call ToggleIndentGuides()
"nmap <leader>pi :call ToggleIndentGuides()<CR>
