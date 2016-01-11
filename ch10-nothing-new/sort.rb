def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  return if unsorted.length == 0
  lowest = unsorted[0]
  unsorted.each {|item| lowest = item if lowest > item}
  sorted << lowest
  unsorted.delete_at(unsorted.find_index(lowest))
  recursive_sort unsorted, sorted
  sorted
end

# puts sort ["noot", "aap", "mies", "aap"]
