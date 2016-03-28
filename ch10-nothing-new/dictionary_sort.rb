def dictionary_sort arr
  new_array = []
  while true
    smallest = arr.min
    new_array << smallest
    arr.slice!(arr.index(smallest))
    break if arr.empty?
  end
  new_array
end
