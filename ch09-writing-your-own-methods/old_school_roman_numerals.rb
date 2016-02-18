def old_roman_numeral num
  char_hash = {
      1000 => "M", 500 => "D", 100 => "C", 50 => "L",
      10 => "X", 5 => "V", 1 => "I" 
    }
  roman_number = []
  
  char_hash.each do |key, value|
	  roman_number <<  value * ( num.to_i / key )
	  num = ( num.to_i % key )
  end
  roman_number.join("")
end