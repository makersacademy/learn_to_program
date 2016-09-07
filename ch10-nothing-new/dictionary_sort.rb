def dictionary_sort array
	rec_dict_sort array, []
end

def rec_dict_sort unsorted, sorted
	if unsorted.lenght <= 0
		return sorted
	end

	smallest = unsorted.pop
	still_unsorted = []

	unsorted.each do |object|
		if object.downcase < smallest.downcase
			still_unsorted << smallest
			smallest = object
		else
			still_unsorted << object
		end
	end

	sorted << smallest #I am having trouble understanding this part....

	rec_dict_sort still_unsorted, sorted
end 
