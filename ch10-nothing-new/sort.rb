def sort arr
  recursive_sort(arr, [])
end

def recursive_sort unsorted, sorted
  if unsorted.size <= 0
    return sorted
  end

  # find the minimum item of unsorted
  index = unsorted.index(unsorted.min)
  smallest = unsorted[index]
  # remove the minimum item from unsorted
  unsorted.delete_at(index)
  # add to the end of sorted
  sorted << smallest
  # run recursive_sort, passing both lists
  recursive_sort(unsorted, sorted)
end
