def sort arr
	recursive_sort(arr, [])
end

def recursive_sort unsorted_array, sorted_array
	if unsorted_array.length < 1
		return sorted_array
	end

	smallest = unsorted_array.pop
	still_unsorted = []

	unsorted_array.each { |tested_object| 
		if tested_object < smallest
			still_unsorted << smallest
			smallest = tested_object
		else
			still_unsorted << tested_object
		end
		}	
	sorted_array << smallest
	recursive_sort still_unsorted, sorted_array
end


print sort(['testing', 'with', 'duplicate', 'duplicate', 'words', 'alright'])
print sort(['testing', 'with', 'DUPLICATE', 'duplicate', 'words', 'alright'])

print sort(['f', 'v', 'e', 'd', 'j', 'f'])
print sort(['Apple', 'apple', 'Banana', 'BANANA', 'banana'])