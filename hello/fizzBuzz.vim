source prelude.vim

for n in range(1, str2nr(args[0], 10))
	if     ! (n % 15)
		call Print("Fizz Buzz")
	elseif ! (n % 5)
		call Print("Buzz")
	elseif ! (n % 3)
		call Print("Fizz")
	else
		call Print(n)
	endif
endfor
