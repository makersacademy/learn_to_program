def dictionary_sort arr # takes an array
	rec_dict_sort arr, [] # calls the recursive function
end

def rec_dict_sort unsorted, sorted  # takes the array that isn't sorted and an unsorted array. 
	if unsorted.length <= 0 # if the unsorted array is empty it returns the sorted array. Function finnished. 
		return sorted
	end

# So if we got here, then it means we still

# have work to do.

	smallest = unsorted.pop # Takes the last element of the array. removes it and holds it in the variable 'smallest'

	still_unsorted = [] 

	unsorted.each do |tested_object| # block of code. Takes each element from the array and iterates through them. 

	if tested_object.downcase <= smallest.downcase # If statment tests to see if each object in downcase compares to the smallest in down.case

		still_unsorted.push smallest # It then takes the smallest and pushes it into the still_unsorted array. 

		smallest = tested_object # new object assigned as smallest and used to compare the rest of the code to. 

	else
		still_unsorted.push tested_object # if the object is not smaller than put it straight into the still_unsorted array. 
	end
end

# Now "smallest" really does point to the

# smallest element that "unsorted" contained,

# and all the rest of it is in "still_unsorted".

	sorted.push smallest

	rec_dict_sort still_unsorted, sorted

end

puts(dictionary_sort(['can','feel','singing.','like','A','can']))