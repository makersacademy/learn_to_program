def old_roman_numeral num
  
  numeral_hash = {
  	'M' => 1000,
  	'D' => 500,
  	'C' => 100,
  	'L' => 50,
  	'X' => 10,
  	'V' => 5,
  	'I' => 1
  }

  numerals = ''

  numeral_hash.each do |numeral, number|
  	numerals << numeral * (num / number)

  	num = num % number
  	
  end

  numerals

end