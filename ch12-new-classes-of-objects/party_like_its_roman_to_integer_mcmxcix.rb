def roman_to_integer (roman)
	num_hash = { 'm' => 1000, 'd' => 500, 'c' => 100, 'l' => 50, 'x' => 10, "v" => 5, "i" => 1}

	number = 0
	previous = 0
 	roman.reverse.each_char do |i|   #xicxmcm
 		t = i.downcase				
	 	value = num_hash[t]				#10 		1 			100  	10 			1000 		100 	1000
	 	if num_hash[t] != value
	 		puts "Not a Roman Numeral"
	 		return
	 	end
 		if value < previous
 			value *= -1 		# 				-1 					-10 					-100
 		else
 			previous = value		#p = 10 					10 					1000				1000
 		end
 		number += value				#10 			9			109		99			1099		999		1999
 	end
	number
end


# m = 1000, d = 500, c = 100, l=50 x = 10, v = 5, i = 1