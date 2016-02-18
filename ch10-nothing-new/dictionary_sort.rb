def dictionary_sort arr
  return arr if arr.length <= 1

  middle = arr.pop
  head = arr.select { |item| middle.downcase > item.downcase }
  tail = arr.select { |item| middle.downcase <= item.downcase }

  dictionary_sort(head) + [middle] + dictionary_sort(tail)
end

# p dictionary_sort ["a", "b", "A", "Ab", "B"]