def shuffle arr
  shuf = []

  while arr.length > 0
    # Randomly pick one element of the array.
    rand_index = rand(arr.length)

    # Now go through each item in the array,
    # putting them all into new_arr except for the
    # randomly chosen one, which goes into shuf.
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

    # Replace the original array with the new,
    # smaller array.
    arr = new_arr
  end

  shuf
end




#def shuffle arr
  #rec_shuffle arr, []
#end

#def rec_shuffle unshuffled_array, shuffled_array
#
#  if unshuffled_array.length <= 0
#    return shuffled_array
#  else
#    r=Random.rand(0...unshuffled_array.length)
#    shuffled_array << unshuffled_array[r]
#    unshuffled_array.delete_at(r)
#  end
#
#  rec_shuffle unshuffled_array, shuffled_array
#end

#print shuffle %w(a b c)
