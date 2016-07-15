def dictionary_sort arr
recursive_sort arr, []
end

def recursive_sort unsorted, all_sorted
return all_sorted if unsorted.length <= 0

smallest = unsorted.pop
still_unsorted = []

unsorted.each do |tested_object|
  if tested_object.downcase < smallest.downcase
    still_unsorted << smallest
    smallest = tested_object
  else
    still_unsorted << tested_object
  end
end

  all_sorted << smallest
  recursive_sort still_unsorted, all_sorted
end

# puts dictionary_sort(['Baby', 'Goat', 'alien', 'Crab', 'callous', 'Angel'])
