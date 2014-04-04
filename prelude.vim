let args = getline(2, 20)
normal ggdG

function! Print(val)
	execute "normal i" . a:val . "\<ESC>"
endfunction
