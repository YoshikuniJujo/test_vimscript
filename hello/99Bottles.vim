source prelude.vim

function! Message(n)
	if a:n == 0
		let r = "No more bottles of beer on the wall, "
		let r .= "no more bottles of beer.\n"
		let r .= "Go to the store and buy some more, "
		let r .= "99 bottles of beer on the wall\n"
		return r
	elseif a:n == 1
		let r = printf("%d bottle of beer on the wall, ", a:n)
		let r .= printf("%d bottle of beer.\n", a:n)
		let r .= "Take one down and pass it around, "
		let r .= "no more bottles of beer on the wall.\n"
		return r
	else
		let r = printf("%d bottles of beer on the wall, ", a:n)
		let r .= printf("%d bottles of beer.\n", a:n)
		let r .= "Take one down and pass it around, "
		let r .= printf("%d bottles of beer on the wall.\n", a:n - 1)
		return r
	endif
endfunction

for n in range(1, 100)
	call Print(Message(100 - n))
endfor
