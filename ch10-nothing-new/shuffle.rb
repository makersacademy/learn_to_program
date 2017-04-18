def shuffle arr
  shuffled = []
  for i in 0...arr.length do
  	rand = rand(arr.length)
  	shuffled << arr[rand]
  	arr.delete_at(rand)
  end
  shuffled
end