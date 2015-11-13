def shuffle arr
  shuffled_arr = []
  arr.each do |item|
    shuffled_arr << arr[rand((arr.length) -1)]
  end
  shuffled_arr
end