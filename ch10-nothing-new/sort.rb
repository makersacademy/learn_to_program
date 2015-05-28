ort arr
rec_sort arr, []
end

def rec_sort unsorted, sorted
	if unsorted.length<= 0
		return sorted
	end
	
smallest = unsorted.pop
still_unsorted = []

unsorted.each do |test|
	if test<smallest
		still_unsorted.push smallest
	else
		still_unsorted.push test
	end
end

sorted.push smallest

rec_sort still_unsorted, sorted
end

