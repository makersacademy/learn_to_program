def sort arr
  (pivot = arr.pop) ? sort(arr.select{|i| i <= pivot}) + [pivot] + sort(arr.select{|i| i > pivot}) : []
end

