def shuffle arr
  	shuffleMethod arr, []
end

def shuffleMethod arr, shuffled_arr
	for i in 0..arr.length-1
		randomVal = rand(arr.length)
		findindex = arr.at(randomVal)
		shuffled_arr << findindex
		arr.delete findindex
	end
	return shuffled_arr
end