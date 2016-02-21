def roman_numeral num
  char_hash = {
      1000 => "M", 900 => "CM", 
	  500 => "D", 400 => "CD", 
	  100 => "C", 90 => "XC", 
	  50 => "L", 40 => "XL", 
	  10 => "X", 9 => "IX", 
	  5 => "V", 4 => "IV",
	  1 => "I" 
    }
  roman_number = []
  
  char_hash.each do |key, value|
	  roman_number <<  value * ( num.to_i / key )
	  num = ( num.to_i % key )
  end
  roman_number.join("")
end