def shuffle arr
  shuffled_arr = []
  until arr == []
    shuffled_arr << arr.delete_at(rand((arr.length) -1))
  end
  shuffled_arr
end