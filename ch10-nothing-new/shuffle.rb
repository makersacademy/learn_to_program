def shuffle arr
  shuffled = Array.new # result

  while arr.length > 0
  ref_index = rand(arr.length) # because we want to shuffle the list,
  						   # we pick a random index to start

  index = 0
  new_array = [] # will be the arr to interate in, 
                  # will be one element shorter each time
  
  arr.each do |element|
  	if index == ref_index
  		shuffled << element # because this way we change the order in the new shuffled array
  	else
  		new_array << element
  	end
  	index += 1
   end
	arr = new_array
  end
  shuffled
end

puts (shuffle ([1, 2, 3, 4, 5, 6, 7, 8, 9]))