def shuffle input
  # your code here
  shuff = []

  while input.length > 0
    # Randomly pick one element of the array.
    new_index = rand(input.length)

    # Now go through each item in the array,
    # putting them all into new_arr except for the
    # randomly chosen one, which goes into shuff.
    curr_index = 0
    new_arr = []

    input.each do |item|
      if curr_index == new_index
        shuff.push item
      else
        new_arr.push item
      end
      curr_index = curr_index + 1
    end

    # Replace the original array with the new,
    # smaller array.
    input = new_arr
  end
  shuff
end

puts(shuffle([1,2,3,4,5,6,7,8,9]))