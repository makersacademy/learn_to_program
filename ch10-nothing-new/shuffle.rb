def shuffle arr
 shuff []

	while arr.length > 0
		random_index = rand(arr.length)
		current_index = 0
		new_array = []
		arr.each do |item|
			if current_index == random_index
				shuf.push item
			else 
				new_array.push item
			end
			current_index = current_index +1
		end
		arr = new_array
	end
	shuf
end
p(shuffle([1,2,3,4,5,6,7,8,9]))
