def shuffle arr
  shuffled = []

  while arr.length > 0
    rand_index = rand(arr.length)
    index = 0
    new_arr = []

    arr.each do |x|
      if index == rand_index
        shuffled.push x
      else
        new_arr.push x
      end

      index = index + 1
    end

    arr = new_arr
  end

  shuffled

end

puts(shuffle([1,2,3,4,5,6,7,8,9]))
