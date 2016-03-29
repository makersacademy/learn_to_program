def shuffle arr
  shuffled = []
  while arr.length > 0
    shuffled << arr.delete_at(arr.index(arr[rand(arr.length)]))
  end
  shuffled
end