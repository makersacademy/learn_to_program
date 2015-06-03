def dictionary_sort arr   # sets up method to take an array of numbers
  rec_dict_sort arr, []   # calls rec_dict_sort method, saying the array will be one parameter 
end

def rec_dict_sort unsorted, sorted
  if unsorted.length <= 0  # unsorted will the array passed in when method called.
    return sorted
  end
  # i.e. if there is nothing left in the 'unsorted' pile, they must all be sorted.

  pick = unsorted.pop  # pluck one out of the unsorted pile
  still_unsorted = []  # create an array called still_unsorted

  unsorted.each do |comparitor|  # do this to everything in unsorted
    if comparitor.downcase < pick.downcase  # if the plucked one is higher, 
      still_unsorted.push pick              # put it in the still_unsorted pile
      pick = comparitor                     # then what was the comparitor becomes the one called 'pick'
    else
      still_unsorted.push comparitor        # otherwise (if the comparitor is higher) put that in the 
    end                                     # still unsorted pile.
  end

  sorted.push pick
  rec_dict_sort still_unsorted, sorted
end

puts (dictionary_sort(['can', 'feel', 'singing.', 'like', 'A', 'can']))
