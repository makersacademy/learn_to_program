
def shuffle arr
  shuffle = []

  while arr.length > 0
    rand_index = rand(arr.length) #Pick one index of the array at random

    curr_index = 0
    new_arr = []

    #Go through each item in arrayand push them all to new_arr apart from the randomly chosen one whih goes into shuffle.

    arr.each do |item|
      if curr_index == rand_index
        shuffle.push item
      else
        new_arr.push item
      end

      curr_index = curr_index + 1

  end

 arr = new_arr
end
shuffle
end


puts(shuffle(['harry', 'henry', 'james', 'john', 'timmy']))
