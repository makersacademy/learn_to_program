=begin
Shuffle. Now that you’ve finished your new sorting algorithm, how about the opposite? Write a shuffle method that takes an array and returns a to- tally shuffled version. As always, you’ll want to test it, but testing this one is trickier: How can you test to make sure you are getting a perfect shuffle? What would you even say a perfect shuffle would be? Now test for it.
=end


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

#How Chris Pine would do it
=begin
def shuffle arr
  # arr.sort_by(&:rand)
  # note the above was how Chris pine did
  # do it, but it no longer works, instead do the
  # following:
  arr.shuffle
end

# p(shuffle([1,2,3,4,5,6,7,8,9]))
=end