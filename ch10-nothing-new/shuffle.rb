def shuffle arr
  shuf = []
  while arr.length > 0
    rand_index = rand (arr.length)

    curr_index = 0
    new_arr = []

    arr.each do |item|
      if curr_index == rand_index
        shuf.push item
      else
        new_arr.push item
      end

      curr_index = curr_index + 1
    end

    arr = new_arr
  end

  shuf
end

puts shuffle [10,11,12,13,14,15,16,17,18,19,20]
