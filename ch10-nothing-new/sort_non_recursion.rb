def sort arr
  sorted_arr = []

  sorted_arr << arr.delete(arr.min) until arr.empty?

  return sorted_arr
end
