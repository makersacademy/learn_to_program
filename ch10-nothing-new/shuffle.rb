def shuffle arr
  shuffled_arr = []

  while arr.length > 0
    rand_num = rand(arr.length)
    el = arr[rand_num]
    shuffled_arr << el
    i = arr.index(el)
    arr.delete_at(i)
  end
  return shuffled_arr
end

