def shuffle arr
  
  	toprange = arr.length 
	shuffle = arr
	to_return = []



	toprange.times do 
		randominteger = rand(toprange)
		to_return << shuffle[randominteger]
		shuffle.delete_at(randominteger)
		toprange -= 1
	end

	to_return

end

