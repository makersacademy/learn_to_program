def dictionary_sort arr
  sorted_arr = []
  rec_sort arr, sorted_arr
end

def rec_sort arr, sorted_arr

  return if arr == []
  down_arr = arr.map {|el| el.downcase}
  min_index = down_arr.index(down_arr.min)
  sorted_arr << arr[min_index]
  arr.delete_at(min_index)
  rec_sort arr, sorted_arr

  sorted_arr

end
