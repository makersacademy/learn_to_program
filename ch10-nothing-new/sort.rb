def sort arr
  	return arr if arr.length <= 1

  	pivot = arr.pop
  	less = []
  	greater = []

  	arr.each do |x|
  		if x <= pivot
  			less << x
  		else
  			greater << x
  		end
  	end
	sort(less) + [pivot] + sort(greater)
end