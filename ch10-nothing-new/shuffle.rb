def shuffle arr
  # your code here
  shuf = []
  while arr.length > 0
    i = rand(arr.length)
    shuf.push arr[i]
    arr.delete_at(i)
  end
  shuf
end
