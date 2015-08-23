def sort arr
  sort = rec_sort(arr, [])
end

def rec_sort unsorted, sorted
  if unsorted == [] then
    rec_sort = sorted
  else
    k = 0
    for i in 1..(unsorted.length - 1)
      k = ((unsorted[k] <=> unsorted[i]) == -1 ? k : i)
    end
    sorted << unsorted[k]
    unsorted.delete_at(k)
	  rec_sort = rec_sort(unsorted, sorted)
  end
end
