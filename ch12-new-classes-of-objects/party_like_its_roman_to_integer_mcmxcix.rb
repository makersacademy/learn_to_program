def roman_numeral num

  thousand = (num/1000)
  hundred = (num%1000 /100)
  ten = (num%100/10)
  one = (num%10/1)

  i_mod = num%5
  v_mod = num%10
  x_mod = num%50 
  l_mod = num%100
  c_mod = num%500
  d_mod = num%1000

	roman = "M" * thousand 

	if hundred == 9 
		roman = roman + "CM"
	elsif hundred == 4
		roman = roman +"CD"
	else 
  		roman = roman + "D"*(d_mod/500)
  		roman = roman + "C"*(c_mod/100)
	end 

	if ten == 9 
		roman = roman + "XC"
	elsif ten == 4
		roman = roman + "XL"
	else 
		roman = roman + "L"*(l_mod/50)
		roman = roman + "X"*(x_mod/10)
	end

	if one == 9
		roman = roman + "IX"
	elsif one == 4
		roman = roman + "IV"
	else 
	roman = roman + "V"*(v_mod/5)
	roman = roman + "I"*(i_mod/1)
	end 

  roman 
end


def roman_to_integer roman

	capital = roman.upcase
	numbers = (1..5000).to_a 

	numbers.each do |integer|
		if capital == roman_numeral(integer)
			#if capitalized roman equal output of roman number with roman_numerals method 
			return integer 
		else 
			nil 
		end 
	end
end

puts roman_to_integer 'mcmxcix'

