def roman_numeral num
  m = (num        / 1000)
  c = (num % 1000 /  100)
  x = (num %  100 /   10)
  i = (num %   10 /    1)
  
  roman = 'M' * m

  if    c == 9
  	roman = roman + 'CM'
  elsif c == 4
  	roman = roman + 'CD'
  else
  	roman = roman + 'D' * (num % 1000 / 500)
  	roman = roman + 'C' * (num %  500 / 100)
	end

	if 		x == 9
		roman = roman + 'XC'
	elsif x == 4
		roman = roman + 'XL'
	else
		roman = roman + 'L' * (num %  100 /  50)
		roman = roman + 'X' * (num %   50 /  10)
	end

	if    i == 9
		roman = roman + 'IX'
	elsif i == 4
		roman = roman + 'IV'
	else
		roman = roman + 'V' * (num %   10 /   5)
		roman = roman + 'I' * (num % 	  5 /   1)
	end	

	roman	
end

puts (roman_numeral(2015))
puts (roman_numeral(1999))
puts (roman_numeral(1066))
puts (roman_numeral(  49))