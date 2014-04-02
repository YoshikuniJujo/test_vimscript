let args = getline(2, 20)
normal ggdG

function! Output(val)
	execute "normal i" . a:val . "\<ESC>"
endfunction
