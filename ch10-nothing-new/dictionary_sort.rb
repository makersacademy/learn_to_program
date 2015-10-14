def dictionary_sort arr
  # your code here
 	recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
	
	if unsorted_array.length <= 0
		return sorted_array
	end

	smallest = unsorted_array.pop
	still_unsorted = []

	unsorted_array.each do |x|
		if x < smallest
			still_unsorted << smallest
			smallest = x
		else
			still_unsorted << x
		end
	end

	sorted_array << smallest.capitalize!
	recursive_sort still_unsorted, sorted_array
end

puts(dictionary_sort(["ciao", "ciww", "aa", "Dcc"]))

