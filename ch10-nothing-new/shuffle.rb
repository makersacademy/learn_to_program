def shuffle arr
  positions = (0...arr.length).to_a
  shuffled =[]
  arr.each do |x|
    index = positions.delete_at(rand(positions.length))
    shuffled[index] = x
  end
shuffled
end
