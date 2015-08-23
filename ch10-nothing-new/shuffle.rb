def shuffle arr
  index = rand(arr.length)
  out = []
  out << arr[index]
  arr.delete_at(index)
  out = out + shuffle(arr)
end
