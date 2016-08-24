" turn on rainbow parens for different structures
":noremap <leader>rt :RainbowParenthesesToggleAll<CR>
":noremap <leader>r( :RainbowParenthesesLoadRound<CR>
":noremap <leader>r[ :RainbowParenthesesLoadSquare<CR>
":noremap <leader>r{ :RainbowParenthesesLoadBraces<CR>
":noremap <leader>r< :RainbowParenthesesLoadChevrons<CR>

"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

:noremap <leader>rt :RainbowToggle<CR>
let g:rainbow_active = 1

