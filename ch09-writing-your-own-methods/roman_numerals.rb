def roman_numeral num
rn = {	'M'=> 1000,
		'DM'=> 900,
		'D'=> 500,
		'XD'=> 400, 
		'C'=> 100,
		'XC'=> 90, 
		'L'=> 50,
		'XL'=> 40, 
		'X'=> 10,
		'IX'=> 9,
		'V'=> 5,
		'IV'=> 4,
		'I'=> 1
	}
remainder = num
result = ""
rn.each do |key, value|
	result << key * (remainder/value)
	remainder = remainder % value
end
result
end
