=begin
Dictionary sort. Your sorting algorithm is pretty good, sure. But there was always that sort of embarrassing point you were hoping I’d just sort of gloss over, right? About the capital letters? Your sorting algorithm is good for general-purpose sorting, but when you sort strings, you are using the ordering of the characters in your fonts (called the ASCII codes) rather than true dictionary ordering. In a dictionary, case (upper or lower) is irrelevant to the ordering. So, make a new method to sort words (something like dictionary_sort). Remember, though, that if I give your program words starting with capital letters, it should return words with those same cap- ital letters, just ordered as you’d find in a dictionary.
=end

#How Chris Pine would do it
# The well-known quicksort algorithm.
def dictionary_sort arr
  return arr if arr.length <= 1

  middle = arr.pop
  less = arr.select{|x| x.downcase < middle.downcase}
  more = arr.select{|x| x.downcase >= middle.downcase}

  dictionary_sort(less) + [middle] + dictionary_sort(more)
end

# words = ['can','feel','singing.','like','A','can']
# puts(dictionary_sort(words).join(' '))

#how you could do it
=begin
def dictionary_sort arr
  rec_dict_sort arr, []
end

def rec_dict_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  # So if we got here, then it means we still
  # have work to do.

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |tested_object|
    if tested_object.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object
    end
  end
  # Now "smallest" really does point to the
  # smallest element that "unsorted" contained,
  # and all the rest of it is in "still_unsorted".
  sorted.push smallest

  rec_dict_sort still_unsorted, sorted
end

# puts(dictionary_sort([' can' ,' feel' ,' singing.' ,' like' ,' A' ,' can' ]))
=end