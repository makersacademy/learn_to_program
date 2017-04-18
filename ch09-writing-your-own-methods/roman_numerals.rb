def roman_numeral num
  
  numeral_hash = {
  	'M' => 1000,
  	'CM' => 900,
  	'D' => 500,
  	'CD' => 400,
  	'C' => 100,
  	'XC' => 90,
  	'L' => 50,
  	'XL' => 40,
  	'X' => 10,
  	'IX' => 9,
  	'V' => 5,
  	'IV' => 4,
  	'I' => 1
  }

  numerals = ''

  numeral_hash.each do |numeral, number|
  	numerals << numeral * (num / number)

  	num = num % number

  end

  numerals
  
end