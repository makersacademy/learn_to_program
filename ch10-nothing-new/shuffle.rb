def shuffle arr
  #somewhere to put the shuffled values
  shuffled_array = []
  counter = 1
  until arr.empty?
    #get value out of array
    item_being_shuffled = arr.pop
    #insert value into array at random index
    shuffled_array.insert(rand(counter), item_being_shuffled)
    counter += 1
  end
  shuffled_array
end

puts shuffle [1,2,5,8,67]