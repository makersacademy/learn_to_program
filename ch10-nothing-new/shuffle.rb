def shuffle arr, shuffled=[]
  r = rand(arr.length)
  shuffled << arr[r]
  arr.delete_at(r)
  if arr.length > 0
    shuffle arr, shuffled
  end
  shuffled
end