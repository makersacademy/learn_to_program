def dictionary_sort(arr)

	return arr if arr.length <= 1

	x = arr.pop
	lower_sort = arr.select {|i|i.downcase < x}
	higher_sort = arr.select {|i| i.downcase >= x}

	dictionary_sort(lower_sort) + [x] + dictionary_sort(higher_sort)
end


# CORRECTED THIS (is an extension of sort method) - as did not take into account upper and lower case 
# rspec passed


