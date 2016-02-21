def dictionary_sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
    parallel = []
    until unsorted == []
      parallel = unsorted.map { |word| word.downcase }
      sorted << unsorted.slice!(parallel.index(parallel.min))
    end
  sorted
end