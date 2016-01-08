def dictionary_sort arr
	recursive_dictionary_sort(arr, [])
end


def recursive_dictionary_sort(unsorted, sorted)
 
  if unsorted.size == 0
		return sorted
	end
 	
 
	m = unsorted.min {|x,y| x.downcase <=> y.downcase}

	unsorted.delete_at(unsorted.find_index(m)) 	

	sorted.push(m)

	recursive_dictionary_sort(unsorted, sorted)

end

  

