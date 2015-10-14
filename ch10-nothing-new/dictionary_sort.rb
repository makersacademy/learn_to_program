def dictionary_sort arr
  return arr if arr.length <= 1
  mid = arr.pop
  less = arr.select { |item| item.downcase < mid.downcase}
  more = arr.select { |item| item.downcase >= mid.downcase}
  arr = dictionary_sort(less) + [mid] + dictionary_sort(more)
end