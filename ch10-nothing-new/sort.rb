def sort arr
  # your code here
  recurs_sort(arr,[])
end

def recurs_sort(unsorted,sorted)
	 while unsorted.length >0
	 sorted << unsorted.min
	 unsorted.slice!(unsorted.index(unsorted.min))
	 
	end
	sorted
end