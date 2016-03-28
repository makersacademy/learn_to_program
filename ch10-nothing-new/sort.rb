def sort arr
  sorted_arr = []
  rec_sort arr, sorted_arr
end

def rec_sort arr, sorted_arr

  return if arr == []
  sorted_arr << arr.min
  arr.delete_at(arr.index(arr.min))
  rec_sort arr, sorted_arr

  sorted_arr

end
