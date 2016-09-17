# How would I shuffle an array in English?
# Take a random item from the given array and put it in the new array
# Keep going until all the items have moved from the given array into the new array

def shuffle arr
  recursive_shuffle arr, []
end

def recursive_shuffle original_array, shuffled_array

  if original_array.length <= 0
    return shuffled_array
  end

  # Remove the last item from the original array
  randomWord = original_array.pop

  # Insert it in a random place in the shuffled array
  shuffled_array.insert(rand(shuffled_array.length+1), randomWord)

  # Call the method again until all the elements have been shuffled
  recursive_shuffle original_array, shuffled_array
end


#def shuffle arr # Chris Pine's shuffle method
# shuf = []
# while arr.length > 0
#   rand_index = rand(arr.length)
#   curr_index = 0
#   new_arr = []
#
#   arr.each do |item|
#     if curr_index == rand_index
#       shuf.push item
#     else
#       new_arr.push item
#     end
#   curr_index += 1
#   end
#   arr = new_arr
# end
# shuf
#end
