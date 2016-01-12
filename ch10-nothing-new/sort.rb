def sort arr
	##quick sort one liner
  (pivot = arr.pop) ? sort(arr.select{|i| i <= pivot}) + [pivot] + sort(arr.select{|i| i > pivot}) : []
end

