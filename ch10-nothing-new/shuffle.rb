def shuffle array
  shuffle_array = []
  while array.length > 0
    rand_index = rand(array.length)
    current_index = 0
    new_arr = []
    array.each do |element|
      if current_index == rand_index
        shuffle_array.push element
      else
        new_arr.push element
      end
      current_index +=1
    end
    array = new_arr
  end
  shuffle_array
end
