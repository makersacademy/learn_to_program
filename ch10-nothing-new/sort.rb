def sort arr
	recursive_sort arr, []
end

def recursive_sort unsorted, sorted
	if unsorted.length <= 0
    	return sorted 
  	end
	item = unsorted.pop
	still_unsorted = []
	
	unsorted.each do |word|
		if word < item
			still_unsorted.push item 
			item = word
		else 
			still_unsorted.push(word)
		end
	end

	sorted.push(item)

	recursive_sort still_unsorted, sorted
end

puts sort(["asdas","tetee","rrr"])