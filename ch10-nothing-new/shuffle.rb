def shuffle arr
  if arr == [] then
    []
  else
    index = rand(arr.length)
    out = arr[index]
    arr.delete_at(index)
    shuffle(arr) << out
  end
end
