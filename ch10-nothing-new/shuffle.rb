def shuffle arr
	shuffled_array = []
  until arr.length == 0 do shuffled_array << arr.delete_at(rand(arr.length)) end
  shuffled_array
end
