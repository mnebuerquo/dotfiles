
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

"Vim wraps lines longer than the maximum columns or screen width
"
"To show wrapped lines with a prefix:
"set showbreak=@@@@@@@@
"
"To wrap lines on word boundary:
"set linebreak
"
"To set what the word boundary characters are:
"set breakat=\ 
"
"To set default breakat:
"set breakat&vim
"
"To wrap lines at the same level of indent as the start of the line:
"set breakindent
"
"To further indent them deeper than start of the line:
"set breakindentopt=shift:4
"
"To not wrap at all:
"set nowrap
"
nmap <leader><leader>lb :set nolist wrap linebreak breakat=\ ,; breakindent breakindentopt=shift:4<CR>
nmap <leader><leader>lw :set wrap nolinebreak breakat&vim<CR>
nmap <leader><leader>ln :set nowrap<CR>
" Setting this as my new default because I think it does what I like
" Soft wrap, break only on spaces and tabs
:set nolist wrap linebreak breakat=\ ,; breakindent breakindentopt=shift:4
