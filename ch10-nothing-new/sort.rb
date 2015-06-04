def sort arr
  return arr if arr.length <= 1           # So it works for an empty/1 element array - i.e. no sorting required
  pivot = arr.pop                         # Pop one element out of the array to act as the pivot
  lower = arr.select { |x| x < pivot }    # Make a new array out of all elements of arr that are lower (number or a-z) than pivot
  higher = arr.select { |x| x >= pivot }  # Make a new array out of all elements of arr that are higher than pivot
  
  sort(lower) + [pivot] + sort(higher)    # Calls sort on the array of lower ones
                                          # ?? is [pivot] there so that it gets puts-ed in between the other two?
                                          # Calls sort on the array of higher ones
                                          
                                          # ??? How does it become recursive/repetitive and then know when each little sub-
                                          # ??? array has been sorted?
end

puts(sort(['can','feel','singing','like','a','can']).join(' '))
# puts the result - .join(' ') converts the array into a string separated by a space
