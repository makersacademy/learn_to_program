def dictionary_sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
	if unsorted_array.length <= 0
		return sorted_array
	end
	if unsorted_array.length == 1
  		sorted_array << unsorted_array[0]
   		unsorted_array = []
    else
 	  	smallest = unsorted_array[0]
   		index = 0
    	unsorted_array.each_with_index do |x, i|	
 	  		if x.downcase < smallest.downcase	
	   			smallest = x
	   			index = i
   			end
   		end
    	sorted_array << smallest
 	  	unsorted_array.delete_at(index)
    end	
    recursive_sort unsorted_array, sorted_array
end