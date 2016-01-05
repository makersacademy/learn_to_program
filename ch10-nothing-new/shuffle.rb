def shuffle arr, res=[]
  return res if arr.empty?
  res << arr.pop
  res.reverse
  shuffle arr, res
end
