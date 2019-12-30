" see this page for a function to dim using colorcolumn: 
" https://stackoverflow.com/a/19594724/5114
augroup CursorLineOnlyInActiveWindow
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup END  
