def roman_to_integer roman
  digits = {'i' => 1,
  			'v' => 5,
  			'x' => 10,
  			'l' => 50,
  			'c' => 100,
  			'd' => 500,
  			'm' => 1000}
  	total = 0
  	previous = 0
  	index = roman.length - 1
  	while index >= 0
  		c = roman[index].downcase
  		index = index - 1
  		val = digits[c]
  		if !val
  			puts 'This is not a roman numeral'
  			return
  		end
  		
  		if val < previous
  		  val = val * -1
  		else
  		  previous = val
  		end
  		
  		total = total + val
  	end
  	
  	total		 
end

puts (roman_to_integer('mddcl'))
puts (roman_to_integer('mcmxcix'))
puts (roman_to_integer('MMLLII'))
