def sort arr
  rec_sort arr, []
end

def rec_sort unsorted, sorted
if unsorted.empty?
  return sorted
else
  sorted << unsorted.sort!.slice!(0)
end
  rec_sort unsorted, sorted
end
