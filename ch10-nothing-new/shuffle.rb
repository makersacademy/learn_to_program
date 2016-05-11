def shuffle(arr)
	arr_rand = []
  	for i in (0..(arr.length)-1)

  		arr_rand << arr.delete_at(rand(arr.length))
  	end

	return arr_rand
end

