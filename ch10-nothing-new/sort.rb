def sort arr
	return arr if arr.length <= 1

number = arr.pop
lower = arr.select{|x| x <= number}
higher = arr.select{|x| x > number}

sort(lower) + [number] + sort(higher)
end

# Other algorithms to check out:
# bubble sort 
# insertion sort 

# What was the point of the wrapper method? Well, recursive_sort took two
# parameters, but if you were just trying to sort an array, you would always
# have to pass in an empty array as the second parameter. This is a silly thing
# to have to remember. Here, the wrapper method passes it in for us, so we
# never have to think about it again.
# When you’re done, make sure to test your code! Type in duplicate words and
# things like that. A great way to test would be to use the built-in sort method
# to get a sorted version of your list right away. Then, after you have sorted it
# for yourself, make sure the two lists are equal.