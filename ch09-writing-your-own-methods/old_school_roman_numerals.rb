def old_roman_numeral num
return "Enter a valid number" if num < 0 
	
	out=''	
	out<<"M"*num.divmod(1000)[0]
	out<<"D"*(num%1000).divmod(500)[0]
	out<<"C"*(num%500).divmod(100)[0]
	out<<"L"*(num%100).divmod(50)[0]
	out<<"X"*(num%50).divmod(10)[0]
	out<<"V"*(num%10).divmod(5)[0]
	out<<"I"*(num%5).divmod(1)[0]

return out
end