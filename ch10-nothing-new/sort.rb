def sort arr 
  recursion_sort arr, []
end

def recursion_sort unsorted_arr, sorted_arr
  
	return sorted_arr if unsorted_arr == []

  if unsorted_arr.length == 1
  	sorted_arr << unsorted_arr[0]
  	unsorted_arr = []

  else
  	smallest = unsorted_arr[0]
  	index = 0

  	unsorted_arr.each_with_index do |x, i|
  		if x < smallest
  			smallest = x
  			index = i
  		end
  	end

  sorted_arr << smallest
  unsorted_arr.delete_at(index)
  
  end	
  recursion_sort unsorted_arr, sorted_arr

end





=begin BELOW IS MY MANUAL SORT METHOD WITHOUT RECURSION
def sort arr
  sorted = []

  while arr.length > 0

  	smallest = arr[0]
  	index = 0

  	arr.each_with_index do |x, i|
  	
  		if x < smallest
  			smallest = x
  			index = i
  		end
  	end
  sorted << smallest
  arr.delete_at(index)

  end	
  sorted
end
=end