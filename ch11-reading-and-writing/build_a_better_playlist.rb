def music_shuffle arrayIn

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
