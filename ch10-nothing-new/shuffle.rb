def shuffle arr
  shuffled_arr = []
  arr.each do |x|
    pos = rand(0..shuffled_arr.length) 
    shuffled_arr.insert(pos, x)
  end
  return shuffled_arr
end
