def sort arr
  recursive_sort(arr, [])
end

def recursive_sort(unsorted_arr, sorted_arr)
  if unsorted_arr.length < 1
    return sorted_arr
  end
  sorted_arr.push unsorted_arr.delete_at(0)
  sorted_arr.sort!
  return recursive_sort unsorted_arr, sorted_arr
end
