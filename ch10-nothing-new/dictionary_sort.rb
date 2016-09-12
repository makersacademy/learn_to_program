def dictionary_sort arr
	recursive_sort(arr, [])
end

def recursive_sort unsorted_array, sorted_array
	if unsorted_array.length < 1
		return sorted_array
	end

	smallest = unsorted_array.pop
	still_unsorted = []

	unsorted_array.each { |tested_object| 
		if tested_object.downcase < smallest.downcase
			still_unsorted << smallest
			smallest = tested_object
		else
			still_unsorted << tested_object
		end
		}	
	sorted_array << smallest
	recursive_sort still_unsorted, sorted_array
end
puts dictionary_sort(['Apple', 'apple', 'Banana', 'BANANA', 'banana']).join(' ')
# print sort(['apple', 'Apple', 'APPLE'])

# put everything to downcase, sort, then revert back to original.

# smallest = APPLE 65
# tested_object = apple 97
#  65 < 97 therefore tested_object < smallest FALSE, still_unsorted << apple
# tested_object = Apple 65
# 65 < 97 therefore tested_object< smallest FALSE, still_unsorted << Apple
# tested_object = APPLE 86
# 97 < 97 FALSE, still unsorted << APPLE

# print dictionary_sort(['testing', 'with', 'DUPLICATE', 'duplicate', 'words', 'alright'])
# print dictionary_sort(['f', 'v', 'e', 'd', 'j', 'f'])
# print dictionary_sort(['Apple', 'apple', 'Banana', 'BANANA', 'banana'])