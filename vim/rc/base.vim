" Set color scheme!
"colorscheme base16-isotope

" Colors for parens are same as cursor
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

" Show line numbers
set number
:highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=Black gui=NONE guifg=DarkGrey guibg=NONE

" Allow using mouse (Don't tell Andrew or Rob)
set mouse=a

" Reload vim config
map <C-R> :so $MYVIMRC<CR>

" prevent ctrl q from being captured by terminal
" silent !stty -ixon > /dev/null 2>/dev/null
" add ctrl q to exit without saving
" nmap <C-Q> :q<CR>

" ctrl o closes all but the current split
nmap <C-O> :only<CR>


