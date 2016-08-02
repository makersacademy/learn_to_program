def shuffle(arr)
  new_arr = []
  random = arr[rand(arr.length)]

  new_arr << random
  arr.delete(random)

  shuffle(arr)

  new_arr
end

shuffle([1,2,3,4,5])
