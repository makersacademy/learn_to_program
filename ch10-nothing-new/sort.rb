def sort arr
  sorted = []
  while arr.empty? != true
        sorted.push(arr.min)
        arr.delete_at(arr.index(arr.min))
    end
  return sorted
end
