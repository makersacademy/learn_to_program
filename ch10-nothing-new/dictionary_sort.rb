def dictionary_sort arr
  rec_dict_sort(arr, [])
end

	def rec_dict_sort(unsorted, sorted)
		if unsorted.length <= 0 
		return sorted 
	end 

	smallest = unsorted.pop 
	#last element of unsorted arr
	still_unsorted = []

	unsorted.each do |element|
		if element.downcase < smallest.downcase 
			still_unsorted.push smallest
			smallest = element 
		else 
			still_unsorted.push element
		end
	end 
	sorted.push smallest

	rec_dict_sort(still_unsorted, sorted)
end 

puts (dictionary_sort(["happy", "Bird","ant","singing"]))
