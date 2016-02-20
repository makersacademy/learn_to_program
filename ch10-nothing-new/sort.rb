def sort(arr)
   recursive_sort(arr,[])

end

def recursive_sort(unsorted_array, sorted_array)

	until unsorted_array.length == 0
	 firstWord = unsorted_array.min
	 sorted_array << firstWord
	 unsorted_array.delete(firstWord)
	end

 sorted_array 
end

print sort(["How","How","now","Brown","Cow"])

