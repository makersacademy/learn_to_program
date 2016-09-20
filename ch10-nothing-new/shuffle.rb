def shuffle arr
  arr_shuffled = Array.new
  while arr.length > 0
    rand_position = rand(arr.length) #initialize
    arr_shuffled.push(arr[rand_position])
    arr.delete_at(rand_position)
  end
  arr_shuffled #return the new shuffled array
end
