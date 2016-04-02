def roman_to_integer roman
	number = 0
	toatal = 0
	prev = 0
	number_map = { "m" => 1000,
   				   "d" =>500,
                   "c" => 100,
                   "l" => 50,
                   "x" => 10,
                   "v" => 5,
                   "i"=> 1
                }


	roman.reverse.each_char do |char|

		val = number_map[char.downcase]

		if val < prev
			val *= -1
		else
			prev = val
		end		
  			number = number+val
  			
    		
  		end

  	number;
  		
  # your code here
end

roman_to_integer "mcmxcix"