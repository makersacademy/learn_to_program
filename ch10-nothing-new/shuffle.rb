def shuffle arr
  # your code here
    newarray = []
  while arr.length > 0
    random_index = rand(arr.length)
    newarray.push(arr[random_index])
    arr.delete_at(random_index)
  end
  newarray
end