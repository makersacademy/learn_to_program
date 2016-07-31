def sort arr
  rec_sort arr, []
end

def rec_sort unsorted, sorted
  return sorted if unsorted.length <=0

  sorted << unsorted.min
  still_unsorted = []
  unsorted.delete(unsorted.min)
  still_unsorted = unsorted

  rec_sort still_unsorted, sorted

end

puts sort ["tar", "rat", "art"]
