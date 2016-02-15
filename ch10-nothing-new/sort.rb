def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  n = 1
  size = unsorted.size
  while n <= size do
    unsorted.each { |word| sorted << unsorted.delete_at(unsorted.index(word)) if word == unsorted.min }
    n += 1
  end
  return sorted
end
