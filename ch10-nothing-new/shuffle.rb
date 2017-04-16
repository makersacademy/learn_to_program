def shuffle arr
  shuffled_arr = []

  while arr.length > 0
  shuffled_arr << arr.delete_at(rand(arr.length))
  end

  shuffled_arr

end

puts shuffle [1,2,3,4,5,6,7,8]