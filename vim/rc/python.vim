" https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
" https://stackoverflow.com/a/36742908/5114
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent

let python_highlight_all = 1

let g:flake8_cmd="./mn_lint"
autocmd FileType python map <buffer> <leader>pl :call Flake8()<CR>
