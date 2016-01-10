def shuffle arr
  recursive_shuffle arr, []
end

def recursive_shuffle unshuffled, shuffled
  return shuffled if unshuffled.length <= 0
  shuffling = unshuffled.pop
  not_shuffled = []

  shuffled << shuffling
  #adds the final value of the array to the shuffled one - so last value becomes first value.

  unshuffled.each { | x|
    if x < shuffling
      shuffled << x
      shuffling = x
    #adds the first value to the shuffled array and then changes the value of x to the smallest one in the original sorted array. no other values in the array will be smaller than this, so add all others to the not_shuffled array.
    else
      not_shuffled << x
    end
    }

  recursive_shuffle not_shuffled, shuffled
end