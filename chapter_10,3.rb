def sort some_array
	recursive_sort some_array, []
end 

def recursive_sort unsorted_array, sorted_array
	if unsorted_array.length <= 0 
		return sorted_array
	end 

	smallest = unsorted_array.pop 
	#.pop takes the last element of the array
	still_unsorted = []
	unsorted_array.each do |x|
		if x.downcase < smallest.downcase    # you do not need to downcase them all 
										     # only compare both downcased otherwise it is 
										     # exactly like recursive sort from 10,1 
			still_unsorted.push smallest 
			smallest = x 
		else 
			still_unsorted.push x 
		end 
	end 
	sorted_array. push smallest 
	recursive_sort still_unsorted, sorted_array
end 

puts (sort(["James","Hamed","Sülö"]))