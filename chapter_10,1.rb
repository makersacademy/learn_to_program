#recursive sort 
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
		if x < smallest 
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

# looked at solution 

# non recursive sort
def non_rec_sort arr
	return arr if arr.size <= 1 
	switch = false # all items in array switch position so that the lowest one
					# is first

	while !switch # as long as not all are switched, you keep
					# comparing items next to each other and switch them
		0.upto(arr.size-2) do |x|
			if arr[x] < arr[x+1] 
				arr[x], arr[x+1] = arr[x+1], arr[x]
				switch = true 
			end 
		end 
	end 
	arr
end 
puts sort(["can","feel","singing","like","a","can"])
puts 
testarray =["can","feel","singing","like","a","can"]
puts non_rec_sort (["can","feel","singing","like","a","can"])
puts 
puts testarray.sort 





