#A-Za-z

def sort some_array
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
	if unsorted_array.length <= 0
		return sorted_array
	end

	#So if we got here, then it means we still
	#have work to do.
	smallest	   = unsorted_array.pop
	still_unsorted = []

	unsorted_array.each do |tested_object|
		if tested_object < smallest
			still_unsorted.push smallest
			smallest = tested_object
		else
			still_unsorted.push tested_object
		end
	end

	sorted_array.push smallest


	recursive_sort still_unsorted, sorted_array
end

puts(sort(['yo','walk','bish','puff','pastry','super','wow','hello']))

#REFLECTIONS:
#Well wasn't this an interesting exercise.
#I must remember that the each method does not change the array in anyway
#I must remember that push and pop both only affect the end of the arrays
