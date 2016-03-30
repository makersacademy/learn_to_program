def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  return unsorted if unsorted.length == 0

  needs_sorting = []

  #now find the smallest word in the list

  smallest_word = unsorted.pop         #take a sample word out of the array

  unsorted.each do |word|              #compare it to every other word
    if word < smallest_word            #if there is a smaller word,
      needs_sorting << smallest_word   #move the tested word to the needs_sorting array
      smallest_word = word             #and set the smaller word as the smallest_word
    else                               #otherwise, the tested word is bigger,
      needs_sorting << word            #so push this word to the needs_sorting array
    end
  end

  #now move the smallest word into the sorted array
  sorted << smallest_word

  #then do the same on the remaining words
  recursive_sort needs_sorting, sorted
  return sorted
end
