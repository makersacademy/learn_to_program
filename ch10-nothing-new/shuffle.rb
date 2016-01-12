def shuffle arr
  shuffled = []
  while arr.length >= 1
    shuffled << arr.delete_at(rand(0...arr.length))
  end
arr = shuffled
end

puts shuffle ["a",'b','c','d','e']
