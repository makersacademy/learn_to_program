def dictionary_sort(arr)
	return arr if arr.length <= 1

	x = arr.pop
	lower_sort = arr.select {|i| i.downcase < x}
	higher_sort = arr.select {|i| i.downcase >= x}

	dictionary_sort(lower_sort) + x + dictionary_sort(higher_sort)
end

# I went all over the place with this, but gave me a chance to review bubble, merge and divide & conquer sort methods
# CORRECTED THIS - as did not take into account upper and lower case (albeit rspec passed tests?!)
# How to put downcased words back into upper case...?!  


