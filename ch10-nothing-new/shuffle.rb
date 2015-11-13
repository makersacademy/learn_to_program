def shuffle arr
  shuffle = []

  while arr.length > 0
    rand_index = rand(arr.length)
    curr_index = 0
    new_arr = []

    arr.each do |x|
      if curr_index == rand_index
        shuffle.push item
      else
        new_arr.push x
      end

      curr_index = curr_index + 1
    end

    arr = new_arr
  end
  shuffle
end