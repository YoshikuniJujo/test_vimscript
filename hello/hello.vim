source prelude.vim

function! Fib(n)
	let p = 0
	let n = 1
	for i in range(1, a:n)
		let t = p
		let p = n
		let n = n + t
	endfor
	return n
endfunction

call Output(Fib(args[0]))
