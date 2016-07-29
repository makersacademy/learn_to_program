def sort arr

  return arr if arr.length <= 1

  first = arr[0]
  arr.delete_at(0)

  higher = arr.select {|a| a > first}
  lower = arr.select {|a| a <= first}

  sort(lower) + [first] + sort(higher)

end
