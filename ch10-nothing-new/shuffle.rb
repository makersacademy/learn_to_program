def shuffle arr
  shuf = []
  while arr.length > 0
  	index = 0 
  	rand_ind = rand(arr.length)
  	new_arr = []
  	arr.each do | var | 
  		if index == rand_ind
  			shuf << var
  		else
  			new_arr << var
  		end
  		index = index + 1
  	end
  	arr = new_arr
  end
  shuf
end
