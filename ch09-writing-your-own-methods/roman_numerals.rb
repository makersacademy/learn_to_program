def roman_numeral num
  if num < 0
  	return "Must use positive integer"
  end
  bits = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }
  number = num 
  numeral = ""
  bits.each_pair do |k,v|
  	amount = number/k
  	amount.times { numeral<<v }
  	number = number%k
  end
  numeral
end