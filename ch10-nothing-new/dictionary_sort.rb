def dictionary_sort arr
  rec_sort arr, []
  #takes an array and pass it as a first parameter to the second method (rec_sort)
  #with an empty array [] as a second parameter
end

def rec_sort unsorted, sorted
  if unsorted.empty?
  return sorted
  #checks if the first parameter (unsorted) is empty and if true returns (sorted)
end

  last_in_unsorted = unsorted.pop
  still_unsorted = []
    unsorted.each do |word|
    if word.downcase < last_in_unsorted.downcase
      still_unsorted.push last_in_unsorted
      last_in_unsorted = word
    else
      still_unsorted.push word
    end
  end
# Now "last_in_unsorted" really does point to the
# last_in_unsorted element that "unsorted" contained,
# and all the rest of it is in "still_unsorted".

  sorted.push last_in_unsorted
  rec_sort still_unsorted, sorted
end
