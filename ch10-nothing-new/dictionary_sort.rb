def dictionary_sort unsorted_array, sorted_array
	return sorted_array if unsorted_array.length == 0

		small = unsorted_array[0]

			unsorted_array.each do |x|
				unsorted_array.each do |y|
					if  x.downcase < y.downcase && x.downcase < small
						small = x
					elsif x.downcase > y.downcase && y.downcase < small
						small = y
					end

				end
				sorted_array << small
				unsorted_array.slice!(unsorted_array.index(small))
				small = unsorted_array[0]

			end
			dictionary_sort unsorted_array, sorted_array



end

def sort some_array

	recursive_sort some_array, []

end
