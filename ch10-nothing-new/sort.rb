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
			puts item
		else 
			still_unsorted.push(word)
		end
	end

	sorted.push(item)
	# puts "Sorted"
	# puts sorted
	# puts "Unsorted"
	# puts still_unsorted
	recursive_sort still_unsorted, sorted
end

puts sort(["tetee","asdas"])