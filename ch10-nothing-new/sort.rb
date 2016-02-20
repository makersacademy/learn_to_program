def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted

  min_val = unsorted.min
  unsorted.delete_at(unsorted.find_index(min_val))

  sorted << min_val

  unsorted ==[] ? sorted : recursive_sort(unsorted, sorted)

end

# p sort([1,3,6,3,2,6,8,6,5,9])