def sort arr
  rec_sort arr, []
end

def rec_sort unsorted, sorted
if unsorted.length <= 0
  return sorted
end
smallest = unsorted.pop
still_unsorted =[]
unsorted.each do |x|
  if x < smallest
    still_unsorted.push smallest
    smallest = x
  else
    still_unsorted.push x
  end
end
sorted.push smallest

rec_sort still_unsorted, sorted
end
