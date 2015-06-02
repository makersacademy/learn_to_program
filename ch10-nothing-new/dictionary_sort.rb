def sort array
	puts recursive_sort array, []
end

def recursive_sort unsorted, sorted
while true
	if unsorted.empty?
		return sorted
	end

	downcase = unsorted.map(&:downcase)
	sorted << unsorted.delete_at(downcase.index(downcase.min))
	recursive_sort unsorted, sorted
end
end

list = ['Hello', 'hella', 'ABCD', 'aaaa', 'aBaa', 'Abaa']
sort list