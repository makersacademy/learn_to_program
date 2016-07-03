#recursive sort 
def dictionary_sort some_array
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
		if x.downcase < smallest.downcase
			still_unsorted.push smallest 
			smallest = x 
		else 
			still_unsorted.push x 
		end 
	end 
# We have three arrays. unsorted array is the to sort. Sorted is the finished one
# and still unsorted like the name is saying. 
# so that all items are going to still unsorted and smallest is 
# showing the smallest item from the given array
# when we have the smallest, we can add it to the sorted array 

	sorted_array.push smallest
	recursive_sort still_unsorted, sorted_array
	# now we call the method again but with the new array 
	# still_unsorted. 
	
end 



puts dictionary_sort(["can","feel","singing.","like","a","can"])
puts 
testarray =["can","feel","singing.","like","a","can"]
puts dictionary_sort (["can","feel","singing.","like","a","can"])
puts 
puts testarray.sort 





