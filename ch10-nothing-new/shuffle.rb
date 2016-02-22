def shuffle arr
  new_arr = []

  while arr.length > 0
  	rand_number = rand(arr.length)
  	new_arr << arr[rand_number]
  	arr.delete_at(rand_number)
  end
  return new_arr
end

puts(shuffle(["a", "b", "c", "d", "e"]))