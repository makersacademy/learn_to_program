def sort array
	recursive_sort array, []
end

def recursive_sort unsorted, sorted
	if unsorted.length <= 0
		return sorted
	end
	
	smallest_unsorted = unsorted.pop
	still_unsorted = []
	unsorted.each do |tested_object|
		if tested_object < smallest_unsorted
			still_unsorted.push smallest_unsorted
			smallest_unsorted = tested_object
		else
			still_unsorted.push tested_object
		end
	end
	
	sorted.push smallest_unsorted
	recursive_sort still_unsorted, sorted
end
