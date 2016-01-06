def shuffle arr
	shuffled_arr = Array.new
	shuffled_arr = arr.sort_by{rand}
	shuffled_arr
end