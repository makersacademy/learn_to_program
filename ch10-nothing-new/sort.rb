#Recursive sort without case
def recursive_sort unsorted_array, sorted_array

			return sorted_array if unsorted_array.length == 0

			sorted_array << unsorted_array.min
			unsorted_array.slice!(unsorted_array.index(unsorted_array.min))
			recursive_sort unsorted_array, sorted_array
end
