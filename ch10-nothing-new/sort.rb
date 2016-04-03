def sort arr

	unsorted_list = arr
	sorted_list = []

	while true
		smallest = unsorted_list[0]
		unsorted_list.each {|x| 
			if x < smallest then smallest = x end}
  		sorted_list.push(smallest)
  		unsorted_list.delete_at(arr.find_index(smallest))
  		break if unsorted_list == []
  	end

	return sorted_list

end
