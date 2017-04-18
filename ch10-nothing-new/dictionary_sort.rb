def dictionary_sort arr, sorted_arr = []
  if arr.empty?
		return sorted_arr
	end

	min_number = arr.pop
	unsorted_arr = []

	arr.each do |element| 
		if min_number.downcase > element.downcase
			unsorted_arr.push min_number
			min_number = element
		else
			unsorted_arr.push element
		end
	end
	sorted_arr.push min_number
 	sort unsorted_arr, sorted_arr

end