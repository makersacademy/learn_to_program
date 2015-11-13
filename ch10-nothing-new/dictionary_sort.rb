def dictionary_sort arr
  # your code here
  (arr.min(arr.length) { |a, b| a.downcase <=> b.downcase })
end