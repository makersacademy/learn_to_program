def shuffle arr
  shuffled_arr = []
  while arr.length > 0
    rand_num = rand(arr.length)
    shuffled_arr << arr[rand_num]
    i = arr.index(arr[rand_num])
    arr.delete_at(i)
  end
  return shuffled_arr
end

