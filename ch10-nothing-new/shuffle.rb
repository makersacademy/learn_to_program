def shuffle arr
  new_arr = []

  while (arr.any?) do
    new_arr << arr.delete_at(rand(arr.length))
  end

  new_arr
end




p shuffle([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,17,18,19])
