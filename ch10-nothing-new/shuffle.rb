def shuffle arr

  iterations = arr.length
  shuffled = []

  while arr.length > 0
    r = rand(arr.length)
    shuffled << arr.delete_at(r)
  end

shuffled
end
