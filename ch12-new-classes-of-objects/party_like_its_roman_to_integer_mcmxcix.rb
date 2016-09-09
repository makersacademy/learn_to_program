def roman_to_integer roman
  roman_numerals = {'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10, 'V' => 5, 'I' => 1}
  total = 0
  previous_number = 0
  roman = roman.split("").reverse

  roman.each do |roman_numeral|
  	number = roman_numerals[roman_numeral.upcase]
  	if number < previous_number
  		number *= -1
  	else
  		previous_number = number
  	end
  	total += number
  end

  print total 
end

roman_to_integer("mcmxcix")
