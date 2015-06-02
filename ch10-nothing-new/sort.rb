def sort arr
  sorted_arr = []
  while arr.empty? != true
    sorted_arr.push << arr.delete_at(arr.index(arr.min))
  end
  sorted_arr
end