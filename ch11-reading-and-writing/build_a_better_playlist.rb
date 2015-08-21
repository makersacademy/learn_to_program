def shuffle arrayIn

  # Return quickly for single-element arrays.
  if arrayIn.length <= 1
    return arrayIn
  end

  # Initialise the output array
  arrayOut = []

  while arrayIn.length > 0

    # Pick a random element in the inbound array and add it to the shuffled array.
    index = rand(arrayIn.length)
    arrayOut.push (arrayIn[index])

    # Now recreate the input array, without the random element we just took.
    arrayInTemp = []
    arrayIn.each_index do |i|
      if i != index
        arrayInTemp.push (arrayIn[i])
      end
    end
    arrayIn = arrayInTemp

  end

arrayOut
end

def music_shuffle filenames

  # This challenge is puzzling, and I don't get Chris' logic. My shuffle function gives a totally random output. If I use it twice and "cut the deck" it's still random. Weird! Also, why sort the input before feeding the list into a random shuffle it makes no difference.

  shuffle filenames

end
