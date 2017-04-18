def dictionary_sort arr
  return [] if arr.length == 0
  original = arr
  pivot = arr.shift
  less, more = arr.partition {|e| e.downcase < pivot.downcase }
  dictionary_sort(less) + [pivot] + dictionary_sort(more)
end