def sort some_array
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
 if unsorted_array.size == 0
	return sorted_array
 else
 stilltosort = []
 smallest = unsorted_array.pop

 unsorted_array.each do |test|
 	if test < smallest
 		stilltosort << smallest
 		smallest = test
 	else
 		stilltosort << test
 	end
    end

  sorted_array << smallest
  
  recursive_sort stilltosort, sorted_array
 end
end