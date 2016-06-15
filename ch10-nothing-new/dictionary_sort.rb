def dictionary_sort unsorted
   dictionary_sort_recursive unsorted, []
end

def dictionary_sort_recursive unsorted, sorted
	if unsorted.length <= 0
		return sorted
	end
	smallest = unsorted.pop
	still_unsorted = []
	unsorted.each do |word|
		if word.downcase < smallest.downcase
			still_unsorted.push smallest 
			smallest = word
		else
			still_unsorted.push word
		end
	end
	sorted.push smallest
	dictionary_sort_recursive still_unsorted, sorted
end

dictionary_sort ["what", "Is", "the", "Matter","With", "you"]