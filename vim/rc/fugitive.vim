" Fugitive may not be installed or loaded yet
if !exists('*fugitive#statusline')
	function! fugitive#statusline()
		return ''
	endfunction
endif
