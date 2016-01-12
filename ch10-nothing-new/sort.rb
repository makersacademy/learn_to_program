def sort arr
  recursive_sort(arr, [])
end

def recursive_sort(unsorted, sorted)
	
	if unsorted.size == 0
		return sorted
	end
 	
 	#If we have numbers and we use .min method, 
 	#it works properly but in case of downcase and upcase strings,
 	#finding a minimum making a comparison is more useful.
	m = unsorted.min {|x,y| x <=> y}

	unsorted.delete_at(unsorted.find_index(m)) 	

	sorted.push(m)

	recursive_sort(unsorted, sorted)

end




