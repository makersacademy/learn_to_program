def sort arr
  rec_sort(arr, [])
end

def rec_sort unsorted, sorted
  if unsorted = [] then
    rec_sort = []
  else
    k = unsorted[0]
    for i = 1..(unsorted.length - 1)
      k = (unsorted[k] <= unsorted[i] ? k : i)
    end
    sorted << unsorted[k]
    unsorted.delete_at(k)
    rec_sort(unsorted, sorted)
end
