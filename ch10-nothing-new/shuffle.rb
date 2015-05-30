def shuffle(arr)
  shuf = []

  while arr.length > 0
    rand_index = rand(arr.length)
    curr_index = 0
    new_arr = []

    arr.each do |item|
      if curr_index == rand_index
        shuf.push(item)
      else
        new_arr.push(item)
      end
      curr_index += 1
    end

    arr = new_arr
  end

  shuf
end


# my_array_shuffle = ['fee', 'fi', 'fo', 'fum', 'I', 'smell', 'the', 'etc']
# puts shuffle(my_array_shuffle)
#
# puts(shuffle([1,2,3,4,5,6,7,8]))


# makes sense now but couldn't complete on my own - solution required and then refactored a little to make it a bit more familar to me


# alt solution below

# def shuffle arr
#   arr.sort{rand}
# end
