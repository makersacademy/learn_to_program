def shuffle arr
  #make new array to put in shuffled values
  shuffled_array = Array.new
  counter = 1
  until arr.empty?
    #get value out of array
    rand_value = arr.pop
    #insert value into array at random index
    shuffled_array.insert(rand(counter), rand_value)
    counter += 1
  end
  arr = shuffled_array
  return arr
end
