
def dictionary_sort arr 
	sorted_array = []
	
	recursive_sort arr, sorted_array	
end

def recursive_sort unsorted_array, sorted_array 
	
	
	match_count = unsorted_array.length
		while sorted_array.length < match_count 

			smallest_word = unsorted_array.min
			sorted_array << smallest_word
            unsorted_array.slice!(unsorted_array.index(smallest_word))
			#unsorted_array.delete(smallest_word)
			
		end
	sorted_array 
		
	
end

