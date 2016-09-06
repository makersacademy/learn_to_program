def dictionary_sort arr
rec_dictionary_sort arr, []
end

def rec_dictionary_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

smallest = unsorted.pop
still_unsorted = []

# If the one we're testing's smaller than the smallest,
# the smallest gets pushed back in the still_unsorted array...
# and the tested_object becomes the smallest!

unsorted.each do |tested_object|
  if tested_object.downcase < smallest.downcase
    still_unsorted.push smallest
    smallest = tested_object
  else still_unsorted.push tested_object
end
end

sorted.push smallest
rec_dictionary_sort still_unsorted, sorted
end

# Let's roll it out!
puts(dictionary_sort (['huge', 'angry', 'big', 'words', 'forever', 'on', 'screens']))
