def sort arr
	recursive_sort(arr, [])
end

def recursive_sort unsorted_array, sorted_array
	until unsorted_array.length < 1
		sorted_array << unsorted_array.delete(unsorted_array.min)
	end
	print sorted_array
end

# sort(['testing', 'with', 'duplicate', 'duplicate', 'words', 'alright'])
# sort(['f', 'v', 'e', 'd', 'j', 'f'])

# HAVING REAL PROBLEMS GETTING DUPLICATED ELEMENTS INTO THE NEW ARRY