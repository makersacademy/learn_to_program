def dictionary_sort arr 
	arr.min(arr.size).to_a.each { |e| arr.delete_at(arr.index(e)) }
end

dictionary_sort(["THIS", "A", "a", "z"]) 