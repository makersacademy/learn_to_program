# well, aside from just using the built-in sort method:

# The well-known quicksort algorithm.
def sort arr
  
  
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

puts sort(['can','feel','singing','like','a','can'])
