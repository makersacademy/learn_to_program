def dictionary_sort arr
recursive_sort arr, []
end

def recursive_sort unsorted, sorted

#use pop technique to put smallest unsorted word into sorted

smallest_word = unsorted.pop

still_unsorted = []

unsorted.each do |word_to_sort|
	if 	
		word_to_sort.downcase < smallest_word

		still_unsorted.push smallest_word

	 	smallest_word = word_to_sort

	else 

		still_unsorted.push word_to_sort
	end 
end 

sorted.push smallest_word

recursive_sort still_unsorted, sorted if unsorted.length > 0

sorted 
end 

#test if code works 
# puts dictionary_sort ['dates', 'cherries', 'bananas', 'apples']
