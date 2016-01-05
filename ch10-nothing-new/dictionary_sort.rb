def dictionary_sort arr
  rec_sort(arr, [])
end

def rec_sort unsorted_array, sorted_array 
if unsorted_array.length <= 0
	return sorted_array
end
  
  first_letter_dictionary = unsorted_array.pop
  still_unsorted_array = []

  	unsorted_array.each do |x| 
  	if x.downcase < first_letter_dictionary.downcase
  		still_unsorted_array << first_letter_dictionary 
  		first_letter_dictionary = x
	else
  		still_unsorted_array << x
  	end	

end

 sorted_array << first_letter_dictionary

rec_sort still_unsorted_array, sorted_array

end

