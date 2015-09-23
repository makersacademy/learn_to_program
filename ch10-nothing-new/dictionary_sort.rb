def dictionary_sort arr
  rec_sort arr, []
end

def rec_sort unsorted, sorted 
  while unsorted.length <= 0
  	return sorted
  end
 
 smallest = unsorted.pop
 unsortedarr = []

unsorted.each do |x|
	if x < smallest
		unsortedarr.push smallest
		smallest = x
	else
		unsortedarr.push x
	end
end

sorted.push smallest

rec_sort unsortedarr, sorted
end

