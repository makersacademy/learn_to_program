def shuffle arr
  shuffled = arr.clone
  shuffled.each_index do |index|
      num = rand(shuffled.length)
      temp = shuffled[index]
      shuffled[index] = shuffled[num]
      shuffled[num] = temp
  end
  if shuffled == arr
    shuffle shuffled
  end
  shuffled
end

# puts shuffle ["a", "b", "c", "d", "e"]
# puts shuffle [3, 2, 6, 1, 5, 9, 4, 7, 8]
