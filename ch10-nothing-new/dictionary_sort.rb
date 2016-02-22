def dictionary_sort arr
  	 dict_sort(arr,[])
end

def dict_sort(unsorted,sorted)
	while unsorted.length >0
	 	mini = unsorted.map(&:downcase).min
	 	if mini != unsorted.min
	 		sorted << unsorted.min
		    unsorted.slice!(unsorted.index(unsorted.min))
		else
			sorted << mini
			unsorted.slice!(unsorted.index(mini))
		end
	end
	sorted
end