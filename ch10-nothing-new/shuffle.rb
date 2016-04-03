def shuffle arr
  	unshuffled_list = arr
	shuffled_list = []

	while true
		current = unshuffled_list.sample
		shuffled_list.push(current)
  		unshuffled_list.delete_at(unshuffled_list.find_index(current))
  		break if unshuffled_list == []
  	end

	return shuffled_list

end