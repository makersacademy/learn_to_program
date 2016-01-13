def sort(arr)
	return arr if arr.length <= 1

	x = arr.pop
	lower_sort = arr.select {|i|i < x}
	higher_sort = arr.select {|i| i >= x}

	sort(lower_sort) + [x] + sort(higher_sort)
end

# I went all over the place with this, but gave me a chance to review bubble, merge and divide & conquer sort methods
# nice error re return x not being in an array - took a while to fix that!


