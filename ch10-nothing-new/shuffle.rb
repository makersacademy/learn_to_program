def shuffle arr
  shuffled = []

  while arr.length > 0
    rand_pos = rand(arr.length)
    curr_pos = 0
    new_arr = []

    arr.each do |item|
      if curr_pos == rand_pos
        shuffled.push item
      else
        new_arr.push item
      end

      curr_pos = curr_pos + 1
    end

    arr = new_arr
  end

  shuffled
end


puts(shuffle ([1,2,3,4,5,6,7,8,9]))
