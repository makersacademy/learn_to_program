def old_roman_numeral num
  if num < 0
  	return "Must use positive integer"
  end
  bits = { 1000 => "M", 500 => "D", 100 => "C", 50 => "L", 10 => "X", 5 => "V", 1 => "I" }
  number = num 
  numeral = ""
  bits.each_pair do |k,v|
  	amount = number/k
  	amount.times { numeral<<v }
  	number = number%k
  end
  numeral
end

