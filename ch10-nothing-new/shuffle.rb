def shuffle(arr)
	arr_rand = []
 	if (arr.length == 0)
  		return []
  	end
  	for i in (0..(arr.length)-1)
  		random = rand(0..arr.length-1)
  		arr_rand << arr[random]
  	end

	return arr_rand
end

