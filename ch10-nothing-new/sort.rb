def sort arr, new_arr=[]
	if arr.empty?
		return new_arr
	end
	min_value = arr.min
	index_of_min = arr.index(min_value)
	new_arr.push(min_value)
	arr.delete_at(index_of_min)
 	sort arr, new_arr
end


