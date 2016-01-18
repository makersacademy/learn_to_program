
  # your code here
  
# split each block into consecutive pairs 
# if theyre cm, or cd, or xc = them to its corresponding number
# add the total of them together.

# delete the characters, that already summed and add what's left together.

# finally sum first and second block.

def roman_to_integer roman

	return_number = 0
roman.downcase.split(//).each_cons(2) do |a, b|

	if a+b == "cm"
		return_number += 900
		roman.slice!("cm")
	elsif a+b == "cd"
		return_number += 400
		roman.slice!("cd")
	elsif a+b == "xc"
		return_number += 90
		roman.slice!("xc")
	elsif a+b == "xl"
		return_number += 40
		roman.slice!("xl")
	elsif a+b == "ix"
		return_number += 9
		roman.slice!("ix")
	elsif a+b == "iv"
		return_number += 4
		roman.slice!("iv")
	end
end


roman.downcase.each_char do |r|
	if  r == "m"
		return_number += 1000
	elsif	r == "d"
		return_number += 500
	elsif	r == "c" 
		return_number += 100
	elsif	r == "l"
		return_number += 50
	elsif	r == "x"
		return_number += 10
	elsif	r == "v"
		return_number += 5
	elsif	r == "i"
		return_number += 1
	end
end

return_number

 

end

#pairs("mcmxcix")





