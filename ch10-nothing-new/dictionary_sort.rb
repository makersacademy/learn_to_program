def dictionary_sort unsorted_array, sorted_array = []

  return sorted_array if unsorted_array.empty?
		
	next_word = ""
	unsorted_array.each do |word|
		next_word == "" ? next_word += word : (next_word = word if word.downcase < next_word.downcase)
	end
	
	unsorted_array.delete_at(unsorted_array.index(next_word))
	sorted_array << next_word
	
	dictionary_sort(unsorted_array, sorted_array)

end

p dictionary_sort(["Hello", "boy", "boy", "car", "Intermediate", "languange", "Doing", "high"])
