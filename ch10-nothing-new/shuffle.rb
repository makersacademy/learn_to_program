def shuffle arr

  shuffled_arr = []

  while arr.length > 0
    item = arr.sample
    shuffled_arr << item
    arr.delete(item)
  end

  return shuffled_arr

end
