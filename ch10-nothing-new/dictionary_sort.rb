def dictionary_sort some_array
recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
if unsorted_array.length <= 0
	return sorted_array
end

temp_array = []
smallest = unsorted_array.pop
unsorted_array.each do |x|
	if x.downcase < smallest.downcase
		temp_array << smallest
		smallest = x
	else
		temp_array << x
	end
end

sorted_array << smallest 

recursive_sort temp_array, sorted_array
end
