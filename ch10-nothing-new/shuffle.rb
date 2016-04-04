def shuffle(arr)
  shuffled_list = []
  unshuffled_list = []
  random_element = arr.sample # gets a random element from the arr
  random_index = arr.index(random_element) # gets the corresponding index to the element
  shuffled_list << random_element # adds the element to the shuffled_list
  arr.slice!(arr.index(random_element)) # removes the random element from the arr
  unshuffled_list = arr # reassigns unshuffled_list to arr

  while unshuffled_list.count > 0 # whilst unshuffled_list still contains elements
  	shuffled_list << shuffle(unshuffled_list) # recursion: repeat the shuffle method taking unshuffled_list as the parameter
  end

  shuffled_list.compact.flatten
  
end
