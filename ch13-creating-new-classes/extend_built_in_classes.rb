Class Array

  def shuffle
    arr = self
    # Now copy the shuffle method. arr = self avoids having to replace all the references.
    # NB took 'arr' parameter out of the def line.

    # create the array that will be the shuffled version of the numbers
    shuf = []
  
    # keep doing this until there's nothing left in the array given by the user
    while arr.length > 0

      # set up a variable that's equal to a random number up to the length of the array
      rand_index = rand(arr.length)

      # set up a variable for current index
      curr_index = 0

      # set up a new array
      new_arr = []

      # for each number in the original array given by the user
      # starting with the index 0 (curr_index starts at 0)
      # if 0 is the same as the random number produced, put the nuber indexed 0
      # into the array called shuf
      # otherwise put it into the new array (which will get shuffled again)
      # then move to the next index number
      arr.each do |item|
        if curr_index == rand_index
          shuf.push item
        else
          new_arr.push item
        end

        curr_index = curr_index + 1
      end

      # replace the original array with the new, smaller array
      arr = new_arr
    end

    shuf
  end
end

# Now shuffle can be called on an array by doing array_name.shuffle
