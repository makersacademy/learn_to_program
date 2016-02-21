def sort arr
  return arr if arr.length <= 1
  
  middle = arr.pop
  first = arr.select { |word| word < middle }
  second = arr.select { |word| word >= middle }

  sort(first) + [middle] + sort(second)
end