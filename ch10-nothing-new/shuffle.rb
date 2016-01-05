def shuffle(arr)
	shuffled = []
  	while arr.size >= 1
  		shuffled << arr.delete_at(rand(0...arr.length))
  	end
	arr = shuffled
end

puts shuffle(["cat", "dog", "rabbit", "wolf"]) 