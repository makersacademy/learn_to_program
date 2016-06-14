def shuffle arr
  shuf = []

  while arr.length > 0

    rand_index = rand(arr.length)
    curr_index = 0
    new_arr = []

    arr.each do |x|
      if curr_index == rand_index
        shuf << x
      else
        new_arr << x
      end

      curr_index += 1
    end

      arr = new_arr
  end

  shuf
end
