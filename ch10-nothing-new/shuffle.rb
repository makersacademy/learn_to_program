def shuffle arr
  # your code here
  shuffle_array = []

  while arr.length > 0
    rand_index = rand(arr.length)

    curr_index = 0
    new_array = []

    arr.each do |item|
      if curr_index == rand_index
        shuffle_array.push(item)
      else
        new_array.push(item)
      end
      curr_index += 1
    end
    arr = new_array
  end

  shuffle_array

end
