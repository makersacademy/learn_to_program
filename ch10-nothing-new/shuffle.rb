def shuffle arr
  return arr if arr.length <= 1

  x = arr.sample
  arr.delete(x)

  [x] + shuffle(arr)

end
