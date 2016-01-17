  def shuffle(arr)

    # Mr PINE:

    # shuffled_array = []
    # # we loop over arr until it's empty
    # while arr.length > 0
    #   # arr is reduced each time and rand gets a random number from 0 to the count
    #   # of values in the array
    #   random_index = rand(arr.length)
    #   # this is stepped up each time
    #   current_index = 0
    #   # this is the array that collects the ones that don't match
    #   new_array = []
    #
    #   arr.each do |e|
    #     # if the random number matches the current loop, put the array value in the
    #     # shuffle_array
    #     if current_index == random_index
    #       shuffled_array.push(e)
    #     # otherwise put it in our working array
    #     else
    #       new_array.push(e)
    #     end
    #     # and step the index count (is index a misleading word for this because it's
    #     # not technically the index?)
    #     current_index = current_index + 1
    #   end
    #   p "The current index is #{current_index}"
    #   p "The random index is #{random_index}"
    #   p new_array
    #   p shuffled_array
    #
    #   # this means we're iterating over the array minus the values we've pushed out
    #   # each time
    #   arr = new_array
    #
    # end
    # # and now the original array is empty, and the shuffled one is full
    # shuffled_array

    # EASY:

    # arr.sort_by{rand}

    # ANOTHER:

    left = []
    right = []
    arr.map.with_index do |f,i|
      if i.even?
          left << f
      else
          right << f
      end
    end

    arr = [left,right].flatten

end

puts shuffle([1,2,3,4,5,6,7,8,9,'a','b','c','d','e'])
