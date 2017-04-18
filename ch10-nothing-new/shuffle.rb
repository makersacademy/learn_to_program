def shuffle arr
  arr1 = []
  while arr != []
    arr1 << arr[rand(arr.length)]
    arr = arr - arr1
  end
  arr1
end
