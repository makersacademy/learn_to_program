def sort arr
	recursive_sort arr, []
end

def recursive_sort unsorted, sorted

	smallest = unsorted[1]

	unsorted.each do |test_object|

		if test_object.lowercase < smallest.lowercase
			sorted.push(smallest)
			smallest = test_object
		else
			sorted.push(test_object)
		end 

