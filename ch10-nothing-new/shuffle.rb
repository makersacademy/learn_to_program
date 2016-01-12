# Shuffle. Now that you’ve finished your new sorting algorithm, how about the opposite? Write a shuffle method that takes an array and returns a to- tally shuffled version. As always, you’ll want to test it, but testing this one is trickier: How can you test to make sure you are getting a perfect shuffle? What would you even say a perfect shuffle would be? Now test for it.

def shuffle(array)
  remaining = array.length
  returned = []
  until remaining == 0
    count = rand(remaining)
    returned.push(array[count])
    remaining -= 1
    array[count] = array[remaining]
    array.pop
  end
  returned
end
