# LEARNING TO PROGRAM WITH CHRIS PINE, 10.3 ex 1
################################################
# Shuffle. Now that you’ve finished your new sorting algorithm, how about
# the opposite? Write a shuffle method that takes an array and returns a
# totally shuffled version. As always, you’ll want to test it, but testing
# this one is trickier: How can you test to make sure you are getting a perfect
# shuffle? What would you even say a perfect shuffle would be? Now test for it.
##########
# Ruby has a built in 'shuffle' method for Array, as wel as a sort_by method
# array.shuffle           => shuffled array
# array.sort_by { rand }   => shuffled array

def shuffle(array)
  array.sort_by { rand }
end
