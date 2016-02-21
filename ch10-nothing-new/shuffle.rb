def shuffle arr
  # Takes an array and returns a totally shuffled version
  # Make a new array called shuffled array
  # Add each item from the original array into the shuffled array, each
  # time inserting it an a random place.
  shuffled_array = []
  arr.each { |item| shuffled_array.insert(rand(shuffled_array.length - 1), item)}
  shuffled_array
end
