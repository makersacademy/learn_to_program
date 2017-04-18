def sort arr
  return [] if arr.length == 0
  pivot = arr.shift
  less, more = arr.partition {|e| e < pivot }
  sort(less) + [pivot] + sort(more)
end