def shuffle arr
  shuffled_array = []; n = arr.length
  n.times do
    position = rand(arr.length) #randomly define a postion of an item in arr
    #remove the item at a random position and put it into the shuffled_array
    shuffled_array.push(arr.delete_at(position))
  end
  shuffled_array
end
