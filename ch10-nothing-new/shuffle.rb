def shuffle arr
  shuffled_arr = []

  while arr.length > 0
    rand_index = rand(arr.length)
    curr_index = 0
    new_arr = []

    arr.each do |item|
      if curr_index == rand_index
        shuffled_arr.push item
      else
        new_arr.push item
      end
      curr_index = curr_index + 1
    end
    arr = new_arr
  end

  shuffled_arr
end
