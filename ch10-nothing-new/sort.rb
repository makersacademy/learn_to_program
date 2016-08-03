def sort arr 
	rec_sort arr, []
end
def rec_sort unsorted, sorted 
	if unsorted.length <= 0
	return sorted 
	end

least = unsorted.pop
still_unsorted = []
unsorted.each do |tested_object| 
	if tested_object < least
            still_unsorted.push least
            least = tested_object
else
            still_unsorted.push tested_object
end 
end
  sorted.push least
  rec_sort still_unsorted, sorted
end