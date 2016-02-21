def sort arr
recursive_sort arr, []
end

def recursive_sort unsorted, sorted
    until unsorted == []
      sorted << unsorted.slice!(unsorted.index(unsorted.min))
    end
  sorted
end