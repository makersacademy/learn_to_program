def sort some_array # This "wraps" recursive_sort.
	 recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array
	if unsorted_array.length <= 0
		return sorted_array
	end
	s = []
	small = unsorted_array.pop
	unsorted_array.each do |a|
		if a < small
			s.push small
			small = a
		else 
			s.push a
		end
	end

	sorted_array.push small

	recursive_sort(s, sorted_array)

end

puts sort [1,4,2,0,3,27]