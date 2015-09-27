def shuffle (arr)
	shuffled = []
	t = arr.length
	while t > 0 
		new_array = []
		rand_index = rand(t)
		index = 0

		arr.each { |value|
				if index == rand_index
					shuffled.push value
				else
					new_array.push value
				end
			t = t - 1
		}
		arr = new_array
	end
	shuffled
end


#puts(shuffle([1,2,3,4,5,6,7,8,9]))

