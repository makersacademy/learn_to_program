def dictionary_sort arr
  sorted_arr = []
  while arr.empty? != true
    sorted_arr.push << arr.delete_at(arr.index(arr.min{|a, b| a.downcase <=> b.downcase}))
  end
  sorted_arr
end