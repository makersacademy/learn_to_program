def sort(unsorted_array, sorted_array = [])
	
	return sorted_array if unsorted_array.empty?
		
	next_word = ""
	unsorted_array.each do |word|
		next_word == "" ? next_word += word : (next_word = word if word < next_word)
	end
	
	unsorted_array.delete_at(unsorted_array.index(next_word))
	sorted_array << next_word
	
	sort(unsorted_array, sorted_array)


end

p sort(["hello", "boy", "boy", "car", "intermediate", "languange", "doing", "high"])