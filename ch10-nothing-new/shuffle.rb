def shuffle arr
  shuffle_up arr, [], arr.length
end

def shuffle_up arr, shuffled, max
  arr.each do |x|
    while true do
      index = rand(max)
      if shuffled[index].nil?
        shuffled[index] = x
        break
      end
    end
  end
  return shuffled
end
