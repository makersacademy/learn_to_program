#def sort arr
  # your code here
  
#	(arr.min(arr.length) { |a, b| a <=> b })
#end

def sort arr
	recursive_sort arr, []
end

def recursive_sort arr, sorted_arr
	if arr.size <= 0
		return sorted_arr
	end

	smallest = arr.pop
	still_unsorted = []

	arr.each {|x| if x < smallest
			still_unsorted.push smallest
			smallest = x
		else
			still_unsorted.push x
		end 
	}

	sorted_arr.push smallest

	recursive_sort still_unsorted, sorted_arr
end