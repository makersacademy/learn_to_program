def shuffle arr

shuffled = []

	if arr.length <= 0
		return shuffled
	end
	while arr.length > 0

		rand_place = rand(arr.length)
		current_place = 0
		new_array = []	

		arr.each do | x | 
			if current_place == rand_place
				shuffled.push x
			else
				new_array.push x
			end		
			
			current_place += 1
			
	end
	arr = new_array	
		
	end	
shuffled

end

puts(shuffle(['give','me','cheese','now','a','can']))