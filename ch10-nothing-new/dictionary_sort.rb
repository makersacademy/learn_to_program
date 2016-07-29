def dictionary_sort arr
  return arr if arr.length <= 1

  first = arr[0]
  arr.delete_at(0)

  higher = arr.select {|a| a.downcase > first.downcase}
  lower = arr.select {|a| a.downcase <= first.downcase}

  dictionary_sort(lower) + [first] + dictionary_sort(higher)
end
