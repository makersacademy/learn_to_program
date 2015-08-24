def sort arr # ------------> wrapper method so we just need to call one array
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  if unsorted.length <= 0 # ---> when the unsorted array is empty, return the sorted array
    return sorted
  end

  #smallest word is the onw that would come first in the dictionary (it refers to its index)

  smallest = unsorted.pop # ---> keep on removing the last object in the array
  still_unsorted = [] # where we're keeping the words that haven't been sorted yet

  unsorted.each do |tested_object| # ---> look at each object of unsorted
    if tested_object.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object 
    end
  end

  sorted.push smallest # --> add smallest word to the end of sorted array

  recursive_sort still_unsorted, sorted
end

puts sort ['can', 'feel', 'singing', 'like', 'a', 'can']
