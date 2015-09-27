#my sorting method works as a dictionary sort too. I didn't have to modify anything.


def dictionary_sort arr
  
  
  length = arr.length
  arr2 =  []
  count = 0
  while count < length
  	return arr if length <= 1
  	x = arr.min
  	
  	y = arr.find_index(x)

  	arr2.push(x)
  	
  	arr.delete_at(y)
  	count += 1
  end
  
  arr2

end

# puts dictionary_sort([' a', ' can' ,' feel' ,' singing.' ,' like' ,' A' ,' can' ])
