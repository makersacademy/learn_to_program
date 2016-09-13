def shuffle arr
  random_arr = []
  until arr == []
    rand_value = rand(arr.length)
    random_arr << arr[rand_value]
    arr.delete_at(rand_value)
  end
  return random_arr
end

puts shuffle ["ant", "duck", "zebra", "goose", "ant"]
