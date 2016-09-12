def sort arr
 	rec_sort arr, []
end

def rec_sort unsorted, sorted
	if unsorted.length <= 0 # When there is nothing left to sort then the program stops
		return sorted
	end

	smallest = unsorted.pop
	still_unsorted = []

	unsorted.each do |tested_object|
		if tested_object < smallest
			still_unsorted << smallest
			smallest = tested_object
		else
			still_unsorted << tested_object
		end
	end

	sorted << smallest

	rec_sort still_unsorted, sorted
end




