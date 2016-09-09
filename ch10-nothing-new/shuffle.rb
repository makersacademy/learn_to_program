def shuffle arr
  shuf = []
#shuffle an array of any size above zero
  while arr.length > 0
    rand_index = rand(arr.length)
#iterate each item placing all bar the random one in the new array which goes into shuf
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
      #call back new array instead of original array
      arr = new_arr
    end

  shuf
end

puts(shuffle([1,9,2,8,3,7,4,6,5]))
