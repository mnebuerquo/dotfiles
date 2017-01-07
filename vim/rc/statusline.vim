" Show statusline always
set laststatus=2
set statusline=%n:%F " buffer number: full path to file
set statusline+=\ %m%r " modified or read only
"if exists("*fugitive#statusline")
	set statusline+=\ %{fugitive#statusline()}
"endif
set statusline+=%= " align right 
set statusline+=%4l\ /%4L " row / length
set statusline+=\ \|%3c " column
set statusline+=\ \ \| " ending spaces to keep column off end of line
set statusline+=\ [%{&fo}%{&tw}]


