def shuffle arr, res=[]
  return res if arr.empty?
  res << arr.slice!(rand(arr.size))
  shuffle arr, res
end

