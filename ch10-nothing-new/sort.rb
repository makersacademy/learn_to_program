def sort arr
  arr.length < 2 ? arr : [arr.slice!(arr.index(arr.min))] + sort(arr)
end